-- Artiste (15 lignes)
INSERT INTO Artiste (ar_ID, ar_nom, ar_paysOrigine, ar_dateCréation) VALUES
(1, 'The Weeknd', 'Canada', '2010-03-01'),
(2, 'Selena Gomez', 'USA', '2009-01-15'),
(3, 'Bruno Mars', 'USA', '2004-05-28'),
(4, 'Charles Aznavour', 'France', '1946-06-01'),
(5, 'Brent Faiyaz', 'USA', '2016-09-12'),
(6, 'Dua Lipa', 'UK', '2015-06-01'),
(7, 'Ed Sheeran', 'UK', '2011-02-12'),
(8, 'Adele', 'UK', '2006-01-01'),
(9, 'Drake', 'Canada', '2007-09-14'),
(10, 'Taylor Swift', 'USA', '2006-10-24'),
(11, 'Coldplay', 'UK', '1998-03-15'),
(12, 'Kendrick Lamar', 'USA', '2010-05-23'),
(13, 'Shakira', 'Colombie', '1990-06-07'),
(14, 'Rihanna', 'Barbade', '2005-08-20'),
(15, 'Post Malone', 'USA', '2015-07-04');

-- Genre musical (10 lignes)
INSERT INTO Genre_musical (gm_ID, gm_libellé) VALUES
(1, 'jazz'),
(2, 'pop'),
(3, 'reggae'),
(4, 'rock'),
(5, 'rap'),
(6, 'rnb'),
(7, 'electro'),
(8, 'country'),
(9, 'folk'),
(10, 'blues');

-- Compte (20 lignes)
INSERT INTO Compte (c_ID, c_statut, c_dateCréation) VALUES
('c1','actif','2020-01-10'),
('c2','actif','2021-03-15'),
('c3','suspendu','2019-07-21'),
('c4','actif','2022-09-01'),
('c5','supprime','2020-05-11'),
('c6','actif','2021-11-18'),
('c7','actif','2020-12-22'),
('c8','suspendu','2019-02-14'),
('c9','actif','2022-01-05'),
('c10','actif','2020-08-30'),
('c11','actif','2021-07-01'),
('c12','actif','2019-10-12'),
('c13','actif','2020-04-17'),
('c14','suspendu','2021-01-25'),
('c15','actif','2022-02-20'),
('c16','supprime','2020-06-12'),
('c17','actif','2021-09-03'),
('c18','actif','2019-12-11'),
('c19','actif','2022-03-15'),
('c20','actif','2021-05-22');



-- Utilisateur (20 lignes)
INSERT INTO Utilisateur (u_adresseMail, u_identifiant, u_pseudo, u_MDP, c_ID) VALUES
('alice@example.com',1,'Alice','Password123','c1'),
('bob@example.com',2,'Bob','Secret456','c2'),
('carol@example.com',3,'Carol','Mdp7890','c3'),
('dave@example.com',4,'Dave','PassWord1','c4'),
('eve@example.com',5,'Eve','Secure123','c5'),
('frank@example.com',6,'Frank','FrankPwd1','c6'),
('grace@example.com',7,'Grace','Grace123','c7'),
('heidi@example.com',8,'Heidi','HeidiPwd1','c8'),
('ivan@example.com',9,'Ivan','IvanPass1','c9'),
('judy@example.com',10,'Judy','JudyPwd123','c10'),
('mallory@example.com',11,'Mallory','Mallory12','c11'),
('oscar@example.com',12,'Oscar','OscarPass','c12'),
('peggy@example.com',13,'Peggy','Peggy1234','c13'),
('trent@example.com',14,'Trent','TrentPwd1','c14'),
('victor@example.com',15,'Victor','VictorPwd1','c15'),
('walter@example.com',16,'Walter','WalterPwd1','c16'),
('xavier@example.com',17,'Xavier','Xavier123','c17'),
('yvonne@example.com',18,'Yvonne','YvonnePwd1','c18'),
('zara@example.com',19,'Zara','ZaraPass1','c19'),
('quentin@example.com',20,'Quentin','Quentin12','c20');

-- Album (20 lignes)
INSERT INTO Album (al_ID, al_titre, al_dateSortie, ar_ID) VALUES
(1,'After Hours','2020-03-20',1),
(2,'Unorthodox Jukebox','2012-12-07',3),
(3,'Alfredo 2','2023-06-15',5),
(4,'Divide','2017-03-03',7),
(5,'25','2015-11-20',8),
(6,'Scorpion','2018-06-29',9),
(7,'1989','2014-10-27',10),
(8,'A Head Full of Dreams','2015-12-04',11),
(9,'DAMN.','2017-04-14',12),
(10,'Laundry Service','2001-11-13',13),
(11,'ANTI','2016-01-28',14),
(12,'Beerbongs & Bentleys','2018-04-27',15),
(13,'Future Nostalgia','2020-03-27',6),
(14,'÷ (Divide)','2017-03-03',7),
(15,'21','2011-01-24',8),
(16,'Views','2016-04-29',9),
(17,'Reputation','2017-11-10',10),
(18,'Viva La Vida','2008-06-12',11),
(19,'good kid, m.A.A.d city','2012-10-22',12),
(20,'She Wolf','2009-10-13',13);

-- Morceaux (50 lignes)
INSERT INTO Morceaux (m_ID, m_titre, m_durée, al_ID) VALUES
(1,'Escape From LA',210,1),
(2,'When I Was Your Man',230,2),
(3,'La Bohème',200,3),
(4,'ROLE MODEL',180,4),
(5,'Ensalada',240,5),
(6,'E85',220,6),
(7,'Blinding Lights',200,1),
(8,'Starboy',230,1),
(9,'Treasure',210,2),
(10,'Locked Out of Heaven',220,2),
(11,'Godspeed',190,3),
(12,'Alfredo',240,3),
(13,'Shape of You',210,4),
(14,'Perfect',230,4),
(15,'Hello',300,5),
(16,'Send My Love',210,5),
(17,'Photograph',200,7),
(18,'Thinking Out Loud',240,7),
(19,'Rolling in the Deep',300,8),
(20,'Set Fire to the Rain',220,8),
(21,'Hotline Bling',230,6),
(22,'One Dance',240,6),
(23,'Love Yourself',210,7),
(24,'Bad Blood',220,10),
(25,'Yellow',210,11),
(26,'Viva La Vida',240,11),
(27,'HUMBLE.',180,12),
(28,'Alright',220,12),
(29,'Hips Don’t Lie',200,13),
(30,'She Will Be Loved',210,14),
(31,'Umbrella',230,14),
(32,'Rockstar',220,15),
(33,'Circles',210,15),
(34,'Don’t Start Now',230,13),
(35,'Levitating',200,13),
(36,'Perfect Duet',210,4),
(37,'E.T.',220,5),
(38,'Love on the Brain',210,14),
(39,'Sunflower',200,12),
(40,'Wow.',210,15),
(41,'New Rules',230,13),
(42,'Happier',220,7),
(43,'Sorry',210,6),
(44,'Can’t Feel My Face',200,1),
(45,'Take Me to Church',230,9),
(46,'Formation',220,14),
(47,'Believer',210,11),
(48,'Demons',200,11),
(49,'Sicko Mode',230,12),
(50,'Stay',220,10);

-- Playlist (25 lignes)
INSERT INTO Playlist (p_ID, p_titre, p_statut, pl_dateCréation, u_adresseMail) VALUES
(1,'Top Hits','publique','2023-01-10','alice@example.com'),
(2,'Chill Vibes','collaborative','2023-02-12','bob@example.com'),
(3,'Workout','publique','2023-03-05','carol@example.com'),
(4,'Party Time','publique','2023-01-15','dave@example.com'),
(5,'Relax','privee','2023-02-18','eve@example.com'),
(6,'Focus','publique','2023-03-20','frank@example.com'),
(7,'Romantic','collaborative','2023-01-25','grace@example.com'),
(8,'Hip Hop Mix','publique','2023-02-28','heidi@example.com'),
(9,'Pop Classics','privee','2023-03-10','ivan@example.com'),
(10,'Rock Hits','publique','2023-01-12','judy@example.com'),
(11,'Jazz Lounge','privee','2023-02-20','mallory@example.com'),
(12,'Evening Chill','publique','2023-03-15','oscar@example.com'),
(13,'Summer Vibes','publique','2023-01-18','peggy@example.com'),
(14,'Winter Playlist','privee','2023-02-05','trent@example.com'),
(15,'Morning Boost','publique','2023-03-08','victor@example.com'),
(16,'Night Drive','publique','2023-01-22','walter@example.com'),
(17,'Acoustic','privee','2023-02-12','xavier@example.com'),
(18,'Study Time','publique','2023-03-19','yvonne@example.com'),
(19,'Love Songs','collaborative','2023-01-30','zara@example.com'),
(20,'Throwback','publique','2023-02-25','quentin@example.com'),
(21,'Indie Mix','privee','2023-03-02','alice@example.com'),
(22,'R&B Essentials','publique','2023-01-28','bob@example.com'),
(23,'Electronic','publique','2023-02-08','carol@example.com'),
(24,'Latin Hits','publique','2023-03-05','dave@example.com'),
(25,'Reggae Vibes','publique','2023-02-15','eve@example.com');

-- ElementPlaylist (60 lignes)
INSERT INTO ElementPlaylist (p_ID, m_ID, position_) VALUES
(1,1,1),(1,2,2),(1,7,3),(1,8,4),
(2,3,1),(2,4,2),(2,9,3),(2,10,4),
(3,5,1),(3,6,2),(3,11,3),(3,12,4),
(4,13,1),(4,14,2),(4,15,3),(4,16,4),
(5,17,1),(5,18,2),(5,19,3),(5,20,4),
(6,21,1),(6,22,2),(6,23,3),(6,24,4),
(7,25,1),(7,26,2),(7,27,3),(7,28,4),
(8,29,1),(8,30,2),(8,31,3),(8,32,4),
(9,33,1),(9,34,2),(9,35,3),(9,36,4),
(10,37,1),(10,38,2),(10,39,3),(10,40,4),
(11,41,1),(11,42,2),(11,43,3),(11,44,4),
(12,45,1),(12,46,2),(12,47,3),(12,48,4),
(13,49,1),(13,50,2),(14,1,1),(14,2,2),
(15,3,1),(15,4,2),(16,5,1),(16,6,2),
(17,7,1),(17,8,2),(18,9,1),(18,10,2),
(19,11,1),(19,12,2),(20,13,1),(20,14,2),
(21,15,1),(21,16,2),(22,17,1),(22,18,2),
(23,19,1),(23,20,2),(24,21,1),(24,22,2),
(25,23,1),(25,24,2);

-- Abonnement (20 lignes)
INSERT INTO Abonnement (ab_ID, ab_offre, ab_dateDébut, ab_dateFin, u_adresseMail) VALUES
(1,'gratuit','2023-01-01','2023-12-31','alice@example.com'),
(2,'premium','2023-01-15','2023-12-31','bob@example.com'),
(3,'famille','2023-02-01','2023-12-31','carol@example.com'),
(4,'etudiant','2023-02-15','2023-12-31','dave@example.com'),
(5,'premium','2023-01-10','2023-12-31','eve@example.com'),
(6,'gratuit','2023-01-20','2023-12-31','frank@example.com'),
(7,'etudiant','2023-02-05','2023-12-31','grace@example.com'),
(8,'famille','2023-01-18','2023-12-31','heidi@example.com'),
(9,'premium','2023-02-12','2023-12-31','ivan@example.com'),
(10,'gratuit','2023-01-25','2023-12-31','judy@example.com'),
(11,'premium','2023-02-01','2023-12-31','mallory@example.com'),
(12,'etudiant','2023-02-10','2023-12-31','oscar@example.com'),
(13,'famille','2023-01-12','2023-12-31','peggy@example.com'),
(14,'premium','2023-01-20','2023-12-31','trent@example.com'),
(15,'gratuit','2023-02-05','2023-12-31','victor@example.com'),
(16,'premium','2023-01-18','2023-12-31','walter@example.com'),
(17,'etudiant','2023-01-28','2023-12-31','xavier@example.com'),
(18,'famille','2023-01-10','2023-12-31','yvonne@example.com'),
(19,'premium','2023-02-12','2023-12-31','zara@example.com'),
(20,'gratuit','2023-01-15','2023-12-31','quentin@example.com');

-- Suivre (30 lignes)
INSERT INTO suivre (u_adresseMail, ar_ID) VALUES
('alice@example.com',1),('alice@example.com',2),('bob@example.com',3),
('bob@example.com',4),('carol@example.com',5),('carol@example.com',6),
('dave@example.com',7),('dave@example.com',8),('eve@example.com',9),
('eve@example.com',10),('frank@example.com',11),('frank@example.com',12),
('grace@example.com',13),('grace@example.com',14),('heidi@example.com',15),
('heidi@example.com',1),('ivan@example.com',2),('ivan@example.com',3),
('judy@example.com',4),('judy@example.com',5),('mallory@example.com',6),
('mallory@example.com',7),('oscar@example.com',8),('oscar@example.com',9),
('peggy@example.com',10),('peggy@example.com',11),('trent@example.com',12),
('trent@example.com',13),('victor@example.com',14),('victor@example.com',15);

-- Écoute (60 lignes)
INSERT INTO écoute (u_adresseMail, m_ID, historique, dateHeure) VALUES
('alice@example.com',1,'lecture','2023-03-01 10:00:00'),
('alice@example.com',2,'pause','2023-03-01 10:03:30'),
('alice@example.com',7,'lecture','2023-03-01 10:08:00'),
('bob@example.com',3,'skip','2023-03-02 14:10:00'),
('bob@example.com',4,'lecture','2023-03-02 14:13:00'),
('bob@example.com',9,'pause','2023-03-02 14:18:00'),
('carol@example.com',5,'lecture','2023-03-03 09:00:00'),
('carol@example.com',6,'pause','2023-03-03 09:03:00'),
('carol@example.com',11,'lecture','2023-03-03 09:08:00'),
('dave@example.com',8,'lecture','2023-03-04 11:15:00'),
('dave@example.com',10,'skip','2023-03-04 11:20:00'),
('dave@example.com',13,'lecture','2023-03-04 11:25:00'),
('eve@example.com',12,'pause','2023-03-05 12:00:00'),
('eve@example.com',15,'lecture','2023-03-05 12:05:00'),
('eve@example.com',16,'skip','2023-03-05 12:10:00'),
('frank@example.com',17,'lecture','2023-03-06 13:30:00'),
('frank@example.com',18,'pause','2023-03-06 13:35:00'),
('frank@example.com',19,'lecture','2023-03-06 13:40:00'),
('grace@example.com',20,'skip','2023-03-07 14:50:00'),
('grace@example.com',21,'lecture','2023-03-07 14:55:00'),
('grace@example.com',22,'pause','2023-03-07 15:00:00'),
('heidi@example.com',23,'lecture','2023-03-08 16:10:00'),
('heidi@example.com',24,'skip','2023-03-08 16:15:00'),
('heidi@example.com',25,'lecture','2023-03-08 16:20:00'),
('ivan@example.com',26,'pause','2023-03-09 17:30:00'),
('ivan@example.com',27,'lecture','2023-03-09 17:35:00'),
('ivan@example.com',28,'skip','2023-03-09 17:40:00'),
('judy@example.com',29,'lecture','2023-03-10 18:45:00'),
('judy@example.com',30,'pause','2023-03-10 18:50:00'),
('judy@example.com',31,'lecture','2023-03-10 18:55:00'),
('mallory@example.com',32,'skip','2023-03-11 19:05:00'),
('mallory@example.com',33,'lecture','2023-03-11 19:10:00'),
('mallory@example.com',34,'pause','2023-03-11 19:15:00'),
('oscar@example.com',35,'lecture','2023-03-12 20:20:00'),
('oscar@example.com',36,'skip','2023-03-12 20:25:00'),
('oscar@example.com',37,'lecture','2023-03-12 20:30:00'),
('peggy@example.com',38,'pause','2023-03-13 21:40:00'),
('peggy@example.com',39,'lecture','2023-03-13 21:45:00'),
('peggy@example.com',40,'skip','2023-03-13 21:50:00'),
('trent@example.com',41,'lecture','2023-03-14 22:05:00'),
('trent@example.com',42,'pause','2023-03-14 22:10:00'),
('trent@example.com',43,'lecture','2023-03-14 22:15:00'),
('victor@example.com',44,'skip','2023-03-15 23:20:00'),
('victor@example.com',45,'lecture','2023-03-15 23:25:00'),
('victor@example.com',46,'pause','2023-03-15 23:30:00'),
('walter@example.com',47,'lecture','2023-03-16 09:05:00'),
('walter@example.com',48,'skip','2023-03-16 09:10:00'),
('walter@example.com',49,'lecture','2023-03-16 09:15:00'),
('xavier@example.com',50,'pause','2023-03-17 10:20:00'),
('xavier@example.com',1,'lecture','2023-03-17 10:25:00'),
('xavier@example.com',2,'skip','2023-03-17 10:30:00'),
('yvonne@example.com',3,'lecture','2023-03-18 11:35:00'),
('yvonne@example.com',4,'pause','2023-03-18 11:40:00'),
('yvonne@example.com',5,'lecture','2023-03-18 11:45:00'),
('zara@example.com',6,'skip','2023-03-19 12:50:00'),
('zara@example.com',7,'lecture','2023-03-19 12:55:00'),
('zara@example.com',8,'pause','2023-03-19 13:00:00'),
('quentin@example.com',9,'lecture','2023-03-20 14:10:00'),
('quentin@example.com',10,'skip','2023-03-20 14:15:00'),
('quentin@example.com',11,'lecture','2023-03-20 14:20:00');

-- Aime (30 lignes)
INSERT INTO aime (u_adresseMail, m_ID) VALUES
('alice@example.com',1),('alice@example.com',2),('bob@example.com',3),
('bob@example.com',4),('carol@example.com',5),('carol@example.com',6),
('dave@example.com',7),('dave@example.com',8),('eve@example.com',9),
('eve@example.com',10),('frank@example.com',11),('frank@example.com',12),
('grace@example.com',13),('grace@example.com',14),('heidi@example.com',15),
('heidi@example.com',1),('ivan@example.com',2),('ivan@example.com',3),
('judy@example.com',4),('judy@example.com',5),('mallory@example.com',6),
('mallory@example.com',7),('oscar@example.com',8),('oscar@example.com',9),
('peggy@example.com',10),('peggy@example.com',11),('trent@example.com',12),
('trent@example.com',13),('victor@example.com',14),('victor@example.com',15);

-- Suit (20 lignes)
INSERT INTO suit (u_adresseMail_Suivi, u_adresseMail_Suiveur) VALUES
('alice@example.com','bob@example.com'),('carol@example.com','dave@example.com'),
('eve@example.com','frank@example.com'),('grace@example.com','heidi@example.com'),
('ivan@example.com','judy@example.com'),('mallory@example.com','oscar@example.com'),
('peggy@example.com','trent@example.com'),('victor@example.com','walter@example.com'),
('xavier@example.com','yvonne@example.com'),('zara@example.com','quentin@example.com'),
('alice@example.com','carol@example.com'),('bob@example.com','eve@example.com'),
('dave@example.com','grace@example.com'),('heidi@example.com','ivan@example.com'),
('judy@example.com','mallory@example.com'),('oscar@example.com','peggy@example.com'),
('trent@example.com','victor@example.com'),('walter@example.com','xavier@example.com'),
('yvonne@example.com','zara@example.com'),('quentin@example.com','alice@example.com');
<<<<<<< HEAD

-- =====================================================
-- TESTS DES CONTRAINTES (CES REQUETES DOIVENT ECHOUER)
-- =====================================================

-- Test 1 : email invalide (doit échouer car il n'y a pas de @)

INSERT INTO Utilisateur (u_adresseMail, u_identifiant, u_pseudo, u_MDP, c_ID)
VALUES ('email_invalide', 30, 'TestUser', 'Password123', 'c1');


-- Test 2 : pseudo vide (doit échouer)

INSERT INTO Utilisateur (u_adresseMail, u_identifiant, u_pseudo, u_MDP, c_ID)
VALUES ('test@example.com', 31, '', 'Password123', 'c1');


-- Test 3 : durée de morceau négative (doit échouer)

INSERT INTO Morceaux (m_ID, m_titre, m_durée, al_ID)
VALUES (200, 'TestMorceau', -20, 1);


-- Test 4 : durée trop grande (doit échouer)

INSERT INTO Morceaux (m_ID, m_titre, m_durée, al_ID)
VALUES (201, 'TestMorceau2', 2000, 1);


-- Test 5 : statut de playlist invalide (doit échouer)

INSERT INTO Playlist (p_ID, p_titre, p_statut, pl_dateCréation, u_adresseMail)
VALUES (200, 'PlaylistTest', 'ouverte', '2023-01-01', 'alice@example.com');


-- Test 6 : offre abonnement invalide (doit échouer)

INSERT INTO Abonnement (ab_ID, ab_offre, ab_dateDébut, ab_dateFin, u_adresseMail)
VALUES (200, 'gold', '2023-01-01', '2023-12-31', 'alice@example.com');


-- Test 7 : position négative dans une playlist (doit échouer)

INSERT INTO ElementPlaylist (p_ID, m_ID, position_)
VALUES (1, 1, -5);


-- Test 8 : date de fin abonnement avant date début (doit échouer)

INSERT INTO Abonnement (ab_ID, ab_offre, ab_dateDébut, ab_dateFin, u_adresseMail)
VALUES (201, 'premium', '2024-01-01', '2023-01-01', 'alice@example.com');
=======
>>>>>>> 2747c690e60e057a57df15febf98d243911854b3
