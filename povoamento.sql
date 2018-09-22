--1 TABLE COACH								OK
--2 TABLE TEAM								OK
--3 TABLE PLEYERS							OK
--4 TABLE CELLPHONES					OK
--5 TABLE PRIZES							OK
--6 TABLE CHAMPIONSHIPS				OK
--7 TABLE ITENS								OK
--8 TABLE CT									OK
--9 TABLE TR									OK
--10 TABLE KILL								OK?
--11 TABLE WIN								OK
--12 TABLE SEND_MESSAGE				OK

-- Povoando a tabela Coaches
INSERT INTO Coach (CoachID, Name) values ('Robban', 'Robert Dahlstom');
INSERT INTO Coach (CoachID, Name) values ('lmbt','Sergey Bezhanov');
INSERT INTO Coach (CoachID, Name) values ('Jumpy','Jimmy Berndtsson');
INSERT INTO Coach (CoachID, Name) values ('valens','Soham Chowdhury');
INSERT INTO Coach (CoachID, Name) values ('zonic','Danny Sorensen');
INSERT INTO Coach (CoachID, Name) values ('kane','Mykhail Blagin');
INSERT INTO Coach (CoachID, Name) values ('zews','Wilton Prado');
INSERT INTO Coach (CoachID, Name) values ('NiaK','Jerome Sudries');
INSERT INTO Coach (CoachID, Name) values ('pita','Faruk Pita');


-- Povoando a tabela Team

INSERT INTO Team (Team_Name, CoachID, Country, Ranking) values ('Faze Clan','Robban','Europe',1);
INSERT INTO Team (Team_Name, CoachID, Country, Ranking) values ('Mouseesport','lmbt','Germany',2);
INSERT INTO Team (Team_Name, CoachID, Country, Ranking) values ('fnatic','Jumpy','Sweden',3);
INSERT INTO Team (Team_Name, CoachID, Country, Ranking) values ('Cloud9','valens','USA',4);
INSERT INTO Team (Team_Name, CoachID, Country, Ranking) values ('Astralis','zonic','Denmark',5);
INSERT INTO Team (Team_Name, CoachID, Country, Ranking) values ('NatusVincere','kane','Ukraine',6);
INSERT INTO Team (Team_Name, CoachID, Country, Ranking) values ('Team Liquid','zews','USA',7);
INSERT INTO Team (Team_Name, CoachID, Country, Ranking) values ('G2','NiaK','France',9);
INSERT INTO Team (Team_Name, CoachID, Country, Ranking) values ('NiP','pita','Sweden',10);
INSERT INTO Team (Team_Name, CoachID, Country, Ranking) values ('SK',NULL ,'Brazil',8);


-- Povoando a tabela Players

INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('steel',NULL ,0.97,NULL);
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('karrigan',NULL ,0.97,'Faze Clan');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('Xizt',NULL , 0.97,'Faze Clan');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('GuardiaN',9,1.13,'Faze Clan');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('NiKo',2,1.23,'Faze Clan');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('rain',4,1.12,'Faze Clan');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('oskar',16,1.17,'Mouseesport');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('chrisJ',NULL,1.05,'Mouseesport');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('suNny',NULL,1.15,'Mouseesport');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('STYKO',NULL,0.98,'Mouseesport');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('ropz',NULL,1.11,'Mouseesport');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('flusha',NULL,1.14,'fnatic');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('JW',NULL,1.07,'fnatic');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('KRIMZ',NULL,1.18,'fnatic');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('Lekr0',NULL,1.1,'fnatic');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('Golden',NULL,0.93,'fnatic');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('FNS',NULL,0.91,'Cloud9');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('Skadoodle',NULL,1.08,'Cloud9');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('RUSH',NULL,1.11,'Cloud9');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('tarik',NULL,1.16,'Cloud9');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('autimatic',NULL,1.2,'Cloud9');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('Xyp9x',13,1.09,'Astralis');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('dupreeh',10,1.18,'Astralis');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('gla1ve',NULL,1.05,'Astralis');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('device',5,1.2,'Astralis');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('Magisk',NULL,1.13,'Astralis');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('Edward',NULL,0.99,'NatusVincere');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('Zeus',NULL,0.91,'NatusVincere');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('flamie',NULL,1.14,'NatusVincere');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('s1mple',8,1.37,'NatusVincere');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('eletronic',NULL,1.2,'NatusVincere');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('nitr0',NULL,1.09,'Team Liquid');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('NAF',NULL,1.22,'Team Liquid');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('EliGE',12,1.17,'Team Liquid');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('TACO',NULL,0.91,'Team Liquid');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('Twistzz',NULL,1.14,'Team Liquid');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('FalleN',6,1.14,'SK');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('fer',3,1.12,'SK');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('boltz',18,1.01,'SK');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('Stewie2K',NULL,1.08,'SK');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('coldzera',1,1.19,'SK');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('KennyS',7,1.11,'G2');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('NBK-',NULL,1.01,'G2');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('apEx',NULL,1.15,'G2');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('mixwell',NULL,1.09,'G2');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('bodyy',NULL,0.96,'G2');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('shox',NULL,1.05,NULL);
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('f0rest',NULL,1.07,'NiP');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('GeT_RiGhT',NULL,1.00,'NiP');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('dennis',NULL,1.11,'NiP');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('draken',NULL,1.11,'NiP');
INSERT INTO Players(UserID, Ranking, KDR, Team_name) values ('REZ',NULL,1.09,'NiP');


--Povoamento tabela CT

INSERT INTO CT(UserID, Defuses) values ('steel', 51);
INSERT INTO CT(UserID, Defuses) values('bodyy', 125);
INSERT INTO CT(UserID, Defuses) values('TACO', 84);
INSERT INTO CT(UserID, Defuses) values('shox', 13);
INSERT INTO CT(UserID, Defuses) values('s1mple', 248);
INSERT INTO CT(UserID, Defuses) values('EliGE', 93);
INSERT INTO CT(UserID, Defuses) values('f0rest', 61);
INSERT INTO CT(UserID, Defuses) values('fer', 119);
INSERT INTO CT(UserID, Defuses) values('oskar', 33);
INSERT INTO CT(UserID, Defuses) values('device', 78);


-- Povoamento tabela TR
INSERT INTO TR(UserID, Explosions) values ('draken', 23);
INSERT INTO TR(UserID, Explosions) values('NBK-', 45);
INSERT INTO TR(UserID, Explosions) values('coldzera', 91);
INSERT INTO TR(UserID, Explosions) values ('eletronic', 18);
INSERT INTO TR(UserID, Explosions) values('flamie', 60);
INSERT INTO TR(UserID, Explosions) values('gla1ve', 102);
INSERT INTO TR(UserID, Explosions) values('dupreeh', 77);
INSERT INTO TR(UserID, Explosions) values('autimatic', 8);
INSERT INTO TR(UserID, Explosions) values('flusha', 57);
INSERT INTO TR(UserID, Explosions) values('NiKo', 119);


--Povoamento tabela Itens
INSERT INTO Itens(UserID, Ordem, Name, Market_Price) values('TACO', 0, 'M4A4', 3100);
INSERT INTO Itens(UserID, Ordem, Name, Market_Price) values('f0rest', 0, 'AK47', 2700);
INSERT INTO Itens(UserID, Ordem, Name, Market_Price) values('shox', 0, 'M4A1-S', 3100);
INSERT INTO Itens(UserID, Ordem, Name, Market_Price) values('EliGE', 0, 'Deagle', 700);
INSERT INTO Itens(UserID, Ordem, Name, Market_Price) values('TACO', 1, 'AK47', 2700);
INSERT INTO Itens(UserID, Ordem, Name, Market_Price) values('NiKo', 0, 'Deagle', 700);
INSERT INTO Itens(UserID, Ordem, Name, Market_Price) values('s1mple', 0, 'AK47', 2700);
INSERT INTO Itens(UserID, Ordem, Name, Market_Price) values('flamie', 0, 'USP-S', 200);
INSERT INTO Itens(UserID, Ordem, Name, Market_Price) values('draken', 0, 'M4A4', 3100);
INSERT INTO Itens(UserID, Ordem, Name, Market_Price) values('TACO', 2, 'AWP', 4750);
INSERT INTO Itens(UserID, Ordem, Name, Market_Price) values('shox', 1, 'Glock', 200);
INSERT INTO Itens(UserID, Ordem, Name, Market_Price) values('device', 0, 'AK47', 2700);
INSERT INTO Itens(UserID, Ordem, Name, Market_Price) values('FalleN', 0, 'AWP', 4750);
INSERT INTO Itens(UserID, Ordem, Name, Market_Price) values('FalleN', 1, 'M4A4', 3100);
INSERT INTO Itens(UserID, Ordem, Name, Market_Price) values('Xizt', 0, 'AK47', 2700);

--Povoamento tabela Cellphones


INSERT INTO Cellphones(CoachID, Cel_number) values ('NiaK','(458) 572-4819');
INSERT INTO Cellphones(CoachID, Cel_number) values('NiaK','(693) 581-4484');
INSERT INTO Cellphones(CoachID, Cel_number) values('valens','(135) 370-4869');
INSERT INTO Cellphones(CoachID, Cel_number) values('Robban','(398) 172-0028');
INSERT INTO Cellphones(CoachID, Cel_number) values('Robban','(306) 790-9702');
INSERT INTO Cellphones(CoachID, Cel_number) values('Robban','(576) 289-8739');
INSERT INTO Cellphones(CoachID, Cel_number) values('zews','(134) 741-6976');
INSERT INTO Cellphones(CoachID, Cel_number) values('Jumpy','(714) 584-2643');
INSERT INTO Cellphones(CoachID, Cel_number) values('Jumpy','(791) 693-5870');
INSERT INTO Cellphones(CoachID, Cel_number) values('lmbt','(337) 809-3683');
INSERT INTO Cellphones(CoachID, Cel_number) values('lmbt','(881) 984-0824');
INSERT INTO Cellphones(CoachID, Cel_number) values('zews','(556) 563-6003');
INSERT INTO Cellphones(CoachID, Cel_number) values('kane', '(272) 186-3979');
INSERT INTO Cellphones(CoachID, Cel_number) values('kane','(545) 415-1339');
INSERT INTO Cellphones(CoachID, Cel_number) values('pita', '(862) 245-3265');
INSERT INTO Cellphones(CoachID, Cel_number) values('pita', '(702) 549-6851');
INSERT INTO Cellphones(CoachID, Cel_number) values('pita', '(278) 484-8137');
INSERT INTO Cellphones(CoachID, Cel_number) values('zews', '(997) 655-7934');


-- Povoamento tabela Kill PlayerItem = UserID e PlayerItemOrder = Ordem
INSERT INTO Kill(Player1, Player2, date_time, PlayerItem, PlayerItemOrder, CT_Killed) values('steel', 'draken', '13/04/2018 10:53:57.10', 'f0rest', 0, 0);
INSERT INTO Kill(Player1, Player2, date_time, PlayerItem, PlayerItemOrder, CT_Killed) values('TACO', 'coldzera', '15/05/2018 17:50:13.50', 'TACO', 0, 0);
INSERT INTO Kill(Player1, Player2, date_time, PlayerItem, PlayerItemOrder, CT_Killed) values('EliGE', 'flusha', '22/02/2018 08:35:14.00', 'draken', 0, 0);
INSERT INTO Kill(Player1, Player2, date_time, PlayerItem, PlayerItemOrder, CT_Killed) values('fer', 'NiKo', '30/03/2018 18:32:23.00', 'shox', 1, 0);
INSERT INTO Kill(Player1, Player2, date_time, PlayerItem, PlayerItemOrder, CT_Killed) values('bodyy', 'dupreeh', '25/03/04 20:23:11.00', 'TACO', 2, 1);                                                                                        
INSERT INTO Kill(Player1, Player2, date_time, PlayerItem, PlayerItemOrder, CT_Killed) values('oskar', 'NBK-', '13/01/2018 10:13:56.10', 'device', 0, 1);
INSERT INTO Kill(Player1, Player2, date_time, PlayerItem, PlayerItemOrder, CT_Killed) values('f0rest', 'gla1ve', '15/03/2018 17:10:13.50', 'FalleN', 0, 1);
INSERT INTO Kill(Player1, Player2, date_time, PlayerItem, PlayerItemOrder, CT_Killed) values('device', 'autimatic', '22/06/2018 18:35:14.00', 'Xizt', 0, 1);
INSERT INTO Kill(Player1, Player2, date_time, PlayerItem, PlayerItemOrder, CT_Killed) values('s1mple', 'NiKo', '13/02/2018 18:36:23.00', 's1mple', 0, 1);
INSERT INTO Kill(Player1, Player2, date_time, PlayerItem, PlayerItemOrder, CT_Killed) values('bodyy','flusha', '25/01/2018 14:12:51.12', 'flamie', 0, 0);
                                                                                             

--Povoamento tabela Prizes          

INSERT INTO Prizes(PrizeID, Type, Price) values ('0','mouse',1500);
INSERT INTO Prizes(PrizeID, Type, Price) values ('1','keyboard',900);                    
INSERT INTO Prizes(PrizeID, Type, Price) values ('2','computer',6200);
INSERT INTO Prizes(PrizeID, Type, Price) values ('3','headset',550);


--Povoamento tabela Championships

INSERT INTO Championships(ChampID, Data, City, Country) values (0, '15/06/2018 10:00:00.00', 'Belo Horizonte', 'Brazil');
INSERT INTO Championships(ChampID, Data, City, Country) values (1, '01/05/2018 13:00:00.00', 'Sydney', 'Australia');
INSERT INTO Championships(ChampID, Data, City, Country) values (2, '19/05/2018 10:30:00.00', 'Tours', 'France');
INSERT INTO Championships(ChampID, Data, City, Country) values (3, '01/06/2018 10:00:00.00', 'Austin', 'USA');
INSERT INTO Championships(ChampID, Data, City, Country) values (4, '23/06/2018 13:00:00.00', 'Istanbul', 'Turkey');
INSERT INTO Championships(ChampID, Data, City, Country) values (5, '21/07/2018 10:30:00.00', 'Cologne', 'Germany');

--Povoamento tabela Win

INSERT INTO Win(Team_Name, PrizeID, ChampID) values('Cloud9','0','0');
INSERT INTO Win(Team_Name, PrizeID, ChampID) values('Faze Clan','1','1');
INSERT INTO Win(Team_Name, PrizeID, ChampID) values('Astralis','1','2');
INSERT INTO Win(Team_Name, PrizeID, ChampID) values('Team Liquid','0','3');
INSERT INTO Win(Team_Name, PrizeID, ChampID) values('G2','2','4');
INSERT INTO Win(Team_Name, PrizeID, ChampID) values('fnatic','2','1');
INSERT INTO Win(Team_Name, PrizeID, ChampID) values('Cloud9','3','3');
INSERT INTO Win(Team_Name, PrizeID, ChampID) values('NiP','2','5');
INSERT INTO Win(Team_Name, PrizeID, ChampID) values('fnatic','2','4');
INSERT INTO Win(Team_Name, PrizeID, ChampID) values('NiP','3','4');



--Povoamento tabela Send_Message
INSERT INTO Send_Message(Sender, Receiver, date_time, Content) values ('steel', 	'Magisk', 		'13/08/2018 10:50:24.15',	'Eae cara, entreiii!!!'								);
INSERT INTO Send_Message(Sender, Receiver, date_time, Content) values ('karrigan','Skadoodle',	'13/08/2018 10:50:36.32',	'Vamo uma, te carrego'								);
INSERT INTO Send_Message(Sender, Receiver, date_time, Content) values ('suNny', 	'NiKo', 			'13/08/2018 10:50:59.51',	'You burro man'												);
INSERT INTO Send_Message(Sender, Receiver, date_time, Content) values ('Golden',	'Skadoodle', 	'13/08/2018 10:51:21.13',	'LoL >> CS'														);
INSERT INTO Send_Message(Sender, Receiver, date_time, Content) values ('Lekr0', 	'tarik', 			'13/08/2018 10:51:24.46',	'Vamo jogar Lol, bem melhor que isso'	);
INSERT INTO Send_Message(Sender, Receiver, date_time, Content) values ('JW',		 	'tarik', 			'13/08/2018 10:51:57.55',	'O Sutil é muito ruim'								);
INSERT INTO Send_Message(Sender, Receiver, date_time, Content) values ('JW', 			'tarik', 			'13/08/2018 10:52:03.12',	'Parece que joga sem monitor'					);
INSERT INTO Send_Message(Sender, Receiver, date_time, Content) values ('tarik', 	'JW', 				'13/08/2018 10:52:32.31',	'Claro, ele é prata'									);
INSERT INTO Send_Message(Sender, Receiver, date_time, Content) values ('dupreeh', 'tarik', 			'13/08/2018 10:52:57.49',	'Chama o Magisk'											);
INSERT INTO Send_Message(Sender, Receiver, date_time, Content) values ('tarik',		'Magisk', 		'13/08/2018 10:53:04.17', 'ô Magisk'														);



