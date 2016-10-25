-- ------------------------------------------------------------------------
-- Inserts das tabelas de participantes do programa, hashtags e sentimentos
-- ------------------------------------------------------------------------

-- ------------------------------------
-- query de inserção dos participantes
-- ------------------------------------
INSERT INTO participante (nome, username, jurado, apresentador, candidato) 
VALUES ('Leonardo Young','MC3_Leonardo',0,0,1),('Bruna Chaves','MC3_Bruna',0,0,1),
('Raquel Novais','MC3_Raquel',0,0,1),('Luriana Toledo','MC3_Luriana',0,0,1),
('Fabio Nunes','MC3_Fabio',0,0,1),('Lee Fu Kuang','MC3_Lee',0,0,1),
('Paula Salles','MC3_Paula',0,0,1),('Aluisio Nahime', 'MC3_Aluisio',0,0,1),
('Pedro Lima', 'MC3_Pedro',0,0,1),('Fernando Bianchi','MC3_Fernando',0,0,1),
('Thaiana Wosniak','MC3_Thaiana',0,0,1),('Gleice Simão','MC3_Gleice',0,0,1),
('Vanessa Vagnotti','MC3_Vanessa',0,0,1),('Rodrigo Barros','MC3_Rodrigo',0,0,1),
('Livia Chathiard','MC3_Livia',0,0,1),('Guilherme Joventino','MC3_Guilherme',0,0,1),
('Nuno Codeço','MC3_Nuno',0,0,1),('Gabriella Paliankas','MC3_Gabriella',0,0,1),
('Rodrigo Domingues (Tenente)','MC3_Tenente',0,0,1),('Victor Castelo','MC3_Victor',0,0,1),
('Hellen Cruz','MC3_Hellen',0,0,1),('Erick Jacquin','erickjacquin',1,0,0),
('Henrique Fogaça','fogaca_henrique',1,0,0),('Paola Carosella','PaolaCarosella',1,0,0),
('Ana Paula Padrão', 'anapaulapadrao',0,1,0);

-- --------------------------------
-- query de inserção das hashtags
-- --------------------------------
INSERT INTO hashtag (hash) VALUES ('#FicaLeonardo'),('#FicaBruna'),
('#FicaRaquel'),('#FicaLuriana'),('#FicaFabio'),('#FicaLee'),('#FicaPaula'),
('#FicaAluisio'),('#FicaPedro'),('#FicaFernando'),('#FicaThaiana'),
('#FicaGleice'),('#FicaVanessa'),('#FicaRodrigo'),('#FicaLivia'),
('#FicaGuilherme'),('#FicaNuno'),('#FicaGabriella'),('#FicaTenente'),
('#FicaVictor'),('#FicaHellen'),('#VoltaGleice'),('#VoltaLivia'),('#VoltaTenente'),
('#VoltaNuno'),('#VoltaGabriella'),('#VoltaFernando'),('#VoltaVictor'),
('#VoltaHellen'),('#VoltaRodrigo'),('#equipeVermelha'),('#equipeAzul'),
('#equipeAmarela'),('#VemNiMim'),('#SentaNaGraxa'),('#PodeVirQuente'),
('#JacquinSincero'),('#CaixaMisteriosa'),('#PartiuGeladeira'),
('#DivinoMaravilhoso'),('#GanhaLeonardo'),('#GanhaBruna'),('#MasterChefBR'),
('#ForaLeonardo'),('#ForaBruna'),('#ForaRaquel'),('#ForaLuriana'),('#ForaFabio'),('#ForaLee'),
('#ForaPaula'),('#ForaAluisio'),('#ForaPedro'),('#ForaFernando'),('#ForaThaiana'),
('#ForaGleice'),('#ForaVanessa'),('#ForaRodrigo'),('#ForaLivia'),('#ForaGuilherme'),
('#ForaNuno'),('#ForaGabriella'),('#ForaTenente'),('#ForaVictor'),('#ForaHellen');

-- ---------------------------------
-- query de inserção dos sentimentos
-- ---------------------------------

INSERT INTO sentimento (nome) VALUES ('neutro'),('positivo'),('negativo');

-- -----------------------------------------------------------------------
-- query de inserção da tabela de relacionamento participante_has_hashtag
-- -----------------------------------------------------------------------

INSERT INTO participante_has_hashtag (participante_idparticipante,hashtag_idHashtag) 
VALUES (1,1),(1,41),(2,2),(2,42),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),
(10,27),(11,11),(12,12),(12,22),(13,13),(14,14),(14,30),(15,15),(15,23),(16,16),
(17,17),(17,25),(18,18),(18,26),(19,19),(19,24),(20,20),(20,28),(21,21),(21,29),
(22,37),(1,44),(2,45),(3,46),(4,47),(5,48),(6,49),(7,50),(8,51),(9,52),(10,53),
(11,54),(12,55),(13,56),(14,57),(15,58),(16,59),(17,60),(18,61),(19,62),(20,63);





