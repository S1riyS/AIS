import re

from methods import (
    find_characters_by_faction,
    find_items_by_location,
    find_quests_by_giver,
    find_weapons_by_damage,
    get_companions,
    get_quest_giver,
)
from swiplserver import PrologMQI, create_posix_path

KNOWLEDGE_BASE_PATH = "./src/prolog/fallout_nw.pl"
PROMPT = "$ "
EXIT_COMMAND = "exit"

incorrect_request = "Неправильный запрос"

requests = [
    "Какие компаньоны есть в игре?",
    "Какие персонажи состоят в фракции the_kings?",
    "Какие предметы можно найти в novac?",
    "Какие квесты начинаются у benny?",
    "Какое оружие наносит урон больше number?",
    "Кто даёт квест heartache_by_the_number?",
]

patterns = {
    r"Какие компаньоны есть в игре\?": get_companions.GetCompanions,
    r"Какие персонажи состоят в фракции (.+)\?": find_characters_by_faction.FindCharactersByFaction,
    r"Какие предметы можно найти в (.+)\?": find_items_by_location.FindItemsByLocation,
    r"Какие квесты начинаются у (.+)\?": find_quests_by_giver.FindQuestsByGiver,
    r"Какое оружие наносит урон больше (\d+)\?": find_weapons_by_damage.FindWeaponsByDamage,
    r"Кто даёт квест (.+)\?": get_quest_giver.GetQuestGiver,
}


def start() -> None:
    with PrologMQI() as mqi:
        with mqi.create_thread() as prolog:
            path = create_posix_path(KNOWLEDGE_BASE_PATH)

            prolog.query(f'consult("{path}")')

            print("\nПримеры доступных запросов:")
            for request in requests:
                print(f"- {request}")
            print(f"\nДля завершения введите - {EXIT_COMMAND}.")

            while True:
                query = input(PROMPT)
                if query.lower() == EXIT_COMMAND:
                    break

                for pattern in patterns:
                    match = re.match(pattern, query, re.IGNORECASE)
                    if match is None:
                        continue

                    processor = patterns[pattern](*match.groups())
                    processor.run(prolog)
                    break
                else:
                    print(incorrect_request)

                print()  # New line after result


if __name__ == "__main__":
    start()
