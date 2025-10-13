from swiplserver import PrologThread


class FindCharactersByFaction:
    def __init__(self, faction: str):
        self.faction = faction

    def run(self, prolog: PrologThread):
        res = prolog.query(self.query())
        if not res or len(res) == 0:
            self.failure(res)
        else:
            self.success(res)

    def query(self):
        return f"hasFaction(Character, {self.faction}), hasName(Character, CharName)"

    def success(self, res):
        print(f"Найдено {len(res)} персонажей во фракции {self.faction}:")
        for index, line in enumerate(res, 1):
            print(f"{index}. {line['CharName']}")

    def failure(self, res):
        print(f"Не найдено персонажей во фракции {self.faction}.")