from swiplserver import PrologThread


class FindItemsByLocation:
    def __init__(self, location: str):
        self.location = location

    def run(self, prolog: PrologThread):
        res = prolog.query(self.query())
        if not res or len(res) == 0:
            self.failure(res)
        else:
            self.success(res)

    def query(self):
        return f"canBeFoundIn(Item, {self.location}), hasName(Item, ItemName)"

    def success(self, res):
        print(f"Найдено {len(res)} предметов в локации {self.location}:")
        for index, line in enumerate(res, 1):
            print(f"{index}. {line['ItemName']}")

    def failure(self, res):
        print(f"Не найдено предметов в локации {self.location}.")
