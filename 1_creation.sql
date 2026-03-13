CREATE TABLE Artiste(
   ar_ID INT,
   ar_nom VARCHAR(100),
   ar_paysOrigine VARCHAR(50),
   ar_dateCréation DATE,
   PRIMARY KEY(ar_ID)
);

CREATE TABLE Album(
   al_ID INT,
   al_titre VARCHAR(150),
   al_dateSortie DATE,
   ar_ID INT NOT NULL,
   PRIMARY KEY(al_ID),
   FOREIGN KEY(ar_ID) REFERENCES Artiste(ar_ID)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

CREATE TABLE Genre_musical(
   gm_ID INT,
   gm_libellé VARCHAR(50),
   PRIMARY KEY(gm_ID)
);

CREATE TABLE Compte(
   c_ID VARCHAR(50),
   c_statut VARCHAR(20),
   c_dateCréation DATE,
   PRIMARY KEY(c_ID)
);

CREATE TABLE Utilisateur(
   u_adresseMail VARCHAR(150),
   u_identifiant INT,
   u_pseudo VARCHAR(50),
   u_MDP VARCHAR(255),
   c_ID VARCHAR(50) NOT NULL,
   PRIMARY KEY(u_adresseMail),
   UNIQUE(c_ID),
   FOREIGN KEY(c_ID) REFERENCES Compte(c_ID)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

CREATE TABLE Playlist(
   p_ID INT,
   p_titre VARCHAR(100),
   p_statut VARCHAR(50),
   pl_dateCréation DATE,
   u_adresseMail VARCHAR(150) NOT NULL,
   PRIMARY KEY(p_ID),
   UNIQUE(p_titre, u_adresseMail),
   FOREIGN KEY(u_adresseMail) REFERENCES Utilisateur(u_adresseMail)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

CREATE TABLE Abonnement(
   ab_ID INT,
   ab_offre VARCHAR(30),
   ab_dateDébut DATE,
   ab_dateFin DATE,
   u_adresseMail VARCHAR(150) NOT NULL,
   PRIMARY KEY(ab_ID),
   FOREIGN KEY(u_adresseMail) REFERENCES Utilisateur(u_adresseMail)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

CREATE TABLE Morceaux(
   m_ID INT,
   m_titre VARCHAR(150),
   m_durée INT,
   al_ID INT NOT NULL,
   PRIMARY KEY(m_ID),
   FOREIGN KEY(al_ID) REFERENCES Album(al_ID)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

CREATE TABLE ElementPlaylist(
   p_ID INT,
   m_ID INT,
   position_ INT,
   PRIMARY KEY(p_ID, m_ID),
   FOREIGN KEY(p_ID) REFERENCES Playlist(p_ID)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
   FOREIGN KEY(m_ID) REFERENCES Morceaux(m_ID)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

CREATE TABLE appartient(
   u_adresseMail VARCHAR(150),
   p_ID INT,
   collaborateurs BOOLEAN,
   PRIMARY KEY(u_adresseMail, p_ID),
   FOREIGN KEY(u_adresseMail) REFERENCES Utilisateur(u_adresseMail)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
   FOREIGN KEY(p_ID) REFERENCES Playlist(p_ID)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

CREATE TABLE suivre(
   u_adresseMail VARCHAR(150),
   ar_ID INT,
   PRIMARY KEY(u_adresseMail, ar_ID),
   FOREIGN KEY(u_adresseMail) REFERENCES Utilisateur(u_adresseMail)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
   FOREIGN KEY(ar_ID) REFERENCES Artiste(ar_ID)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

CREATE TABLE interprète(
   m_ID INT,
   ar_ID INT,
   PRIMARY KEY(m_ID, ar_ID),
   FOREIGN KEY(m_ID) REFERENCES Morceaux(m_ID)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
   FOREIGN KEY(ar_ID) REFERENCES Artiste(ar_ID)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

CREATE TABLE écoute(
   u_adresseMail VARCHAR(150),
   m_ID INT,
   historique VARCHAR(50),
   dateHeure DATETIME,
   PRIMARY KEY(u_adresseMail, m_ID, dateHeure),
   FOREIGN KEY(u_adresseMail) REFERENCES Utilisateur(u_adresseMail)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
   FOREIGN KEY(m_ID) REFERENCES Morceaux(m_ID)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

CREATE TABLE associe(
   m_ID INT,
   gm_ID INT,
   PRIMARY KEY(m_ID, gm_ID),
   FOREIGN KEY(m_ID) REFERENCES Morceaux(m_ID)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
   FOREIGN KEY(gm_ID) REFERENCES Genre_musical(gm_ID)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

CREATE TABLE aime(
   u_adresseMail VARCHAR(150),
   m_ID INT,
   PRIMARY KEY(u_adresseMail, m_ID),
   FOREIGN KEY(u_adresseMail) REFERENCES Utilisateur(u_adresseMail)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
   FOREIGN KEY(m_ID) REFERENCES Morceaux(m_ID)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

CREATE TABLE suit(
   u_adresseMail_Suivi VARCHAR(150),
   u_adresseMail_Suiveur VARCHAR(150),
   PRIMARY KEY(u_adresseMail_Suivi, u_adresseMail_Suiveur),
   FOREIGN KEY(u_adresseMail_Suivi) REFERENCES Utilisateur(u_adresseMail)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
   FOREIGN KEY(u_adresseMail_Suiveur) REFERENCES Utilisateur(u_adresseMail)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);