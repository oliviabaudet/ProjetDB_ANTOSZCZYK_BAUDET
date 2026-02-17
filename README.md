# ProjetDB_ANTOSZCZYK_BAUDET

## Etape 1 : Analyser les besoins

Nous avons choisi le domaine des plateformes d'écoute musicale en ligne telles que Spotify ou encore Deezer.  
Voici ce que donne l'IAG comme informations sur les règles métier de votre domaine, et les données à stocker:  
### Règles de gestion (règles métier)
- Un utilisateur doit posséder un compte pour accéder au service.
- Un utilisateur est identifié par une adresse e-mail unique.
- Un utilisateur peut créer une ou plusieurs playlists.
- Une playlist appartient à un seul utilisateur créateur.
- Une playlist peut être collaborative.
- Une playlist collaborative peut être partagée avec plusieurs autres utilisateurs.
- Un utilisateur peut ajouter des morceaux dans ses playlists.
- L’ordre des morceaux dans une playlist est conservé.
- Un utilisateur peut suivre un ou plusieurs artistes.
- Un artiste peut être suivi par plusieurs utilisateurs.
- Un artiste peut produire plusieurs albums.
- Un album est publié par un seul artiste principal.
- Un album contient plusieurs morceaux.
- Un morceau appartient à un seul album.
- Un morceau est interprété par au moins un artiste.
- Un morceau est associé à un ou plusieurs genres musicaux.
- Un utilisateur peut écouter plusieurs morceaux.
- Chaque écoute d’un morceau par un utilisateur est enregistrée dans l’historique.
- Un utilisateur peut posséder un abonnement.
- Un abonnement correspond à un type d’offre (gratuit, premium, famille, étudiant, etc.).
- Un utilisateur ne peut avoir qu’un seul abonnement actif à la fois.
- Un abonnement possède une date de début et éventuellement une date de fin.
- Un utilisateur peut suivre d’autres utilisateurs.
- Un utilisateur peut être suivi par plusieurs utilisateurs.
- Un utilisateur peut aimer un ou plusieurs morceaux.
- Un morceau peut être aimé par plusieurs utilisateurs.
- Une playlist peut être rendue publique ou privée.
- Une playlist possède un titre unique pour un même utilisateur.
- Un utilisateur peut retirer un morceau de sa playlist.
- Les informations des artistes, albums et morceaux sont gérées par la plateforme.

### Dictionnaire de données brutes

(30 données – sans hypothèse de modélisation)  
- Signification de la donnée	Type	Taille
- Identifiant de l’utilisateur	entier	10
- Adresse e-mail de l’utilisateur	chaîne	150
- Mot de passe de l’utilisateur (haché)	chaîne	255
- Pseudonyme de l’utilisateur	chaîne	50
- Date de création du compte utilisateur	date	10
- Statut du compte utilisateur	chaîne	20
- Identifiant de l’artiste	entier	10
- Nom de l’artiste	chaîne	100
- Pays d’origine de l’artiste	chaîne	50
- Date de création de l’artiste	date	10
- Identifiant de l’album	entier	10
- Titre de l’album	chaîne	150
- Date de sortie de l’album	date	10
- Identifiant du morceau	entier	10
- Titre du morceau	chaîne	150
- Durée du morceau en secondes	entier	6
- Identifiant du genre musical	entier	10
- Libellé du genre musical	chaîne	50
- Identifiant de la playlist	entier	10
- Titre de la playlist	chaîne	100
- Date de création de la playlist	date	10
- Indicateur de playlist collaborative	booléen	1
- Indicateur de visibilité publique de la playlist	booléen	1
- Position du morceau dans la playlist	entier	5
- Identifiant de l’abonnement	entier	10
- Type d’abonnement	chaîne	30
- Date de début de l’abonnement	date	10
- Date de fin de l’abonnement	date	10
- Date et heure d’écoute d’un morceau	date-heure	19
- Indicateur d’un morceau aimé par un utilisateur	booléen	1

