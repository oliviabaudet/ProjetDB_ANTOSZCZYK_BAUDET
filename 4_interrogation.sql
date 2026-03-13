-- SCENARIO D'UTILISATION

-- 1 : Liste de tous les morceaux avec leur durée triée par durée
SELECT m_titre, m_durée
FROM Morceaux
ORDER BY m_durée;

-- 2 : Liste des utilisateurs ayant un compte actif
SELECT u_pseudo
FROM Utilisateur
JOIN Compte ON Utilisateur.c_ID = Compte.c_ID
WHERE Compte.c_statut = 'actif';

-- 3 : Liste des playlists publiques
SELECT p_titre
FROM Playlist
WHERE p_statut = 'publique';

-- 4 : Utilisateurs ayant un email contenant "gmail"
SELECT u_adresseMail
FROM Utilisateur
WHERE u_adresseMail LIKE '%gmail%';

-- 5 : Morceaux dont la durée est entre 120 et 300 secondes
SELECT m_titre, m_durée
FROM Morceaux
WHERE m_durée BETWEEN 120 AND 300;

-- 6 : Nombre total de morceaux dans la base
SELECT COUNT(*) AS nombre_morceaux
FROM Morceaux;

-- 7 : Durée moyenne des morceaux
SELECT AVG(m_durée) AS duree_moyenne
FROM Morceaux;

-- 8 : Nombre de playlists par utilisateur
SELECT u_adresseMail, COUNT(p_ID) AS nombre_playlists
FROM Playlist
GROUP BY u_adresseMail;

-- 9 : Nombre de morceaux par album
SELECT al_ID, COUNT(m_ID) AS nb_morceaux
FROM Morceaux
GROUP BY al_ID;

-- 10 : Utilisateurs ayant créé plus d’une playlist
SELECT u_adresseMail, COUNT(p_ID) AS nb_playlists
FROM Playlist
GROUP BY u_adresseMail
HAVING COUNT(p_ID) > 1;

-- 11 : Liste des albums avec leur artiste
SELECT Album.al_titre, Artiste.ar_nom
FROM Album
INNER JOIN Artiste ON Album.ar_ID = Artiste.ar_ID;

-- 12 : Liste des morceaux avec leur album
SELECT Morceaux.m_titre, Album.al_titre
FROM Morceaux
INNER JOIN Album ON Morceaux.al_ID = Album.al_ID;

-- 13 : Morceaux présents dans les playlists
SELECT Playlist.p_titre, Morceaux.m_titre
FROM ElementPlaylist
JOIN Playlist ON ElementPlaylist.p_ID = Playlist.p_ID
JOIN Morceaux ON ElementPlaylist.m_ID = Morceaux.m_ID;

-- 14 : Artistes suivis par les utilisateurs
SELECT Utilisateur.u_pseudo, Artiste.ar_nom
FROM suivre
JOIN Utilisateur ON suivre.u_adresseMail = Utilisateur.u_adresseMail
JOIN Artiste ON suivre.ar_ID = Artiste.ar_ID;

-- 15 : Morceaux aimés par les utilisateurs
SELECT Utilisateur.u_pseudo, Morceaux.m_titre
FROM aime
JOIN Utilisateur ON aime.u_adresseMail = Utilisateur.u_adresseMail
JOIN Morceaux ON aime.m_ID = Morceaux.m_ID;

-- 16 : Morceaux appartenant à un album spécifique
SELECT m_titre
FROM Morceaux
WHERE al_ID IN (
    SELECT al_ID
    FROM Album
    WHERE al_titre = 'AlbumTest'
);

-- 17 : Utilisateurs qui ont créé une playlist
SELECT u_pseudo
FROM Utilisateur
WHERE u_adresseMail IN (
    SELECT u_adresseMail
    FROM Playlist
);

-- 18 : Morceaux qui apparaissent dans au moins une playlist
SELECT m_titre
FROM Morceaux
WHERE EXISTS (
    SELECT *
    FROM ElementPlaylist
    WHERE ElementPlaylist.m_ID = Morceaux.m_ID
);

-- 19 : Utilisateurs qui ne suivent aucun artiste
SELECT u_pseudo
FROM Utilisateur
WHERE NOT EXISTS (
    SELECT *
    FROM suivre
    WHERE suivre.u_adresseMail = Utilisateur.u_adresseMail
);

-- 20 : Morceaux plus longs que la durée moyenne
SELECT m_titre, m_durée
FROM Morceaux
WHERE m_durée > (
    SELECT AVG(m_durée)
    FROM Morceaux
);