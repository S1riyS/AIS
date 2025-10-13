from swiplserver import PrologThread


class FindQuestsByGiver:
    def __init__(self, giver: str):
        self.giver = giver

    def run(self, prolog: PrologThread):
        res = prolog.query(self.query())
        if not res or len(res) == 0:
            self.failure(res)
        else:
            self.success(res)

    def query(self):
        return f"hasQuestGiver(Quest, {self.giver}), hasName(Quest, QuestName)"

    def success(self, res):
        print(f"Найдено {len(res)} квестов, которые даёт {self.giver}:")
        for index, line in enumerate(res, 1):
            print(f"{index}. {line['QuestName']}")

    def failure(self, res):
        print(f"Не найдено квестов, которые даёт {self.giver}.")