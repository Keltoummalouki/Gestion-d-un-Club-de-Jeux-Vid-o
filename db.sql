CREATE TABLE GAME (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titre VARCHAR(50) UNIQUE,
    studio_developpement VARCHAR(50)  ,
    annee_sortie YEAR ,
    genre VARCHAR(50),
    multijoueur BOOLEAN  
);

CREATE TABLE MEMBRE (
    id INT PRIMARY KEY AUTO_INCREMENT,
    pseudo VARCHAR(50) UNIQUE,
    email VARCHAR(100),
    date_inscription DATE
);

CREATE TABLE EMPRUNTER (
    id INT PRIMARY KEY AUTO_INCREMENT,
    date_emprunt DATE,
    date_retour_prevue DATE,
    date_retour_reelle DATE,
    id_membre INT,
    id_game INT,
    FOREIGN KEY (id_membre) REFERENCES MEMBRE(id),
    FOREIGN KEY (id_game) REFERENCES GAME(id)
);

CREATE TABLE ABONNEMENT (
    id INT PRIMARY KEY AUTO_INCREMENT,
    type_abonnement ENUM('mesuel','annuel'),
    date_debut DATE,
    date_fin DATE,
    id_memeber INT,
    FOREIGN KEY (id_membre) REFERENCES MEMBRE(id)
);

CREATE TABLE TOURNOI (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom_tournoi VARCHAR(100),
    date_tournoi DATE,
    recompenses VARCHAR(255),
    id_game INT,
    FOREIGN KEY (id_game) REFERENCES GAME(id)
);


CREATE TABLE PARTICIPER (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_membre INT,
    id_tournoi INT,
    score INT,
    rang_final INT,
    FOREIGN KEY (id_membre) REFERENCES MEMBRE(id),
    FOREIGN KEY (id_tournoi) REFERENCES TOURNOI(id)
);

INSERT INTO GAME (titre, studio_developpement, annee_sortie, genre, multijoueur) 
VALUES 
('The Legend of Zelda', 'Nintendo', 1986, 'Aventure', TRUE),
('Minecraft', 'Mojang Studios', 2011, 'Sandbox', TRUE),
('Fortnite', 'Epic Games', 2017, 'Battle Royale', TRUE),
('The Witcher 3', 'CD Projekt Red', 2015, 'RPG', FALSE),
('Overwatch', 'Blizzard Entertainment', 2016, 'FPS', TRUE),
('God of War', 'Santa Monica Studio', 2005, 'Action', FALSE),
('Call of Duty', 'Infinity Ward', 2003, 'FPS', TRUE),
('Red Dead Redemption 2', 'Rockstar Games', 2018, 'Action', FALSE),
('League of Legends', 'Riot Games', 2009, 'MOBA', TRUE),
('Apex Legends', 'Respawn Entertainment', 2019, 'Battle Royale', TRUE);

INSERT INTO MEMBRE (pseudo, email, date_inscription)
VALUES 
('player1', 'player1@example.com', '2023-01-01'),
('player2', 'player2@example.com', '2023-02-15'),
('player3', 'player3@example.com', '2023-03-20'),
('player4', 'player4@example.com', '2023-04-10'),
('player5', 'player5@example.com', '2023-05-25'),
('player6', 'player6@example.com', '2023-06-30'),
('player7', 'player7@example.com', '2023-07-05'),
('player8', 'player8@example.com', '2023-08-15'),
('player9', 'player9@example.com', '2023-09-12'),
('player10', 'player10@example.com', '2023-10-20');

INSERT INTO EMPRUNTER (date_emprunt, date_retour_prevue, date_retour_reelle, id_membre, id_game)
VALUES 
('2023-11-01', '2023-11-15', '2023-11-12', 1, 1),
('2023-11-02', '2023-11-16', '2023-11-14', 2, 2),
('2023-11-03', '2023-11-17', '2023-11-18', 3, 3),
('2023-11-04', '2023-11-18', '2023-11-17', 4, 4),
('2023-11-05', '2023-11-19', '2023-11-18', 5, 5),
('2023-11-06', '2023-11-20', '2023-11-19', 6, 6),
('2023-11-07', '2023-11-21', '2023-11-22', 7, 7),
('2023-11-08', '2023-11-22', '2023-11-21', 8, 8),
('2023-11-09', '2023-11-23', '2023-11-22', 9, 9),
('2023-11-10', '2023-11-24', '2023-11-23', 10, 10);

INSERT INTO ABONNEMENT (type_abonnement, date_debut, date_fin, id_membre)
VALUES 
('mensuel', '2023-11-01', '2023-12-01', 1),
('annuel', '2023-02-01', '2024-02-01', 2),
('mensuel', '2023-03-01', '2023-04-01', 3),
('annuel', '2023-04-01', '2024-04-01', 4),
('mensuel', '2023-05-01', '2023-06-01', 5),
('annuel', '2023-06-01', '2024-06-01', 6),
('mensuel', '2023-07-01', '2023-08-01', 7),
('annuel', '2023-08-01', '2024-08-01', 8),
('mensuel', '2023-09-01', '2023-10-01', 9),
('annuel', '2023-10-01', '2024-10-01', 10);

INSERT INTO TOURNOI (nom_tournoi, date_tournoi, recompenses, id_membre, id_game)
VALUES 
('Tournoi Zelda', '2023-11-20', '1ère place: 500$', 1, 1),
('Tournoi Minecraft', '2023-11-22', '1ère place: 1000$', 2, 2),
('Tournoi Fortnite', '2023-12-01', '1ère place: 1500$', 3, 3),
('Tournoi Witcher 3', '2023-12-05', '1ère place: 2000$', 4, 4),
('Tournoi Overwatch', '2023-12-10', '1ère place: 2500$', 5, 5),
('Tournoi God of War', '2023-12-12', '1ère place: 3000$', 6, 6),
('Tournoi Call of Duty', '2023-12-15', '1ère place: 3500$', 7, 7),
('Tournoi RDR2', '2023-12-18', '1ère place: 4000$', 8, 8),
('Tournoi League of Legends', '2023-12-20', '1ère place: 4500$', 9, 9),
('Tournoi Apex Legends', '2023-12-22', '1ère place: 5000$', 10, 10);

INSERT INTO PARTICIPER (id_membre, id_tournoi, score, rang_final)
VALUES 
(1, 1, 200, 1),
(2, 2, 150, 2),
(3, 3, 300, 1),
(4, 4, 100, 3),
(5, 5, 500, 1),
(6, 6, 400, 2),
(7, 7, 250, 3),
(8, 8, 450, 2),
(9, 9, 350, 3),
(10, 10, 550, 1);

