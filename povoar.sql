PRAGMA foreign_keys = on;

--Aviao
INSERT INTO Aviao VALUES (1, 60, 2656, 'Bombardier', 'Dash8 Q400');
INSERT INTO Aviao VALUES (2, 60, 2656, 'Bombardier', 'Dash8 Q400');
INSERT INTO Aviao VALUES (3, 60, 2656, 'Bombardier', 'Dash8 Q400');
INSERT INTO Aviao VALUES (4, 60, 2656, 'Bombardier', 'Dash8 Q400');
INSERT INTO Aviao VALUES (5, 37, 1839, 'Bombardier', 'Dash8 Q200');
INSERT INTO Aviao VALUES (6, 37, 1839, 'Bombardier', 'Dash8 Q200');
INSERT INTO Aviao VALUES (7, 161, 4400, 'Airbus', 'A320');
INSERT INTO Aviao VALUES (8, 161, 4400, 'Airbus', 'A320');
INSERT INTO Aviao VALUES (9, 161, 4400, 'Airbus', 'A320');
INSERT INTO Aviao VALUES (10, 222, 9200, 'Airbus', 'A310');
INSERT INTO Aviao VALUES (11, 283, 13450, 'Airbus', 'A330');
INSERT INTO Aviao VALUES (12, 186, 7400, 'Airbus', 'A321neo');
INSERT INTO Aviao VALUES (13, 186, 7400, 'Airbus', 'A321neo');




--Voo
--pdl / flw (ida e volta)
INSERT INTO Voo VALUES ('AAAAA', '2018-04-14 12:05', '2018-04-14 13:05', '1:00', 1);
INSERT INTO Voo VALUES ('AAAAB', '2018-04-14 13:25', '2018-04-14 14:25', '1:00', 1);
--pdl / hor (ida e volta)
INSERT INTO Voo VALUES ('AACAA', '2018-04-14 11:00', '2018-04-14 11:40', '0:40', 3);
INSERT INTO Voo VALUES ('AACAB', '2018-04-14 12:00', '2018-04-14 12:40', '0:40', 3);
--pdl / ter 
INSERT INTO Voo VALUES ('AADAA', '2018-04-14 10:00', '2018-04-14 10:25', '0:25', 2);
INSERT INTO Voo VALUES ('AADAB', '2018-04-14 10:45', '2018-04-14 11:10', '0:25', 2);
INSERT INTO Voo VALUES ('AADBA', '2018-04-14 17:00', '2018-04-14 17:30', '0:30', 6);
INSERT INTO Voo VALUES ('AADBB', '2018-04-14 17:50', '2018-04-14 18:20', '0:30', 6);



--Pais
INSERT INTO Pais VALUES ('Portugal');
INSERT INTO Pais VALUES ('Irlanda');
INSERT INTO Pais VALUES ('Franca');
INSERT INTO Pais VALUES ('Escocia');
INSERT INTO Pais VALUES ('Inglaterra');



--Aeroporto

INSERT INTO Aeroporto VALUES ('FLW', 'Aeroporto das Flores', 'Portugal');
INSERT INTO Aeroporto VALUES ('HOR', 'Aeroporto da Horta', 'Portugal');
INSERT INTO Aeroporto VALUES ('TER', 'Aeroporto das Lajes', 'Portugal');
INSERT INTO Aeroporto VALUES ('PDL', 'Aeroporto Papa João Paulo II', 'Portugal');


--Origem 
-- pdl / flw
INSERT INTO Origem VALUES ('AAAAA', 'PDL'); --ida
INSERT INTO Origem VALUES ('AAAAB', 'FLW'); --volta
--pdl hor
INSERT INTO Origem VALUES ('AACAA', 'PDL');
INSERT INTO Origem VALUES ('AACAB', 'HOR');
--pdl ter
INSERT INTO Origem VALUES ('AADAA', 'PDL'); --ida
INSERT INTO Origem VALUES ('AADAB', 'TER'); --volta
INSERT INTO Origem VALUES ('AADBA', 'PDL'); --ida
INSERT INTO Origem VALUES ('AADBB', 'TER'); --volta




--Destino
-- voo pdl flw
INSERT INTO Destino VALUES ('AAAAA', 'FLW'); --ida
INSERT INTO Destino VALUES ('AAAAB', 'PDL'); --volta
-- pdl hor
INSERT INTO Destino VALUES ('AACAA', 'HOR');
INSERT INTO Destino VALUES ('AACAB', 'PDL');
-- pdl ter
INSERT INTO Destino VALUES ('AADAA', 'TER'); --ida
INSERT INTO Destino VALUES ('AADAB', 'PDL'); --volta
INSERT INTO Destino VALUES ('AADBA', 'TER'); --ida
INSERT INTO Destino VALUES ('AADBB', 'PDL'); --volta


--Voo AABAA pdl hor
--pilotos
INSERT INTO Pessoa VALUES (46115, "Martim Mendes", "Avenida de Fernandes, 31
3822-326 Anadia", "935994510", "3568600121", "1997-06-24");
INSERT INTO Piloto VALUES (5, 4680, 46115);
INSERT INTO Pilotagem VALUES (5, "AACAA");
INSERT INTO Nacionalidade VALUES (46115, "Portugal");


INSERT INTO Pessoa VALUES (67003, "Raquel Pinheiro", "Rua Cunha, 16
8154-229 Gafanha da Nazaré", "(351) 934 832 504", "7388340741", "1973-10-04");
INSERT INTO Piloto VALUES (6, 4020, 67003);
INSERT INTO Pilotagem VALUES (6, "AACAA");
INSERT INTO Nacionalidade VALUES (67003, "Portugal");


--bordo

INSERT INTO Pessoa VALUES (89318, "Emanuel Vicente", "Largo Melo, 60
8089-609 Olhão", "(351) 910670519", "5372429838", "1972-11-05");
INSERT INTO AssistenteBordo VALUES (25, 2795, 89318);
INSERT INTO PessoalCabine VALUES (25, "AACAA");
INSERT INTO Nacionalidade VALUES (89318, "Portugal");

INSERT INTO Pessoa VALUES (05656, "Kévim Cruz", "Av de Leal, 71
5825-556 Esmoriz", "914 150 914", "2166585198", "1960-06-25");
INSERT INTO AssistenteBordo VALUES (26, 1444, 05656);
INSERT INTO PessoalCabine VALUES (26, "AACAA");
INSERT INTO Nacionalidade VALUES (05656, "Portugal");



--passageiros

INSERT INTO Pessoa VALUES (45895, "Noa Pinheiro", "Avenida Batista, 61
7497-184 Caniço", "(351) 918 972 492", "1262213189", "1941-07-19");
INSERT INTO Conta VALUES ("btorres@gmail.com", "*n0j@zb3", 302);
INSERT INTO Passageiro VALUES (52284, "btorres@gmail.com", 45895);
INSERT INTO Bilhete VALUES (1214, 3, 59, "btorres@gmail.com", "AACAA");
INSERT INTO Bagagem VALUES (221044, 0.76, 0.85, 0.42, 8, 1214);
INSERT INTO Nacionalidade VALUES (45895, "Portugal");


INSERT INTO Pessoa VALUES (36287, "Gabriela Morais", "Largo de Cardoso, 8
5774-048 Sintra", "927 741 082", "9142742113", "1976-10-09");
INSERT INTO Conta VALUES ("vazjoana@rodrigues.pt", "_7ycv*dl", 1311);
INSERT INTO Passageiro VALUES (32498, "vazjoana@rodrigues.pt", 36287);
INSERT INTO Bilhete VALUES (1215, 4, 59, "vazjoana@rodrigues.pt", "AACAA");
INSERT INTO Bagagem VALUES (847728, 0.54, 0.76, 0.75, 13, 1215);
INSERT INTO Nacionalidade VALUES (36287, "Irlanda");


INSERT INTO Pessoa VALUES (30734, "Gil Nunes", "Avenida de Pinto, 41
6005-123 Agualva-Cacém", "911944689", "0228971446", "1937-09-09");
INSERT INTO Conta VALUES ("dominguesalicia@cardoso.net", "(3t2a70x", 1424);
INSERT INTO Passageiro VALUES (93991, "dominguesalicia@cardoso.net", 30734);
INSERT INTO Bilhete VALUES (1216, 5, 59, "dominguesalicia@cardoso.net", "AACAA");
INSERT INTO Bagagem VALUES (529967, 0.8, 0.79, 0.63, 4, 1216);
INSERT INTO Nacionalidade VALUES (30734, "Portugal");


INSERT INTO Pessoa VALUES (63787, "Alícia-Irina Moreira", "Largo Lucas Garcia, S/N
8507-713 Fiães", "(351) 913 875 877", "3214582432", "1941-10-01");
INSERT INTO Conta VALUES ("oliveiramelanie@hotmail.com", "md)8(0tx", 1529);
INSERT INTO Passageiro VALUES (82002, "oliveiramelanie@hotmail.com", 63787);
INSERT INTO Bilhete VALUES (1217, 6, 59, "oliveiramelanie@hotmail.com", "AACAA");
INSERT INTO Bagagem VALUES (31141, 0.89, 0.69, 0.36, 24, 1217);
INSERT INTO Nacionalidade VALUES (63787, "Portugal");


INSERT INTO Pessoa VALUES (36489, "Edgar Vicente", "Travessa de Reis, 136
5623-964 Vila Nova de Gaia", "(351) 254250627", "0274727673", "1983-07-15");
INSERT INTO Conta VALUES ("ipaiva@carneiro.com", "h1(5*7fz", 1503);
INSERT INTO Passageiro VALUES (07394, "ipaiva@carneiro.com", 36489);
INSERT INTO Bilhete VALUES (1218, 7, 59, "ipaiva@carneiro.com", "AACAA");
INSERT INTO Bagagem VALUES (536262, 0.96, 1.17, 0.31, 6, 1218);
INSERT INTO Nacionalidade VALUES (36489, "Portugal");


INSERT INTO Pessoa VALUES (26335, "Lucas-Lúcia Jesus", "Largo Assunção, 138
3845-701 Santa Maria da Feira", "(351) 283 787 404", "8165495119", "2004-11-11");
INSERT INTO Conta VALUES ("martinscristiano@oliveira.org", "p!2^3cee", 1967);
INSERT INTO Passageiro VALUES (26698, "martinscristiano@oliveira.org", 26335);
INSERT INTO Bilhete VALUES (1219, 8, 59, "martinscristiano@oliveira.org", "AACAA");
INSERT INTO Bagagem VALUES (366332, 0.94, 0.75, 0.77, 5, 1219);
INSERT INTO Nacionalidade VALUES (26335, "Portugal");


INSERT INTO Pessoa VALUES (00725, "Álvaro Santos", "Rua de Cardoso, 855
8138-315 Agualva-Cacém", "(351) 921264695", "6484977709", "1937-04-17");
INSERT INTO Conta VALUES ("arturguerreiro@hotmail.com", "#a8z0h3u", 2484);
INSERT INTO Passageiro VALUES (28883, "arturguerreiro@hotmail.com", 00725);
INSERT INTO Bilhete VALUES (1220, 9, 59, "arturguerreiro@hotmail.com", "AACAA");
INSERT INTO Bagagem VALUES (363784, 0.58, 0.87, 0.64, 27, 1220);
INSERT INTO Nacionalidade VALUES (00725, "Portugal");


INSERT INTO Pessoa VALUES (02428, "Fabiana Lourenço", "Rua Lima, 936
6578-069 Guimarães", "(351) 929 012 836", "9123378517", "2000-06-16");
INSERT INTO Conta VALUES ("tvalente@pinheiro.com", "w_51mir3", 1412);
INSERT INTO Passageiro VALUES (59286, "tvalente@pinheiro.com", 02428);
INSERT INTO Bilhete VALUES (1221, 10, 59, "tvalente@pinheiro.com", "AACAA");
INSERT INTO Bagagem VALUES (911676, 1.11, 0.61, 0.54, 6, 1221);
INSERT INTO Nacionalidade VALUES (02428, "Portugal");


INSERT INTO Pessoa VALUES (90171, "Fábio Anjos", "R. de Pinheiro, 50
6581-370 Vizela", "916 432 301", "5850225888", "1934-05-27");
INSERT INTO Conta VALUES ("igornascimento@pires.net", "$9jov7kg", 362);
INSERT INTO Passageiro VALUES (78028, "igornascimento@pires.net", 90171);
INSERT INTO Bilhete VALUES (1222, 11, 59, "igornascimento@pires.net", "AACAA");
INSERT INTO Bagagem VALUES (901092, 0.91, 0.69, 0.77, 13, 1222);
INSERT INTO Nacionalidade VALUES (90171, "Portugal");


INSERT INTO Pessoa VALUES (12208, "Alexandre Reis", "Avenida Nascimento, 34
7175-342 Odivelas", "218 231 661", "2517412425", "2004-06-27");
INSERT INTO Conta VALUES ("gustavo87@hotmail.com", "$c7n^9*g", 1152);
INSERT INTO Passageiro VALUES (48006, "gustavo87@hotmail.com", 12208);
INSERT INTO Bilhete VALUES (1223, 12, 59, "gustavo87@hotmail.com", "AACAA");
INSERT INTO Bagagem VALUES (522240, 1.05, 0.72, 0.72, 35, 1223);
INSERT INTO Nacionalidade VALUES (12208, "Portugal");


INSERT INTO Pessoa VALUES (21724, "Lourenço Silva", "R. Valente, 158
8437-928 Vizela", "(351) 242 338 740", "2096388831", "1962-04-26");
INSERT INTO Conta VALUES ("amorimsandro@barbosa.pt", "#m)5wgkn", 1529);
INSERT INTO Passageiro VALUES (47374, "amorimsandro@barbosa.pt", 21724);
INSERT INTO Bilhete VALUES (1224, 13, 59, "amorimsandro@barbosa.pt", "AACAA");
INSERT INTO Bagagem VALUES (228834, 0.51, 0.95, 0.4, 6, 1224);
INSERT INTO Nacionalidade VALUES (21724, "Portugal");


INSERT INTO Pessoa VALUES (98239, "Marco-Gil Martins", "Rua Álvaro Sousa, 77
5167-785 Entroncamento", "+351936958321", "3371506666", "1957-10-18");
INSERT INTO Conta VALUES ("lealpedro@lourenco.com", "e)$3t3eu", 1170);
INSERT INTO Passageiro VALUES (59727, "lealpedro@lourenco.com", 98239);
INSERT INTO Bilhete VALUES (1225, 14, 59, "lealpedro@lourenco.com", "AACAA");
INSERT INTO Bagagem VALUES (301204, 1.04, 0.94, 0.54, 29, 1225);
INSERT INTO Nacionalidade VALUES (98239, "Inglaterra");


INSERT INTO Pessoa VALUES (89587, "Matilde Andrade", "Largo Cruz, 7
0782-212 Mangualde", "917756921", "2289326024", "1979-10-11");
INSERT INTO Conta VALUES ("david78@cruz.com", ")&33p3cv", 1385);
INSERT INTO Passageiro VALUES (30892, "david78@cruz.com", 89587);
INSERT INTO Bilhete VALUES (1226, 15, 59, "david78@cruz.com", "AACAA");
INSERT INTO Bagagem VALUES (184365, 1.14, 0.8, 0.77, 33, 1226);
INSERT INTO Nacionalidade VALUES (89587, "Portugal");


INSERT INTO Pessoa VALUES (80327, "Ivan Alves", "R. Raquel Nogueira, 9
2950-636 Viseu", "968 290 848", "2676950598", "1999-08-22");
INSERT INTO Conta VALUES ("bvaz@borges.com", "$4_vn!@n", 2879);
INSERT INTO Passageiro VALUES (14467, "bvaz@borges.com", 80327);
INSERT INTO Bilhete VALUES (1227, 16, 59, "bvaz@borges.com", "AACAA");
INSERT INTO Bagagem VALUES (883716, 1.1, 0.85, 0.41, 16, 1227);
INSERT INTO Nacionalidade VALUES (80327, "Portugal");


INSERT INTO Pessoa VALUES (88051, "Matilde Marques", "R. Pereira, 75
0226-219 Ponta Delgada", "(351) 939153078", "7009915774", "1946-10-26");
INSERT INTO Conta VALUES ("daniela04@gmail.com", "d$1j23vn", 2896);
INSERT INTO Passageiro VALUES (62615, "daniela04@gmail.com", 88051);
INSERT INTO Bilhete VALUES (1228, 17, 59, "daniela04@gmail.com", "AACAA");
INSERT INTO Bagagem VALUES (868180, 1.06, 0.9, 0.32, 1, 1228);
INSERT INTO Nacionalidade VALUES (88051, "Inglaterra");


INSERT INTO Pessoa VALUES (37790, "Kyara Rocha", "Rua Cruz, 89
0122-655 Póvoa de Santa Iria", "(351) 267 523 546", "8802264205", "2000-11-10");
INSERT INTO Conta VALUES ("dpereira@magalhaes.pt", "(1cnatxr", 681);
INSERT INTO Passageiro VALUES (36721, "dpereira@magalhaes.pt", 37790);
INSERT INTO Bilhete VALUES (1229, 18, 59, "dpereira@magalhaes.pt", "AACAA");
INSERT INTO Bagagem VALUES (851127, 1.06, 0.99, 0.65, 28, 1229);
INSERT INTO Nacionalidade VALUES (37790, "Portugal");


INSERT INTO Pessoa VALUES (50128, "Micael Fernandes", "R. Fernandes, S/N
7866-373 Vila do Conde", "(351) 937764972", "7419369369", "1964-02-06");
INSERT INTO Conta VALUES ("mloureiro@simoes.com", "%t!^4fh2", 1446);
INSERT INTO Passageiro VALUES (40072, "mloureiro@simoes.com", 50128);
INSERT INTO Bilhete VALUES (1230, 19, 59, "mloureiro@simoes.com", "AACAA");
INSERT INTO Bagagem VALUES (154868, 1.15, 0.99, 0.63, 18, 1230);
INSERT INTO Nacionalidade VALUES (50128, "Portugal");


INSERT INTO Pessoa VALUES (00857, "Jorge Vaz", "Avenida Moreira, S/N
0990-770 Estarreja", "(351) 960 457 860", "1861749130", "2002-12-23");
INSERT INTO Conta VALUES ("melissapinto@sapo.pt", "%hc+0@hm", 357);
INSERT INTO Passageiro VALUES (48991, "melissapinto@sapo.pt", 00857);
INSERT INTO Bilhete VALUES (1231, 20, 59, "melissapinto@sapo.pt", "AACAA");
INSERT INTO Bagagem VALUES (24020, 0.98, 1.04, 0.66, 4, 1231);
INSERT INTO Nacionalidade VALUES (00857, "Portugal");


INSERT INTO Pessoa VALUES (51612, "Mário do Sá", "Av Mia Gomes, 74
2926-907 Ermesinde", "(351) 933 777 910", "8208241049", "1947-12-20");
INSERT INTO Conta VALUES ("paulo88@lourenco.com", "vm!%st7x", 464);
INSERT INTO Passageiro VALUES (64650, "paulo88@lourenco.com", 51612);
INSERT INTO Bilhete VALUES (1232, 21, 59, "paulo88@lourenco.com", "AACAA");
INSERT INTO Bagagem VALUES (992341, 0.91, 1.06, 0.38, 11, 1232);
INSERT INTO Nacionalidade VALUES (51612, "Portugal");


INSERT INTO Pessoa VALUES (26012, "Santiago Paiva", "Travessa de Marques, 6
9946-097 Aveiro", "(351) 932 239 064", "2307676063", "1932-05-14");
INSERT INTO Conta VALUES ("arianamachado@clix.pt", "^!pk0v52", 309);
INSERT INTO Passageiro VALUES (86417, "arianamachado@clix.pt", 26012);
INSERT INTO Bilhete VALUES (1233, 22, 59, "arianamachado@clix.pt", "AACAA");
INSERT INTO Bagagem VALUES (210832, 0.93, 1.02, 0.53, 7, 1233);
INSERT INTO Nacionalidade VALUES (26012, "Portugal");


INSERT INTO Pessoa VALUES (70449, "Alícia Matos", "Largo Rui Garcia, 261
1048-873 Castelo Branco", "(351) 932639726", "6864670389", "1977-08-24");
INSERT INTO Conta VALUES ("oliveiraangelo@carvalho.pt", "*4unv1@a", 714);
INSERT INTO Passageiro VALUES (49784, "oliveiraangelo@carvalho.pt", 70449);
INSERT INTO Bilhete VALUES (1234, 23, 59, "oliveiraangelo@carvalho.pt", "AACAA");
INSERT INTO Bagagem VALUES (792362, 1.12, 0.77, 0.43, 17, 1234);
INSERT INTO Nacionalidade VALUES (70449, "Portugal");


INSERT INTO Pessoa VALUES (71661, "Gil Ferreira", "R. Carneiro, 2
7006-544 São Salvador de Lordelo", "(351) 935 002 530", "2962730305", "1934-07-26");
INSERT INTO Conta VALUES ("igor60@hotmail.com", "(@7vz*ca", 894);
INSERT INTO Passageiro VALUES (14202, "igor60@hotmail.com", 71661);
INSERT INTO Bilhete VALUES (1235, 24, 59, "igor60@hotmail.com", "AACAA");
INSERT INTO Bagagem VALUES (420481, 0.8, 1.12, 0.55, 13, 1235);
INSERT INTO Nacionalidade VALUES (71661, "Portugal");


INSERT INTO Pessoa VALUES (52220, "Samuel da Neto", "Travessa Isaac Barbosa, 70
9072-865 Póvoa de Santa Iria", "(351) 918184283", "7045325524", "1986-01-11");
INSERT INTO Conta VALUES ("anjosnoah@cunha.com", "+72kx68r", 2015);
INSERT INTO Passageiro VALUES (69287, "anjosnoah@cunha.com", 52220);
INSERT INTO Bilhete VALUES (1236, 25, 59, "anjosnoah@cunha.com", "AACAA");
INSERT INTO Bagagem VALUES (308351, 0.93, 0.84, 0.33, 22, 1236);
INSERT INTO Nacionalidade VALUES (52220, "Portugal");


INSERT INTO Pessoa VALUES (40375, "Brian de Ferreira", "Travessa Jaime Matias, 64
8650-378 Chaves", "(351) 242 400 077", "1797370891", "1987-12-27");
INSERT INTO Conta VALUES ("emanuelvalente@sapo.pt", "xuz*%2wc", 901);
INSERT INTO Passageiro VALUES (00983, "emanuelvalente@sapo.pt", 40375);
INSERT INTO Bilhete VALUES (1237, 26, 59, "emanuelvalente@sapo.pt", "AACAA");
INSERT INTO Bagagem VALUES (774811, 0.69, 0.91, 0.36, 20, 1237);
INSERT INTO Nacionalidade VALUES (40375, "Portugal");


INSERT INTO Pessoa VALUES (82923, "Manuel Batista", "Rua Magalhães, 3
8106-144 Maia", "(351) 930 781 849", "6946920884", "1941-11-15");
INSERT INTO Conta VALUES ("uaraujo@correia.com", "ks&z21^o", 961);
INSERT INTO Passageiro VALUES (07528, "uaraujo@correia.com", 82923);
INSERT INTO Bilhete VALUES (1238, 27, 59, "uaraujo@correia.com", "AACAA");
INSERT INTO Bagagem VALUES (762236, 1.13, 0.64, 0.74, 5, 1238);
INSERT INTO Nacionalidade VALUES (82923, "Portugal");


INSERT INTO Pessoa VALUES (62313, "Bruno-Pedro Matos", "Travessa Coelho, 56
4395-457 Seia", "(351) 916509222", "0571580130", "2007-09-07");
INSERT INTO Conta VALUES ("naiara83@figueiredo.pt", "%+4kqtjm", 739);
INSERT INTO Passageiro VALUES (46406, "naiara83@figueiredo.pt", 62313);
INSERT INTO Bilhete VALUES (1239, 28, 59, "naiara83@figueiredo.pt", "AACAA");
INSERT INTO Bagagem VALUES (23263, 0.92, 1.03, 0.54, 15, 1239);
INSERT INTO Nacionalidade VALUES (62313, "Portugal");


INSERT INTO Pessoa VALUES (86628, "Miguel Machado", "Travessa de Fonseca, 12
6618-011 Valpaços", "(351) 255 936 826", "2147644655", "1956-04-01");
INSERT INTO Conta VALUES ("joaosousa@anjos.com", "l$(91kpt", 2807);
INSERT INTO Passageiro VALUES (51235, "joaosousa@anjos.com", 86628);
INSERT INTO Bilhete VALUES (1240, 29, 59, "joaosousa@anjos.com", "AACAA");
INSERT INTO Bagagem VALUES (518396, 0.93, 1.17, 0.54, 30, 1240);
INSERT INTO Nacionalidade VALUES (86628, "Portugal");


INSERT INTO Pessoa VALUES (16112, "Francisco Lopes", "Av Lucas Campos, 61
2084-655 Peniche", "+351965360512", "3951414217", "1965-03-19");
INSERT INTO Conta VALUES ("britovitoria@clix.pt", "o8_!6uh+", 1467);
INSERT INTO Passageiro VALUES (36832, "britovitoria@clix.pt", 16112);
INSERT INTO Bilhete VALUES (1241, 30, 59, "britovitoria@clix.pt", "AACAA");
INSERT INTO Bagagem VALUES (738780, 0.84, 0.76, 0.57, 32, 1241);
INSERT INTO Nacionalidade VALUES (16112, "Portugal");


INSERT INTO Pessoa VALUES (03264, "Gustavo Ribeiro", "R. de Fonseca, S/N
3350-569 Almeirim", "+351935310753", "2520536987", "1943-03-24");
INSERT INTO Conta VALUES ("mlopes@paiva.com", "uic!we4w", 587);
INSERT INTO Passageiro VALUES (40339, "mlopes@paiva.com", 03264);
INSERT INTO Bilhete VALUES (1242, 31, 59, "mlopes@paiva.com", "AACAA");
INSERT INTO Bagagem VALUES (174714, 0.57, 0.93, 0.54, 24, 1242);
INSERT INTO Nacionalidade VALUES (03264, "Portugal");


INSERT INTO Pessoa VALUES (08832, "Melissa Marques", "Rua William Gomes, 6
0441-797 Sacavém", "257301874", "7838357058", "1939-02-15");
INSERT INTO Conta VALUES ("kellypinheiro@hotmail.com", "p(r60gem", 744);
INSERT INTO Passageiro VALUES (70942, "kellypinheiro@hotmail.com", 08832);
INSERT INTO Bilhete VALUES (1243, 32, 59, "kellypinheiro@hotmail.com", "AACAA");
INSERT INTO Bagagem VALUES (263529, 1.07, 1.05, 0.69, 9, 1243);
INSERT INTO Nacionalidade VALUES (08832, "Portugal");


INSERT INTO Pessoa VALUES (16330, "Marcos Fonseca", "Av Érica Mota, 57
6179-225 Porto Santo", "+351932116258", "5337642177", "1955-10-27");
INSERT INTO Conta VALUES ("moraisgustavo@fernandes.com", "%qb4@qc^", 1525);
INSERT INTO Passageiro VALUES (18597, "moraisgustavo@fernandes.com", 16330);
INSERT INTO Bilhete VALUES (1244, 33, 59, "moraisgustavo@fernandes.com", "AACAA");
INSERT INTO Bagagem VALUES (443807, 1.03, 0.7, 0.71, 28, 1244);
INSERT INTO Nacionalidade VALUES (16330, "Franca");


INSERT INTO Pessoa VALUES (17702, "Ricardo da Matias", "R. Mauro Alves, 77
3558-033 Vila Nova de Gaia", "(351) 931823612", "1801781322", "1938-11-04");
INSERT INTO Conta VALUES ("pneto@gmail.com", "n&^3la2a", 1459);
INSERT INTO Passageiro VALUES (26680, "pneto@gmail.com", 17702);
INSERT INTO Bilhete VALUES (1245, 34, 59, "pneto@gmail.com", "AACAA");
INSERT INTO Bagagem VALUES (304526, 1.09, 0.72, 0.43, 13, 1245);
INSERT INTO Nacionalidade VALUES (17702, "Portugal");


INSERT INTO Pessoa VALUES (53102, "Fabiana Morais", "Largo Núria Batista, 30
9115-651 Alcácer do Sal", "(351) 287 244 430", "5030188502", "1942-03-27");
INSERT INTO Conta VALUES ("patriciabarros@rocha.net", "k&7z1&d@", 1965);
INSERT INTO Passageiro VALUES (62940, "patriciabarros@rocha.net", 53102);
INSERT INTO Bilhete VALUES (1246, 35, 59, "patriciabarros@rocha.net", "AACAA");
INSERT INTO Bagagem VALUES (868947, 0.82, 0.81, 0.68, 1, 1246);
INSERT INTO Nacionalidade VALUES (53102, "Portugal");


INSERT INTO Pessoa VALUES (83122, "Artur Vicente", "Rua Gabriela Vicente, S/N
0718-987 Porto", "915576064", "5177635347", "1989-05-21");
INSERT INTO Conta VALUES ("teixeiravera@azevedo.pt", "t)8mel0n", 555);
INSERT INTO Passageiro VALUES (92906, "teixeiravera@azevedo.pt", 83122);
INSERT INTO Bilhete VALUES (1247, 36, 59, "teixeiravera@azevedo.pt", "AACAA");
INSERT INTO Bagagem VALUES (916691, 0.79, 1.03, 0.77, 4, 1247);
INSERT INTO Nacionalidade VALUES (83122, "Portugal");


INSERT INTO Pessoa VALUES (03413, "Caetana da Esteves", "Rua de Amaral, S/N
0053-908 Moura", "(351) 964179056", "7888118277", "1995-11-14");
INSERT INTO Conta VALUES ("denis43@neto.pt", "*%2fx$a$", 2383);
INSERT INTO Passageiro VALUES (01957, "denis43@neto.pt", 03413);
INSERT INTO Bilhete VALUES (1248, 37, 59, "denis43@neto.pt", "AACAA");
INSERT INTO Bagagem VALUES (69685, 1.02, 1.19, 0.5, 18, 1248);
INSERT INTO Nacionalidade VALUES (03413, "Portugal");


INSERT INTO Pessoa VALUES (83946, "Larissa Cardoso", "Rua Morais, 636
8945-399 Albufeira", "929 622 453", "4409368776", "2010-04-27");
INSERT INTO Conta VALUES ("tiago55@sapo.pt", "+%33kl(^", 394);
INSERT INTO Passageiro VALUES (36526, "tiago55@sapo.pt", 83946);
INSERT INTO Bilhete VALUES (1249, 38, 59, "tiago55@sapo.pt", "AACAA");
INSERT INTO Bagagem VALUES (215450, 0.89, 0.95, 0.33, 35, 1249);
INSERT INTO Nacionalidade VALUES (83946, "Portugal");


INSERT INTO Pessoa VALUES (20513, "Matilde Andrade", "Rua Matilde Fonseca, 947
0754-975 Funchal", "(351) 928 073 526", "5534941678", "1999-05-10");
INSERT INTO Conta VALUES ("snunes@clix.pt", "@#ea2hz8", 434);
INSERT INTO Passageiro VALUES (44907, "snunes@clix.pt", 20513);
INSERT INTO Bilhete VALUES (1250, 39, 59, "snunes@clix.pt", "AACAA");
INSERT INTO Bagagem VALUES (799490, 0.91, 0.67, 0.39, 16, 1250);
INSERT INTO Nacionalidade VALUES (20513, "Portugal");


INSERT INTO Pessoa VALUES (55575, "David Fonseca", "Largo Emma Marques, S/N
0959-683 Castelo Branco", "239 363 134", "7199096208", "1999-03-27");
INSERT INTO Conta VALUES ("correiabenedita@clix.pt", "ei!20$t^", 2505);
INSERT INTO Passageiro VALUES (57088, "correiabenedita@clix.pt", 55575);
INSERT INTO Bilhete VALUES (1251, 40, 59, "correiabenedita@clix.pt", "AACAA");
INSERT INTO Bagagem VALUES (897042, 1.17, 1.03, 0.58, 27, 1251);
INSERT INTO Nacionalidade VALUES (55575, "Portugal");


INSERT INTO Pessoa VALUES (16895, "Jéssica Pinto", "R. Ribeiro, 471
8074-500 Póvoa de Santa Iria", "936357974", "4076970680", "1977-03-07");
INSERT INTO Conta VALUES ("alvesvasco@hotmail.com", "^(5dfo_^", 647);
INSERT INTO Passageiro VALUES (50243, "alvesvasco@hotmail.com", 16895);
INSERT INTO Bilhete VALUES (1252, 41, 59, "alvesvasco@hotmail.com", "AACAA");
INSERT INTO Bagagem VALUES (845413, 0.83, 1.11, 0.46, 12, 1252);
INSERT INTO Nacionalidade VALUES (16895, "Portugal");


INSERT INTO Pessoa VALUES (46523, "Alexandre Mota", "Largo Leonardo Branco, 85
4909-545 Torres Vedras", "+351923926210", "9668308374", "1948-05-23");
INSERT INTO Conta VALUES ("caetana54@anjos.org", "k@(7t4_l", 1084);
INSERT INTO Passageiro VALUES (25560, "caetana54@anjos.org", 46523);
INSERT INTO Bilhete VALUES (1253, 42, 59, "caetana54@anjos.org", "AACAA");
INSERT INTO Bagagem VALUES (546588, 0.52, 0.81, 0.57, 5, 1253);
INSERT INTO Nacionalidade VALUES (46523, "Portugal");


INSERT INTO Pessoa VALUES (49539, "Carlota Ferreira", "Avenida de Barbosa, 9
1100-037 Barreiro", "+351933654413", "1562337579", "1969-12-12");
INSERT INTO Conta VALUES ("martinssalome@gmail.com", "a5!+_c3f", 642);
INSERT INTO Passageiro VALUES (23925, "martinssalome@gmail.com", 49539);
INSERT INTO Bilhete VALUES (1254, 43, 59, "martinssalome@gmail.com", "AACAA");
INSERT INTO Bagagem VALUES (791356, 0.64, 0.98, 0.63, 12, 1254);
INSERT INTO Nacionalidade VALUES (49539, "Portugal");


INSERT INTO Pessoa VALUES (51611, "Erica da Andrade", "Largo Rúben Macedo, 58
4661-038 Vizela", "(351) 912152542", "6817446820", "1960-11-13");
INSERT INTO Conta VALUES ("gbarbosa@hotmail.com", "ae(w4rak", 838);
INSERT INTO Passageiro VALUES (00381, "gbarbosa@hotmail.com", 51611);
INSERT INTO Bilhete VALUES (1255, 44, 59, "gbarbosa@hotmail.com", "AACAA");
INSERT INTO Bagagem VALUES (480874, 0.86, 0.8, 0.75, 24, 1255);
INSERT INTO Nacionalidade VALUES (51611, "Portugal");


INSERT INTO Pessoa VALUES (01849, "Luca Almeida", "Av Martins, S/N
3116-677 Portalegre", "(351) 937142796", "5260392288", "1942-04-04");
INSERT INTO Conta VALUES ("ribeirojessica@clix.pt", "@**_3q0(", 540);
INSERT INTO Passageiro VALUES (48968, "ribeirojessica@clix.pt", 01849);
INSERT INTO Bilhete VALUES (1256, 45, 59, "ribeirojessica@clix.pt", "AACAA");
INSERT INTO Bagagem VALUES (532913, 1.14, 0.75, 0.72, 31, 1256);
INSERT INTO Nacionalidade VALUES (01849, "Portugal");


INSERT INTO Pessoa VALUES (83137, "Nuno Almeida", "R. de Campos, 19
4329-480 Alcácer do Sal", "(351) 253 303 622", "8222931096", "1942-01-12");
INSERT INTO Conta VALUES ("madalena77@gmail.com", "#%20#)fk", 2785);
INSERT INTO Passageiro VALUES (39336, "madalena77@gmail.com", 83137);
INSERT INTO Bilhete VALUES (1257, 46, 59, "madalena77@gmail.com", "AACAA");
INSERT INTO Bagagem VALUES (53069, 0.92, 0.96, 0.31, 2, 1257);
INSERT INTO Nacionalidade VALUES (83137, "Portugal");


INSERT INTO Pessoa VALUES (20261, "Isabel Araújo", "Rua Miriam Pinto, 74
8880-710 Caldas da Rainha", "(351) 275 922 792", "7224953295", "1940-10-30");
INSERT INTO Conta VALUES ("vicentecosta@clix.pt", "o*6%5)5e", 1805);
INSERT INTO Passageiro VALUES (87595, "vicentecosta@clix.pt", 20261);
INSERT INTO Bilhete VALUES (1258, 47, 59, "vicentecosta@clix.pt", "AACAA");
INSERT INTO Bagagem VALUES (462377, 0.96, 1.05, 0.73, 12, 1258);
INSERT INTO Nacionalidade VALUES (20261, "Portugal");


INSERT INTO Pessoa VALUES (96371, "Eduardo Figueiredo", "Rua de Silva, 56
2368-316 Torres Vedras", "(351) 932099068", "8480046667", "1970-02-24");
INSERT INTO Conta VALUES ("adriana69@clix.pt", "#**ja)6g", 2859);
INSERT INTO Passageiro VALUES (77594, "adriana69@clix.pt", 96371);
INSERT INTO Bilhete VALUES (1259, 48, 59, "adriana69@clix.pt", "AACAA");
INSERT INTO Bagagem VALUES (794626, 0.52, 0.65, 0.57, 20, 1259);
INSERT INTO Nacionalidade VALUES (96371, "Portugal");


INSERT INTO Pessoa VALUES (79158, "Nicole-Soraia Borges", "Avenida Joel Silva, 92
7855-275 Vila Nova de Gaia", "939 517 215", "2591368791", "1972-12-24");
INSERT INTO Conta VALUES ("hpereira@hotmail.com", "##9txfci", 606);
INSERT INTO Passageiro VALUES (42492, "hpereira@hotmail.com", 79158);
INSERT INTO Bilhete VALUES (1260, 49, 59, "hpereira@hotmail.com", "AACAA");
INSERT INTO Bagagem VALUES (230199, 0.57, 0.84, 0.6, 31, 1260);
INSERT INTO Nacionalidade VALUES (79158, "Portugal");


INSERT INTO Pessoa VALUES (31952, "Érica Brito-Rocha", "Avenida Gabriela Loureiro, 94
6550-027 Esposende", "(351) 297 602 851", "8485166580", "1996-08-24");
INSERT INTO Conta VALUES ("nadia63@araujo.com", "5*z)66um", 1233);
INSERT INTO Passageiro VALUES (26036, "nadia63@araujo.com", 31952);
INSERT INTO Bilhete VALUES (1261, 50, 59, "nadia63@araujo.com", "AACAA");
INSERT INTO Bagagem VALUES (341677, 0.8, 0.6, 0.62, 19, 1261);
INSERT INTO Nacionalidade VALUES (31952, "Portugal");




--Voo AACAB hor pdl
--pilotos
INSERT INTO Pessoa VALUES (93159, "Samuel Matos", "R. Silva, 89
2147-769 Lixa", "+351911690139", "8533057557", "1994-12-08");
INSERT INTO Piloto VALUES (7, 850, 93159);
INSERT INTO Pilotagem VALUES (7, "AACAB");
INSERT INTO Nacionalidade VALUES (93159, "Portugal");


INSERT INTO Pessoa VALUES (08539, "Filipe Gaspar", "R. de Oliveira, S/N
8056-441 Torres Novas", "(351) 969526666", "1076974866", "2004-06-19");
INSERT INTO Piloto VALUES (8, 1924, 08539);
INSERT INTO Pilotagem VALUES (8, "AACAB");
INSERT INTO Nacionalidade VALUES (08539, "Portugal");



--bordo

INSERT INTO PessoalCabine VALUES (25, "AACAB");
INSERT INTO PessoalCabine VALUES (26, "AACAB");



--passageiros
INSERT INTO Pessoa VALUES (02205, "Bernardo Pinho-Pinheiro", "Avenida de Carvalho, 70
5470-080 Montemor-o-Novo", "964 976 052", "5294101552", "1986-06-01");
INSERT INTO Conta VALUES ("rafaelafigueiredo@hotmail.com", "$7q&#0y!", 2804);
INSERT INTO Passageiro VALUES (93578, "rafaelafigueiredo@hotmail.com", 02205);
INSERT INTO Bilhete VALUES (1162, 1, 59, "rafaelafigueiredo@hotmail.com", "AACAB");
INSERT INTO Bagagem VALUES (868408, 0.55, 0.97, 0.41, 16, 1162);
INSERT INTO Nacionalidade VALUES (02205, "Portugal");


INSERT INTO Pessoa VALUES (05203, "Simão Garcia", "Travessa Pacheco, S/N
4601-058 Vendas Novas", "(351) 226 954 498", "8737767108", "1997-03-24");
INSERT INTO Conta VALUES ("rguerreiro@hotmail.com", "u#9h@*u^", 1628);
INSERT INTO Passageiro VALUES (66006, "rguerreiro@hotmail.com", 05203);
INSERT INTO Bilhete VALUES (1163, 2, 59, "rguerreiro@hotmail.com", "AACAB");
INSERT INTO Bagagem VALUES (718356, 0.71, 0.72, 0.61, 31, 1163);
INSERT INTO Nacionalidade VALUES (05203, "Portugal");


INSERT INTO Pessoa VALUES (76889, "Rodrigo Pires", "Largo de Ferreira, 48
1965-848 Ílhavo", "(351) 930 892 876", "4864559492", "1969-12-11");
INSERT INTO Conta VALUES ("noa50@sapo.pt", "vuj!$15g", 1804);
INSERT INTO Passageiro VALUES (44805, "noa50@sapo.pt", 76889);
INSERT INTO Bilhete VALUES (1164, 3, 59, "noa50@sapo.pt", "AACAB");
INSERT INTO Bagagem VALUES (347097, 0.78, 0.65, 0.74, 35, 1164);
INSERT INTO Nacionalidade VALUES (76889, "Portugal");


INSERT INTO Pessoa VALUES (89732, "Vitória da Assunção", "Largo de Vieira, 56
7643-557 Tomar", "+351924544635", "4106400780", "2000-06-03");
INSERT INTO Conta VALUES ("tavaresmarcio@gmail.com", "#ruy1k1!", 877);
INSERT INTO Passageiro VALUES (12326, "tavaresmarcio@gmail.com", 89732);
INSERT INTO Bilhete VALUES (1165, 4, 59, "tavaresmarcio@gmail.com", "AACAB");
INSERT INTO Bagagem VALUES (749386, 0.7, 0.65, 0.35, 5, 1165);
INSERT INTO Nacionalidade VALUES (89732, "Portugal");


INSERT INTO Pessoa VALUES (51216, "Victória Lourenço", "Rua de Amaral, 493
8815-176 Agualva-Cacém", "+351936303826", "5849594017", "1976-02-13");
INSERT INTO Conta VALUES ("mario19@mendes.org", "$jx^w06n", 1500);
INSERT INTO Passageiro VALUES (70762, "mario19@mendes.org", 51216);
INSERT INTO Bilhete VALUES (1166, 5, 59, "mario19@mendes.org", "AACAB");
INSERT INTO Bagagem VALUES (219008, 0.55, 1.07, 0.5, 11, 1166);
INSERT INTO Nacionalidade VALUES (51216, "Portugal");


INSERT INTO Pessoa VALUES (33080, "Luca Amaral-Leite", "R. Fonseca, S/N
8487-285 Vila Nova de Santo André", "(351) 936736021", "0934353032", "1978-07-15");
INSERT INTO Conta VALUES ("ealves@clix.pt", "!y9qk1ue", 1904);
INSERT INTO Passageiro VALUES (50218, "ealves@clix.pt", 33080);
INSERT INTO Bilhete VALUES (1167, 6, 59, "ealves@clix.pt", "AACAB");
INSERT INTO Bagagem VALUES (695544, 1.07, 0.72, 0.49, 23, 1167);
INSERT INTO Nacionalidade VALUES (33080, "Portugal");


INSERT INTO Pessoa VALUES (22311, "Hugo-Mariana Baptista", "Travessa de Miranda, 34
1816-699 Santo Tirso", "(351) 960 761 367", "4575820057", "1969-04-08");
INSERT INTO Conta VALUES ("isaac57@clix.pt", ")3py^r$+", 1912);
INSERT INTO Passageiro VALUES (31274, "isaac57@clix.pt", 22311);
INSERT INTO Bilhete VALUES (1168, 7, 59, "isaac57@clix.pt", "AACAB");
INSERT INTO Bagagem VALUES (430268, 0.59, 0.85, 0.34, 2, 1168);
INSERT INTO Nacionalidade VALUES (22311, "Portugal");


INSERT INTO Pessoa VALUES (99915, "Mateus-Duarte Martins", "Avenida Simão Miranda, 93
7544-016 Guarda", "(351) 925 006 168", "6361008843", "1980-02-20");
INSERT INTO Conta VALUES ("irina49@hotmail.com", "%zry8!aq", 1360);
INSERT INTO Passageiro VALUES (48332, "irina49@hotmail.com", 99915);
INSERT INTO Bilhete VALUES (1169, 8, 59, "irina49@hotmail.com", "AACAB");
INSERT INTO Bagagem VALUES (19740, 0.56, 0.95, 0.63, 15, 1169);
INSERT INTO Nacionalidade VALUES (99915, "Portugal");


INSERT INTO Pessoa VALUES (63045, "Mara Freitas", "Travessa de Antunes, 18
1525-877 Santiago do Cacém", "+351258761053", "7991878372", "1991-02-07");
INSERT INTO Conta VALUES ("qmatos@hotmail.com", "o^(x81&c", 893);
INSERT INTO Passageiro VALUES (91964, "qmatos@hotmail.com", 63045);
INSERT INTO Bilhete VALUES (1170, 9, 59, "qmatos@hotmail.com", "AACAB");
INSERT INTO Bagagem VALUES (911918, 0.86, 1.04, 0.5, 18, 1170);
INSERT INTO Nacionalidade VALUES (63045, "Portugal");


INSERT INTO Pessoa VALUES (03819, "Anita Matias", "Rua Luna Monteiro, 26
9418-235 Póvoa de Santa Iria", "+351927641419", "8566692424", "1938-04-17");
INSERT INTO Conta VALUES ("juliana44@gmail.com", "&3!v0w1d", 2788);
INSERT INTO Passageiro VALUES (12307, "juliana44@gmail.com", 03819);
INSERT INTO Bilhete VALUES (1171, 10, 59, "juliana44@gmail.com", "AACAB");
INSERT INTO Bagagem VALUES (887651, 0.97, 0.99, 0.72, 9, 1171);
INSERT INTO Nacionalidade VALUES (03819, "Portugal");


INSERT INTO Pessoa VALUES (80045, "Diego Barbosa", "Av Ema Cruz, 5
9122-138 Sines", "(351) 937 775 422", "9361126807", "1986-11-09");
INSERT INTO Conta VALUES ("sandromota@hotmail.com", ")^#1zd6d", 2529);
INSERT INTO Passageiro VALUES (65937, "sandromota@hotmail.com", 80045);
INSERT INTO Bilhete VALUES (1172, 11, 59, "sandromota@hotmail.com", "AACAB");
INSERT INTO Bagagem VALUES (169125, 0.85, 1.03, 0.72, 24, 1172);
INSERT INTO Nacionalidade VALUES (80045, "Portugal");


INSERT INTO Pessoa VALUES (59569, "Emanuel Moreira", "Avenida de Soares, 54
7752-149 Montijo", "(351) 929639929", "8211147982", "1961-05-15");
INSERT INTO Conta VALUES ("andresousa@lima.com", "%7)9dxw6", 301);
INSERT INTO Passageiro VALUES (45244, "andresousa@lima.com", 59569);
INSERT INTO Bilhete VALUES (1173, 12, 59, "andresousa@lima.com", "AACAB");
INSERT INTO Bagagem VALUES (410789, 0.58, 1.0, 0.65, 26, 1173);
INSERT INTO Nacionalidade VALUES (59569, "Portugal");


INSERT INTO Pessoa VALUES (35329, "Wilson Melo", "Rua Pinto, 89
0423-120 Sabugal", "968 919 652", "6053843448", "1965-07-09");
INSERT INTO Conta VALUES ("nanjos@pacheco.pt", "$3s7rmhp", 511);
INSERT INTO Passageiro VALUES (12340, "nanjos@pacheco.pt", 35329);
INSERT INTO Bilhete VALUES (1174, 13, 59, "nanjos@pacheco.pt", "AACAB");
INSERT INTO Bagagem VALUES (686715, 1.01, 0.96, 0.37, 22, 1174);
INSERT INTO Nacionalidade VALUES (35329, "Portugal");


INSERT INTO Pessoa VALUES (43548, "Carlota Macedo", "R. Brian Pereira, 906
1894-652 Viana do Castelo", "(351) 932 627 425", "3289729798", "1940-05-24");
INSERT INTO Conta VALUES ("henriquesvera@machado.net", "@413r_mi", 2636);
INSERT INTO Passageiro VALUES (34451, "henriquesvera@machado.net", 43548);
INSERT INTO Bilhete VALUES (1175, 14, 59, "henriquesvera@machado.net", "AACAB");
INSERT INTO Bagagem VALUES (349808, 0.7, 0.64, 0.77, 31, 1175);
INSERT INTO Nacionalidade VALUES (43548, "Portugal");


INSERT INTO Pessoa VALUES (72085, "Miriam Reis", "Rua de Guerreiro, 46
6757-565 Ovar", "932081734", "6701907258", "1994-12-17");
INSERT INTO Conta VALUES ("vbatista@sapo.pt", "pa(3idoe", 1796);
INSERT INTO Passageiro VALUES (34776, "vbatista@sapo.pt", 72085);
INSERT INTO Bilhete VALUES (1176, 15, 59, "vbatista@sapo.pt", "AACAB");
INSERT INTO Bagagem VALUES (709026, 0.77, 0.91, 0.8, 35, 1176);
INSERT INTO Nacionalidade VALUES (72085, "Portugal");


INSERT INTO Pessoa VALUES (97242, "Luna Leite", "R. Ribeiro, 24
9970-891 Cantanhede", "(351) 937 004 548", "5291687363", "1973-12-06");
INSERT INTO Conta VALUES ("hlopes@branco.org", "$vod9g4a", 2287);
INSERT INTO Passageiro VALUES (53307, "hlopes@branco.org", 97242);
INSERT INTO Bilhete VALUES (1177, 16, 59, "hlopes@branco.org", "AACAB");
INSERT INTO Bagagem VALUES (403514, 0.57, 0.91, 0.52, 15, 1177);
INSERT INTO Nacionalidade VALUES (97242, "Portugal");


INSERT INTO Pessoa VALUES (99226, "Íris do Amorim", "Avenida Mafalda Sousa, S/N
4389-720 Funchal", "935830535", "1463100244", "1930-09-09");
INSERT INTO Conta VALUES ("nascimentosebastiao@gmail.com", "b!y+&r1a", 2294);
INSERT INTO Passageiro VALUES (29678, "nascimentosebastiao@gmail.com", 99226);
INSERT INTO Bilhete VALUES (1178, 17, 59, "nascimentosebastiao@gmail.com", "AACAB");
INSERT INTO Bagagem VALUES (243405, 0.77, 0.81, 0.8, 14, 1178);
INSERT INTO Nacionalidade VALUES (99226, "Portugal");


INSERT INTO Pessoa VALUES (54666, "Lorena Amorim", "R. Henriques, 89
9580-279 Alcácer do Sal", "(351) 275175373", "2592514108", "1951-02-19");
INSERT INTO Conta VALUES ("pedro47@clix.pt", "&2z1^%*f", 1786);
INSERT INTO Passageiro VALUES (30073, "pedro47@clix.pt", 54666);
INSERT INTO Bilhete VALUES (1179, 18, 59, "pedro47@clix.pt", "AACAB");
INSERT INTO Bagagem VALUES (659359, 0.54, 0.74, 0.48, 28, 1179);
INSERT INTO Nacionalidade VALUES (54666, "Portugal");


INSERT INTO Pessoa VALUES (23868, "André do Pires", "Rua Ângelo Amorim, 71
9005-700 Mêda", "930962959", "4388913498", "1955-12-11");
INSERT INTO Conta VALUES ("pachecoleonor@monteiro.pt", "&u%(9m(w", 421);
INSERT INTO Passageiro VALUES (86757, "pachecoleonor@monteiro.pt", 23868);
INSERT INTO Bilhete VALUES (1180, 19, 59, "pachecoleonor@monteiro.pt", "AACAB");
INSERT INTO Bagagem VALUES (100742, 1.08, 0.8, 0.34, 35, 1180);
INSERT INTO Nacionalidade VALUES (23868, "Portugal");


INSERT INTO Pessoa VALUES (33005, "Pedro Vicente-Castro", "Avenida de Mendes, 76
4171-839 Gouveia", "(351) 913457237", "6096682530", "1988-12-07");
INSERT INTO Conta VALUES ("emmacunha@sapo.pt", "^t2q4@j8", 2438);
INSERT INTO Passageiro VALUES (94891, "emmacunha@sapo.pt", 33005);
INSERT INTO Bilhete VALUES (1181, 20, 59, "emmacunha@sapo.pt", "AACAB");
INSERT INTO Bagagem VALUES (689952, 1.13, 0.62, 0.3, 11, 1181);
INSERT INTO Nacionalidade VALUES (33005, "Portugal");


INSERT INTO Pessoa VALUES (17136, "Benjamim Leal", "Av Machado, 63
1444-195 Peso da Régua", "(351) 933350782", "7019106255", "1977-02-18");
INSERT INTO Conta VALUES ("benedita72@nogueira.pt", "!7fgv7vz", 1396);
INSERT INTO Passageiro VALUES (73591, "benedita72@nogueira.pt", 17136);
INSERT INTO Bilhete VALUES (1182, 21, 59, "benedita72@nogueira.pt", "AACAB");
INSERT INTO Bagagem VALUES (904977, 0.64, 0.8, 0.51, 9, 1182);
INSERT INTO Nacionalidade VALUES (17136, "Portugal");


INSERT INTO Pessoa VALUES (74455, "Lorena-Sebastião Costa", "Travessa de Araújo, 72
9754-894 Porto", "230119458", "3870112368", "1946-06-18");
INSERT INTO Conta VALUES ("marcosloureiro@pacheco.com", "z)(1$wx#", 818);
INSERT INTO Passageiro VALUES (46320, "marcosloureiro@pacheco.com", 74455);
INSERT INTO Bilhete VALUES (1183, 22, 59, "marcosloureiro@pacheco.com", "AACAB");
INSERT INTO Bagagem VALUES (619086, 0.78, 0.63, 0.77, 9, 1183);
INSERT INTO Nacionalidade VALUES (74455, "Portugal");


INSERT INTO Pessoa VALUES (08061, "Raquel Magalhães", "R. Pinheiro, 221
7692-728 Torres Novas", "(351) 966899406", "2716448871", "1969-07-10");
INSERT INTO Conta VALUES ("amaralfernando@lourenco.pt", "%w382rpa", 2801);
INSERT INTO Passageiro VALUES (31870, "amaralfernando@lourenco.pt", 08061);
INSERT INTO Bilhete VALUES (1184, 23, 59, "amaralfernando@lourenco.pt", "AACAB");
INSERT INTO Bagagem VALUES (453817, 1.01, 0.84, 0.79, 24, 1184);
INSERT INTO Nacionalidade VALUES (08061, "Portugal");


INSERT INTO Pessoa VALUES (19495, "Emma Miranda", "Rua de Miranda, 920
4155-307 Ponta Delgada", "(351) 962 724 282", "7442493119", "1978-10-07");
INSERT INTO Conta VALUES ("upaiva@batista.com", "7c@l9%6b", 1209);
INSERT INTO Passageiro VALUES (41391, "upaiva@batista.com", 19495);
INSERT INTO Bilhete VALUES (1185, 24, 59, "upaiva@batista.com", "AACAB");
INSERT INTO Bagagem VALUES (789367, 0.64, 1.01, 0.34, 26, 1185);
INSERT INTO Nacionalidade VALUES (19495, "Portugal");


INSERT INTO Pessoa VALUES (27010, "Valentina do Rocha", "Rua de Cardoso, 78
7294-186 Torres Vedras", "(351) 937 766 817", "2668599379", "1992-03-05");
INSERT INTO Conta VALUES ("lcruz@clix.pt", "4_5d^q4*", 1336);
INSERT INTO Passageiro VALUES (39784, "lcruz@clix.pt", 27010);
INSERT INTO Bilhete VALUES (1186, 25, 59, "lcruz@clix.pt", "AACAB");
INSERT INTO Bagagem VALUES (48552, 0.7, 0.9, 0.43, 29, 1186);
INSERT INTO Nacionalidade VALUES (27010, "Portugal");


INSERT INTO Pessoa VALUES (63109, "Alícia Vicente", "Travessa de Sousa, 94
9558-538 Aveiro", "+351923264266", "1688557243", "1998-01-16");
INSERT INTO Conta VALUES ("sanaiara@gmail.com", "&^(wp2@o", 1487);
INSERT INTO Passageiro VALUES (52767, "sanaiara@gmail.com", 63109);
INSERT INTO Bilhete VALUES (1187, 26, 59, "sanaiara@gmail.com", "AACAB");
INSERT INTO Bagagem VALUES (452906, 0.94, 0.83, 0.7, 11, 1187);
INSERT INTO Nacionalidade VALUES (63109, "Portugal");


INSERT INTO Pessoa VALUES (84696, "Sofia Nascimento", "Av de Nunes, 339
9022-900 Lamego", "933 570 553", "0295448123", "1975-07-05");
INSERT INTO Conta VALUES ("obaptista@hotmail.com", "#g6gcf*o", 1442);
INSERT INTO Passageiro VALUES (15471, "obaptista@hotmail.com", 84696);
INSERT INTO Bilhete VALUES (1188, 27, 59, "obaptista@hotmail.com", "AACAB");
INSERT INTO Bagagem VALUES (474863, 0.72, 0.7, 0.79, 31, 1188);
INSERT INTO Nacionalidade VALUES (84696, "Portugal");


INSERT INTO Pessoa VALUES (56840, "Iara-Alexandra Rocha", "R. de Carvalho, 129
4351-602 Lisboa", "918802881", "2238284144", "1996-03-27");
INSERT INTO Conta VALUES ("ameliaribeiro@gmail.com", "$_z9uale", 2553);
INSERT INTO Passageiro VALUES (29151, "ameliaribeiro@gmail.com", 56840);
INSERT INTO Bilhete VALUES (1189, 28, 59, "ameliaribeiro@gmail.com", "AACAB");
INSERT INTO Bagagem VALUES (458435, 0.85, 0.86, 0.44, 8, 1189);
INSERT INTO Nacionalidade VALUES (56840, "Portugal");


INSERT INTO Pessoa VALUES (26018, "César Fonseca-Coelho", "Avenida Tavares, 53
0649-643 Figueira da Foz", "(351) 913191536", "1810832792", "1943-12-18");
INSERT INTO Conta VALUES ("violeta44@vicente.pt", "&y9fjz8c", 2760);
INSERT INTO Passageiro VALUES (20394, "violeta44@vicente.pt", 26018);
INSERT INTO Bilhete VALUES (1190, 29, 59, "violeta44@vicente.pt", "AACAB");
INSERT INTO Bagagem VALUES (859329, 1.15, 1.1, 0.71, 10, 1190);
INSERT INTO Nacionalidade VALUES (26018, "Portugal");


INSERT INTO Pessoa VALUES (82849, "Artur Jesus", "Largo Carlos Cruz, 43
0368-970 Fiães", "911 975 154", "3376440152", "1946-01-25");
INSERT INTO Conta VALUES ("mendesalicia@campos.com", "^)05+bhu", 1529);
INSERT INTO Passageiro VALUES (03822, "mendesalicia@campos.com", 82849);
INSERT INTO Bilhete VALUES (1191, 30, 59, "mendesalicia@campos.com", "AACAB");
INSERT INTO Bagagem VALUES (491245, 0.68, 0.85, 0.76, 4, 1191);
INSERT INTO Nacionalidade VALUES (82849, "Portugal");


INSERT INTO Pessoa VALUES (48027, "Nair Maia-Costa", "Avenida Érica Lima, 65
1137-724 Alverca do Ribatejo", "236614056", "7068971580", "1943-11-20");
INSERT INTO Conta VALUES ("edgarnascimento@gmail.com", "jfon_n3k", 2063);
INSERT INTO Passageiro VALUES (83814, "edgarnascimento@gmail.com", 48027);
INSERT INTO Bilhete VALUES (1192, 31, 59, "edgarnascimento@gmail.com", "AACAB");
INSERT INTO Bagagem VALUES (320198, 0.93, 1.02, 0.51, 4, 1192);
INSERT INTO Nacionalidade VALUES (48027, "Portugal");


INSERT INTO Pessoa VALUES (36375, "Filipa Jesus", "Rua de Reis, 626
5318-780 Vila Franca de Xira", "(351) 936040216", "6657075135", "1943-11-19");
INSERT INTO Conta VALUES ("frederico40@sapo.pt", "!dr80who", 2074);
INSERT INTO Passageiro VALUES (16205, "frederico40@sapo.pt", 36375);
INSERT INTO Bilhete VALUES (1193, 32, 59, "frederico40@sapo.pt", "AACAB");
INSERT INTO Bagagem VALUES (446057, 1.1, 1.13, 0.55, 17, 1193);
INSERT INTO Nacionalidade VALUES (36375, "Portugal");


INSERT INTO Pessoa VALUES (08190, "Cláudio Carneiro-Lima", "Rua de Reis, 13
5594-325 Peso da Régua", "+351249599562", "5816652961", "1996-03-05");
INSERT INTO Conta VALUES ("sandroreis@figueiredo.net", "da8&)2n4", 1994);
INSERT INTO Passageiro VALUES (67809, "sandroreis@figueiredo.net", 08190);
INSERT INTO Bilhete VALUES (1194, 33, 59, "sandroreis@figueiredo.net", "AACAB");
INSERT INTO Bagagem VALUES (825859, 0.65, 1.15, 0.77, 23, 1194);
INSERT INTO Nacionalidade VALUES (08190, "Portugal");


INSERT INTO Pessoa VALUES (42724, "Sara Vieira", "R. de Neto, S/N
0732-957 Fiães", "(351) 960 210 244", "4656589379", "1985-11-21");
INSERT INTO Conta VALUES ("zsoares@monteiro.pt", "^9vw&9d%", 2707);
INSERT INTO Passageiro VALUES (17655, "zsoares@monteiro.pt", 42724);
INSERT INTO Bilhete VALUES (1195, 34, 59, "zsoares@monteiro.pt", "AACAB");
INSERT INTO Bagagem VALUES (968874, 0.83, 1.02, 0.37, 33, 1195);
INSERT INTO Nacionalidade VALUES (42724, "Portugal");


INSERT INTO Pessoa VALUES (87066, "Jaime Andrade", "Travessa Morais, 810
9443-611 Ovar", "+351921299553", "6445210306", "1930-01-13");
INSERT INTO Conta VALUES ("rodrigo63@gmail.com", "i0&sy4j$", 360);
INSERT INTO Passageiro VALUES (42215, "rodrigo63@gmail.com", 87066);
INSERT INTO Bilhete VALUES (1196, 35, 59, "rodrigo63@gmail.com", "AACAB");
INSERT INTO Bagagem VALUES (148814, 0.6, 0.87, 0.68, 1, 1196);
INSERT INTO Nacionalidade VALUES (87066, "Portugal");


INSERT INTO Pessoa VALUES (67216, "Henrique da Henriques", "Avenida Salomé Figueiredo, 123
3211-660 Gondomar", "961507307", "1363933634", "1948-11-03");
INSERT INTO Conta VALUES ("filipa58@hotmail.com", "$*ylp9mv", 1631);
INSERT INTO Passageiro VALUES (39386, "filipa58@hotmail.com", 67216);
INSERT INTO Bilhete VALUES (1197, 36, 59, "filipa58@hotmail.com", "AACAB");
INSERT INTO Bagagem VALUES (418017, 0.7, 1.1, 0.76, 23, 1197);
INSERT INTO Nacionalidade VALUES (67216, "Portugal");


INSERT INTO Pessoa VALUES (03524, "Edgar Nunes", "Travessa Luana Lopes, 86
0856-170 Macedo de Cavaleiros", "912817932", "3201162889", "1971-06-25");
INSERT INTO Conta VALUES ("camposyasmin@gmail.com", "$f*f4yc!", 2507);
INSERT INTO Passageiro VALUES (06644, "camposyasmin@gmail.com", 03524);
INSERT INTO Bilhete VALUES (1198, 37, 59, "camposyasmin@gmail.com", "AACAB");
INSERT INTO Bagagem VALUES (241387, 1.04, 0.89, 0.34, 3, 1198);
INSERT INTO Nacionalidade VALUES (03524, "Portugal");


INSERT INTO Pessoa VALUES (51037, "Madalena Marques", "Largo Pinto, 49
3924-633 São João da Madeira", "(351) 938508372", "6600008775", "2010-06-06");
INSERT INTO Conta VALUES ("dominguescarlota@campos.com", "s##a5gd+", 589);
INSERT INTO Passageiro VALUES (82464, "dominguescarlota@campos.com", 51037);
INSERT INTO Bilhete VALUES (1199, 38, 59, "dominguescarlota@campos.com", "AACAB");
INSERT INTO Bagagem VALUES (288044, 0.87, 1.03, 0.34, 9, 1199);
INSERT INTO Nacionalidade VALUES (51037, "Portugal");


INSERT INTO Pessoa VALUES (99587, "Bianca Valente", "Largo Vicente, 72
4789-228 Ourém", "(351) 211229314", "3118088066", "1992-05-26");
INSERT INTO Conta VALUES ("pachecopilar@moreira.pt", "3+u&3eqd", 2371);
INSERT INTO Passageiro VALUES (78486, "pachecopilar@moreira.pt", 99587);
INSERT INTO Bilhete VALUES (1200, 39, 59, "pachecopilar@moreira.pt", "AACAB");
INSERT INTO Bagagem VALUES (809232, 0.84, 0.79, 0.51, 23, 1200);
INSERT INTO Nacionalidade VALUES (99587, "Portugal");


INSERT INTO Pessoa VALUES (64136, "Gabriela-Eduarda Loureiro", "Av Cunha, 2
1155-513 Amarante", "+351925676605", "8486655562", "1943-05-27");
INSERT INTO Conta VALUES ("angelolopes@torres.com", "(99euf+c", 1238);
INSERT INTO Passageiro VALUES (07396, "angelolopes@torres.com", 64136);
INSERT INTO Bilhete VALUES (1201, 40, 59, "angelolopes@torres.com", "AACAB");
INSERT INTO Bagagem VALUES (857481, 0.71, 1.07, 0.5, 26, 1201);
INSERT INTO Nacionalidade VALUES (64136, "Portugal");


INSERT INTO Pessoa VALUES (56227, "Bryan Nunes", "R. Naiara Soares, 35
9345-215 Oliveira do Hospital", "+351924124774", "7291526870", "1990-07-27");
INSERT INTO Conta VALUES ("enzo52@branco.com", ")782poa9", 1105);
INSERT INTO Passageiro VALUES (82836, "enzo52@branco.com", 56227);
INSERT INTO Bilhete VALUES (1202, 41, 59, "enzo52@branco.com", "AACAB");
INSERT INTO Bagagem VALUES (980980, 0.51, 0.98, 0.33, 7, 1202);
INSERT INTO Nacionalidade VALUES (56227, "Portugal");


INSERT INTO Pessoa VALUES (38311, "Luca Ferreira", "Av Luciana Monteiro, 82
8136-919 Seixal", "918 467 355", "0401176639", "1976-08-22");
INSERT INTO Conta VALUES ("santiago02@vicente.pt", "f(&2f8()", 1107);
INSERT INTO Passageiro VALUES (37029, "santiago02@vicente.pt", 38311);
INSERT INTO Bilhete VALUES (1203, 42, 59, "santiago02@vicente.pt", "AACAB");
INSERT INTO Bagagem VALUES (527535, 0.84, 1.18, 0.78, 29, 1203);
INSERT INTO Nacionalidade VALUES (38311, "Portugal");


INSERT INTO Pessoa VALUES (97741, "Isaac Castro", "Rua Tavares, 98
7114-597 Alverca do Ribatejo", "(351) 919 008 750", "7447094106", "1964-08-17");
INSERT INTO Conta VALUES ("fernandesvicente@amorim.com", "m#41w*3z", 840);
INSERT INTO Passageiro VALUES (82890, "fernandesvicente@amorim.com", 97741);
INSERT INTO Bilhete VALUES (1204, 43, 59, "fernandesvicente@amorim.com", "AACAB");
INSERT INTO Bagagem VALUES (588621, 0.51, 0.76, 0.5, 7, 1204);
INSERT INTO Nacionalidade VALUES (97741, "Portugal");


INSERT INTO Pessoa VALUES (17315, "Sérgio Castro", "Avenida Beatriz Lopes, S/N
7230-866 Costa da Caparica", "913 678 961", "7963007638", "1991-09-20");
INSERT INTO Conta VALUES ("macedovasco@batista.org", "_o2t_)zi", 2210);
INSERT INTO Passageiro VALUES (08661, "macedovasco@batista.org", 17315);
INSERT INTO Bilhete VALUES (1205, 44, 59, "macedovasco@batista.org", "AACAB");
INSERT INTO Bagagem VALUES (482731, 1.08, 0.72, 0.33, 5, 1205);
INSERT INTO Nacionalidade VALUES (17315, "Portugal");


INSERT INTO Pessoa VALUES (04079, "Sebastião da Vaz", "Largo de Mendes, S/N
2296-478 Lourosa", "(351) 966303755", "8574515010", "1973-09-11");
INSERT INTO Conta VALUES ("zramos@sapo.pt", "$+h7#i5+", 2473);
INSERT INTO Passageiro VALUES (63085, "zramos@sapo.pt", 04079);
INSERT INTO Bilhete VALUES (1206, 45, 59, "zramos@sapo.pt", "AACAB");
INSERT INTO Bagagem VALUES (660924, 0.82, 0.94, 0.57, 35, 1206);
INSERT INTO Nacionalidade VALUES (04079, "Portugal");


INSERT INTO Pessoa VALUES (95855, "Rita Martins", "Rua de Sá, 64
3507-396 Barreiro", "(351) 961 632 247", "2255248211", "1999-10-21");
INSERT INTO Conta VALUES ("efaria@barbosa.pt", "t(j0h_2a", 2712);
INSERT INTO Passageiro VALUES (65554, "efaria@barbosa.pt", 95855);
INSERT INTO Bilhete VALUES (1207, 46, 59, "efaria@barbosa.pt", "AACAB");
INSERT INTO Bagagem VALUES (861060, 1.01, 0.95, 0.37, 7, 1207);
INSERT INTO Nacionalidade VALUES (95855, "Portugal");


INSERT INTO Pessoa VALUES (76661, "Luísa Reis-Cunha", "Travessa Larissa Sá, S/N
8678-614 Marco de Canaveses", "(351) 923 253 736", "6751158252", "1982-06-09");
INSERT INTO Conta VALUES ("alvesisaac@hotmail.com", "#ay21i9^", 2234);
INSERT INTO Passageiro VALUES (84490, "alvesisaac@hotmail.com", 76661);
INSERT INTO Bilhete VALUES (1208, 47, 59, "alvesisaac@hotmail.com", "AACAB");
INSERT INTO Bagagem VALUES (933319, 0.68, 0.98, 0.7, 9, 1208);
INSERT INTO Nacionalidade VALUES (76661, "Portugal");


INSERT INTO Pessoa VALUES (25167, "Luísa Leite-Martins", "Travessa de Sá, 493
2145-693 Mealhada", "966 307 722", "6933874751", "1949-11-13");
INSERT INTO Conta VALUES ("larafaria@anjos.net", "+!2no(ec", 2730);
INSERT INTO Passageiro VALUES (99620, "larafaria@anjos.net", 25167);
INSERT INTO Bilhete VALUES (1209, 48, 59, "larafaria@anjos.net", "AACAB");
INSERT INTO Bagagem VALUES (961734, 1.0, 1.1, 0.41, 25, 1209);
INSERT INTO Nacionalidade VALUES (25167, "Portugal");


INSERT INTO Pessoa VALUES (96735, "Gaspar Amorim", "R. de Melo, 43
0777-309 Gafanha da Nazaré", "(351) 933 832 386", "2037239216", "1955-04-14");
INSERT INTO Conta VALUES ("tomedomingues@faria.com", "$wk2*$uz", 790);
INSERT INTO Passageiro VALUES (48317, "tomedomingues@faria.com", 96735);
INSERT INTO Bilhete VALUES (1210, 49, 59, "tomedomingues@faria.com", "AACAB");
INSERT INTO Bagagem VALUES (629857, 1.15, 0.91, 0.31, 12, 1210);
INSERT INTO Nacionalidade VALUES (96735, "Portugal");


INSERT INTO Pessoa VALUES (11534, "Letícia da Reis", "Rua Vítor Neves, 42
7901-033 Peniche", "224 637 728", "0241254777", "1986-08-18");
INSERT INTO Conta VALUES ("alice61@clix.pt", "&m&8_d5e", 865);
INSERT INTO Passageiro VALUES (57848, "alice61@clix.pt", 11534);
INSERT INTO Bilhete VALUES (1211, 50, 59, "alice61@clix.pt", "AACAB");
INSERT INTO Bagagem VALUES (585516, 0.78, 0.84, 0.47, 1, 1211);
INSERT INTO Nacionalidade VALUES (11534, "Portugal");







--Voo AADAA pdl ter
--pilotos
INSERT INTO Pessoa VALUES (92362, "Gonçalo Neto", "R. Tavares, 78
2627-281 Guarda", "(351) 919 338 898", "5970039150", "1980-04-16");
INSERT INTO Piloto VALUES (13, 1214, 92362);
INSERT INTO Pilotagem VALUES (13, "AADAA");
INSERT INTO Nacionalidade VALUES (92362, "Portugal");


INSERT INTO Pessoa VALUES (74861, "Filipa Magalhães-Amaral", "Avenida Moreira, 496
1033-584 Bragança", "967066164", "6264168351", "1966-05-24");
INSERT INTO Piloto VALUES (14, 1377, 74861);
INSERT INTO Pilotagem VALUES (14, "AADAA");
INSERT INTO Nacionalidade VALUES (74861, "Portugal");





--bordo
INSERT INTO Pessoa VALUES (84322, "Mauro Vicente", "Avenida Reis, 78
1035-843 Santa Cruz", "(351) 205 013 743", "5381535730", "2010-12-24");
INSERT INTO AssistenteBordo VALUES (22, 1017, 84322);
INSERT INTO PessoalCabine VALUES (22, "AADAA");
INSERT INTO Nacionalidade VALUES (84322, "Portugal");


INSERT INTO Pessoa VALUES (57634, "Eduardo Faria", "Avenida Cunha, 38
1560-046 Sacavém", +351935614791, "3302125670", "1939-07-09");
INSERT INTO AssistenteBordo VALUES (23, 3921, 57634);
INSERT INTO PessoalCabine VALUES (23, "AADAA");
INSERT INTO Nacionalidade VALUES (57634, "Portugal");



--passageiros
INSERT INTO Pessoa VALUES (50723, "Bárbara Loureiro", "Largo Leal, 864
4132-511 Santa Comba Dão", "+351917904499", "1158357271", "1993-05-10");
INSERT INTO Conta VALUES ("nadiaabreu@branco.net", "#4jk!wqd", 2729);
INSERT INTO Passageiro VALUES (23586, "nadiaabreu@branco.net", 50723);
INSERT INTO Bilhete VALUES (1112, 1, 59, "nadiaabreu@branco.net", "AADAA");
INSERT INTO Bagagem VALUES (552058, 0.99, 1.17, 0.6, 34, 1112);
INSERT INTO Nacionalidade VALUES (50723, "Portugal");


INSERT INTO Pessoa VALUES (63896, "Lorena Pacheco", "Travessa de Ferreira, 17
4255-415 Santarém", "(351) 913730796", "8441770637", "1937-10-14");
INSERT INTO Conta VALUES ("motaemma@nascimento.pt", "^5yd7iy*", 800);
INSERT INTO Passageiro VALUES (45927, "motaemma@nascimento.pt", 63896);
INSERT INTO Bilhete VALUES (1113, 2, 59, "motaemma@nascimento.pt", "AADAA");
INSERT INTO Bagagem VALUES (487863, 1.18, 0.97, 0.34, 3, 1113);
INSERT INTO Nacionalidade VALUES (63896, "Portugal");


INSERT INTO Pessoa VALUES (20020, "Ângelo-Ana Nunes", "Largo de Ferreira, 17
4295-113 Oliveira de Azeméis", "960 444 785", "2635919711", "1948-07-04");
INSERT INTO Conta VALUES ("pinhovera@guerreiro.com", "aq!351*v", 506);
INSERT INTO Passageiro VALUES (17257, "pinhovera@guerreiro.com", 20020);
INSERT INTO Bilhete VALUES (1114, 3, 59, "pinhovera@guerreiro.com", "AADAA");
INSERT INTO Bagagem VALUES (924187, 1.07, 0.89, 0.49, 11, 1114);
INSERT INTO Nacionalidade VALUES (20020, "Portugal");


INSERT INTO Pessoa VALUES (44043, "Lúcia da Garcia", "Largo de Moreira, 52
7706-811 Vila Real", "(351) 929982041", "6843050848", "2006-08-14");
INSERT INTO Conta VALUES ("eamaral@sapo.pt", "bc@j5+la", 2188);
INSERT INTO Passageiro VALUES (94995, "eamaral@sapo.pt", 44043);
INSERT INTO Bilhete VALUES (1115, 4, 59, "eamaral@sapo.pt", "AADAA");
INSERT INTO Bagagem VALUES (452810, 0.74, 0.82, 0.79, 20, 1115);
INSERT INTO Nacionalidade VALUES (44043, "Portugal");


INSERT INTO Pessoa VALUES (55454, "Emília Matos", "Avenida Loureiro, 66
8827-232 Peso da Régua", "(351) 962 361 323", "8480902972", "2005-10-08");
INSERT INTO Conta VALUES ("patriciaantunes@anjos.com", ")4p^4tep", 2465);
INSERT INTO Passageiro VALUES (91436, "patriciaantunes@anjos.com", 55454);
INSERT INTO Bilhete VALUES (1116, 5, 59, "patriciaantunes@anjos.com", "AADAA");
INSERT INTO Bagagem VALUES (923221, 0.51, 1.01, 0.72, 23, 1116);
INSERT INTO Nacionalidade VALUES (55454, "Portugal");


INSERT INTO Pessoa VALUES (38072, "Nádia Cunha", "R. Diogo Vicente, 46
8659-249 Vila Nova de Gaia", "(351) 914 814 076", "6947170856", "1931-07-17");
INSERT INTO Conta VALUES ("fariarafaela@alves.com", "9ls&3#fw", 2014);
INSERT INTO Passageiro VALUES (12635, "fariarafaela@alves.com", 38072);
INSERT INTO Bilhete VALUES (1117, 6, 59, "fariarafaela@alves.com", "AADAA");
INSERT INTO Bagagem VALUES (298851, 0.72, 0.71, 0.8, 22, 1117);
INSERT INTO Nacionalidade VALUES (38072, "Portugal");


INSERT INTO Pessoa VALUES (23132, "Iara da Neto", "Rua de Teixeira, 44
1410-764 Funchal", "263 053 233", "7206041441", "2010-12-08");
INSERT INTO Conta VALUES ("silvagaspar@hotmail.com", "c&3!c0%d", 654);
INSERT INTO Passageiro VALUES (34648, "silvagaspar@hotmail.com", 23132);
INSERT INTO Bilhete VALUES (1118, 7, 59, "silvagaspar@hotmail.com", "AADAA");
INSERT INTO Bagagem VALUES (873781, 1.16, 1.15, 0.33, 1, 1118);
INSERT INTO Nacionalidade VALUES (23132, "Portugal");


INSERT INTO Pessoa VALUES (90052, "Matilde Nascimento", "Avenida de Rocha, 1
9967-935 Angra do Heroísmo", "+351931198611", "3586915580", "1976-08-05");
INSERT INTO Conta VALUES ("margarida04@sapo.pt", "u$o6h@)d", 647);
INSERT INTO Passageiro VALUES (89154, "margarida04@sapo.pt", 90052);
INSERT INTO Bilhete VALUES (1119, 8, 59, "margarida04@sapo.pt", "AADAA");
INSERT INTO Bagagem VALUES (358038, 0.93, 1.01, 0.58, 2, 1119);
INSERT INTO Nacionalidade VALUES (90052, "Portugal");


INSERT INTO Pessoa VALUES (14401, "Sebastião Barbosa", "Largo Bianca Lourenço, 67
7979-207 Estarreja", "914359023", "9909074565", "2004-08-20");
INSERT INTO Conta VALUES ("debora53@gmail.com", "@v^675wl", 1236);
INSERT INTO Passageiro VALUES (30662, "debora53@gmail.com", 14401);
INSERT INTO Bilhete VALUES (1120, 9, 59, "debora53@gmail.com", "AADAA");
INSERT INTO Bagagem VALUES (71545, 1.03, 0.71, 0.61, 8, 1120);
INSERT INTO Nacionalidade VALUES (14401, "Portugal");


INSERT INTO Pessoa VALUES (21133, "Lisandro Lopes", "Travessa Maia, 30
9388-654 Seia", "(351) 253352473", "8696724360", "1987-04-04");
INSERT INTO Conta VALUES ("tiagoandrade@melo.net", "3a$5e2o6", 745);
INSERT INTO Passageiro VALUES (89292, "tiagoandrade@melo.net", 21133);
INSERT INTO Bilhete VALUES (1121, 10, 59, "tiagoandrade@melo.net", "AADAA");
INSERT INTO Bagagem VALUES (29890, 0.68, 1.0, 0.65, 24, 1121);
INSERT INTO Nacionalidade VALUES (21133, "Portugal");


INSERT INTO Pessoa VALUES (42125, "Yasmin de Jesus", "Travessa Pereira, S/N
6147-566 Seixal", "910 114 424", "2158993425", "1931-11-26");
INSERT INTO Conta VALUES ("bernardolima@neves.com", "xda%!60m", 1651);
INSERT INTO Passageiro VALUES (64591, "bernardolima@neves.com", 42125);
INSERT INTO Bilhete VALUES (1122, 11, 59, "bernardolima@neves.com", "AADAA");
INSERT INTO Bagagem VALUES (259975, 1.02, 0.63, 0.41, 9, 1122);
INSERT INTO Nacionalidade VALUES (42125, "Portugal");


INSERT INTO Pessoa VALUES (91901, "Emma Amorim-Santos", "Largo de Oliveira, 150
9926-558 Santa Comba Dão", "(351) 912109682", "7256221697", "1951-06-14");
INSERT INTO Conta VALUES ("lorenasantos@pereira.net", "1q^16x4g", 901);
INSERT INTO Passageiro VALUES (61384, "lorenasantos@pereira.net", 91901);
INSERT INTO Bilhete VALUES (1123, 12, 59, "lorenasantos@pereira.net", "AADAA");
INSERT INTO Bagagem VALUES (468744, 0.78, 0.89, 0.44, 10, 1123);
INSERT INTO Nacionalidade VALUES (91901, "Portugal");


INSERT INTO Pessoa VALUES (27879, "Íris Azevedo", "Largo Ema Miranda, 908
5229-905 Viseu", "(351) 967073135", "5948173440", "1997-09-02");
INSERT INTO Conta VALUES ("freitasfilipa@hotmail.com", "y$t)52oy", 1027);
INSERT INTO Passageiro VALUES (16293, "freitasfilipa@hotmail.com", 27879);
INSERT INTO Bilhete VALUES (1124, 13, 59, "freitasfilipa@hotmail.com", "AADAA");
INSERT INTO Bagagem VALUES (105767, 0.95, 0.75, 0.7, 26, 1124);
INSERT INTO Nacionalidade VALUES (27879, "Portugal");


INSERT INTO Pessoa VALUES (92693, "José da Assunção", "Av Matilde Maia, 3
0805-133 Santo Tirso", "+351934480639", "6178827392", "1974-01-13");
INSERT INTO Conta VALUES ("lucamorais@borges.org", "7s9#(_2z", 461);
INSERT INTO Passageiro VALUES (80101, "lucamorais@borges.org", 92693);
INSERT INTO Bilhete VALUES (1125, 14, 59, "lucamorais@borges.org", "AADAA");
INSERT INTO Bagagem VALUES (534893, 0.6, 1.13, 0.48, 12, 1125);
INSERT INTO Nacionalidade VALUES (92693, "Portugal");


INSERT INTO Pessoa VALUES (57776, "Isaac Barros", "Rua Tiago Paiva, 9
4330-659 Gouveia", "912606496", "8541827025", "1935-01-15");
INSERT INTO Conta VALUES ("nadia28@sapo.pt", "%+y2r6gr", 893);
INSERT INTO Passageiro VALUES (71710, "nadia28@sapo.pt", 57776);
INSERT INTO Bilhete VALUES (1126, 15, 59, "nadia28@sapo.pt", "AADAA");
INSERT INTO Bagagem VALUES (514144, 0.68, 0.67, 0.68, 2, 1126);
INSERT INTO Nacionalidade VALUES (57776, "Portugal");


INSERT INTO Pessoa VALUES (58963, "Rodrigo Leite", "R. Júlia Tavares, 78
3410-374 Portimão", "+351934707931", "2316744746", "1957-10-19");
INSERT INTO Conta VALUES ("bernardomaia@clix.pt", "ea^75l3c", 1831);
INSERT INTO Passageiro VALUES (34756, "bernardomaia@clix.pt", 58963);
INSERT INTO Bilhete VALUES (1127, 16, 59, "bernardomaia@clix.pt", "AADAA");
INSERT INTO Bagagem VALUES (295704, 0.59, 0.85, 0.5, 2, 1127);
INSERT INTO Nacionalidade VALUES (58963, "Portugal");


INSERT INTO Pessoa VALUES (89703, "Flor-Constança Maia", "Travessa Leal, 3
8498-601 Ermesinde", "+351222752168", "2076536893", "1951-07-27");
INSERT INTO Conta VALUES ("znascimento@branco.pt", ")sv6a#^o", 1788);
INSERT INTO Passageiro VALUES (05540, "znascimento@branco.pt", 89703);
INSERT INTO Bilhete VALUES (1128, 17, 59, "znascimento@branco.pt", "AADAA");
INSERT INTO Bagagem VALUES (473270, 1.14, 1.16, 0.44, 22, 1128);
INSERT INTO Nacionalidade VALUES (89703, "Portugal");


INSERT INTO Pessoa VALUES (33867, "Vítor Fernandes", "Largo de Machado, 556
1139-265 Espinho", "(351) 968359942", "5046151661", "1952-08-17");
INSERT INTO Conta VALUES ("renata61@garcia.pt", "1+p4ytd(", 2130);
INSERT INTO Passageiro VALUES (91475, "renata61@garcia.pt", 33867);
INSERT INTO Bilhete VALUES (1129, 18, 59, "renata61@garcia.pt", "AADAA");
INSERT INTO Bagagem VALUES (489406, 1.16, 0.76, 0.79, 28, 1129);
INSERT INTO Nacionalidade VALUES (33867, "Portugal");


INSERT INTO Pessoa VALUES (75566, "Flor Ferreira", "Avenida Alice Cardoso, 605
0401-607 Fiães", "(351) 926 956 410", "0722495499", "1962-07-22");
INSERT INTO Conta VALUES ("amorimtatiana@gmail.com", "%$i08m^)", 799);
INSERT INTO Passageiro VALUES (57023, "amorimtatiana@gmail.com", 75566);
INSERT INTO Bilhete VALUES (1130, 19, 59, "amorimtatiana@gmail.com", "AADAA");
INSERT INTO Bagagem VALUES (686571, 0.59, 1.01, 0.4, 33, 1130);
INSERT INTO Nacionalidade VALUES (75566, "Portugal");


INSERT INTO Pessoa VALUES (85322, "Igor Paiva", "R. Carneiro, 70
3453-804 Braga", "(351) 931 120 285", "0369738895", "1960-04-20");
INSERT INTO Conta VALUES ("santiago56@marques.com", "+f#_1dhg", 647);
INSERT INTO Passageiro VALUES (50394, "santiago56@marques.com", 85322);
INSERT INTO Bilhete VALUES (1131, 20, 59, "santiago56@marques.com", "AADAA");
INSERT INTO Bagagem VALUES (913071, 1.07, 0.73, 0.7, 28, 1131);
INSERT INTO Nacionalidade VALUES (85322, "Portugal");


INSERT INTO Pessoa VALUES (84642, "Afonso de Fernandes", "R. de Campos, 18
2451-757 Esposende", "913 425 577", "0856385298", "1982-06-16");
INSERT INTO Conta VALUES ("soarescamila@sapo.pt", "_ut18fsy", 602);
INSERT INTO Passageiro VALUES (30352, "soarescamila@sapo.pt", 84642);
INSERT INTO Bilhete VALUES (1132, 21, 59, "soarescamila@sapo.pt", "AADAA");
INSERT INTO Bagagem VALUES (275314, 0.53, 0.96, 0.65, 7, 1132);
INSERT INTO Nacionalidade VALUES (84642, "Portugal");


INSERT INTO Pessoa VALUES (65309, "Violeta do Lima", "Av Amaral, 22
4879-135 Santana", "(351) 274 133 085", "6797281027", "1970-05-06");
INSERT INTO Conta VALUES ("nunoferreira@hotmail.com", "bm7)3byp", 1227);
INSERT INTO Passageiro VALUES (83653, "nunoferreira@hotmail.com", 65309);
INSERT INTO Bilhete VALUES (1133, 22, 59, "nunoferreira@hotmail.com", "AADAA");
INSERT INTO Bagagem VALUES (599623, 0.94, 1.12, 0.61, 3, 1133);
INSERT INTO Nacionalidade VALUES (65309, "Portugal");


INSERT INTO Pessoa VALUES (49731, "Gonçalo Neves", "Travessa Rúben Fernandes, 23
2980-211 Estremoz", "+351937980217", "6576688241", "1934-05-07");
INSERT INTO Conta VALUES ("dinisgomes@cunha.com", "%w2*5m*x", 545);
INSERT INTO Passageiro VALUES (27996, "dinisgomes@cunha.com", 49731);
INSERT INTO Bilhete VALUES (1134, 23, 59, "dinisgomes@cunha.com", "AADAA");
INSERT INTO Bagagem VALUES (554171, 1.03, 1.15, 0.5, 22, 1134);
INSERT INTO Nacionalidade VALUES (49731, "Portugal");


INSERT INTO Pessoa VALUES (51130, "Kevin Magalhães", "Rua de Amorim, 58
1885-913 Cartaxo", "(351) 914 369 216", "2010351009", "2007-02-06");
INSERT INTO Conta VALUES ("mateus40@sapo.pt", "txue^p0i", 1959);
INSERT INTO Passageiro VALUES (23473, "mateus40@sapo.pt", 51130);
INSERT INTO Bilhete VALUES (1135, 24, 59, "mateus40@sapo.pt", "AADAA");
INSERT INTO Bagagem VALUES (245735, 0.84, 0.99, 0.74, 29, 1135);
INSERT INTO Nacionalidade VALUES (51130, "Portugal");


INSERT INTO Pessoa VALUES (60661, "Marta Loureiro", "Largo Pinho, 72
3662-895 Beja", "937355992", "8136640032", "2002-06-15");
INSERT INTO Conta VALUES ("qsoares@moura.pt", "x%d(1cvd", 2750);
INSERT INTO Passageiro VALUES (94172, "qsoares@moura.pt", 60661);
INSERT INTO Bilhete VALUES (1136, 25, 59, "qsoares@moura.pt", "AADAA");
INSERT INTO Bagagem VALUES (780434, 0.76, 0.91, 0.4, 18, 1136);
INSERT INTO Nacionalidade VALUES (60661, "Portugal");


INSERT INTO Pessoa VALUES (06801, "Petra Leite-Assunção", "Avenida Rodrigues, 865
5999-115 Valongo", "913133359", "3226844774", "2007-04-01");
INSERT INTO Conta VALUES ("borgescatarina@neves.com", ")o4q%6us", 792);
INSERT INTO Passageiro VALUES (09198, "borgescatarina@neves.com", 06801);
INSERT INTO Bilhete VALUES (1137, 26, 59, "borgescatarina@neves.com", "AADAA");
INSERT INTO Bagagem VALUES (935710, 0.85, 0.64, 0.52, 11, 1137);
INSERT INTO Nacionalidade VALUES (06801, "Portugal");


INSERT INTO Pessoa VALUES (51038, "Mia Marques", "Travessa Fernando Guerreiro, 2
9552-638 Albufeira", "(351) 916120568", "6991657724", "1941-02-12");
INSERT INTO Conta VALUES ("vitoriagomes@sapo.pt", "m2&1+jms", 2077);
INSERT INTO Passageiro VALUES (85839, "vitoriagomes@sapo.pt", 51038);
INSERT INTO Bilhete VALUES (1138, 27, 59, "vitoriagomes@sapo.pt", "AADAA");
INSERT INTO Bagagem VALUES (154961, 0.82, 0.92, 0.62, 22, 1138);
INSERT INTO Nacionalidade VALUES (51038, "Portugal");


INSERT INTO Pessoa VALUES (11020, "Edgar de Teixeira", "Avenida de Nunes, 410
6857-405 Lagoa", "924498981", "1661895225", "1932-03-26");
INSERT INTO Conta VALUES ("almeidaemilia@gmail.com", "(l56im%v", 1374);
INSERT INTO Passageiro VALUES (87976, "almeidaemilia@gmail.com", 11020);
INSERT INTO Bilhete VALUES (1139, 28, 59, "almeidaemilia@gmail.com", "AADAA");
INSERT INTO Bagagem VALUES (976322, 1.03, 0.73, 0.59, 27, 1139);
INSERT INTO Nacionalidade VALUES (11020, "Portugal");


INSERT INTO Pessoa VALUES (95531, "Diana Simões", "Rua de Freitas, S/N
5458-597 Tomar", "939522050", "5215464321", "1984-10-21");
INSERT INTO Conta VALUES ("marcosaraujo@sapo.pt", "8zpa)6gf", 331);
INSERT INTO Passageiro VALUES (30475, "marcosaraujo@sapo.pt", 95531);
INSERT INTO Bilhete VALUES (1140, 29, 59, "marcosaraujo@sapo.pt", "AADAA");
INSERT INTO Bagagem VALUES (218100, 1.12, 0.64, 0.56, 29, 1140);
INSERT INTO Nacionalidade VALUES (95531, "Portugal");


INSERT INTO Pessoa VALUES (76127, "Iara-Helena Sá", "R. de Morais, 66
2096-621 Gandra", "(351) 927889211", "6444519568", "1970-06-09");
INSERT INTO Conta VALUES ("irina47@clix.pt", "3x&vf0b$", 794);
INSERT INTO Passageiro VALUES (12413, "irina47@clix.pt", 76127);
INSERT INTO Bilhete VALUES (1141, 30, 59, "irina47@clix.pt", "AADAA");
INSERT INTO Bagagem VALUES (816086, 1.14, 1.11, 0.62, 27, 1141);
INSERT INTO Nacionalidade VALUES (76127, "Portugal");


INSERT INTO Pessoa VALUES (57218, "Gil da Correia", "Largo de Cunha, 6
4373-989 Paredes", "(351) 915320671", "8451573754", "2005-10-12");
INSERT INTO Conta VALUES ("vera71@sapo.pt", "n(27uapk", 2619);
INSERT INTO Passageiro VALUES (83942, "vera71@sapo.pt", 57218);
INSERT INTO Bilhete VALUES (1142, 31, 59, "vera71@sapo.pt", "AADAA");
INSERT INTO Bagagem VALUES (600534, 0.87, 0.71, 0.63, 5, 1142);
INSERT INTO Nacionalidade VALUES (57218, "Portugal");


INSERT INTO Pessoa VALUES (29907, "Lisandro Amorim", "Travessa Joel Freitas, 7
0187-364 Praia da Vitória", "(351) 910 557 583", "7834042909", "1952-10-01");
INSERT INTO Conta VALUES ("reisiara@pinheiro.com", "*(06$tux", 2923);
INSERT INTO Passageiro VALUES (31093, "reisiara@pinheiro.com", 29907);
INSERT INTO Bilhete VALUES (1143, 32, 59, "reisiara@pinheiro.com", "AADAA");
INSERT INTO Bagagem VALUES (173641, 1.14, 1.09, 0.37, 31, 1143);
INSERT INTO Nacionalidade VALUES (29907, "Portugal");


INSERT INTO Pessoa VALUES (47235, "Gil-Micael Miranda", "Av Borges, 360
3239-507 Estremoz", "(351) 916715990", "7197328273", "1965-01-18");
INSERT INTO Conta VALUES ("victoria30@maia.pt", "_4h@6l^^", 540);
INSERT INTO Passageiro VALUES (49395, "victoria30@maia.pt", 47235);
INSERT INTO Bilhete VALUES (1144, 33, 59, "victoria30@maia.pt", "AADAA");
INSERT INTO Bagagem VALUES (728935, 0.67, 1.19, 0.55, 24, 1144);
INSERT INTO Nacionalidade VALUES (47235, "Portugal");


INSERT INTO Pessoa VALUES (70554, "Noah Correia", "Avenida de Gomes, 1
5922-717 Loulé", "(351) 915282854", "7763381196", "1930-06-11");
INSERT INTO Conta VALUES ("sara74@sapo.pt", "nizx&16n", 2968);
INSERT INTO Passageiro VALUES (43031, "sara74@sapo.pt", 70554);
INSERT INTO Bilhete VALUES (1145, 34, 59, "sara74@sapo.pt", "AADAA");
INSERT INTO Bagagem VALUES (301638, 1.0, 0.87, 0.57, 11, 1145);
INSERT INTO Nacionalidade VALUES (70554, "Portugal");


INSERT INTO Pessoa VALUES (80545, "Amélia-Núria Domingues", "Rua Álvaro Torres, 3
0434-836 Montemor-o-Novo", "(351) 921082851", "9272549597", "1943-02-13");
INSERT INTO Conta VALUES ("fonsecavitor@gmail.com", "z#fo!3mh", 2865);
INSERT INTO Passageiro VALUES (18847, "fonsecavitor@gmail.com", 80545);
INSERT INTO Bilhete VALUES (1146, 35, 59, "fonsecavitor@gmail.com", "AADAA");
INSERT INTO Bagagem VALUES (445046, 1.03, 0.86, 0.73, 20, 1146);
INSERT INTO Nacionalidade VALUES (80545, "Portugal");


INSERT INTO Pessoa VALUES (93532, "Anita Esteves", "Rua de Sousa, 76
8998-699 Rebordosa", "(351) 967672960", "5456603858", "1946-02-12");
INSERT INTO Conta VALUES ("caetana48@sapo.pt", "p+v3^c2b", 1519);
INSERT INTO Passageiro VALUES (93511, "caetana48@sapo.pt", 93532);
INSERT INTO Bilhete VALUES (1147, 36, 59, "caetana48@sapo.pt", "AADAA");
INSERT INTO Bagagem VALUES (254141, 0.73, 1.07, 0.48, 22, 1147);
INSERT INTO Nacionalidade VALUES (93532, "Portugal");


INSERT INTO Pessoa VALUES (64031, "Renata Batista", "Travessa Erika Pinheiro, 842
6819-020 Ribeira Grande", "(351) 936 108 029", "6660703326", "1983-08-21");
INSERT INTO Conta VALUES ("miguel76@amorim.pt", "&6rzozgn", 1532);
INSERT INTO Passageiro VALUES (05381, "miguel76@amorim.pt", 64031);
INSERT INTO Bilhete VALUES (1148, 37, 59, "miguel76@amorim.pt", "AADAA");
INSERT INTO Bagagem VALUES (379833, 0.57, 1.04, 0.72, 33, 1148);
INSERT INTO Nacionalidade VALUES (64031, "Portugal");


INSERT INTO Pessoa VALUES (38328, "Adriana Baptista", "Av Nogueira, S/N
1044-506 Covilhã", "960 433 172", "2577357402", "1954-01-06");
INSERT INTO Conta VALUES ("adriana74@gmail.com", "*$3qu@s+", 1764);
INSERT INTO Passageiro VALUES (80326, "adriana74@gmail.com", 38328);
INSERT INTO Bilhete VALUES (1149, 38, 59, "adriana74@gmail.com", "AADAA");
INSERT INTO Bagagem VALUES (359882, 0.91, 0.96, 0.7, 8, 1149);
INSERT INTO Nacionalidade VALUES (38328, "Portugal");


INSERT INTO Pessoa VALUES (77792, "Tomás-António Silva", "Av de Pires, 76
8776-218 Vila Real", "290 236 927", "3343222808", "1953-10-09");
INSERT INTO Conta VALUES ("antunesdenis@sapo.pt", "#fe5fk8d", 350);
INSERT INTO Passageiro VALUES (83087, "antunesdenis@sapo.pt", 77792);
INSERT INTO Bilhete VALUES (1150, 39, 59, "antunesdenis@sapo.pt", "AADAA");
INSERT INTO Bagagem VALUES (566739, 0.74, 0.8, 0.75, 2, 1150);
INSERT INTO Nacionalidade VALUES (77792, "Portugal");


INSERT INTO Pessoa VALUES (34080, "Lorena-Margarida Neves", "Rua Batista, S/N
0090-272 Ponta Delgada", "(351) 928903243", "6096415056", "2000-07-17");
INSERT INTO Conta VALUES ("nelson25@loureiro.com", "_f4^*(+o", 790);
INSERT INTO Passageiro VALUES (24794, "nelson25@loureiro.com", 34080);
INSERT INTO Bilhete VALUES (1151, 40, 59, "nelson25@loureiro.com", "AADAA");
INSERT INTO Bagagem VALUES (436990, 1.17, 0.85, 0.73, 13, 1151);
INSERT INTO Nacionalidade VALUES (34080, "Portugal");


INSERT INTO Pessoa VALUES (92140, "José Abreu", "Av de Macedo, 743
8297-099 Mangualde", "+351938880753", "7832775169", "1999-07-09");
INSERT INTO Conta VALUES ("lourenco38@sapo.pt", "ubojn^1l", 1808);
INSERT INTO Passageiro VALUES (79516, "lourenco38@sapo.pt", 92140);
INSERT INTO Bilhete VALUES (1152, 41, 59, "lourenco38@sapo.pt", "AADAA");
INSERT INTO Bagagem VALUES (196126, 0.6, 1.04, 0.6, 22, 1152);
INSERT INTO Nacionalidade VALUES (92140, "Portugal");


INSERT INTO Pessoa VALUES (14253, "Luís Lopes", "Travessa Coelho, 7
9945-429 Santa Comba Dão", "(351) 267 277 254", "6855423950", "1944-09-11");
INSERT INTO Conta VALUES ("xmendes@gmail.com", "(e5c4cpl", 1448);
INSERT INTO Passageiro VALUES (13317, "xmendes@gmail.com", 14253);
INSERT INTO Bilhete VALUES (1153, 42, 59, "xmendes@gmail.com", "AADAA");
INSERT INTO Bagagem VALUES (259282, 1.16, 0.97, 0.39, 9, 1153);
INSERT INTO Nacionalidade VALUES (14253, "Portugal");


INSERT INTO Pessoa VALUES (22121, "Kévim do Branco", "Largo Miranda, S/N
6798-772 Paredes", "(351) 924038256", "5650164069", "1940-02-08");
INSERT INTO Conta VALUES ("fcorreia@gomes.pt", "%w^2eon$", 1674);
INSERT INTO Passageiro VALUES (90208, "fcorreia@gomes.pt", 22121);
INSERT INTO Bilhete VALUES (1154, 43, 59, "fcorreia@gomes.pt", "AADAA");
INSERT INTO Bagagem VALUES (132016, 0.75, 0.79, 0.36, 20, 1154);
INSERT INTO Nacionalidade VALUES (22121, "Portugal");


INSERT INTO Pessoa VALUES (60401, "Soraia Paiva", "Av Sérgio Leite, 923
7493-077 Olhão", "(351) 923239474", "3543990003", "1979-12-13");
INSERT INTO Conta VALUES ("tavaresiris@coelho.net", "%5!^8@xw", 395);
INSERT INTO Passageiro VALUES (14272, "tavaresiris@coelho.net", 60401);
INSERT INTO Bilhete VALUES (1155, 44, 59, "tavaresiris@coelho.net", "AADAA");
INSERT INTO Bagagem VALUES (865457, 1.01, 0.83, 0.5, 25, 1155);
INSERT INTO Nacionalidade VALUES (60401, "Portugal");


INSERT INTO Pessoa VALUES (41332, "Carlota Pires", "Largo de Soares, S/N
6748-838 Portimão", "+351928618317", "6535134618", "2007-12-05");
INSERT INTO Conta VALUES ("ericaaraujo@clix.pt", "$3qm(p2c", 2901);
INSERT INTO Passageiro VALUES (83466, "ericaaraujo@clix.pt", 41332);
INSERT INTO Bilhete VALUES (1156, 45, 59, "ericaaraujo@clix.pt", "AADAA");
INSERT INTO Bagagem VALUES (803971, 0.58, 0.66, 0.32, 35, 1156);
INSERT INTO Nacionalidade VALUES (41332, "Portugal");


INSERT INTO Pessoa VALUES (37441, "Letícia Assunção", "Largo Carolina Silva, 7
5875-179 Penafiel", "(351) 933 881 920", "2916974415", "1945-03-27");
INSERT INTO Conta VALUES ("qpinho@soares.com", "$al*52ps", 2335);
INSERT INTO Passageiro VALUES (02737, "qpinho@soares.com", 37441);
INSERT INTO Bilhete VALUES (1157, 46, 59, "qpinho@soares.com", "AADAA");
INSERT INTO Bagagem VALUES (32668, 0.75, 0.84, 0.62, 35, 1157);
INSERT INTO Nacionalidade VALUES (37441, "Portugal");


INSERT INTO Pessoa VALUES (32472, "Valentina de Abreu", "Largo Mota, 2
1798-433 Santarém", "914981801", "1051107165", "1961-12-05");
INSERT INTO Conta VALUES ("brian58@sousa.pt", "*j09d3i&", 1428);
INSERT INTO Passageiro VALUES (78072, "brian58@sousa.pt", 32472);
INSERT INTO Bilhete VALUES (1158, 47, 59, "brian58@sousa.pt", "AADAA");
INSERT INTO Bagagem VALUES (149968, 0.92, 0.96, 0.67, 3, 1158);
INSERT INTO Nacionalidade VALUES (32472, "Portugal");


INSERT INTO Pessoa VALUES (45869, "Carminho Alves", "Av Vitória Barbosa, 662
3552-467 Esposende", "(351) 932984866", "5180624967", "1939-03-27");
INSERT INTO Conta VALUES ("eva85@sapo.pt", "4$t9iwc!", 2388);
INSERT INTO Passageiro VALUES (85940, "eva85@sapo.pt", 45869);
INSERT INTO Bilhete VALUES (1159, 48, 59, "eva85@sapo.pt", "AADAA");
INSERT INTO Bagagem VALUES (440475, 0.51, 0.63, 0.62, 23, 1159);
INSERT INTO Nacionalidade VALUES (45869, "Portugal");


INSERT INTO Pessoa VALUES (92418, "Flor Coelho", "Avenida Clara Matias, S/N
7854-807 Évora", "933843513", "7338685183", "1937-11-22");
INSERT INTO Conta VALUES ("diogo89@clix.pt", "b(9iwr_z", 2636);
INSERT INTO Passageiro VALUES (99621, "diogo89@clix.pt", 92418);
INSERT INTO Bilhete VALUES (1160, 49, 59, "diogo89@clix.pt", "AADAA");
INSERT INTO Bagagem VALUES (212265, 0.75, 0.8, 0.44, 27, 1160);
INSERT INTO Nacionalidade VALUES (92418, "Portugal");


INSERT INTO Pessoa VALUES (24459, "Marcos-Matias Nascimento", "Travessa de Sousa, 74
0183-505 Fundão", "(351) 219 412 572", "9432265714", "2010-11-18");
INSERT INTO Conta VALUES ("aliciaesteves@sapo.pt", "%00jkx@%", 2660);
INSERT INTO Passageiro VALUES (44079, "aliciaesteves@sapo.pt", 24459);
INSERT INTO Bilhete VALUES (1161, 50, 59, "aliciaesteves@sapo.pt", "AADAA");
INSERT INTO Bagagem VALUES (863652, 0.77, 0.64, 0.47, 35, 1161);
INSERT INTO Nacionalidade VALUES (24459, "Portugal");



--Voo AADAB ter pdl
--pilotos
INSERT INTO Pessoa VALUES (28377, "Vicente Alves", "Travessa Isabel Amaral, 794
6221-804 Freamunde", "(351) 937 267 979", "0450481345", "1965-11-13");
INSERT INTO Piloto VALUES (15, 4190, 28377);
INSERT INTO Pilotagem VALUES (15, "AADAB");
INSERT INTO Nacionalidade VALUES (28377, "Portugal");


INSERT INTO Pessoa VALUES (81634, "Fernando Sá", "Largo de Ferreira, 96
1067-963 Sacavém", "(351) 204392870", "8567100222", "1950-09-14");
INSERT INTO Piloto VALUES (16, 3218, 81634);
INSERT INTO Pilotagem VALUES (16, "AADAB");
INSERT INTO Nacionalidade VALUES (81634, "Portugal");



--bordo
INSERT INTO PessoalCabine VALUES (22, "AADAB");

INSERT INTO PessoalCabine VALUES (23, "AADAB");


--passageiros
INSERT INTO Pessoa VALUES (17646, "Santiago Cunha", "Travessa de Jesus, 766
2916-848 Ourém", "929695521", "3259497594", "1936-03-23");
INSERT INTO Conta VALUES ("jorge67@hotmail.com", "s(c+x8!d", 776);
INSERT INTO Passageiro VALUES (63082, "jorge67@hotmail.com", 17646);
INSERT INTO Bilhete VALUES (1062, 1, 59, "jorge67@hotmail.com", "AADAB");
INSERT INTO Bagagem VALUES (332585, 0.78, 0.89, 0.69, 28, 1062);
INSERT INTO Nacionalidade VALUES (17646, "Portugal");


INSERT INTO Pessoa VALUES (05364, "Marco Ferreira", "Largo de Araújo, 3
6623-815 Gondomar", "(351) 910 826 884", "2286520369", "2000-02-14");
INSERT INTO Conta VALUES ("kellybarros@pinho.com", "4&21*vg6", 319);
INSERT INTO Passageiro VALUES (30003, "kellybarros@pinho.com", 05364);
INSERT INTO Bilhete VALUES (1063, 2, 59, "kellybarros@pinho.com", "AADAB");
INSERT INTO Bagagem VALUES (447536, 1.15, 1.02, 0.78, 20, 1063);
INSERT INTO Nacionalidade VALUES (05364, "Portugal");


INSERT INTO Pessoa VALUES (15467, "Lorena Nogueira-Morais", "Rua de Almeida, 86
7290-447 Estremoz", "(351) 229 181 609", "4511203676", "1930-06-27");
INSERT INTO Conta VALUES ("santosbeatriz@clix.pt", "c#a1abbq", 300);
INSERT INTO Passageiro VALUES (06032, "santosbeatriz@clix.pt", 15467);
INSERT INTO Bilhete VALUES (1064, 3, 59, "santosbeatriz@clix.pt", "AADAB");
INSERT INTO Bagagem VALUES (522024, 1.0, 0.7, 0.38, 34, 1064);
INSERT INTO Nacionalidade VALUES (15467, "Portugal");


INSERT INTO Pessoa VALUES (50857, "Emanuel Pires", "Largo Martins, 6
6932-300 Funchal", "+351924031429", "4245759502", "1982-04-13");
INSERT INTO Conta VALUES ("filipamatos@gmail.com", "@mq6ptpl", 2932);
INSERT INTO Passageiro VALUES (62381, "filipamatos@gmail.com", 50857);
INSERT INTO Bilhete VALUES (1065, 4, 59, "filipamatos@gmail.com", "AADAB");
INSERT INTO Bagagem VALUES (205649, 1.18, 1.08, 0.62, 2, 1065);
INSERT INTO Nacionalidade VALUES (50857, "Portugal");


INSERT INTO Pessoa VALUES (36855, "Caetana Pinto", "Travessa Vitória Rodrigues, S/N
6697-961 Tarouca", "(351) 964663899", "1109258870", "1958-02-26");
INSERT INTO Conta VALUES ("kelly61@clix.pt", "s(y@7map", 2520);
INSERT INTO Passageiro VALUES (67979, "kelly61@clix.pt", 36855);
INSERT INTO Bilhete VALUES (1066, 5, 59, "kelly61@clix.pt", "AADAB");
INSERT INTO Bagagem VALUES (570817, 1.14, 0.79, 0.67, 5, 1066);
INSERT INTO Nacionalidade VALUES (36855, "Portugal");


INSERT INTO Pessoa VALUES (89060, "Lourenço Oliveira", "Av Renato Fonseca, 80
8725-994 Guarda", "258009007", "0114361262", "1998-04-20");
INSERT INTO Conta VALUES ("jazevedo@gmail.com", "c0^8^j0d", 520);
INSERT INTO Passageiro VALUES (19321, "jazevedo@gmail.com", 89060);
INSERT INTO Bilhete VALUES (1067, 6, 59, "jazevedo@gmail.com", "AADAB");
INSERT INTO Bagagem VALUES (561338, 0.88, 0.79, 0.64, 6, 1067);
INSERT INTO Nacionalidade VALUES (89060, "Portugal");


INSERT INTO Pessoa VALUES (24682, "Larissa Marques", "Largo Guerreiro, 30
5727-096 Amora", "(351) 923824029", "9199490044", "2001-12-07");
INSERT INTO Conta VALUES ("silvaxavier@hotmail.com", "2*k5syxx", 786);
INSERT INTO Passageiro VALUES (36307, "silvaxavier@hotmail.com", 24682);
INSERT INTO Bilhete VALUES (1068, 7, 59, "silvaxavier@hotmail.com", "AADAB");
INSERT INTO Bagagem VALUES (654024, 0.79, 1.09, 0.3, 32, 1068);
INSERT INTO Nacionalidade VALUES (24682, "Portugal");


INSERT INTO Pessoa VALUES (44964, "Gaspar Brito", "R. Matos, 35
6135-375 Porto", "930546076", "5877163941", "1966-02-03");
INSERT INTO Conta VALUES ("bguerreiro@pinheiro.pt", "7^39q$lk", 581);
INSERT INTO Passageiro VALUES (33805, "bguerreiro@pinheiro.pt", 44964);
INSERT INTO Bilhete VALUES (1069, 8, 59, "bguerreiro@pinheiro.pt", "AADAB");
INSERT INTO Bagagem VALUES (558669, 0.84, 0.82, 0.52, 24, 1069);
INSERT INTO Nacionalidade VALUES (44964, "Portugal");


INSERT INTO Pessoa VALUES (36463, "Diego Costa", "Travessa Antunes, 66
4223-051 Anadia", "927293670", "8613013257", "1954-08-20");
INSERT INTO Conta VALUES ("nair88@barbosa.pt", "2*m7h70u", 1704);
INSERT INTO Passageiro VALUES (82098, "nair88@barbosa.pt", 36463);
INSERT INTO Bilhete VALUES (1070, 9, 59, "nair88@barbosa.pt", "AADAB");
INSERT INTO Bagagem VALUES (564303, 0.96, 1.03, 0.4, 8, 1070);
INSERT INTO Nacionalidade VALUES (36463, "Portugal");


INSERT INTO Pessoa VALUES (27006, "Andreia-Eva Barbosa", "Rua de Lima, S/N
9148-661 Espinho", "+351233720164", "0589899288", "1999-01-07");
INSERT INTO Conta VALUES ("carolina10@clix.pt", "m)c_8bz%", 2145);
INSERT INTO Passageiro VALUES (85411, "carolina10@clix.pt", 27006);
INSERT INTO Bilhete VALUES (1071, 10, 59, "carolina10@clix.pt", "AADAB");
INSERT INTO Bagagem VALUES (831892, 0.9, 1.14, 0.78, 9, 1071);
INSERT INTO Nacionalidade VALUES (27006, "Portugal");


INSERT INTO Pessoa VALUES (13383, "Marco Matos", "Travessa Rocha, 13
7009-163 Ílhavo", "214 043 156", "5155573362", "1999-05-05");
INSERT INTO Conta VALUES ("salvador98@sapo.pt", "j^a6%asv", 2959);
INSERT INTO Passageiro VALUES (50979, "salvador98@sapo.pt", 13383);
INSERT INTO Bilhete VALUES (1072, 11, 59, "salvador98@sapo.pt", "AADAB");
INSERT INTO Bagagem VALUES (828675, 0.5, 0.74, 0.32, 6, 1072);
INSERT INTO Nacionalidade VALUES (13383, "Portugal");


INSERT INTO Pessoa VALUES (29579, "Denis Monteiro", "Largo de Domingues, 152
3670-089 Matosinhos", "(351) 929 842 063", "7985004669", "1991-05-06");
INSERT INTO Conta VALUES ("vicente74@sapo.pt", "^jpi02u$", 372);
INSERT INTO Passageiro VALUES (76781, "vicente74@sapo.pt", 29579);
INSERT INTO Bilhete VALUES (1073, 12, 59, "vicente74@sapo.pt", "AADAB");
INSERT INTO Bagagem VALUES (510010, 0.74, 0.98, 0.53, 9, 1073);
INSERT INTO Nacionalidade VALUES (29579, "Portugal");


INSERT INTO Pessoa VALUES (83637, "Camila Reis", "Travessa de Faria, 40
8926-850 Queluz", "(351) 961509621", "0258988895", "1986-04-18");
INSERT INTO Conta VALUES ("vitorfernandes@figueiredo.net", "!(t^^k5l", 1538);
INSERT INTO Passageiro VALUES (31216, "vitorfernandes@figueiredo.net", 83637);
INSERT INTO Bilhete VALUES (1074, 13, 59, "vitorfernandes@figueiredo.net", "AADAB");
INSERT INTO Bagagem VALUES (628874, 0.77, 1.06, 0.78, 20, 1074);
INSERT INTO Nacionalidade VALUES (83637, "Portugal");


INSERT INTO Pessoa VALUES (07456, "António Barros", "Av de Loureiro, 80
6947-644 Tarouca", "(351) 914900428", "8855029707", "1932-01-26");
INSERT INTO Conta VALUES ("carlota69@gmail.com", "s!18lw7b", 1309);
INSERT INTO Passageiro VALUES (52646, "carlota69@gmail.com", 07456);
INSERT INTO Bilhete VALUES (1075, 14, 59, "carlota69@gmail.com", "AADAB");
INSERT INTO Bagagem VALUES (443028, 1.12, 0.76, 0.45, 5, 1075);
INSERT INTO Nacionalidade VALUES (07456, "Portugal");


INSERT INTO Pessoa VALUES (24158, "Nádia Cruz", "R. de Ribeiro, S/N
3726-038 Ribeira Grande", "(351) 921464097", "6368293558", "1979-01-18");
INSERT INTO Conta VALUES ("piresema@matias.org", "#48589vl", 2446);
INSERT INTO Passageiro VALUES (46347, "piresema@matias.org", 24158);
INSERT INTO Bilhete VALUES (1076, 15, 59, "piresema@matias.org", "AADAB");
INSERT INTO Bagagem VALUES (656340, 1.17, 0.76, 0.32, 22, 1076);
INSERT INTO Nacionalidade VALUES (24158, "Portugal");


INSERT INTO Pessoa VALUES (88471, "Vera da Cardoso", "Rua de Assunção, 468
5692-309 Faro", "(351) 254 010 255", "9275300126", "2000-07-21");
INSERT INTO Conta VALUES ("sofia62@teixeira.pt", "nl(^1z#v", 1444);
INSERT INTO Passageiro VALUES (98951, "sofia62@teixeira.pt", 88471);
INSERT INTO Bilhete VALUES (1077, 16, 59, "sofia62@teixeira.pt", "AADAB");
INSERT INTO Bagagem VALUES (334393, 0.79, 0.63, 0.75, 5, 1077);
INSERT INTO Nacionalidade VALUES (88471, "Portugal");


INSERT INTO Pessoa VALUES (59153, "Caetana Torres", "Avenida Neto, 597
7416-435 Santa Maria da Feira", "935270879", "4678339573", "1959-06-18");
INSERT INTO Conta VALUES ("martinswilson@sapo.pt", "$8qhdx_t", 1571);
INSERT INTO Passageiro VALUES (24586, "martinswilson@sapo.pt", 59153);
INSERT INTO Bilhete VALUES (1078, 17, 59, "martinswilson@sapo.pt", "AADAB");
INSERT INTO Bagagem VALUES (244975, 1.11, 0.82, 0.65, 10, 1078);
INSERT INTO Nacionalidade VALUES (59153, "Portugal");


INSERT INTO Pessoa VALUES (80072, "Bárbara Nogueira", "Rua Maia, S/N
3978-769 Setúbal", "(351) 913 046 503", "5714567217", "1936-06-11");
INSERT INTO Conta VALUES ("valentim37@ribeiro.pt", "&9wysh8z", 2504);
INSERT INTO Passageiro VALUES (80119, "valentim37@ribeiro.pt", 80072);
INSERT INTO Bilhete VALUES (1079, 18, 59, "valentim37@ribeiro.pt", "AADAB");
INSERT INTO Bagagem VALUES (244403, 0.92, 0.82, 0.34, 16, 1079);
INSERT INTO Nacionalidade VALUES (80072, "Portugal");


INSERT INTO Pessoa VALUES (76131, "Duarte-Alex Leite", "Rua de Faria, S/N
0508-559 Loulé", "(351) 925376431", "8187300540", "1981-08-01");
INSERT INTO Conta VALUES ("ramostome@sapo.pt", "$j*%9_rh", 729);
INSERT INTO Passageiro VALUES (67555, "ramostome@sapo.pt", 76131);
INSERT INTO Bilhete VALUES (1080, 19, 59, "ramostome@sapo.pt", "AADAB");
INSERT INTO Bagagem VALUES (937280, 0.6, 0.96, 0.76, 8, 1080);
INSERT INTO Nacionalidade VALUES (76131, "Portugal");


INSERT INTO Pessoa VALUES (56723, "Emma do Fonseca", "Largo Anjos, 3
5899-260 Almeirim", "(351) 256790043", "2354631930", "1973-11-26");
INSERT INTO Conta VALUES ("salvadornascimento@clix.pt", "i@_k@3w(", 2145);
INSERT INTO Passageiro VALUES (52592, "salvadornascimento@clix.pt", 56723);
INSERT INTO Bilhete VALUES (1081, 20, 59, "salvadornascimento@clix.pt", "AADAB");
INSERT INTO Bagagem VALUES (406404, 1.05, 0.77, 0.45, 3, 1081);
INSERT INTO Nacionalidade VALUES (56723, "Portugal");


INSERT INTO Pessoa VALUES (88164, "Lúcia Ramos", "Avenida Lara Pires, 762
1384-527 Santa Maria da Feira", "+351929812695", "9522112210", "1970-10-21");
INSERT INTO Conta VALUES ("eva97@vieira.pt", "t!$o5ci2", 728);
INSERT INTO Passageiro VALUES (40597, "eva97@vieira.pt", 88164);
INSERT INTO Bilhete VALUES (1082, 21, 59, "eva97@vieira.pt", "AADAB");
INSERT INTO Bagagem VALUES (386324, 0.71, 0.7, 0.59, 24, 1082);
INSERT INTO Nacionalidade VALUES (88164, "Portugal");


INSERT INTO Pessoa VALUES (76675, "Miriam Neves", "Avenida de Tavares, 46
9119-245 Amora", "932 488 380", "1134377095", "1958-11-10");
INSERT INTO Conta VALUES ("matias32@assuncao.com", "%m5_d_#^", 1927);
INSERT INTO Passageiro VALUES (85134, "matias32@assuncao.com", 76675);
INSERT INTO Bilhete VALUES (1083, 22, 59, "matias32@assuncao.com", "AADAB");
INSERT INTO Bagagem VALUES (974129, 1.19, 1.19, 0.4, 9, 1083);
INSERT INTO Nacionalidade VALUES (76675, "Portugal");


INSERT INTO Pessoa VALUES (24428, "César Moreira", "Av Simões, 55
6879-295 Torres Novas", "(351) 213 255 199", "1301027520", "1996-08-07");
INSERT INTO Conta VALUES ("claudio91@pinho.com", "p*i9n_7d", 1284);
INSERT INTO Passageiro VALUES (85903, "claudio91@pinho.com", 24428);
INSERT INTO Bilhete VALUES (1084, 23, 59, "claudio91@pinho.com", "AADAB");
INSERT INTO Bagagem VALUES (66856, 0.53, 1.0, 0.74, 22, 1084);
INSERT INTO Nacionalidade VALUES (24428, "Portugal");


INSERT INTO Pessoa VALUES (00688, "António Ribeiro", "Largo Leandro Sá, 88
5545-507 Montijo", "+351968801313", "2896592457", "1977-09-05");
INSERT INTO Conta VALUES ("marquesalicia@maia.net", ")9*6&2yo", 1243);
INSERT INTO Passageiro VALUES (89886, "marquesalicia@maia.net", 00688);
INSERT INTO Bilhete VALUES (1085, 24, 59, "marquesalicia@maia.net", "AADAB");
INSERT INTO Bagagem VALUES (956196, 0.77, 1.07, 0.65, 26, 1085);
INSERT INTO Nacionalidade VALUES (00688, "Portugal");


INSERT INTO Pessoa VALUES (36057, "Alice-Benjamim Pinho", "R. Carneiro, 19
9787-757 Montijo", "+351969677072", "0776816932", "1955-03-07");
INSERT INTO Conta VALUES ("ymonteiro@hotmail.com", "&%l#xw9b", 517);
INSERT INTO Passageiro VALUES (80579, "ymonteiro@hotmail.com", 36057);
INSERT INTO Bilhete VALUES (1086, 25, 59, "ymonteiro@hotmail.com", "AADAB");
INSERT INTO Bagagem VALUES (547289, 0.83, 0.92, 0.66, 22, 1086);
INSERT INTO Nacionalidade VALUES (36057, "Portugal");


INSERT INTO Pessoa VALUES (88558, "Isabela Loureiro", "Largo Gaspar, 30
5172-095 Chaves", "917 440 957", "3287013163", "2002-12-07");
INSERT INTO Conta VALUES ("nferreira@clix.pt", "_^m5drdn", 667);
INSERT INTO Passageiro VALUES (10721, "nferreira@clix.pt", 88558);
INSERT INTO Bilhete VALUES (1087, 26, 59, "nferreira@clix.pt", "AADAB");
INSERT INTO Bagagem VALUES (538467, 0.56, 0.94, 0.68, 6, 1087);
INSERT INTO Nacionalidade VALUES (88558, "Portugal");


INSERT INTO Pessoa VALUES (51431, "Tomás Costa", "Av Leite, 30
3839-939 Ribeira Grande", "(351) 913 892 684", "8133232646", "1965-07-16");
INSERT INTO Conta VALUES ("correiaclaudio@hotmail.com", "v1_4tw@_", 2659);
INSERT INTO Passageiro VALUES (87226, "correiaclaudio@hotmail.com", 51431);
INSERT INTO Bilhete VALUES (1088, 27, 59, "correiaclaudio@hotmail.com", "AADAB");
INSERT INTO Bagagem VALUES (990194, 0.58, 0.95, 0.62, 25, 1088);
INSERT INTO Nacionalidade VALUES (51431, "Portugal");


INSERT INTO Pessoa VALUES (74018, "Nádia-Vasco Mota", "R. de Ferreira, 946
9858-254 Ourém", "(351) 963 647 079", "1474586081", "1931-10-22");
INSERT INTO Conta VALUES ("jvalente@valente.com", "w#^x8u+c", 2517);
INSERT INTO Passageiro VALUES (56810, "jvalente@valente.com", 74018);
INSERT INTO Bilhete VALUES (1089, 28, 59, "jvalente@valente.com", "AADAB");
INSERT INTO Bagagem VALUES (535457, 1.17, 0.95, 0.63, 24, 1089);
INSERT INTO Nacionalidade VALUES (74018, "Portugal");


INSERT INTO Pessoa VALUES (10296, "Joaquim Figueiredo", "Avenida Tomás Mota, 792
8149-683 Caniço", "936 198 517", "4756173852", "1999-05-01");
INSERT INTO Conta VALUES ("gilcosta@correia.org", "1m(z)(2n", 604);
INSERT INTO Passageiro VALUES (32567, "gilcosta@correia.org", 10296);
INSERT INTO Bilhete VALUES (1090, 29, 59, "gilcosta@correia.org", "AADAB");
INSERT INTO Bagagem VALUES (583971, 0.83, 1.11, 0.52, 20, 1090);
INSERT INTO Nacionalidade VALUES (10296, "Portugal");


INSERT INTO Pessoa VALUES (69139, "Alícia Carvalho", "R. Igor Borges, S/N
1295-345 Serpa", "935 240 309", "5096821314", "1932-02-04");
INSERT INTO Conta VALUES ("borgesbruno@gmail.com", "4r^1j!rf", 2525);
INSERT INTO Passageiro VALUES (49020, "borgesbruno@gmail.com", 69139);
INSERT INTO Bilhete VALUES (1091, 30, 59, "borgesbruno@gmail.com", "AADAB");
INSERT INTO Bagagem VALUES (769149, 0.81, 1.1, 0.55, 25, 1091);
INSERT INTO Nacionalidade VALUES (69139, "Portugal");


INSERT INTO Pessoa VALUES (62139, "Diogo Lima", "R. Luca Faria, 308
8108-025 Loures", "(351) 934342181", "9701567067", "1934-03-03");
INSERT INTO Conta VALUES ("gustavoesteves@barros.com", "fj(i88a+", 442);
INSERT INTO Passageiro VALUES (85397, "gustavoesteves@barros.com", 62139);
INSERT INTO Bilhete VALUES (1092, 31, 59, "gustavoesteves@barros.com", "AADAB");
INSERT INTO Bagagem VALUES (950297, 0.9, 1.08, 0.75, 13, 1092);
INSERT INTO Nacionalidade VALUES (62139, "Portugal");


INSERT INTO Pessoa VALUES (42448, "Bárbara Neves", "Largo de Cardoso, 64
0561-643 Sacavém", "(351) 962908647", "3480841838", "1982-02-18");
INSERT INTO Conta VALUES ("bernardoandrade@martins.pt", "!p5cuuw!", 668);
INSERT INTO Passageiro VALUES (50663, "bernardoandrade@martins.pt", 42448);
INSERT INTO Bilhete VALUES (1093, 32, 59, "bernardoandrade@martins.pt", "AADAB");
INSERT INTO Bagagem VALUES (659535, 0.97, 1.13, 0.49, 33, 1093);
INSERT INTO Nacionalidade VALUES (42448, "Portugal");


INSERT INTO Pessoa VALUES (06333, "Henrique Martins", "Rua Pinho, 10
7629-313 Peso da Régua", "935 149 398", "5220736383", "1930-01-10");
INSERT INTO Conta VALUES ("correiacarolina@gmail.com", "9_&2ny4c", 684);
INSERT INTO Passageiro VALUES (30483, "correiacarolina@gmail.com", 06333);
INSERT INTO Bilhete VALUES (1094, 33, 59, "correiacarolina@gmail.com", "AADAB");
INSERT INTO Bagagem VALUES (547314, 0.6, 0.78, 0.52, 26, 1094);
INSERT INTO Nacionalidade VALUES (06333, "Portugal");


INSERT INTO Pessoa VALUES (26220, "Pilar Borges", "Avenida Barbosa, 8
5358-570 Santa Maria da Feira", "(351) 928851632", "0688808151", "1992-10-22");
INSERT INTO Conta VALUES ("bruno67@anjos.org", "$*5b+wft", 642);
INSERT INTO Passageiro VALUES (82559, "bruno67@anjos.org", 26220);
INSERT INTO Bilhete VALUES (1095, 34, 59, "bruno67@anjos.org", "AADAB");
INSERT INTO Bagagem VALUES (25226, 0.87, 0.74, 0.58, 16, 1095);
INSERT INTO Nacionalidade VALUES (26220, "Portugal");


INSERT INTO Pessoa VALUES (89893, "Dinis Soares", "R. de Garcia, S/N
5214-045 Marco de Canaveses", "(351) 969 529 164", "3543815587", "1993-10-12");
INSERT INTO Conta VALUES ("teresa39@gmail.com", "$0k7qgrw", 2624);
INSERT INTO Passageiro VALUES (44070, "teresa39@gmail.com", 89893);
INSERT INTO Bilhete VALUES (1096, 35, 59, "teresa39@gmail.com", "AADAB");
INSERT INTO Bagagem VALUES (270512, 0.87, 1.03, 0.49, 20, 1096);
INSERT INTO Nacionalidade VALUES (89893, "Portugal");


INSERT INTO Pessoa VALUES (07452, "Kévim Cardoso", "Rua Alves, 23
1033-344 Trofa", "936458873", "7296503390", "1949-10-05");
INSERT INTO Conta VALUES ("leitebarbara@mota.com", "%p)3g5p%", 2744);
INSERT INTO Passageiro VALUES (83839, "leitebarbara@mota.com", 07452);
INSERT INTO Bilhete VALUES (1097, 36, 59, "leitebarbara@mota.com", "AADAB");
INSERT INTO Bagagem VALUES (994031, 0.98, 0.72, 0.56, 5, 1097);
INSERT INTO Nacionalidade VALUES (07452, "Portugal");


INSERT INTO Pessoa VALUES (05286, "Simão Melo", "Rua de Branco, 45
1289-806 Silves", "960 039 638", "7209668852", "1943-04-22");
INSERT INTO Conta VALUES ("reisgil@matias.com", "d_tb6do_", 864);
INSERT INTO Passageiro VALUES (89698, "reisgil@matias.com", 05286);
INSERT INTO Bilhete VALUES (1098, 37, 59, "reisgil@matias.com", "AADAB");
INSERT INTO Bagagem VALUES (963817, 0.83, 1.03, 0.73, 1, 1098);
INSERT INTO Nacionalidade VALUES (05286, "Portugal");


INSERT INTO Pessoa VALUES (25836, "Gaspar Machado", "Largo Nunes, 590
0579-455 Montemor-o-Novo", "(351) 932 017 868", "3564777856", "1950-12-22");
INSERT INTO Conta VALUES ("ribeiroalicia@borges.pt", "(^w&b2dt", 1965);
INSERT INTO Passageiro VALUES (95787, "ribeiroalicia@borges.pt", 25836);
INSERT INTO Bilhete VALUES (1099, 38, 59, "ribeiroalicia@borges.pt", "AADAB");
INSERT INTO Bagagem VALUES (249186, 1.03, 0.92, 0.46, 32, 1099);
INSERT INTO Nacionalidade VALUES (25836, "Portugal");


INSERT INTO Pessoa VALUES (06931, "Sofia Matias", "R. Henriques, 47
7203-878 Tomar", "+351968444144", "7804568887", "1992-02-24");
INSERT INTO Conta VALUES ("jessicaandrade@garcia.pt", "&+s0js4b", 2709);
INSERT INTO Passageiro VALUES (36908, "jessicaandrade@garcia.pt", 06931);
INSERT INTO Bilhete VALUES (1100, 39, 59, "jessicaandrade@garcia.pt", "AADAB");
INSERT INTO Bagagem VALUES (41410, 0.67, 0.76, 0.52, 3, 1100);
INSERT INTO Nacionalidade VALUES (06931, "Portugal");


INSERT INTO Pessoa VALUES (50664, "Carminho Amaral", "Largo de Lima, 698
5005-421 Portalegre", "(351) 935850302", "2320519916", "1993-08-20");
INSERT INTO Conta VALUES ("antonio97@gmail.com", "l4#$^4l!", 2501);
INSERT INTO Passageiro VALUES (60369, "antonio97@gmail.com", 50664);
INSERT INTO Bilhete VALUES (1101, 40, 59, "antonio97@gmail.com", "AADAB");
INSERT INTO Bagagem VALUES (917758, 0.75, 1.02, 0.37, 2, 1101);
INSERT INTO Nacionalidade VALUES (50664, "Portugal");


INSERT INTO Pessoa VALUES (63391, "Daniela Maia", "Rua Nuno Ramos, 53
3995-270 Lourosa", "967 118 988", "6476977187", "1981-04-19");
INSERT INTO Conta VALUES ("jesusmicael@gmail.com", "2_&1+aex", 1159);
INSERT INTO Passageiro VALUES (44767, "jesusmicael@gmail.com", 63391);
INSERT INTO Bilhete VALUES (1102, 41, 59, "jesusmicael@gmail.com", "AADAB");
INSERT INTO Bagagem VALUES (120924, 0.51, 1.1, 0.45, 33, 1102);
INSERT INTO Nacionalidade VALUES (63391, "Portugal");


INSERT INTO Pessoa VALUES (72477, "Fábio-Cláudio Silva", "Avenida de Marques, 7
0221-869 Paços de Ferreira", "910526265", "1873898833", "1959-01-03");
INSERT INTO Conta VALUES ("fabiana73@teixeira.com", "m^yki3j&", 2328);
INSERT INTO Passageiro VALUES (47876, "fabiana73@teixeira.com", 72477);
INSERT INTO Bilhete VALUES (1103, 42, 59, "fabiana73@teixeira.com", "AADAB");
INSERT INTO Bagagem VALUES (158144, 0.52, 0.95, 0.33, 15, 1103);
INSERT INTO Nacionalidade VALUES (72477, "Portugal");


INSERT INTO Pessoa VALUES (74060, "Tomé Andrade", "Largo Miranda, 58
1875-420 Santana", "+351964221760", "0128598136", "1985-07-23");
INSERT INTO Conta VALUES ("cgomes@machado.com", "*ep^x88j", 2516);
INSERT INTO Passageiro VALUES (17649, "cgomes@machado.com", 74060);
INSERT INTO Bilhete VALUES (1104, 43, 59, "cgomes@machado.com", "AADAB");
INSERT INTO Bagagem VALUES (44574, 0.57, 1.08, 0.79, 4, 1104);
INSERT INTO Nacionalidade VALUES (74060, "Portugal");


INSERT INTO Pessoa VALUES (01841, "Rafael-Jorge Monteiro", "Av Lisandro Pacheco, 4
8183-109 Santa Cruz", "(351) 962 505 468", "0481309114", "1931-12-21");
INSERT INTO Conta VALUES ("emmacunha@gaspar.org", "+*0ufvw$", 2446);
INSERT INTO Passageiro VALUES (48424, "emmacunha@gaspar.org", 01841);
INSERT INTO Bilhete VALUES (1105, 44, 59, "emmacunha@gaspar.org", "AADAB");
INSERT INTO Bagagem VALUES (114220, 0.67, 1.05, 0.31, 11, 1105);
INSERT INTO Nacionalidade VALUES (01841, "Portugal");


INSERT INTO Pessoa VALUES (20248, "Jaime Moreira", "R. de Santos, 3
4005-384 Sines", "(351) 234 944 853", "1424483252", "1982-04-11");
INSERT INTO Conta VALUES ("jessica09@sapo.pt", "y8!n^2d6", 2937);
INSERT INTO Passageiro VALUES (43601, "jessica09@sapo.pt", 20248);
INSERT INTO Bilhete VALUES (1106, 45, 59, "jessica09@sapo.pt", "AADAB");
INSERT INTO Bagagem VALUES (420774, 0.85, 0.71, 0.78, 27, 1106);
INSERT INTO Nacionalidade VALUES (20248, "Portugal");


INSERT INTO Pessoa VALUES (55834, "Cristiano Branco", "Largo Pires, 95
8227-363 Estremoz", "931720252", "5657178581", "1987-10-07");
INSERT INTO Conta VALUES ("machadorodrigo@soares.org", "3w^9jz7d", 1931);
INSERT INTO Passageiro VALUES (52414, "machadorodrigo@soares.org", 55834);
INSERT INTO Bilhete VALUES (1107, 46, 59, "machadorodrigo@soares.org", "AADAB");
INSERT INTO Bagagem VALUES (987563, 1.05, 0.94, 0.45, 28, 1107);
INSERT INTO Nacionalidade VALUES (55834, "Portugal");


INSERT INTO Pessoa VALUES (84237, "Isabel Nunes", "R. de Branco, S/N
9892-256 Odivelas", "(351) 937 241 398", "2053246169", "1990-07-11");
INSERT INTO Conta VALUES ("torresedgar@clix.pt", "#fsv2xrw", 1225);
INSERT INTO Passageiro VALUES (96565, "torresedgar@clix.pt", 84237);
INSERT INTO Bilhete VALUES (1108, 47, 59, "torresedgar@clix.pt", "AADAB");
INSERT INTO Bagagem VALUES (773439, 0.95, 1.11, 0.71, 3, 1108);
INSERT INTO Nacionalidade VALUES (84237, "Portugal");


INSERT INTO Pessoa VALUES (33548, "Nádia Rocha", "Largo Pinheiro, 63
3676-402 Braga", "257 768 037", "2388535147", "2003-05-17");
INSERT INTO Conta VALUES ("kyara65@sapo.pt", "m(2mmro^", 2471);
INSERT INTO Passageiro VALUES (22234, "kyara65@sapo.pt", 33548);
INSERT INTO Bilhete VALUES (1109, 48, 59, "kyara65@sapo.pt", "AADAB");
INSERT INTO Bagagem VALUES (954284, 1.07, 0.72, 0.44, 24, 1109);
INSERT INTO Nacionalidade VALUES (33548, "Portugal");


INSERT INTO Pessoa VALUES (32636, "Leandro Simões", "Av Neto, 36
5779-834 Maia", "+351968544471", "7762653049", "1930-01-14");
INSERT INTO Conta VALUES ("afonsoneto@hotmail.com", "$^cv8jye", 1649);
INSERT INTO Passageiro VALUES (84171, "afonsoneto@hotmail.com", 32636);
INSERT INTO Bilhete VALUES (1110, 49, 59, "afonsoneto@hotmail.com", "AADAB");
INSERT INTO Bagagem VALUES (365901, 0.52, 1.1, 0.68, 26, 1110);
INSERT INTO Nacionalidade VALUES (32636, "Portugal");


INSERT INTO Pessoa VALUES (27998, "Tatiana Cardoso", "Av Mota, S/N
9686-434 Lisboa", "(351) 926010733", "9353592598", "1981-07-07");
INSERT INTO Conta VALUES ("anasilva@hotmail.com", "_d7x_g_i", 2875);
INSERT INTO Passageiro VALUES (96167, "anasilva@hotmail.com", 27998);
INSERT INTO Bilhete VALUES (1111, 50, 59, "anasilva@hotmail.com", "AADAB");
INSERT INTO Bagagem VALUES (69024, 1.06, 1.09, 0.48, 25, 1111);
INSERT INTO Nacionalidade VALUES (27998, "Portugal");







--Voo AADBA pdl ter
--pilotos
INSERT INTO Pessoa VALUES (44149, "Leonor Santos", "Av Isabel Carneiro, S/N
4547-440 Anadia", "969 786 276", "3270713438", "1992-07-14");
INSERT INTO Piloto VALUES (17, 3547, 44149);
INSERT INTO Pilotagem VALUES (17, "AADBA");
INSERT INTO Nacionalidade VALUES (44149, "Portugal");


INSERT INTO Pessoa VALUES (13734, "Bruna Moreira-Gonçalves", "Av de Ramos, 149
2541-745 Figueira da Foz", "+351911259276", "9078513827", "1986-12-23");
INSERT INTO Piloto VALUES (18, 3358, 13734);
INSERT INTO Pilotagem VALUES (18, "AADBA");
INSERT INTO Nacionalidade VALUES (13734, "Portugal");


--bordo
INSERT INTO Pessoa VALUES (01115, "Mateus da Anjos", "Av Morais, 82
2315-469 Ribeira Grande", "(351) 919 439 499", "4727503239", "2002-06-23");
INSERT INTO AssistenteBordo VALUES (21, 3100, 01115);
INSERT INTO PessoalCabine VALUES (21, "AADBA");
INSERT INTO Nacionalidade VALUES (01115, "Portugal");




--passageiros
INSERT INTO Pessoa VALUES (58545, "Mário Paiva", "Travessa de Cunha, 54
5051-190 Ourém", "(351) 927656501", "5614534211", "2002-02-09");
INSERT INTO Conta VALUES ("joaquim94@sapo.pt", "$d&0lpek", 2865);
INSERT INTO Passageiro VALUES (79863, "joaquim94@sapo.pt", 58545);
INSERT INTO Bilhete VALUES (1031, 1, 59, "joaquim94@sapo.pt", "AADBA");
INSERT INTO Bagagem VALUES (586585, 1.07, 1.03, 0.43, 6, 1031);
INSERT INTO Nacionalidade VALUES (58545, "Portugal");


INSERT INTO Pessoa VALUES (85044, "Denis Campos", "Largo Assunção, S/N
3488-250 Póvoa de Santa Iria", "(351) 290 041 328", "3954924163", "1959-05-15");
INSERT INTO Conta VALUES ("irina92@sapo.pt", "!69l1^gq", 974);
INSERT INTO Passageiro VALUES (44424, "irina92@sapo.pt", 85044);
INSERT INTO Bilhete VALUES (1032, 2, 59, "irina92@sapo.pt", "AADBA");
INSERT INTO Bagagem VALUES (274426, 1.07, 1.04, 0.58, 21, 1032);
INSERT INTO Nacionalidade VALUES (85044, "Portugal");


INSERT INTO Pessoa VALUES (16526, "Clara Reis", "Av Paiva, S/N
3845-193 Setúbal", "(351) 239504355", "2999271315", "1953-03-07");
INSERT INTO Conta VALUES ("vitor46@andrade.org", "y^4+m#ck", 603);
INSERT INTO Passageiro VALUES (43965, "vitor46@andrade.org", 16526);
INSERT INTO Bilhete VALUES (1033, 3, 59, "vitor46@andrade.org", "AADBA");
INSERT INTO Bagagem VALUES (210684, 1.18, 0.82, 0.33, 34, 1033);
INSERT INTO Nacionalidade VALUES (16526, "Portugal");


INSERT INTO Pessoa VALUES (45916, "Lia Alves", "Avenida Sandro Cruz, 360
7210-148 Aveiro", "(351) 935 431 528", "8349772714", "1976-01-24");
INSERT INTO Conta VALUES ("goncalvesandre@rodrigues.pt", "#(*7tucc", 2500);
INSERT INTO Passageiro VALUES (46362, "goncalvesandre@rodrigues.pt", 45916);
INSERT INTO Bilhete VALUES (1034, 4, 59, "goncalvesandre@rodrigues.pt", "AADBA");
INSERT INTO Bagagem VALUES (665803, 0.6, 0.66, 0.65, 5, 1034);
INSERT INTO Nacionalidade VALUES (45916, "Portugal");


INSERT INTO Pessoa VALUES (70235, "Matilde Jesus", "Rua Diana Nascimento, 31
8643-333 Vila Real de Santo António", "(351) 921 337 213", "5022529582", "1944-09-23");
INSERT INTO Conta VALUES ("garciatatiana@vaz.com", "*2d*jdfi", 1922);
INSERT INTO Passageiro VALUES (45436, "garciatatiana@vaz.com", 70235);
INSERT INTO Bilhete VALUES (1035, 5, 59, "garciatatiana@vaz.com", "AADBA");
INSERT INTO Bagagem VALUES (67291, 1.1, 0.97, 0.8, 25, 1035);
INSERT INTO Nacionalidade VALUES (70235, "Portugal");


INSERT INTO Pessoa VALUES (13850, "Maria-Carlos Vieira", "Travessa Laura Miranda, S/N
9035-524 Seixal", "(351) 967 027 809", "7889219472", "1985-10-10");
INSERT INTO Conta VALUES ("lunanunes@clix.pt", "^k794r)p", 365);
INSERT INTO Passageiro VALUES (42607, "lunanunes@clix.pt", 13850);
INSERT INTO Bilhete VALUES (1036, 6, 59, "lunanunes@clix.pt", "AADBA");
INSERT INTO Bagagem VALUES (814497, 0.6, 0.62, 0.57, 34, 1036);
INSERT INTO Nacionalidade VALUES (13850, "Portugal");


INSERT INTO Pessoa VALUES (78903, "Mário Leite", "Travessa de Macedo, 56
0518-785 Gafanha da Nazaré", "(351) 930 555 309", "1848170890", "1950-10-31");
INSERT INTO Conta VALUES ("samuel57@branco.com", "d7+6mcb(", 364);
INSERT INTO Passageiro VALUES (58492, "samuel57@branco.com", 78903);
INSERT INTO Bilhete VALUES (1037, 7, 59, "samuel57@branco.com", "AADBA");
INSERT INTO Bagagem VALUES (139924, 0.89, 0.62, 0.7, 9, 1037);
INSERT INTO Nacionalidade VALUES (78903, "Portugal");


INSERT INTO Pessoa VALUES (42973, "Carlos Borges", "Largo Fernandes, S/N
9624-055 Silves", "(351) 968 354 738", "6887875676", "1998-03-31");
INSERT INTO Conta VALUES ("fcarvalho@cruz.net", "v*a!+4&b", 414);
INSERT INTO Passageiro VALUES (45773, "fcarvalho@cruz.net", 42973);
INSERT INTO Bilhete VALUES (1038, 8, 59, "fcarvalho@cruz.net", "AADBA");
INSERT INTO Bagagem VALUES (776176, 0.69, 1.13, 0.79, 29, 1038);
INSERT INTO Nacionalidade VALUES (42973, "Portugal");


INSERT INTO Pessoa VALUES (08442, "Henrique Gaspar", "R. de Martins, S/N
2336-724 Quarteira", "200566210", "7999688483", "1943-04-15");
INSERT INTO Conta VALUES ("zsimoes@borges.pt", "!87k^7sz", 1996);
INSERT INTO Passageiro VALUES (31045, "zsimoes@borges.pt", 08442);
INSERT INTO Bilhete VALUES (1039, 9, 59, "zsimoes@borges.pt", "AADBA");
INSERT INTO Bagagem VALUES (240487, 0.5, 0.9, 0.37, 24, 1039);
INSERT INTO Nacionalidade VALUES (08442, "Portugal");


INSERT INTO Pessoa VALUES (95042, "David Leal", "Travessa Noa Nunes, 78
3763-087 Maia", "(351) 255 530 326", "9642520519", "1969-11-04");
INSERT INTO Conta VALUES ("frederico74@lima.pt", "it_1x28k", 1824);
INSERT INTO Passageiro VALUES (50901, "frederico74@lima.pt", 95042);
INSERT INTO Bilhete VALUES (1040, 10, 59, "frederico74@lima.pt", "AADBA");
INSERT INTO Bagagem VALUES (354213, 0.79, 0.72, 0.5, 18, 1040);
INSERT INTO Nacionalidade VALUES (95042, "Portugal");


INSERT INTO Pessoa VALUES (62111, "Alexandre Borges", "R. Oliveira, 7
5966-200 Valbom", "+351923452205", "7049854030", "1948-04-10");
INSERT INTO Conta VALUES ("tnogueira@hotmail.com", "(_79opvv", 2832);
INSERT INTO Passageiro VALUES (88967, "tnogueira@hotmail.com", 62111);
INSERT INTO Bilhete VALUES (1041, 11, 59, "tnogueira@hotmail.com", "AADBA");
INSERT INTO Bagagem VALUES (848210, 0.82, 0.85, 0.68, 9, 1041);
INSERT INTO Nacionalidade VALUES (62111, "Portugal");


INSERT INTO Pessoa VALUES (18551, "Irina Reis", "Avenida de Figueiredo, 680
7032-950 Sines", "+351933867408", "5101154046", "1951-03-10");
INSERT INTO Conta VALUES ("oferreira@clix.pt", "7@4rk$92", 316);
INSERT INTO Passageiro VALUES (28366, "oferreira@clix.pt", 18551);
INSERT INTO Bilhete VALUES (1042, 12, 59, "oferreira@clix.pt", "AADBA");
INSERT INTO Bagagem VALUES (3894, 0.67, 0.9, 0.35, 15, 1042);
INSERT INTO Nacionalidade VALUES (18551, "Portugal");


INSERT INTO Pessoa VALUES (05018, "Gabriel Neves-Azevedo", "Avenida Araújo, S/N
9497-223 Lagos", "(351) 919 868 064", "0972582284", "1960-10-05");
INSERT INTO Conta VALUES ("almeidaluisa@sapo.pt", "!2z+7#p)", 938);
INSERT INTO Passageiro VALUES (71858, "almeidaluisa@sapo.pt", 05018);
INSERT INTO Bilhete VALUES (1043, 13, 59, "almeidaluisa@sapo.pt", "AADBA");
INSERT INTO Bagagem VALUES (301539, 1.04, 0.86, 0.54, 32, 1043);
INSERT INTO Nacionalidade VALUES (05018, "Portugal");


INSERT INTO Pessoa VALUES (45116, "Clara Baptista", "Avenida Leonor Domingues, 655
6857-330 Figueira da Foz", "(351) 270 419 545", "7130062236", "1994-02-27");
INSERT INTO Conta VALUES ("gaspar16@ramos.com", "#)$09tkf", 516);
INSERT INTO Passageiro VALUES (58445, "gaspar16@ramos.com", 45116);
INSERT INTO Bilhete VALUES (1044, 14, 59, "gaspar16@ramos.com", "AADBA");
INSERT INTO Bagagem VALUES (361398, 0.79, 0.9, 0.52, 19, 1044);
INSERT INTO Nacionalidade VALUES (45116, "Portugal");


INSERT INTO Pessoa VALUES (64388, "Mateus Paiva-Vieira", "Travessa de Campos, 92
4337-200 Faro", "(351) 275944385", "5888495006", "1965-05-08");
INSERT INTO Conta VALUES ("gabrielamelo@clix.pt", "d^@0f@k!", 2246);
INSERT INTO Passageiro VALUES (54564, "gabrielamelo@clix.pt", 64388);
INSERT INTO Bilhete VALUES (1045, 15, 59, "gabrielamelo@clix.pt", "AADBA");
INSERT INTO Bagagem VALUES (291158, 0.64, 0.82, 0.42, 32, 1045);
INSERT INTO Nacionalidade VALUES (64388, "Portugal");


INSERT INTO Pessoa VALUES (39277, "Mafalda-Bruno Melo", "Rua de Brito, 82
9404-833 Entroncamento", "+351914951544", "5576017587", "1942-04-02");
INSERT INTO Conta VALUES ("tatianacunha@gmail.com", "%11rtg^o", 2755);
INSERT INTO Passageiro VALUES (20917, "tatianacunha@gmail.com", 39277);
INSERT INTO Bilhete VALUES (1046, 16, 59, "tatianacunha@gmail.com", "AADBA");
INSERT INTO Bagagem VALUES (202307, 0.5, 0.67, 0.66, 27, 1046);
INSERT INTO Nacionalidade VALUES (39277, "Portugal");


INSERT INTO Pessoa VALUES (45913, "Lourenço Reis-Pinheiro", "Largo Torres, 35
2597-001 Lagos", "969858316", "7531504456", "1996-08-08");
INSERT INTO Conta VALUES ("ruiamorim@sapo.pt", "23ng)8ed", 777);
INSERT INTO Passageiro VALUES (31582, "ruiamorim@sapo.pt", 45913);
INSERT INTO Bilhete VALUES (1047, 17, 59, "ruiamorim@sapo.pt", "AADBA");
INSERT INTO Bagagem VALUES (636442, 0.84, 0.83, 0.51, 2, 1047);
INSERT INTO Nacionalidade VALUES (45913, "Portugal");


INSERT INTO Pessoa VALUES (75827, "Lara Loureiro", "R. de Freitas, 5
1348-459 São João da Madeira", "209 198 635", "9175853865", "1994-07-14");
INSERT INTO Conta VALUES ("gcardoso@sousa.pt", "k(0p0ecg", 2643);
INSERT INTO Passageiro VALUES (68316, "gcardoso@sousa.pt", 75827);
INSERT INTO Bilhete VALUES (1048, 18, 59, "gcardoso@sousa.pt", "AADBA");
INSERT INTO Bagagem VALUES (4112, 1.05, 0.6, 0.38, 18, 1048);
INSERT INTO Nacionalidade VALUES (75827, "Portugal");


INSERT INTO Pessoa VALUES (76933, "Gustavo Sousa", "Av de Henriques, 39
5465-941 Elvas", "+351916392901", "1137000239", "1970-01-25");
INSERT INTO Conta VALUES ("ricardo02@gmail.com", "%0(17lce", 2859);
INSERT INTO Passageiro VALUES (85840, "ricardo02@gmail.com", 76933);
INSERT INTO Bilhete VALUES (1049, 19, 59, "ricardo02@gmail.com", "AADBA");
INSERT INTO Bagagem VALUES (624128, 0.55, 0.95, 0.34, 31, 1049);
INSERT INTO Nacionalidade VALUES (76933, "Portugal");


INSERT INTO Pessoa VALUES (24786, "Noa Matos", "R. Jesus, 648
3799-044 Póvoa de Varzim", "(351) 296277641", "0914754877", "1996-03-11");
INSERT INTO Conta VALUES ("melaniepinheiro@correia.pt", "%*x4yebe", 627);
INSERT INTO Passageiro VALUES (91102, "melaniepinheiro@correia.pt", 24786);
INSERT INTO Bilhete VALUES (1050, 20, 59, "melaniepinheiro@correia.pt", "AADBA");
INSERT INTO Bagagem VALUES (35458, 0.9, 0.97, 0.64, 34, 1050);
INSERT INTO Nacionalidade VALUES (24786, "Portugal");


INSERT INTO Pessoa VALUES (84837, "Kelly de Barbosa", "Travessa Castro, 5
9673-771 Freamunde", "910209258", "4678232216", "1960-02-28");
INSERT INTO Conta VALUES ("maraassuncao@hotmail.com", "psy%708v", 1136);
INSERT INTO Passageiro VALUES (69801, "maraassuncao@hotmail.com", 84837);
INSERT INTO Bilhete VALUES (1051, 21, 59, "maraassuncao@hotmail.com", "AADBA");
INSERT INTO Bagagem VALUES (381589, 0.88, 1.03, 0.38, 23, 1051);
INSERT INTO Nacionalidade VALUES (84837, "Portugal");


INSERT INTO Pessoa VALUES (65899, "Daniela Fonseca", "Largo de Campos, S/N
5983-064 São Salvador de Lordelo", "(351) 968664611", "0452651771", "1989-09-14");
INSERT INTO Conta VALUES ("fmelo@anjos.com", "fd*7wz^l", 2577);
INSERT INTO Passageiro VALUES (77819, "fmelo@anjos.com", 65899);
INSERT INTO Bilhete VALUES (1052, 22, 59, "fmelo@anjos.com", "AADBA");
INSERT INTO Bagagem VALUES (625022, 0.57, 0.89, 0.79, 29, 1052);
INSERT INTO Nacionalidade VALUES (65899, "Portugal");


INSERT INTO Pessoa VALUES (99043, "Lia Silva", "Rua de Loureiro, 67
3814-075 Covilhã", "(351) 935515055", "8116634950", "1965-07-07");
INSERT INTO Conta VALUES ("araujolucia@magalhaes.com", "a$p1jy+1", 652);
INSERT INTO Passageiro VALUES (84786, "araujolucia@magalhaes.com", 99043);
INSERT INTO Bilhete VALUES (1053, 23, 59, "araujolucia@magalhaes.com", "AADBA");
INSERT INTO Bagagem VALUES (409186, 0.98, 0.88, 0.51, 9, 1053);
INSERT INTO Nacionalidade VALUES (99043, "Portugal");


INSERT INTO Pessoa VALUES (15657, "Leandro Barbosa-Matos", "Avenida Guerreiro, 61
8423-219 Faro", "(351) 273 853 502", "0395472576", "1983-11-14");
INSERT INTO Conta VALUES ("pesteves@gmail.com", "@5!dsb*m", 694);
INSERT INTO Passageiro VALUES (90079, "pesteves@gmail.com", 15657);
INSERT INTO Bilhete VALUES (1054, 24, 59, "pesteves@gmail.com", "AADBA");
INSERT INTO Bagagem VALUES (339149, 1.0, 0.61, 0.3, 21, 1054);
INSERT INTO Nacionalidade VALUES (15657, "Portugal");


INSERT INTO Pessoa VALUES (59875, "Érica Soares-Oliveira", "Avenida Frederico Branco, 36
7470-345 Marco de Canaveses", "+351964862650", "0357434615", "1978-04-22");
INSERT INTO Conta VALUES ("vasco71@ribeiro.com", "!+p2dqla", 2504);
INSERT INTO Passageiro VALUES (42916, "vasco71@ribeiro.com", 59875);
INSERT INTO Bilhete VALUES (1055, 25, 59, "vasco71@ribeiro.com", "AADBA");
INSERT INTO Bagagem VALUES (517342, 1.07, 1.16, 0.43, 23, 1055);
INSERT INTO Nacionalidade VALUES (59875, "Portugal");


INSERT INTO Pessoa VALUES (13073, "Álvaro Valente", "Rua Márcio Soares, 4
8001-904 Portalegre", "(351) 928129515", "6074929191", "1969-06-14");
INSERT INTO Conta VALUES ("freitasjose@branco.pt", "j!j^)1jr", 1419);
INSERT INTO Passageiro VALUES (90947, "freitasjose@branco.pt", 13073);
INSERT INTO Bilhete VALUES (1056, 26, 59, "freitasjose@branco.pt", "AADBA");
INSERT INTO Bagagem VALUES (67615, 1.15, 0.81, 0.54, 31, 1056);
INSERT INTO Nacionalidade VALUES (13073, "Portugal");


INSERT INTO Pessoa VALUES (84967, "Kévim-Naiara Lopes", "Travessa Marco Rocha, 69
4276-797 Chaves", "(351) 917 101 070", "2297030605", "1966-04-10");
INSERT INTO Conta VALUES ("monteiroduarte@gmail.com", "s!)0d@yt", 2153);
INSERT INTO Passageiro VALUES (48461, "monteiroduarte@gmail.com", 84967);
INSERT INTO Bilhete VALUES (1057, 27, 59, "monteiroduarte@gmail.com", "AADBA");
INSERT INTO Bagagem VALUES (417923, 1.02, 0.8, 0.63, 34, 1057);
INSERT INTO Nacionalidade VALUES (84967, "Portugal");


INSERT INTO Pessoa VALUES (16647, "Álvaro Batista", "Rua Inês Esteves, 511
0691-904 Montijo", "(351) 915 932 989", "5350075908", "1978-11-04");
INSERT INTO Conta VALUES ("hugo68@clix.pt", "8c@5jix%", 2634);
INSERT INTO Passageiro VALUES (10678, "hugo68@clix.pt", 16647);
INSERT INTO Bilhete VALUES (1058, 28, 59, "hugo68@clix.pt", "AADBA");
INSERT INTO Bagagem VALUES (124506, 0.98, 0.83, 0.32, 29, 1058);
INSERT INTO Nacionalidade VALUES (16647, "Portugal");


INSERT INTO Pessoa VALUES (03383, "Salomé Ferreira", "Av Joana Barbosa, 47
6335-995 Lourosa", "240844299", "4366663547", "1984-05-06");
INSERT INTO Conta VALUES ("madalena09@amaral.org", "%1r(mibz", 319);
INSERT INTO Passageiro VALUES (45522, "madalena09@amaral.org", 03383);
INSERT INTO Bilhete VALUES (1059, 29, 59, "madalena09@amaral.org", "AADBA");
INSERT INTO Bagagem VALUES (795824, 0.99, 0.88, 0.52, 24, 1059);
INSERT INTO Nacionalidade VALUES (03383, "Portugal");


INSERT INTO Pessoa VALUES (86132, "Carolina Fernandes", "Avenida Renata Borges, 64
5906-520 Mealhada", "939476061", "7488595165", "1955-02-16");
INSERT INTO Conta VALUES ("santosandreia@gmail.com", "!1j)40y%", 2611);
INSERT INTO Passageiro VALUES (32785, "santosandreia@gmail.com", 86132);
INSERT INTO Bilhete VALUES (1060, 30, 59, "santosandreia@gmail.com", "AADBA");
INSERT INTO Bagagem VALUES (263893, 1.18, 0.66, 0.41, 8, 1060);
INSERT INTO Nacionalidade VALUES (86132, "Portugal");


INSERT INTO Pessoa VALUES (77319, "Isabel de Sá", "Av Pereira, 3
8672-272 Alverca do Ribatejo", "(351) 279915112", "4397614564", "1941-12-14");
INSERT INTO Conta VALUES ("ovaz@clix.pt", "(9!$tp6u", 1276);
INSERT INTO Passageiro VALUES (43933, "ovaz@clix.pt", 77319);
INSERT INTO Bilhete VALUES (1061, 31, 59, "ovaz@clix.pt", "AADBA");
INSERT INTO Bagagem VALUES (456864, 0.9, 0.98, 0.78, 34, 1061);
INSERT INTO Nacionalidade VALUES (77319, "Portugal");







--Voo AADBB ter pdl
--pilotos
INSERT INTO Pessoa VALUES (21572, "Fábio Sousa", "Avenida Matias, S/N
6414-506 Vila Nova de Famalicão", "(351) 913 877 641", "5196932606", "1955-11-07");
INSERT INTO Piloto VALUES (19, 3307, 21572);
INSERT INTO Pilotagem VALUES (19, "AADBB");
INSERT INTO Nacionalidade VALUES (21572, "Portugal");


INSERT INTO Pessoa VALUES (88473, "Caetana Oliveira", "Largo Assunção, S/N
9313-220 Oliveira de Azeméis", "+351911809245", "0849203766", "1985-05-30");
INSERT INTO Piloto VALUES (20, 1040, 88473);
INSERT INTO Pilotagem VALUES (20, "AADBB");
INSERT INTO Nacionalidade VALUES (88473, "Portugal");



--bordo
INSERT INTO PessoalCabine VALUES (21, "AADBB");




--passageiros
INSERT INTO Pessoa VALUES (56174, "Marco Nunes", "Avenida Gabriel Moreira, 575
0240-442 Santa Comba Dão", "(351) 922 171 115", "0392993530", "2002-02-03");
INSERT INTO Conta VALUES ("luismarques@soares.com", "k#xc22dz", 2407);
INSERT INTO Passageiro VALUES (29985, "luismarques@soares.com", 56174);
INSERT INTO Bilhete VALUES (1000, 1, 59, "luismarques@soares.com", "AADBB");
INSERT INTO Bagagem VALUES (880278, 1.07, 1.03, 0.7, 12, 1000);
INSERT INTO Nacionalidade VALUES (56174, "Portugal");


INSERT INTO Pessoa VALUES (50722, "Violeta Nogueira", "Travessa Martins, S/N
9832-224 Mangualde", "(351) 963757928", "3438657091", "1930-12-25");
INSERT INTO Conta VALUES ("henriquesadriana@azevedo.pt", "!#69ajw5", 1726);
INSERT INTO Passageiro VALUES (02486, "henriquesadriana@azevedo.pt", 50722);
INSERT INTO Bilhete VALUES (1001, 2, 59, "henriquesadriana@azevedo.pt", "AADBB");
INSERT INTO Bagagem VALUES (60469, 0.82, 1.04, 0.36, 12, 1001);
INSERT INTO Nacionalidade VALUES (50722, "Portugal");


INSERT INTO Pessoa VALUES (41623, "Cláudio Almeida", "R. de Moreira, 9
7150-295 Vila Nova de Gaia", "(351) 968 925 603", "7548669961", "1933-05-06");
INSERT INTO Conta VALUES ("nevesjoana@nogueira.pt", "#0%9ow6(", 1847);
INSERT INTO Passageiro VALUES (24393, "nevesjoana@nogueira.pt", 41623);
INSERT INTO Bilhete VALUES (1002, 3, 59, "nevesjoana@nogueira.pt", "AADBB");
INSERT INTO Bagagem VALUES (384079, 0.92, 1.16, 0.61, 14, 1002);
INSERT INTO Nacionalidade VALUES (41623, "Portugal");


INSERT INTO Pessoa VALUES (43612, "Diogo Jesus-Vieira", "Avenida de Gaspar, 443
5436-524 Trancoso", "(351) 963 669 208", "3630918225", "1989-06-14");
INSERT INTO Conta VALUES ("vmatos@hotmail.com", "_3aqr9mv", 572);
INSERT INTO Passageiro VALUES (12273, "vmatos@hotmail.com", 43612);
INSERT INTO Bilhete VALUES (1003, 4, 59, "vmatos@hotmail.com", "AADBB");
INSERT INTO Bagagem VALUES (703513, 1.0, 0.86, 0.42, 17, 1003);
INSERT INTO Nacionalidade VALUES (43612, "Portugal");


INSERT INTO Pessoa VALUES (76497, "William Ribeiro", "Largo Garcia, 85
1326-067 Ermesinde", "(351) 936673783", "2542629024", "1948-12-26");
INSERT INTO Conta VALUES ("pneto@magalhaes.net", "l#1!3^yu", 2318);
INSERT INTO Passageiro VALUES (57046, "pneto@magalhaes.net", 76497);
INSERT INTO Bilhete VALUES (1004, 5, 59, "pneto@magalhaes.net", "AADBB");
INSERT INTO Bagagem VALUES (594842, 0.71, 1.07, 0.67, 13, 1004);
INSERT INTO Nacionalidade VALUES (76497, "Portugal");


INSERT INTO Pessoa VALUES (80956, "Núria Assunção", "R. Clara Esteves, 96
6605-323 Santo Tirso", "(351) 265021373", "1945768785", "1984-05-18");
INSERT INTO Conta VALUES ("fabiobarros@figueiredo.com", "@6_^1lrr", 1196);
INSERT INTO Passageiro VALUES (70205, "fabiobarros@figueiredo.com", 80956);
INSERT INTO Bilhete VALUES (1005, 6, 59, "fabiobarros@figueiredo.com", "AADBB");
INSERT INTO Bagagem VALUES (761263, 0.92, 0.86, 0.47, 28, 1005);
INSERT INTO Nacionalidade VALUES (80956, "Portugal");


INSERT INTO Pessoa VALUES (95362, "Diogo Martins", "Rua Helena Almeida, 73
7478-345 Vila do Conde", "(351) 911611077", "6644941990", "1989-09-08");
INSERT INTO Conta VALUES ("lorenacastro@branco.com", "e$3a4dvg", 2108);
INSERT INTO Passageiro VALUES (24382, "lorenacastro@branco.com", 95362);
INSERT INTO Bilhete VALUES (1006, 7, 59, "lorenacastro@branco.com", "AADBB");
INSERT INTO Bagagem VALUES (143409, 0.66, 1.16, 0.46, 19, 1006);
INSERT INTO Nacionalidade VALUES (95362, "Portugal");


INSERT INTO Pessoa VALUES (04851, "Tomás Cruz", "Avenida Macedo, 3
6359-244 Póvoa de Santa Iria", "(351) 290962591", "1854162673", "1954-04-07");
INSERT INTO Conta VALUES ("arturgarcia@clix.pt", "76+753gk", 950);
INSERT INTO Passageiro VALUES (02527, "arturgarcia@clix.pt", 04851);
INSERT INTO Bilhete VALUES (1007, 8, 59, "arturgarcia@clix.pt", "AADBB");
INSERT INTO Bagagem VALUES (444535, 0.59, 1.06, 0.49, 17, 1007);
INSERT INTO Nacionalidade VALUES (04851, "Portugal");


INSERT INTO Pessoa VALUES (53032, "Alexandre Barros", "Largo Luísa Moreira, 4
0325-095 Paredes", "930 167 637", "1698803442", "1993-12-03");
INSERT INTO Conta VALUES ("andre41@nascimento.pt", "8(sd4uvw", 308);
INSERT INTO Passageiro VALUES (66541, "andre41@nascimento.pt", 53032);
INSERT INTO Bilhete VALUES (1008, 9, 59, "andre41@nascimento.pt", "AADBB");
INSERT INTO Bagagem VALUES (638120, 0.59, 0.66, 0.79, 18, 1008);
INSERT INTO Nacionalidade VALUES (53032, "Portugal");


INSERT INTO Pessoa VALUES (17951, "Enzo Esteves", "Largo Machado, 90
6509-455 Cartaxo", "934 311 264", "9845295359", "1988-03-02");
INSERT INTO Conta VALUES ("barroswilson@clix.pt", "w&gk9!o^", 1365);
INSERT INTO Passageiro VALUES (64792, "barroswilson@clix.pt", 17951);
INSERT INTO Bilhete VALUES (1009, 10, 59, "barroswilson@clix.pt", "AADBB");
INSERT INTO Bagagem VALUES (694217, 1.02, 0.68, 0.52, 6, 1009);
INSERT INTO Nacionalidade VALUES (17951, "Portugal");


INSERT INTO Pessoa VALUES (65187, "Luana do Cardoso", "Avenida Brian Moreira, 70
5601-259 Quarteira", "+351276439578", "4613224024", "1931-11-22");
INSERT INTO Conta VALUES ("wmendes@hotmail.com", "px@m(d4e", 1911);
INSERT INTO Passageiro VALUES (48828, "wmendes@hotmail.com", 65187);
INSERT INTO Bilhete VALUES (1010, 11, 59, "wmendes@hotmail.com", "AADBB");
INSERT INTO Bagagem VALUES (491471, 1.14, 1.02, 0.57, 7, 1010);
INSERT INTO Nacionalidade VALUES (65187, "Portugal");


INSERT INTO Pessoa VALUES (22562, "Gonçalo Figueiredo", "Av de Marques, 9
3655-014 Angra do Heroísmo", "(351) 962777347", "9594113048", "1952-02-16");
INSERT INTO Conta VALUES ("anita96@maia.com", "o%mea14m", 1393);
INSERT INTO Passageiro VALUES (85165, "anita96@maia.com", 22562);
INSERT INTO Bilhete VALUES (1011, 12, 59, "anita96@maia.com", "AADBB");
INSERT INTO Bagagem VALUES (916942, 0.91, 1.04, 0.67, 5, 1011);
INSERT INTO Nacionalidade VALUES (22562, "Portugal");


INSERT INTO Pessoa VALUES (62389, "Caetana Campos-Cruz", "R. Beatriz Amaral, 18
5444-500 Albufeira", "(351) 917 312 502", "3893115707", "1980-05-11");
INSERT INTO Conta VALUES ("mateus33@gmail.com", "x&t*p9jf", 2260);
INSERT INTO Passageiro VALUES (07799, "mateus33@gmail.com", 62389);
INSERT INTO Bilhete VALUES (1012, 13, 59, "mateus33@gmail.com", "AADBB");
INSERT INTO Bagagem VALUES (888031, 1.16, 1.12, 0.66, 3, 1012);
INSERT INTO Nacionalidade VALUES (62389, "Portugal");


INSERT INTO Pessoa VALUES (14632, "Larissa Carvalho", "Avenida Valentina Moura, 79
2948-492 Cartaxo", "927478523", "8407587848", "1931-09-25");
INSERT INTO Conta VALUES ("qtorres@clix.pt", "_(45@7sm", 703);
INSERT INTO Passageiro VALUES (75086, "qtorres@clix.pt", 14632);
INSERT INTO Bilhete VALUES (1013, 14, 59, "qtorres@clix.pt", "AADBB");
INSERT INTO Bagagem VALUES (396205, 0.7, 0.93, 0.77, 30, 1013);
INSERT INTO Nacionalidade VALUES (14632, "Portugal");


INSERT INTO Pessoa VALUES (46502, "Brian Pinho", "Avenida de Reis, 6
4396-401 Aveiro", "929 459 156", "1472140137", "1947-04-20");
INSERT INTO Conta VALUES ("garciamicael@anjos.com", "r6(i90fh", 1064);
INSERT INTO Passageiro VALUES (07052, "garciamicael@anjos.com", 46502);
INSERT INTO Bilhete VALUES (1014, 15, 59, "garciamicael@anjos.com", "AADBB");
INSERT INTO Bagagem VALUES (297803, 0.72, 0.7, 0.75, 9, 1014);
INSERT INTO Nacionalidade VALUES (46502, "Portugal");


INSERT INTO Pessoa VALUES (09517, "Edgar Amorim-Paiva", "R. de Reis, 573
8878-329 Santarém", "(351) 924651462", "2140700378", "1931-11-08");
INSERT INTO Conta VALUES ("mafaldapinho@baptista.com", "j+u1pxa2", 1934);
INSERT INTO Passageiro VALUES (40400, "mafaldapinho@baptista.com", 09517);
INSERT INTO Bilhete VALUES (1015, 16, 59, "mafaldapinho@baptista.com", "AADBB");
INSERT INTO Bagagem VALUES (643820, 1.15, 1.06, 0.53, 27, 1015);
INSERT INTO Nacionalidade VALUES (09517, "Portugal");


INSERT INTO Pessoa VALUES (08415, "Larissa Alves", "R. de Ferreira, 77
9241-163 Lamego", "969856607", "4703868241", "1979-01-09");
INSERT INTO Conta VALUES ("tcoelho@clix.pt", "8cn^60ab", 1204);
INSERT INTO Passageiro VALUES (90115, "tcoelho@clix.pt", 08415);
INSERT INTO Bilhete VALUES (1016, 17, 59, "tcoelho@clix.pt", "AADBB");
INSERT INTO Bagagem VALUES (552574, 1.04, 1.14, 0.56, 23, 1016);
INSERT INTO Nacionalidade VALUES (08415, "Portugal");


INSERT INTO Pessoa VALUES (14579, "Luísa-Rui Alves", "R. Gaspar, S/N
8588-246 Peniche", "+351936067168", "0446669653", "2003-07-06");
INSERT INTO Conta VALUES ("jfonseca@gmail.com", "*g2a9a@x", 574);
INSERT INTO Passageiro VALUES (74291, "jfonseca@gmail.com", 14579);
INSERT INTO Bilhete VALUES (1017, 18, 59, "jfonseca@gmail.com", "AADBB");
INSERT INTO Bagagem VALUES (886825, 0.89, 0.76, 0.44, 9, 1017);
INSERT INTO Nacionalidade VALUES (14579, "Portugal");


INSERT INTO Pessoa VALUES (50406, "Brian Ramos", "Av Cruz, 762
2257-128 Costa da Caparica", "922209399", "3546804937", "2001-05-09");
INSERT INTO Conta VALUES ("pinhofabiana@borges.net", "#5c4#0)^", 1403);
INSERT INTO Passageiro VALUES (99686, "pinhofabiana@borges.net", 50406);
INSERT INTO Bilhete VALUES (1018, 19, 59, "pinhofabiana@borges.net", "AADBB");
INSERT INTO Bagagem VALUES (369791, 0.71, 1.16, 0.34, 11, 1018);
INSERT INTO Nacionalidade VALUES (50406, "Portugal");


INSERT INTO Pessoa VALUES (90769, "Afonso Machado", "Rua Wilson Ferreira, 20
1905-775 Beja", "+351931691535", "0279648541", "1992-11-17");
INSERT INTO Conta VALUES ("vicenteduarte@hotmail.com", "!2!5arr7", 798);
INSERT INTO Passageiro VALUES (08388, "vicenteduarte@hotmail.com", 90769);
INSERT INTO Bilhete VALUES (1019, 20, 59, "vicenteduarte@hotmail.com", "AADBB");
INSERT INTO Bagagem VALUES (255727, 1.09, 0.76, 0.3, 27, 1019);
INSERT INTO Nacionalidade VALUES (90769, "Portugal");


INSERT INTO Pessoa VALUES (46370, "Vitória Carneiro", "Av Marta Matos, 3
0574-829 Tarouca", "+351961547241", "8354729951", "1943-01-00");
INSERT INTO Conta VALUES ("ycosta@clix.pt", "%iaz6!vv", 2099);
INSERT INTO Passageiro VALUES (21829, "ycosta@clix.pt", 46370);
INSERT INTO Bilhete VALUES (1020, 21, 59, "ycosta@clix.pt", "AADBB");
INSERT INTO Bagagem VALUES (697568, 1.04, 0.71, 0.65, 17, 1020);
INSERT INTO Nacionalidade VALUES (46370, "Portugal");


INSERT INTO Pessoa VALUES (49048, "Ema Baptista-Silva", "R. de Esteves, 80
3814-252 Porto Santo", "(351) 936544202", "0297886855", "2007-11-14");
INSERT INTO Conta VALUES ("andrebaptista@sapo.pt", "f^2zmjmz", 2630);
INSERT INTO Passageiro VALUES (16248, "andrebaptista@sapo.pt", 49048);
INSERT INTO Bilhete VALUES (1021, 22, 59, "andrebaptista@sapo.pt", "AADBB");
INSERT INTO Bagagem VALUES (71696, 1.17, 0.65, 0.58, 24, 1021);
INSERT INTO Nacionalidade VALUES (49048, "Portugal");


INSERT INTO Pessoa VALUES (98544, "Mateus Amaral", "Av Bernardo Barbosa, 52
2032-571 Montemor-o-Novo", "931 075 682", "4703113428", "1979-01-27");
INSERT INTO Conta VALUES ("sergio25@marques.net", ")318ai2r", 972);
INSERT INTO Passageiro VALUES (54621, "sergio25@marques.net", 98544);
INSERT INTO Bilhete VALUES (1022, 23, 59, "sergio25@marques.net", "AADBB");
INSERT INTO Bagagem VALUES (4025, 0.89, 0.91, 0.57, 2, 1022);
INSERT INTO Nacionalidade VALUES (98544, "Portugal");


INSERT INTO Pessoa VALUES (57757, "Valentim-Bryan Cruz", "Av de Garcia, 52
7748-429 Lixa", "(351) 925 771 501", "4284503231", "1951-06-19");
INSERT INTO Conta VALUES ("flopes@batista.pt", "7i%*3h0e", 2960);
INSERT INTO Passageiro VALUES (13205, "flopes@batista.pt", 57757);
INSERT INTO Bilhete VALUES (1023, 24, 59, "flopes@batista.pt", "AADBB");
INSERT INTO Bagagem VALUES (306305, 1.1, 0.67, 0.41, 10, 1023);
INSERT INTO Nacionalidade VALUES (57757, "Portugal");


INSERT INTO Pessoa VALUES (71557, "Tatiana de Leite", "Avenida Maia, S/N
1021-744 Santo Tirso", "+351917609908", "4082777537", "1967-03-24");
INSERT INTO Conta VALUES ("alvaropinheiro@hotmail.com", "z^n!9r5h", 667);
INSERT INTO Passageiro VALUES (97104, "alvaropinheiro@hotmail.com", 71557);
INSERT INTO Bilhete VALUES (1024, 25, 59, "alvaropinheiro@hotmail.com", "AADBB");
INSERT INTO Bagagem VALUES (888828, 0.81, 0.64, 0.55, 14, 1024);
INSERT INTO Nacionalidade VALUES (71557, "Portugal");


INSERT INTO Pessoa VALUES (81247, "Tomé Gaspar-Leal", "Av Érica Leite, 50
5756-853 Miranda do Douro", "(351) 960695167", "2333100867", "1932-03-23");
INSERT INTO Conta VALUES ("acruz@gmail.com", ")^x!5ago", 2274);
INSERT INTO Passageiro VALUES (83411, "acruz@gmail.com", 81247);
INSERT INTO Bilhete VALUES (1025, 26, 59, "acruz@gmail.com", "AADBB");
INSERT INTO Bagagem VALUES (673301, 0.92, 0.89, 0.38, 30, 1025);
INSERT INTO Nacionalidade VALUES (81247, "Portugal");


INSERT INTO Pessoa VALUES (54341, "Tomás da Sousa", "R. de Fonseca, 748
8204-696 Estremoz", "(351) 217 124 260", "9092160860", "1953-09-10");
INSERT INTO Conta VALUES ("mrodrigues@ribeiro.com", "_!316x(m", 1631);
INSERT INTO Passageiro VALUES (98097, "mrodrigues@ribeiro.com", 54341);
INSERT INTO Bilhete VALUES (1026, 27, 59, "mrodrigues@ribeiro.com", "AADBB");
INSERT INTO Bagagem VALUES (724272, 0.62, 1.12, 0.63, 9, 1026);
INSERT INTO Nacionalidade VALUES (54341, "Portugal");


INSERT INTO Pessoa VALUES (85846, "Mélanie de Cunha", "Largo de Campos, 87
1300-074 Vizela", "(351) 224421545", "7131732002", "1949-02-26");
INSERT INTO Conta VALUES ("valentelisandro@carvalho.com", "^#z&q2d!", 1296);
INSERT INTO Passageiro VALUES (58478, "valentelisandro@carvalho.com", 85846);
INSERT INTO Bilhete VALUES (1027, 28, 59, "valentelisandro@carvalho.com", "AADBB");
INSERT INTO Bagagem VALUES (144735, 1.04, 0.88, 0.47, 11, 1027);
INSERT INTO Nacionalidade VALUES (85846, "Portugal");


INSERT INTO Pessoa VALUES (57211, "Ricardo de Pinheiro", "R. Vaz, 41
6961-678 Vila Franca de Xira", "+351969874664", "7468564154", "2004-04-23");
INSERT INTO Conta VALUES ("moraisgil@matos.net", "vp1+)18g", 1593);
INSERT INTO Passageiro VALUES (36756, "moraisgil@matos.net", 57211);
INSERT INTO Bilhete VALUES (1028, 29, 59, "moraisgil@matos.net", "AADBB");
INSERT INTO Bagagem VALUES (162262, 1.18, 1.15, 0.6, 12, 1028);
INSERT INTO Nacionalidade VALUES (57211, "Portugal");


INSERT INTO Pessoa VALUES (79182, "Petra Vicente", "R. Gabriela Moura, 914
7600-096 Fiães", "913 780 725", "3805987395", "2001-03-22");
INSERT INTO Conta VALUES ("sousaivo@sapo.pt", "&!8+5xxp", 2038);
INSERT INTO Passageiro VALUES (73491, "sousaivo@sapo.pt", 79182);
INSERT INTO Bilhete VALUES (1029, 30, 59, "sousaivo@sapo.pt", "AADBB");
INSERT INTO Bagagem VALUES (178857, 0.53, 0.7, 0.34, 19, 1029);
INSERT INTO Nacionalidade VALUES (79182, "Portugal");


INSERT INTO Pessoa VALUES (57786, "Margarida Carneiro", "R. Araújo, 89
0409-375 Rio Maior", "914 605 735", "6372630195", "1980-06-19");
INSERT INTO Conta VALUES ("valentinasantos@brito.pt", "jk6&1gy9", 2967);
INSERT INTO Passageiro VALUES (93631, "valentinasantos@brito.pt", 57776);
INSERT INTO Bilhete VALUES (1030, 31, 59, "valentinasantos@brito.pt", "AADBB");
INSERT INTO Bagagem VALUES (918919, 0.83, 0.76, 0.51, 28, 1030);
INSERT INTO Nacionalidade VALUES (57786, "Portugal");
