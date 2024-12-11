SELECT pseudo, email, date_inscription FROM MEMBRE;

SELECT titre, genre, studio_developpement FROM GAME;

SELECT * FROM TOURNOI WHERE nom_tournoi = 'Nom_du_tournoi';

SELECT MEMBRE.pseudo, GAME.titre
FROM EMPRUNTER
JOIN MEMBRE ON EMPRUNTER.id_membre = MEMBRE.id
JOIN GAME ON EMPRUNTER.id_game = GAME.id
WHERE EMPRUNTER.date_retour_reelle IS NULL;

SELECT MEMBRE.pseudo, GAME.titre, GAME.studio_developpement
FROM EMPRUNTER
JOIN MEMBRE ON EMPRUNTER.id_membre = MEMBRE.id
JOIN GAME ON EMPRUNTER.id_game = GAME.id;

SELECT MEMBRE.pseudo, TOURNOI.nom_tournoi, PARTICIPER.rang_final
FROM PARTICIPER
JOIN MEMBRE ON PARTICIPER.id_membre = MEMBRE.id
JOIN TOURNOI ON PARTICIPER.id_tournoi = TOURNOI.id;

SELECT MEMBRE.pseudo, ABONNEMENT.type_abonnement
FROM AVOIR
JOIN MEMBRE ON AVOIR.id_membre = MEMBRE.id
JOIN ABONNEMENT ON AVOIR.id_abonnement = ABONNEMENT.id
WHERE ABONNEMENT.type_abonnement = 'Annuel';

SELECT GAME.titre, GAME.studio_developpement
FROM EMPRUNTER
JOIN GAME ON EMPRUNTER.id_game = GAME.id
JOIN MEMBRE ON EMPRUNTER.id_membre = MEMBRE.id
WHERE MEMBRE.pseudo = 'Pseudo_du_membre';

SELECT MEMBRE.pseudo, GAME.titre, GAME.studio_developpement
FROM EMPRUNTER
JOIN MEMBRE ON EMPRUNTER.id_membre = MEMBRE.id
JOIN GAME ON EMPRUNTER.id_game = GAME.id;

SELECT MEMBRE.pseudo, ABONNEMENT.type_abonnement
FROM AVOIR
JOIN MEMBRE ON AVOIR.id_membre = MEMBRE.id
JOIN ABONNEMENT ON AVOIR.id_abonnement = ABONNEMENT.id;:

SELECT genre, COUNT(*) AS total_games
FROM GAME
GROUP BY genre;

SELECT TOURNOI.nom_tournoi, COUNT(*) AS total_participants
FROM PARTICIPER
JOIN TOURNOI ON PARTICIPER.id_tournoi = TOURNOI.id
GROUP BY TOURNOI.nom_tournoi
ORDER BY total_participants DESC
LIMIT 1;

SELECT MEMBRE.pseudo, COUNT(*) AS total_emprunts
FROM EMPRUNTER
JOIN MEMBRE ON EMPRUNTER.id_membre = MEMBRE.id
GROUP BY MEMBRE.pseudo;

SELECT titre
FROM GAME
WHERE annee_sortie > 2015
ORDER BY titre;

SELECT MEMBRE.pseudo
FROM EMPRUNTER
JOIN MEMBRE ON EMPRUNTER.id_membre = MEMBRE.id
WHERE EMPRUNTER.date_retour_reelle IS NULL;
Tournois entre deux dates :

SELECT *
FROM TOURNOI
WHERE date_tournoi BETWEEN '2023-01-01' AND '2023-12-31';

SELECT MEMBRE.pseudo, COUNT(*) AS emprunts_actifs
FROM EMPRUNTER
JOIN MEMBRE ON EMPRUNTER.id_membre = MEMBRE.id
WHERE EMPRUNTER.date_retour_reelle IS NULL
GROUP BY MEMBRE.pseudo
HAVING emprunts_actifs > 1;
