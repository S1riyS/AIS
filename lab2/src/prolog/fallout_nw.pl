% Классы (Class assertions)
class(armor).
class(character).
class(companion).
class(dungeon).
class(faction).
class(factionLeader).
class(gun).
class(item).
class(location).
class(mainCharacter).
class(meleeWeapon).
class(quest).
class(settlement).
class(weapon).

% Иерархия классов (Subclass relationships)
subclass(armor, item).
subclass(character, thing).
subclass(companion, character).
subclass(dungeon, location).
subclass(faction, thing).
subclass(factionLeader, character).
subclass(gun, weapon).
subclass(item, thing).
subclass(location, thing).
subclass(mainCharacter, character).
subclass(meleeWeapon, weapon).
subclass(quest, thing).
subclass(settlement, location).
subclass(weapon, item).

% Свойства объектов (Object properties)
objectProperty(canBeFoundIn, item, location).
objectProperty(hasFaction, character, faction).
objectProperty(hasQuestGiver, quest, character).
objectProperty(startsQuest, character, quest).

% Обратное свойство
inverseProperty(hasQuestGiver, startsQuest).

% Свойства данных (Data properties)
dataProperty(hasDamage, weapon, integer).
dataProperty(hasName, thing, string).

% Индивиды и их типы (Individuals)
individual(aint_that_a_kick, quest).
individual(anti_materiel_rifle, gun).
individual(arcade_gannon, companion).
individual(benny, factionLeader).
individual(black_mountain, dungeon).
individual(bleed_me_dry, quest).
individual(boone, companion).
individual(boones_sniper_rifle, gun).
individual(boulder_city, settlement).
individual(brotherhood_of_steel, faction).
individual(bye_bye_boulder, quest).
individual(caesar, factionLeader).
individual(caesars_legion, faction).
individual(camp_forlorn_hope, location).
individual(camp_golf, location).
individual(camp_mccarran, location).
individual(camp_ranger, location).
individual(cass, companion).
individual(chainsaw, meleeWeapon).
individual(chairmens, faction).
individual(colonel_moore, factionLeader).
individual(combat_armor, armor).
individual(cottonwood_cove, location).
individual(courier_six, mainCharacter).
individual(dale_barton, character).
individual(doc_mitchell, character).
individual(ed_e, companion).
individual(ed_e_to_ed, quest).
individual(ed_es_inventory, quest).
individual(elite_ranger_vest, armor).
individual(followers_of_the_apocalypse, faction).
individual(for_the_republic, quest).
individual(freeside, settlement).
individual(gauss_rifle, gun).
individual(gecko_jacket, armor).
individual(goodsprings, settlement).
individual(guess_who_i_saw_today, quest).
individual(heartache_by_the_number, quest).
individual(hidden_valley, location).
individual(hoover_dam, location).
individual(house_securitrons, faction).
individual(jacobstown, settlement).
individual(jeannie_may_crawford, character).
individual(julie_farkas, character).
individual(legion_armor, armor).
individual(lily_bowen, companion).
individual(loyal, character).
individual(lucky, gun).
individual(major_dhatri, factionLeader).
individual(maria, gun).
individual(marjorie, factionLeader).
individual(mercenary_armor, armor).
individual(mercenarys_grenade_rifle, gun).
individual(mojave_wasteland, location).
individual(mr_house, factionLeader).
individual(ncr, faction).
individual(ncr_ranger_vest, armor).
individual(nellis_air_force_base, settlement).
individual(nelson, settlement).
individual(new_vegas_strip, settlement).
individual(nipton, settlement).
individual(no_rangers_left, quest).
individual(novac, settlement).
individual(oh_baby, meleeWeapon).
individual(paciencia, gun).
individual(plasma_defender, gun).
individual(powder_gangers, faction).
individual(primm, settlement).
individual(ranger_safehouse, location).
individual(raul, companion).
individual(recon_armor, armor).
individual(render_unto_caesar, quest).
individual(repconn_test_site, dungeon).
individual(ring_a_ding_ding, quest).
individual(ripper, meleeWeapon).
individual(rose_of_sharon_cassidy, companion).
individual(sloan, settlement).
individual(super_sledge, meleeWeapon).
individual(that_gun, gun).
individual(the_dear_valentine, dungeon).
individual(the_fort, location).
individual(the_house_always_wins, quest).
individual(the_king, factionLeader).
individual(the_kings, faction).
individual(the_white_wash, quest).
individual(they_went_that_a_way, quest).
individual(tribal_armor, armor).
individual(trudy, character).
individual(ulysses, factionLeader).
individual(vance, settlement).
individual(vault_11, dungeon).
individual(vault_13_canteen, meleeWeapon).
individual(vault_22, dungeon).
individual(vault_3, dungeon).
individual(vault_suit_3, armor).
individual(veronica, companion).
individual(volare, quest).
individual(vulpes_inculta, factionLeader).
individual(wheels_of_fortune, quest).
individual(white_glove_society, faction).
individual(white_glove_suit, armor).
individual(ycs_186, gun).
individual(yes_man, character).

% Свойства объектов (Object property assertions)
hasQuestGiver(aint_that_a_kick, benny).
hasQuestGiver(bleed_me_dry, loyal).
hasQuestGiver(ed_e_to_ed, ed_e).
hasQuestGiver(ed_es_inventory, ed_e).
hasQuestGiver(guess_who_i_saw_today, lily_bowen).
hasQuestGiver(heartache_by_the_number, cass).
hasQuestGiver(render_unto_caesar, caesar).
hasQuestGiver(the_house_always_wins, mr_house).
hasQuestGiver(the_white_wash, trudy).
hasQuestGiver(wheels_of_fortune, the_king).

hasFaction(arcade_gannon, followers_of_the_apocalypse).
hasFaction(benny, chairmens).
hasFaction(boone, ncr).
hasFaction(caesar, caesars_legion).
hasFaction(colonel_moore, ncr).
hasFaction(julie_farkas, followers_of_the_apocalypse).
hasFaction(major_dhatri, ncr).
hasFaction(marjorie, white_glove_society).
hasFaction(mr_house, house_securitrons).
hasFaction(the_king, the_kings).
hasFaction(veronica, brotherhood_of_steel).
hasFaction(vulpes_inculta, caesars_legion).

canBeFoundIn(combat_armor, camp_mccarran).
canBeFoundIn(elite_ranger_vest, camp_ranger).
canBeFoundIn(gecko_jacket, goodsprings).
canBeFoundIn(legion_armor, the_fort).
canBeFoundIn(lucky, primm).
canBeFoundIn(maria, new_vegas_strip).
canBeFoundIn(mercenary_armor, freeside).
canBeFoundIn(ncr_ranger_vest, ranger_safehouse).
canBeFoundIn(paciencia, novac).
canBeFoundIn(plasma_defender, jacobstown).
canBeFoundIn(recon_armor, camp_ranger).
canBeFoundIn(that_gun, novac).
canBeFoundIn(vault_13_canteen, goodsprings).
canBeFoundIn(vault_suit_3, vault_3).
canBeFoundIn(white_glove_suit, new_vegas_strip).
canBeFoundIn(ycs_186, hidden_valley).

% Свойства данных (Data property assertions)
hasDamage(anti_materiel_rifle, 110).
hasDamage(boones_sniper_rifle, 55).
hasDamage(chainsaw, 45).
hasDamage(gauss_rifle, 120).
hasDamage(lucky, 36).
hasDamage(maria, 28).
hasDamage(mercenarys_grenade_rifle, 100).
hasDamage(oh_baby, 75).
hasDamage(paciencia, 48).
hasDamage(plasma_defender, 85).
hasDamage(ripper, 35).
hasDamage(super_sledge, 50).
hasDamage(that_gun, 42).
hasDamage(vault_13_canteen, 12).
hasDamage(ycs_186, 150).

hasName(aint_that_a_kick, 'И не удар ли это по голове?').
hasName(anti_materiel_rifle, 'Противоматериальная винтовка').
hasName(arcade_gannon, 'Аркад Ганнон').
hasName(benny, 'Бенни').
hasName(black_mountain, 'Черная гора').
hasName(bleed_me_dry, 'Выжми меня досуха').
hasName(boone, 'Крейг Бун').
hasName(boones_sniper_rifle, 'Снайперская винтовка Буна').
hasName(boulder_city, 'Боулдер-Сити').
hasName(bye_bye_boulder, 'Прощай, Боулдер').
hasName(caesar, 'Цезарь').
hasName(caesars_legion, 'Легион Цезаря').
hasName(camp_forlorn_hope, 'Лагерь Безысходной Надежды').
hasName(camp_golf, 'Лагерь Гольф').
hasName(camp_mccarran, 'Лагерь МакКарран').
hasName(camp_ranger, 'Лагерь Рейнджеров').
hasName(cass, 'Роза Кэрриган (Кэсс)').
hasName(chainsaw, 'Бензопила').
hasName(chairmens, 'Клуб Сотрудников').
hasName(colonel_moore, 'Полковник Мур').
hasName(combat_armor, 'Боевая броня').
hasName(cottonwood_cove, 'Бухта Коттонвуд').
hasName(courier_six, 'Курьер 6').
hasName(dale_barton, 'Дейл Бартон').
hasName(doc_mitchell, 'Доктор Митчелл').
hasName(ed_e, 'ЭД-Е').
hasName(ed_e_to_ed, 'От ЭД-Е к Эду').
hasName(ed_es_inventory, 'Инвентарь ЭД-Е').
hasName(elite_ranger_vest, 'Элитный жилет рейнджера').
hasName(followers_of_the_apocalypse, 'Последователи Апокалипсиса').
hasName(for_the_republic, 'Ради Республики').
hasName(freeside, 'Фрисайд').
hasName(gauss_rifle, 'Гауссова винтовка').
hasName(gecko_jacket, 'Куртка из гекконьей кожи').
hasName(goodsprings, 'Гудспрингс').
hasName(guess_who_i_saw_today, 'Угадай, кого я сегодня видел').
hasName(heartache_by_the_number, 'Сердечная боль по номерам').
hasName(hoover_dam, 'Дамба Гувера').
hasName(house_securitrons, 'Армия Мистера Хауса').
hasName(jacobstown, 'Джейкобстаун').
hasName(jeannie_may_crawford, 'Джинни Мэй Кроуфорд').
hasName(julie_farkas, 'Джули Фаркас').
hasName(legion_armor, 'Броня Легиона').
hasName(lily_bowen, 'Лили Боуэн').
hasName(loyal, 'Лойал').
hasName(lucky, 'Лаки').
hasName(major_dhatri, 'Майор Дхатри').
hasName(maria, 'Мария').
hasName(marjorie, 'Марджори').
hasName(mercenary_armor, 'Броня наёмника').
hasName(mercenarys_grenade_rifle, 'Гранатомёт наёмника').
hasName(mojave_wasteland, 'Пустошь Мохаве').
hasName(mr_house, 'Мистер Хаус').
hasName(ncr, 'Новая Калифорнийская Республика').
hasName(ncr_ranger_vest, 'Жилет рейнджера НКР').
hasName(nellis_air_force_base, 'Авиабаза Неллис').
hasName(nelson, 'Нельсон').
hasName(new_vegas_strip, 'Нью-Вегас Стрип').
hasName(nipton, 'Ниптон').
hasName(no_rangers_left, 'Не осталось рейнджеров').
hasName(novac, 'Новак').
hasName(oh_baby, 'О, детка!').
hasName(paciencia, 'Пасьенсия').
hasName(plasma_defender, 'Плазменный защитник').
hasName(powder_gangers, 'Пороховые Бандиты').
hasName(primm, 'Примм').
hasName(ranger_safehouse, 'Убежище рейнджеров').
hasName(raul, 'Рауль Текила').
hasName(recon_armor, 'Разведывательная броня').
hasName(render_unto_caesar, 'Воздай Цезарю').
hasName(repconn_test_site, 'Испытательный полигон Репконн').
hasName(ring_a_ding_ding, 'Звонок монеты').
hasName(ripper, 'Риппер').
hasName(rose_of_sharon_cassidy, 'Роуз оф Шэрон Кэссиди').
hasName(sloan, 'Слоан').
hasName(super_sledge, 'Супермолот').
hasName(that_gun, 'Этый ствол').
hasName(the_dear_valentine, 'Дорогая Валентина').
hasName(the_fort, 'Форт').
hasName(the_house_always_wins, 'Дом всегда выигрывает').
hasName(the_king, 'Король').
hasName(the_kings, 'Короли').
hasName(the_white_wash, 'Белая стирка').
hasName(they_went_that_a_way, 'Они пошли туда').
hasName(tribal_armor, 'Племенная броня').
hasName(trudy, 'Труди').
hasName(ulysses, 'Улисс').
hasName(vance, 'Вэнс').
hasName(vault_11, 'Убежище 11').
hasName(vault_13_canteen, 'Фляга Убежища 13').
hasName(vault_22, 'Убежище 22').
hasName(vault_3, 'Убежище 3').
hasName(vault_suit_3, 'Костюм Убежища 3').
hasName(veronica, 'Вероника Сантанжело').
hasName(volare, 'Воляре!').
hasName(vulpes_inculta, 'Вульпес Инкульта').
hasName(wheels_of_fortune, 'Колёса фортуны').
hasName(white_glove_society, 'Общество Белой Перчатки').
hasName(white_glove_suit, 'Костюм Общества Белой Перчатки').
hasName(ycs_186, 'YCS/186').
hasName(yes_man, 'Мистер Да').

% Правила для обратных свойств
startsQuest(Character, Quest) :- hasQuestGiver(Quest, Character).

% Правила для наследования классов
instance(Individual, Class) :-
    individual(Individual, Class).

instance(Individual, SuperClass) :-
    individual(Individual, Class),
    subclass(Class, SuperClass).

instance(Individual, SuperClass) :-
    individual(Individual, Class),
    subclass(Class, IntermediateClass),
    instance(IntermediateClass, SuperClass).