from swiplserver import PrologThread


class FindWeaponsByDamage:
    def __init__(self, min_damage: str):
        self.min_damage = int(min_damage)

    def run(self, prolog: PrologThread):
        res = prolog.query(self.query())
        if not res or len(res) == 0:
            self.failure(res)
        else:
            self.success(res)

    def query(self):
        return f"hasDamage(Weapon, Damage), Damage > {self.min_damage}, hasName(Weapon, Name)"

    def success(self, res):
        print(f"Найдено {len(res)} видов оружия с уроном больше {self.min_damage}:")
        for index, line in enumerate(res, 1):
            print(f"{index}. {line['Name']} (урон: {line['Damage']})")

    def failure(self, res):
        print(f"Не найдено оружия с уроном больше {self.min_damage}.")
