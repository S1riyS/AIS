from swiplserver import PrologThread


class GetCompanions:
    def __init__(self):
        pass

    def run(self, prolog: PrologThread):
        res = prolog.query(self.query())
        if not res or len(res) == 0:
            self.failure(res)
        else:
            self.success(res)

    def query(self):
        return "individual(Companion, companion), hasName(Companion, Name)"

    def success(self, res):
        print(f"Найдено {len(res)} компаньонов:")
        for index, line in enumerate(res, 1):
            print(f"{index}. {line['Name']}")

    def failure(self, res):
        print("Не найдено компаньонов в базе знаний.")