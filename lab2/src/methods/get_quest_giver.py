from swiplserver import PrologThread


class GetQuestGiver:
    def __init__(self, quest: str):
        self.quest = quest

    def run(self, prolog: PrologThread):
        res = prolog.query(self.query())
        if not res or len(res) == 0:
            self.failure(res)
        else:
            self.success(res)

    def query(self):
        return f"hasQuestGiver({self.quest}, Giver), hasName(Giver, GiverName)"

    def success(self, res):
        for line in res:
            print(f"Квест '{self.quest}' даёт: {line['GiverName']}")

    def failure(self, res):
        print(f"Не найдено информацию о том, кто даёт квест '{self.quest}'.")