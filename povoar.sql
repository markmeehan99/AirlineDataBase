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
INSERT INTO Voo VALUES ('JRPO8', '2018-04-22 12:05', '2018-04-22 13:35', '1:30', 92055);
INSERT INTO Voo VALUES ('2HAWF', '2018-04-22 14:05', '2018-04-22 15:35', '1:30', 92055);
INSERT INTO Voo VALUES ('L1NPP', '2018-04-22 15:05', '2018-04-22 16:35', '1:30', 92055);
INSERT INTO Voo VALUES ('T0ZA6', '2018-04-22 17:05', '2018-04-22 18:35', '1:30', 92055);
INSERT INTO Voo VALUES ('UAVZ5', '2018-04-22 20:00', '2018-04-22 21:30', '1:30', 92055);
INSERT INTO Voo VALUES ('OYX40', '2018-04-22 22:15', '2018-04-22 23:45', '1:30', 92055);

-- idVoo original, acrescentar duracao e correspondentes horas
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
-- PAISES COMPLETOS, PRONTOS A DESCOMENTAR
-- INSERT INTO Pais VALUES ('Monaco');
-- INSERT INTO Pais VALUES ('Italia');
-- INSERT INTO Pais VALUES ('Espanha');
-- INSERT INTO Pais VALUES ('Suica');
-- INSERT INTO Pais VALUES ('PaisesBaixos');
-- INSERT INTO Pais VALUES ('Alemanha');

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
-- AEROPORTOS COMPLETOS, PRONTOS A DESCOMENTAR QUANDO FOR PRECISO
-- INSERT INTO Aeroporto VALUES ('MAD', 'Adolfo Suárez Madrid–Barajas', 'Espanha');
-- INSERT INTO Aeroporto VALUES ('BCN', 'Barcelona International', 'Espanha');
-- INSERT INTO Aeroporto VALUES ('MAN', 'Manchester', 'Inglaterra');
-- INSERT INTO Aeroporto VALUES ('LPL', 'Liverpool John Lennon', 'Inglaterra');
-- INSERT INTO Aeroporto VALUES ('LGW', 'London Gatwick', 'Inglaterra');
-- INSERT INTO Aeroporto VALUES ('LHR', 'London Heathrow', 'Inglaterra');
-- INSERT INTO Aeroporto VALUES ('TRN', 'Turin', 'Italia');
-- INSERT INTO Aeroporto VALUES ('FCO', 'Leonardo Da Vinci–Fiumicino', 'Italia');
-- INSERT INTO Aeroporto VALUES ('MCM', 'Monaco', 'Monaco');
-- INSERT INTO Aeroporto VALUES ('AGP', 'Malaga', 'Espanha');
-- INSERT INTO Aeroporto VALUES ('TLS', 'Toulouse-Blagnac', 'Franca');
-- INSERT INTO Aeroporto VALUES ('ZRH', 'Zurich', 'Suica');
-- INSERT INTO Aeroporto VALUES ('AMS', 'Amsterdam Schiphol', 'PaisesBaixos');
-- INSERT INTO Aeroporto VALUES ('FRA', 'Frankfurt Am Main', 'Alemanha');
-- INSERT INTO Aeroporto VALUES ('DTM', 'Dortmund', 'Alemanha');


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

--Piloto
INSERT INTO Piloto VALUES (88093, 1200, 69572);

--AssistenteBordo
INSERT INTO AssistenteBordo VALUES (67551, 800, 69572);