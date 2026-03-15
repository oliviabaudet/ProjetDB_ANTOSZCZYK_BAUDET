-- AUTRE SCENARIO

-- 1 : Nombre de morceaux dans chaque playlist
SELECT p_ID, COUNT(m_ID) AS nombre_morceaux
FROM ElementPlaylist
GROUP BY p_ID
ORDER BY nombre_morceaux DESC;

-- 2 : Playlists contenant plus de 3 morceaux
SELECT p_ID, COUNT(m_ID) AS nombre_morceaux
FROM ElementPlaylist
GROUP BY p_ID
HAVING COUNT(m_ID) > 3;

-- 3 : Morceaux apparaissant dans plusieurs playlists
SELECT m_ID, COUNT(p_ID) AS nombre_playlists
FROM ElementPlaylist
GROUP BY m_ID
HAVING COUNT(p_ID) > 1;

-- 4 : Utilisateurs ayant créé le plus de playlists
SELECT u_adresseMail, COUNT(p_ID) AS nombre_playlists
FROM Playlist
GROUP BY u_adresseMail
ORDER BY nombre_playlists DESC;

-- 5 : Titres des playlists avec le pseudo de leur créateur
SELECT Playlist.p_titre, Utilisateur.u_pseudo
FROM Playlist
JOIN Utilisateur
ON Playlist.u_adresseMail = Utilisateur.u_adresseMail;
