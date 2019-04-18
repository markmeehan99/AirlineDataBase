PRAGMA foreign_keys = on;

--Aviao
-- idAviao e um numero aleatorio ente 10.000 e 100.000
INSERT INTO Aviao VALUES (92055, 189, 5950, 'Boeing', '737-800');
INSERT INTO Aviao VALUES (46791, 189, 5950, 'Boeing', '737-800');
INSERT INTO Aviao VALUES (74869, 189, 5950, 'Boeing', '737-800');
INSERT INTO Aviao VALUES (61805, 189, 5950, 'Boeing', '737-800');
INSERT INTO Aviao VALUES (36344, 189, 5950, 'Boeing', '737-800');
INSERT INTO Aviao VALUES (13820, 200, 6704, 'Boeing', '737-800');
INSERT INTO Aviao VALUES (96342, 200, 6704, 'Boeing', '737-800');
INSERT INTO Aviao VALUES (67413, 200, 6704, 'Boeing', '737-800');
INSERT INTO Aviao VALUES (69947, 200, 6704, 'Boeing', '737-800');
INSERT INTO Aviao VALUES (84822, 200, 6704, 'Boeing', '737-800');
INSERT INTO Aviao VALUES (80232, 200, 6704, 'Boeing', '737-800');
INSERT INTO Aviao VALUES (43719, 200, 6704, 'Boeing', '737-800');
INSERT INTO Aviao VALUES (41760, 200, 6704, 'Boeing', '737-800');
INSERT INTO Aviao VALUES (44868, 200, 6704, 'Boeing', '737-800');
INSERT INTO Aviao VALUES (24008, 200, 6704, 'Boeing', '737-800');
INSERT INTO Aviao VALUES (41025, 200, 6704, 'Boeing', '737-800');
INSERT INTO Aviao VALUES (73921, 200, 6704, 'Boeing', '737-800');
INSERT INTO Aviao VALUES (61907, 200, 6704, 'Boeing', '737-800');
INSERT INTO Aviao VALUES (86989, 200, 6704, 'Boeing', '737-800');
INSERT INTO Aviao VALUES (40588, 200, 6704, 'Boeing', '737-800');
INSERT INTO Aviao VALUES (88688, 200, 6704, 'Boeing', '737-MAX-200');
INSERT INTO Aviao VALUES (93500, 200, 6704, 'Boeing', '737-MAX-200');
INSERT INTO Aviao VALUES (46581, 200, 6704, 'Boeing', '737-MAX-200');
INSERT INTO Aviao VALUES (71494, 200, 6704, 'Boeing', '737-MAX-200');
INSERT INTO Aviao VALUES (55582, 200, 6704, 'Boeing', '737-MAX-200');
INSERT INTO Aviao VALUES (92671, 200, 6704, 'Boeing', '737-MAX-200');
INSERT INTO Aviao VALUES (40156, 200, 6704, 'Boeing', '737-MAX-200');
INSERT INTO Aviao VALUES (94949, 200, 6704, 'Boeing', '737-MAX-200');
INSERT INTO Aviao VALUES (57544, 200, 6704, 'Boeing', '737-MAX-200');
INSERT INTO Aviao VALUES (50656, 200, 6704, 'Boeing', '737-MAX-200');
INSERT INTO Aviao VALUES (36604, 200, 6704, 'Boeing', '737-MAX-200');
INSERT INTO Aviao VALUES (42316, 200, 6704, 'Boeing', '737-MAX-200');

--Voo
--porto / lisboa
-- aos pares, cada voo é complementar do adjacente. Avião vai de A para B, e ao fim do dia retorna
-- de B para A
INSERT INTO Voo VALUES ('8IH4T', '2018-04-22 07:55', '2018-04-22 08:50', '00:55', 92055);
INSERT INTO Voo VALUES ('GR7XF', '2018-04-22 13:55', '2018-04-22 14:50', '00:55', 92055);
INSERT INTO Voo VALUES ('363FI', '2018-04-22 09:10', '2018-04-22 10:05', '00:55', 46791);
INSERT INTO Voo VALUES ('HBRPI', '2018-04-22 15:30', '2018-04-22 16:25', '00:55', 46791);
INSERT INTO Voo VALUES ('DXOBR', '2018-04-22 16:40', '2018-04-22 17:35', '00:55', 74869);
INSERT INTO Voo VALUES ('KPIQH', '2018-04-22 19:20', '2018-04-22 20:15', '00:55', 74869);

--porto / dublin
INSERT INTO Voo VALUES ('HXXD1', '2018-04-22 11:30', '2018-04-22 14:00', '02:30', 61805);
INSERT INTO Voo VALUES ('P1WKX', '2018-04-22 18:05', '2018-04-22 20:35', '02:30', 61805);

--lisboa / dublin
INSERT INTO Voo VALUES ('GV0CL', '2018-04-22 05:00', '2018-04-22 08:00', '03:00', 36344);
INSERT INTO Voo VALUES ('JAPHV', '2018-04-22 08:20', '2018-04-22 11:20', '03:00', 36344);
INSERT INTO Voo VALUES ('F1CCO', '2018-04-22 18:30', '2018-04-22 21:30', '03:00', 13820);
INSERT INTO Voo VALUES ('UJ8VX', '2018-04-22 13:10', '2018-04-22 16:10', '03:00', 13820);

--paris / londres
INSERT INTO Voo VALUES ('JRPO8', '2018-04-22 12:05', '2018-04-22 13:35', '1:30', 96342);
INSERT INTO Voo VALUES ('2HAWF', '2018-04-22 14:05', '2018-04-22 15:35', '1:30', 96342);
INSERT INTO Voo VALUES ('L1NPP', '2018-04-22 15:05', '2018-04-22 16:35', '1:30', 67413);
INSERT INTO Voo VALUES ('T0ZA6', '2018-04-22 17:05', '2018-04-22 18:35', '1:30', 67413);
INSERT INTO Voo VALUES ('UAVZ5', '2018-04-22 20:00', '2018-04-22 21:30', '1:30', 69947);
INSERT INTO Voo VALUES ('OYX40', '2018-04-22 22:15', '2018-04-22 23:45', '1:30', 69947);

-- idVoo original, acrescentar duracao e correspondentes horas e numero de aviao
-- INSERT INTO Voo VALUES ('KBYAZ', '2018-04-22 12:05', '2018-04-22 15:45', 92055);
-- INSERT INTO Voo VALUES ('YKAR2', '2018-04-22 12:05', '2018-04-22 15:45', 92055);
-- INSERT INTO Voo VALUES ('D5FUW', '2018-04-22 12:05', '2018-04-22 15:45', 92055);
-- INSERT INTO Voo VALUES ('Y3JA5', '2018-04-22 12:05', '2018-04-22 15:45', 92055);
-- INSERT INTO Voo VALUES ('327OG', '2018-04-22 12:05', '2018-04-22 15:45', 92055);
-- INSERT INTO Voo VALUES ('QY24N', '2018-04-22 12:05', '2018-04-22 15:45', 92055);
-- INSERT INTO Voo VALUES ('0JEI2', '2018-04-22 12:05', '2018-04-22 15:45', 92055);
-- INSERT INTO Voo VALUES ('P13H7', '2018-04-22 12:05', '2018-04-22 15:45', 92055);
-- INSERT INTO Voo VALUES ('UAWUJ', '2018-04-22 12:05', '2018-04-22 15:45', 92055);

--Pais
INSERT INTO Pais VALUES ('Portugal');
INSERT INTO Pais VALUES ('Irlanda');
INSERT INTO Pais VALUES ('Franca');
INSERT INTO Pais VALUES ('Escocia');
INSERT INTO Pais VALUES ('Inglaterra');

--Aeroporto
INSERT INTO Aeroporto VALUES ('OPO', 'Francisco de Sá Carneiro', 'Portugal');
INSERT INTO Aeroporto VALUES ('LIS', 'Lisboa Portela', 'Portugal');
INSERT INTO Aeroporto VALUES ('DUB', 'Dublin', 'Irlanda');
INSERT INTO Aeroporto VALUES ('ORY', 'Paris-Orly', 'Franca');
INSERT INTO Aeroporto VALUES ('NTE', 'Nantes Atlantique', 'Franca');
INSERT INTO Aeroporto VALUES ('STN', 'London Stansted', 'Inglaterra');
INSERT INTO Aeroporto VALUES ('PIK', 'Glasgow Prestwick', 'Escocia');
INSERT INTO Aeroporto VALUES ('FAO', 'Faro', 'Portugal');
INSERT INTO Aeroporto VALUES ('ORK', 'Cork', 'Irlanda');


--Origem 

--lisboa / porto
INSERT INTO Origem VALUES ('8IH4T', 'LIS'); --Ida
INSERT INTO Origem VALUES ('GR7XF', 'OPO'); --volta
INSERT INTO Origem VALUES ('363FI', 'LIS'); --ida
INSERT INTO Origem VALUES ('HBRPI', 'OPO'); --volta
INSERT INTO Origem VALUES ('DXOBR', 'LIS'); --ida
INSERT INTO Origem VALUES ('KPIQH', 'OPO'); --volta

--porto / dublin
INSERT INTO Origem VALUES ('HXXD1', 'OPO'); --Ida
INSERT INTO Origem VALUES ('P1WKX', 'DUB'); --volta

--lisboa / dublin
INSERT INTO Origem VALUES ('GV0CL', 'LIS'); --Ida
INSERT INTO Origem VALUES ('JAPHV', 'DUB'); --volta
INSERT INTO Origem VALUES ('F1CCO', 'LIS'); --Ida
INSERT INTO Origem VALUES ('UJ8VX', 'DUB'); --volta

--paris / londres
INSERT INTO Origem VALUES ('JRPO8', 'ORY'); --Ida
INSERT INTO Origem VALUES ('2HAWF', 'STN'); --volta
INSERT INTO Origem VALUES ('L1NPP', 'ORY'); --Ida
INSERT INTO Origem VALUES ('T0ZA6', 'STN'); --volta
INSERT INTO Origem VALUES ('UAVZ5', 'ORY'); --Ida
INSERT INTO Origem VALUES ('OYX40', 'STN'); --volta


--Destino

--porto / lisboa
--lisboa / porto
INSERT INTO Destino VALUES ('8IH4T', 'OPO'); --Ida
INSERT INTO Destino VALUES ('GR7XF', 'LIS'); --volta
INSERT INTO Destino VALUES ('363FI', 'OPO'); --ida
INSERT INTO Destino VALUES ('HBRPI', 'LIS'); --volta
INSERT INTO Destino VALUES ('DXOBR', 'OPO'); --ida
INSERT INTO Destino VALUES ('KPIQH', 'LIS'); --volta

--porto / dublin
INSERT INTO Destino VALUES ('HXXD1', 'DUB'); --Ida
INSERT INTO Destino VALUES ('P1WKX', 'LIS'); --volta

--lisboa / dublin
INSERT INTO Destino VALUES ('GV0CL', 'DUB'); --Ida
INSERT INTO Destino VALUES ('JAPHV', 'LIS'); --volta
INSERT INTO Destino VALUES ('F1CCO', 'DUB'); --Ida
INSERT INTO Destino VALUES ('UJ8VX', 'LIS'); --volta

--paris / londres
INSERT INTO Destino VALUES ('JRPO8', 'STN'); --Ida
INSERT INTO Destino VALUES ('2HAWF', 'ORY'); --volta
INSERT INTO Destino VALUES ('L1NPP', 'STN'); --Ida
INSERT INTO Destino VALUES ('T0ZA6', 'ORY'); --volta
INSERT INTO Destino VALUES ('UAVZ5', 'STN'); --Ida
INSERT INTO Destino VALUES ('OYX40', 'ORY'); --volta

--Pessoa
INSERT INTO Pessoa VALUES (28158, 'Mark Timothy Vasconcelos Meehan', 'Rua dos Abraços 32', 912789927, 131901549, "1999-01-27");
INSERT INTO Pessoa VALUES (87362, 'Henrique Freitas', 'Rua das Tupipas 45', 962834628, 128168249, "1999-02-17");
INSERT INTO Pessoa VALUES (37492, 'João Renato Pinto', 'Avenida Antonio Coelho', 916725862, 194725549, "1999-02-10");
INSERT INTO Pessoa VALUES (69572, 'João Maria Sousa', 'Avenida Antonio Cupertino Miranda', 911529635, 178925638, "1999-09-22");
INSERT INTO Pessoa VALUES (78551, 'Antonio Freitas Coelho', 'Rua Hernani Torres 15', 911529635, 137922519, "1999-10-28");

INSERT INTO Pessoa VALUES (23563, "Martim Martim Goncalves Guerreiro", "Rua de Francisco Nunes", 925745165, 9476052557, "1959-9-9");
INSERT INTO Piloto VALUES (27784, 2419, 23563);
INSERT INTO Pessoa VALUES (08108, "Filipe Rafeel Simoes Carneiro", "Rua de Joao Antunes", 923801797, 6463521791, "1990-3-5");
INSERT INTO Piloto VALUES (19914, 3545, 08108);
INSERT INTO Pessoa VALUES (14013, "Rafeel Tomas Silva Pinheiro", "Rua de Jose Neto", 923138076, 7060112809, "1930-8-21");
INSERT INTO Piloto VALUES (64645, 3614, 14013);
INSERT INTO Pessoa VALUES (76503, "Carlos Joao Moreira Tavares", "Rua de Martim Pires", 927983799, 3525915548, "1952-5-19");
INSERT INTO Piloto VALUES (95228, 3304, 76503);
INSERT INTO Pessoa VALUES (89313, "Henrique Bernardo Fernandes Figueiredo", "Rua de Bernardo Teixeira", 920776414, 5240549642, "1975-4-24");
INSERT INTO Piloto VALUES (02467, 323, 89313);
INSERT INTO Pessoa VALUES (21527, "Tomas Ricardo Vicente Machado", "Rua de Joao Ferreira", 923594971, 0392760145, "1952-9-16");
INSERT INTO Piloto VALUES (61758, 3549, 21527);
INSERT INTO Pessoa VALUES (23473, "Ricardo Henrique Paiva Barros", "Rua de Jorge Pinto", 924577757, 3587729281, "1951-1-18");
INSERT INTO Piloto VALUES (33993, 956, 23473);
INSERT INTO Pessoa VALUES (72011, "Tomas Antonio Carneiro Melo", "Rua de Bernardo Santos", 921560630, 2585904087, "1953-11-24");
INSERT INTO Piloto VALUES (34873, 2292, 72011);
INSERT INTO Pessoa VALUES (22253, "Jose Carlos Alves Sousa", "Rua de Rui Nascimento", 921130312, 0146900379, "1941-2-1");
INSERT INTO Piloto VALUES (73834, 480, 22253);
INSERT INTO Pessoa VALUES (56637, "Carlos Mario Neves Silva", "Rua de Joaquim Raposo", 921257465, 3905083230, "1953-4-14");
INSERT INTO Piloto VALUES (19693, 2614, 56637);
INSERT INTO Pessoa VALUES (23184, "Carlos Tomas Silva Neto", "Rua de Antonio Teixeira", 927564042, 5651250909, "1957-11-4");
INSERT INTO Piloto VALUES (67329, 2272, 23184);
INSERT INTO Pessoa VALUES (39729, "Henrique Mario Esteves Santos", "Rua de Carlos Lourenco", 923436835, 8682168539, "1993-11-16");
INSERT INTO Piloto VALUES (87395, 1031, 39729);
INSERT INTO Pessoa VALUES (10499, "Pedro Martim Almeida Leite", "Rua de Martim Amorim", 924409697, 4751502361, "2006-5-25");
INSERT INTO Piloto VALUES (08844, 1920, 10499);
INSERT INTO Pessoa VALUES (00352, "Martim Antonio Matos Ramos", "Rua de Tomas Borges", 925558256, 2767112339, "1954-11-7");
INSERT INTO Piloto VALUES (44888, 3320, 00352);
INSERT INTO Pessoa VALUES (26457, "Filipe Rafeel Almeida Pinto", "Rua de Henrique Moreira", 920420523, 8981123330, "1953-10-21");
INSERT INTO Piloto VALUES (94889, 1581, 26457);


INSERT INTO Pessoa VALUES (19336, "Josefa Francisca Rodrigues Mota", "Rua de Pedro Gomes", 925016421, 4118961348, "1948-6-10");
INSERT INTO AssistenteBordo VALUES (64678, 2564, 19336);
INSERT INTO Pessoa VALUES (01776, "Josefa Luisa Nunes Azevedo", "Rua de Joao Neto", 927655444, 7428932101, "1978-7-23");
INSERT INTO AssistenteBordo VALUES (77871, 2021, 01776);
INSERT INTO Pessoa VALUES (85860, "Antonieta Mara Nascimento Valente", "Rua de Jorge Antunes", 929704189, 8773613182, "1980-2-25");
INSERT INTO AssistenteBordo VALUES (66777, 2442, 85860);
INSERT INTO Pessoa VALUES (61194, "Carolina Ines Vaz Almeida", "Rua de Filipe Santos", 920948961, 4841916727, "1987-11-26");
INSERT INTO AssistenteBordo VALUES (15148, 3792, 61194);
INSERT INTO Pessoa VALUES (51822, "Leonor Carolina Ribeiro Brito", "Rua de Francisco Silva", 928721804, 1398066033, "1976-1-13");
INSERT INTO AssistenteBordo VALUES (86150, 2326, 51822);
INSERT INTO Pessoa VALUES (89417, "Carolina Maria Mendes Ramos", "Rua de Filipe Esteves", 929633522, 2919366202, "1934-5-4");
INSERT INTO AssistenteBordo VALUES (76174, 3483, 89417);
INSERT INTO Pessoa VALUES (31538, "Rita Juliana Nascimento Pires", "Rua de Jose Pires", 924187389, 9464652747, "1982-6-5");
INSERT INTO AssistenteBordo VALUES (94967, 3897, 31538);
INSERT INTO Pessoa VALUES (15812, "Telma Sofia Reis Leal", "Rua de Mario Silva", 924543707, 5150875573, "1957-12-27");
INSERT INTO AssistenteBordo VALUES (42381, 653, 15812);
INSERT INTO Pessoa VALUES (36139, "Leonor Bernardete Cruz Ramos", "Rua de Henrique Lima", 921420407, 9329314474, "1946-6-17");
INSERT INTO AssistenteBordo VALUES (74895, 2061, 36139);
INSERT INTO Pessoa VALUES (80519, "Ines Telma Machado Correia", "Rua de Martim Baptista", 921376145, 7611958524, "1990-3-1");
INSERT INTO AssistenteBordo VALUES (14019, 2561, 80519);
INSERT INTO Pessoa VALUES (43457, "Leonor Marta Garcia Pinto", "Rua de Pedro Paiva", 927754811, 3112335737, "1931-5-0");
INSERT INTO AssistenteBordo VALUES (62427, 2569, 43457);
INSERT INTO Pessoa VALUES (97640, "Juliana Francisca Nunes Leal", "Rua de Jorge Assuncao", 926234399, 7695204549, "1962-9-11");
INSERT INTO AssistenteBordo VALUES (28210, 2132, 97640);



INSERT INTO Pessoa VALUES (03534, "Jose Francisco Melo Sousa", "Rua de Jose Barbosa", 925166275, 5925955216, "1930-2-4");
INSERT INTO AssistenteBordo VALUES (15944, 1301, 03534);
INSERT INTO Pessoa VALUES (27878, "Filipe Martim Cardoso Sousa", "Rua de Rafeel Rocha", 928759974, 7660735960, "1951-8-3");
INSERT INTO AssistenteBordo VALUES (58672, 1442, 27878);
INSERT INTO Pessoa VALUES (64309, "Joao Francisco Vicente Nunes", "Rua de Rafeel Torres", 929979374, 2631193028, "2007-7-19");
INSERT INTO AssistenteBordo VALUES (71171, 3496, 64309);
INSERT INTO Pessoa VALUES (09043, "Joaquim Jose Sousa Carneiro", "Rua de Francisco Vieira", 924687078, 4345773638, "1985-5-10");
INSERT INTO AssistenteBordo VALUES (25528, 1096, 09043);
INSERT INTO Pessoa VALUES (15881, "Tomas Francisco Fernandes Magalhaes", "Rua de Jose Teixeira", 924342291, 0378263812, "1945-7-5");
INSERT INTO AssistenteBordo VALUES (21435, 1550, 15881);
INSERT INTO Pessoa VALUES (44818, "Martim Pedro Baptista Goncalves", "Rua de Tomas Cardoso", 920516177, 4546380859, "1936-2-8");
INSERT INTO AssistenteBordo VALUES (43049, 3993, 44818);



--Conta
INSERT INTO Conta VALUES ('markmtvm@gmail.com', 'JSM2s]5\G', 0);
INSERT INTO Conta VALUES ('ahuvulle-9435@yopmail.com', '+&<u8PvZN', 0);
INSERT INTO Conta VALUES ('gamma@yahoo.ca', '2p^8?pcC{', 0);

--Passageiro
INSERT INTO Passageiro VALUES (69019, 'markmtvm@gmail.com', 28158);
INSERT INTO Passageiro VALUES (34059, 'ahuvulle-9435@yopmail.com', 87362);
INSERT INTO Passageiro VALUES (91712, 'gamma@yahoo.ca', 37492);

--Bilhete
INSERT INTO Bilhete VALUES (100, 45, 'markmtvm@gmail.com', 'HXXD1');

--Bagagem
INSERT INTO Bagagem VALUES (70201, 1, 1, 0.8, 20, 100);


