-- Vérifie que l'adresse e-mail d'un utilisateur contient le symbole @
ALTER TABLE Utilisateur
ADD CONSTRAINT email_format
CHECK (u_adresseMail LIKE '%@%');

-- Empêche qu'un pseudo soit vide
ALTER TABLE Utilisateur
ADD CONSTRAINT pseudo_non_vide
CHECK (u_pseudo <> '');

-- Vérifie que le mot de passe contient au moins 8 caractères
ALTER TABLE Utilisateur
ADD CONSTRAINT mdp_longueur
CHECK (CHAR_LENGTH(u_MDP) >= 8);


-- Vérifie que le statut d'un compte fait partie des valeurs autorisées
ALTER TABLE Compte
ADD CONSTRAINT statut_valide
CHECK (c_statut IN ('actif','suspendu','supprime'));


-- Empêche qu'une playlist ait un titre vide
ALTER TABLE Playlist
ADD CONSTRAINT titre_playlist_non_vide
CHECK (p_titre <> '');

-- Vérifie que le statut d'une playlist est valide
ALTER TABLE Playlist
ADD CONSTRAINT statut_playlist_valide
CHECK (p_statut IN ('publique','privee','collaborative'));


-- Vérifie que la durée d'un morceau est strictement positive
ALTER TABLE Morceaux
ADD CONSTRAINT duree_positive
CHECK (m_durée > 0);

-- Vérifie que la durée d'un morceau reste réaliste (maximum 20 minutes)
ALTER TABLE Morceaux
ADD CONSTRAINT duree_realiste
CHECK (m_durée <= 1200);


-- Empêche qu'un album ait un titre vide
ALTER TABLE Album
ADD CONSTRAINT titre_album_non_vide
CHECK (al_titre <> '');


-- Empêche qu'un artiste ait un nom vide
ALTER TABLE Artiste
ADD CONSTRAINT nom_artiste_non_vide
CHECK (ar_nom <> '');


-- Empêche qu'un genre musical ait un libellé vide
ALTER TABLE Genre_musical
ADD CONSTRAINT genre_non_vide
CHECK (gm_libellé <> '');


-- Vérifie que la date de fin d'un abonnement est après ou égale à la date de début
ALTER TABLE Abonnement
ADD CONSTRAINT date_abonnement_valide
CHECK (ab_dateFin IS NULL OR ab_dateFin >= ab_dateDébut);

-- Vérifie que le type d'abonnement correspond aux offres disponibles
ALTER TABLE Abonnement
ADD CONSTRAINT offre_valide
CHECK (ab_offre IN ('gratuit','premium','famille','etudiant'));


-- Vérifie que la position d'un morceau dans une playlist est positive
ALTER TABLE ElementPlaylist
ADD CONSTRAINT position_positive
CHECK (position_ > 0);


-- Vérifie que le type d'événement enregistré dans l'historique d'écoute est valide
ALTER TABLE écoute
ADD CONSTRAINT historique_valide
CHECK (historique IN ('lecture','pause','skip'));