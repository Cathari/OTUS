INSERT INTO "users" VALUES (1, 'otus_dima', 'otus1@localhost', '2021-07-12 14:26:32', '$2y$10$6yFoQ8G5aWt4ndpaLRl65OpnzaiUfOZ5WD1LbK9KlDmL3F.5SSVZe', 'LtMIm4Jb6V', '2021-12-12 13:27:40', '2021-12-12 14:03:11');
INSERT INTO "users" VALUES (2, 'otus_oleg', 'otus2@localhost', '2021-07-12 14:26:32', '$2y$10$6yFoQ8G5aWt4ndpaLRl65OpnzaiUfOZ5WD1LbK9KlDmL3F.6SSVZe', 'LtMIm4Jb6V', '2021-12-12 13:27:40', '2021-12-12 14:03:11');
INSERT INTO "users" VALUES (3, 'otus_petro', 'otus3@localhost', '2021-07-12 14:26:32', '$2y$10$6yFoQ8G5aWt4ndpaLRl65OpnzaiUfOZ5WD1LbK9KlDmL3F.7SSVZe', 'LtMIm4Jb6V', '2021-12-12 13:27:40', '2021-12-12 14:03:11');
INSERT INTO "users" VALUES (4, 'otus_valerii', 'otus4@localhost', '2021-07-12 14:26:32', '$2y$10$6yFoQ8G5aWt4ndpaLRl65OpnzaiUfOZ5WD1LbK9KlDmL3F.8SSVZe', 'LtMIm4Jb6V', '2021-12-12 13:27:40', '2021-12-12 14:03:11');
INSERT INTO "users" VALUES (5, 'otus_spider_man', 'otus5@localhost', '2021-07-12 14:26:32', '$2y$10$6yFoQ8G5aWt4ndpaLRl65OpnzaiUfOZ5WD1LbK9KlDmL3F.9SSVZe', 'LtMIm4Jb6V', '2021-12-12 13:27:40', '2021-12-12 14:03:11');

INSERT INTO "companies" VALUES (1, '76714a74-868f-11ec-a8a3-0242ac120002', 1, 1, 'Test_company', 10, '2022-02-15 17:25:54', 'proccessing', '2022-02-05 17:26:26', '2022-02-05 17:26:26');

INSERT INTO "companies_messages" VALUES (1, 1);
INSERT INTO "companies_messages" VALUES (1, 2);
INSERT INTO "companies_messages" VALUES (1, 3);
INSERT INTO "companies_messages" VALUES (1, 4);

insert into countries (id, name, title)
VALUES
(1, 'RU', 'Россия'),
(2, 'US', 'Соединенные Штаты'),
(3, 'KZ', 'Казахстан'),
(4, 'GE', 'Грузия'),
(5, 'UA', 'Украина'),
(6, 'GB', 'Соединенное Королевство'),
(7, 'RO', 'Румыния'),
(8, 'MD', 'Молдова, Республика'),
(9, 'BY', 'Беларусь'),
(10, 'MA', 'Марокко'),
(11, 'IL', 'Израиль'),
(12, 'KG', 'Киргизия'),
(13, 'GR', 'Греция'),
(14, 'DE', 'Германия'),
(15, 'CZ', 'Чешская Республика'),
(16, 'LT', 'Литва'),
(17, 'SE', 'Швеция'),
(18, 'KH', 'Камбоджа'),
(19, 'UZ', 'Узбекистан'),
(20, 'VN', 'Вьетнам')

INSERT INTO "groups" VALUES (1, '6f43e43c-fb64-4e78-809d-ed00115931f9', 'Test', 1, 1, '2022-02-05 13:05:45', '2022-02-05 13:05:46', '2022-02-05 13:05:47');
INSERT INTO "groups" VALUES (2, '567f3736-f0ef-4d59-b0d9-31a0816a8b4b', 'Test2', 1, 1, '2022-02-05 13:05:45', '2022-02-05 13:05:46', '2022-02-05 13:05:47');

INSERT INTO "messages" VALUES (1, 'Тестовое сообщение №1', '2022-02-05 13:09:45', '2022-02-05 13:09:46');
INSERT INTO "messages" VALUES (2, 'Информационное сообщение', '2022-02-05 13:09:58', '2022-02-05 13:09:59');
INSERT INTO "messages" VALUES (3, 'Тестовое сообщение №2', '2022-02-05 13:10:13', '2022-02-05 13:10:14');
INSERT INTO "messages" VALUES (4, 'Поздравляем! Вы выйграли в лотерею!11', '2022-02-05 13:10:39', '2022-02-05 13:10:39');

INSERT INTO "phone_numbers" VALUES (1, '9379991', 'RU', 1, 1, '2022-02-05 17:49:33', '2022-02-05 17:49:34');
INSERT INTO "phone_numbers" VALUES (2, '9379992', 'RU', 1, 1, '2022-02-05 17:49:33', '2022-02-05 17:49:34');
INSERT INTO "phone_numbers" VALUES (3, '9379993', 'RU', 1, 1, '2022-02-05 17:49:33', '2022-02-05 17:49:34');
INSERT INTO "phone_numbers" VALUES (4, '9379994', 'RU', 1, 2, '2022-02-05 17:49:33', '2022-02-05 17:49:34');
INSERT INTO "phone_numbers" VALUES (5, '9379995', 'RU', 1, 2, '2022-02-05 17:49:33', '2022-02-05 17:49:34');
INSERT INTO "phone_numbers" VALUES (6, '9379996', 'RU', 1, 2, '2022-02-05 17:49:33', '2022-02-05 17:49:34');
INSERT INTO "phone_numbers" VALUES (7, '9379997', 'RU', 1, 3, '2022-02-05 17:49:33', '2022-02-05 17:49:34');
INSERT INTO "phone_numbers" VALUES (8, '9379998', 'RU', 1, 3, '2022-02-05 17:49:33', '2022-02-05 17:49:34');
INSERT INTO "phone_numbers" VALUES (9, '9379999', 'RU', 1, 3, '2022-02-05 17:49:33', '2022-02-05 17:49:34');
INSERT INTO "phone_numbers" VALUES (10, '9379998', 'RU', 1, 4, '2022-02-05 17:49:33', '2022-02-05 17:49:34');
INSERT INTO "phone_numbers" VALUES (11, '9379997', 'RU', 1, 4, '2022-02-05 17:49:33', '2022-02-05 17:49:34');
INSERT INTO "phone_numbers" VALUES (12, '9379996', 'RU', 1, 4, '2022-02-05 17:49:33', '2022-02-05 17:49:34');
INSERT INTO "phone_numbers" VALUES (13, '9379995', 'RU', 1, 5, '2022-02-05 17:49:33', '2022-02-05 17:49:34');
INSERT INTO "phone_numbers" VALUES (14, '9379994', 'RU', 1, 5, '2022-02-05 17:49:33', '2022-02-05 17:49:34');
INSERT INTO "phone_numbers" VALUES (15, '9379993', 'RU', 1, 5, '2022-02-05 17:49:33', '2022-02-05 17:49:34');

INSERT INTO "phone_numbers_companies" VALUES (1, 1);
INSERT INTO "phone_numbers_companies" VALUES (2, 1);
INSERT INTO "phone_numbers_companies" VALUES (3, 1);
INSERT INTO "phone_numbers_companies" VALUES (4, 1);
INSERT INTO "phone_numbers_companies" VALUES (5, 1);
INSERT INTO "phone_numbers_companies" VALUES (6, 1);
INSERT INTO "phone_numbers_companies" VALUES (7, 1);
INSERT INTO "phone_numbers_companies" VALUES (8, 1);
INSERT INTO "phone_numbers_companies" VALUES (9, 1);
INSERT INTO "phone_numbers_companies" VALUES (10, 1);
INSERT INTO "phone_numbers_companies" VALUES (11, 1);
INSERT INTO "phone_numbers_companies" VALUES (12, 1);
INSERT INTO "phone_numbers_companies" VALUES (13, 1);
INSERT INTO "phone_numbers_companies" VALUES (14, 1);
INSERT INTO "phone_numbers_companies" VALUES (15, 1);

INSERT INTO "phone_numbers_groups" VALUES (1, 1);
INSERT INTO "phone_numbers_groups" VALUES (2, 2);
INSERT INTO "phone_numbers_groups" VALUES (3, 1);
INSERT INTO "phone_numbers_groups" VALUES (4, 2);
INSERT INTO "phone_numbers_groups" VALUES (5, 1);
INSERT INTO "phone_numbers_groups" VALUES (6, 2);
INSERT INTO "phone_numbers_groups" VALUES (7, 1);
INSERT INTO "phone_numbers_groups" VALUES (8,2);
INSERT INTO "phone_numbers_groups" VALUES (9, 1);
INSERT INTO "phone_numbers_groups" VALUES (10, 2);
INSERT INTO "phone_numbers_groups" VALUES (11, 1);
INSERT INTO "phone_numbers_groups" VALUES (12, 2);
INSERT INTO "phone_numbers_groups" VALUES (13, 1);
INSERT INTO "phone_numbers_groups" VALUES (14, 2);
INSERT INTO "phone_numbers_groups" VALUES (15, 1);

INSERT INTO "sms" VALUES (1, '6876f5f0-868e-11ec-a8a3-0242ac120002', 1, 1, '3799991', 'Тестовое сообщение №1', 'error', NULL, '2021-02-05 17:18:38', '2022-02-05 17:18:39', '2022-02-05 17:18:40');
INSERT INTO "sms" VALUES (2, '6876f5f0-868e-11ec-a8a3-0242ac120003', 1, 1, '3799992', 'Тестовое сообщение №2', 'wait', NULL, '2021-02-05 17:18:38', '2022-02-05 17:18:39', '2022-02-05 17:18:40');
INSERT INTO "sms" VALUES (3, '6876f5f0-868e-11ec-a8a3-0242ac120004', 1, 1, '3799993', 'Тестовое сообщение №1', 'success', NULL, '2021-02-05 17:18:38', '2022-02-05 17:18:39', '2022-02-05 17:18:40');
INSERT INTO "sms" VALUES (4, '6876f5f0-868e-11ec-a8a3-0242ac120005', 1, 1, '3799994', 'Тестовое сообщение №2', 'success', NULL, '2021-02-05 17:18:38', '2022-02-05 17:18:39', '2022-02-05 17:18:40');
INSERT INTO "sms" VALUES (5, '6876f5f0-868e-11ec-a8a3-0242ac120006', 1, 1, '3799995', 'Тестовое сообщение №1', 'success', NULL, '2021-02-05 17:18:38', '2022-02-05 17:18:39', '2022-02-05 17:18:40');
INSERT INTO "sms" VALUES (6, '6876f5f0-868e-11ec-a8a3-0242ac120007', 1, 1, '3799991', 'Тестовое сообщение №2', 'error', NULL, '2022-02-05 17:18:38', '2022-02-05 17:18:39', '2022-02-05 17:18:40');
INSERT INTO "sms" VALUES (7, '6876f5f0-868e-11ec-a8a3-0242ac120008', 1, 1, '3799992', 'Тестовое сообщение №1', 'wait', NULL, '2022-02-05 17:18:38', '2022-02-05 17:18:39', '2022-02-05 17:18:40');
INSERT INTO "sms" VALUES (8, '6876f5f0-868e-11ec-a8a3-0242ac120009', 1, 1, '3799993', 'Тестовое сообщение №2', 'success', NULL, '2022-02-05 17:18:38', '2022-02-05 17:18:39', '2022-02-05 17:18:40');
INSERT INTO "sms" VALUES (9, '6876f5f0-868e-11ec-a8a3-0242ac120010', 1, 1, '3799994', 'Тестовое сообщение №1', 'success', NULL, '2022-02-05 17:18:38', '2022-02-05 17:18:39', '2022-02-05 17:18:40');
INSERT INTO "sms" VALUES (10, '6876f5f0-868e-11ec-a8a3-0242ac120011', 1, 1, '3799995', 'Тестовое сообщение №2', 'success', NULL, '2022-02-05 17:18:38', '2022-02-05 17:18:39', '2022-02-05 17:18:40');