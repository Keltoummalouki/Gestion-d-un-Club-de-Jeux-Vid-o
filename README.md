# 🎮 Club de Jeux Vidéo - Gestion des Activités

Le projet consiste à modéliser et implémenter un système de gestion pour un club de jeux vidéo. Ce club souhaite numériser la gestion de ses activités, notamment la gestion des membres, des jeux vidéo, des emprunts, et des tournois organisés. Le système doit permettre de suivre les emprunts de jeux, gérer les tournois, et stocker les informations des membres.

## 🚀 Objectifs du Projet

L'objectif de ce projet est de concevoir une base de données relationnelle qui permette de gérer les activités du club de jeux vidéo, incluant les membres, les jeux, les emprunts et les tournois. Le projet se découpe en plusieurs étapes :

1. **Modélisation du Système** : Identification des entités et des relations entre elles, création d'un diagramme ERD.
2. **Création de la Base de Données** : Implémentation de la base de données avec les tables et les contraintes nécessaires.
3. **Requêtes SQL** : Rédaction des requêtes SQL pour manipuler et extraire des informations spécifiques.

## 📅 Planification

### Jour 1 : Planification et Modélisation
- **Tâches** :
  - Créer un tableau de planification des tâches (Trello/Jira).
  - Créer un diagramme ERD détaillant les entités, les attributs, les relations et les cardinalités.
  - Identifier les clés primaires, clés étrangères et les contraintes d'intégrité.

### Jour 2 : Implémentation
- **Tâches** :
  - Fournir un fichier SQL (`db.sql`) contenant :
    - La création des tables avec les bonnes contraintes.
    - Un jeu de données d'au moins 20 enregistrements répartis sur toutes les tables.

### Jour 3 : Manipulation et Requêtes
- **Tâches** :
  - Fournir un fichier SQL (`query.sql`) contenant des requêtes SQL pour manipuler et extraire des données spécifiques.
  - Tester et valider les requêtes avec des données d'exemple.

## 🛠️ Technologies et Outils

- **SGBD** : MySQL ou PostgreSQL (selon préférence).
- **SQL** : Langage pour la création des tables, la gestion des contraintes, et l'écriture des requêtes.
- **Outils de Modélisation** : Diagramme ERD réalisé avec des outils comme dbdiagram.io ou Lucidchart.

## 📚 Entités du Système

Le système se compose des entités suivantes :

- **Membres** : Contient les informations des membres du club, y compris leur pseudo, e-mail, et la date d'inscription.
- **Jeux** : Contient les informations sur les jeux vidéo (titre, studio de développement, genre, date de sortie, mode de jeu).
- **Emprunts** : Gère les emprunts de jeux, avec la date d'emprunt et la date de retour prévue.
- **Tournois** : Contient les informations sur les tournois (nom, date, récompenses) et les membres qui y participent.

## ⚙️ Modélisation de la Base de Données

### Diagramme ERD

Le diagramme ERD montre les relations entre les entités suivantes :
- **Membres** : Clé primaire `id_membre`.
- **Jeux** : Clé primaire `id_jeu`.
- **Emprunts** : Clé primaire `id_emprunt`, avec une clé étrangère vers `Membres` et `Jeux`.
- **Tournois** : Clé primaire `id_tournoi`, avec une relation plusieurs-à-plusieurs avec `Membres`.
