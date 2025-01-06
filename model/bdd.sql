/* se connecter a my sql*/
sodu mysql

/* comment quitter my sql*/
exit

/* commandes de bases */
SHOW DATABASES;  /* Pour avoir la liste de bdd sur le serveurs*/
CREATE DATABASE;
USE (nom de la database);

/* gestion des comptes*/
CREATE USER 'livre_e2c_admin'@'localhost' IDENTIFIED BY "book2";
GRANT ALL PRIVILEGES ON livre_e2c.* TO 'livre_e2c_admin'@'localhost';

/* se connecter */
mysql -h localhost -u livre_e2c_admin -p

/* créer une table */
CREATE TABLE IF NOT EXISTS Users (
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    pseudo VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    telephone CHAR(10),
    site VARCHAR(30)
)ENGINE=InnoDB;

/* voir table et detail des tables*/
SHOW TABLES;
DESCRIBE Users;

/* Ajouter une colonne */
ALTER TABLE Users
ADD password VARCHAR (30) NOT NULL;

/* ajouter des données */
INSERT INTO Users(prenom, nom, pseudo, password, email, telephone, site)
VALUES ('Shawn', 'Dernon', 'Crabico', 'potato5', 'dernoncourshawna@mail.com', '0641260864', 'Lille');
VALUES ('Akih', 'Namaari', 'Starkih', 'M404', 'akihnamaari@mail.com', 'Armentiere');
VALUES ('Rory', 'Plomer', 'Uiko', 'kai2021', 'r.plomer@mail.com', 'Roubaix');
VALUES ('Pablo', 'Rasswell', 'Pablito', 'menmybrother', 'pablito@mail.com', 'Saint Omer');
VALUES ('Cookie', 'Poopie', 'Coopie', 'menmybrother', 'dacookie@mail.com', 'Saint Omer');

VALUES ('Océane', 'Lannoo', 'Coincoin44', 'hugooreo', 'oceane.lannoo59@gmail.com', 'Lille');

/* lire des données */
SELECT * FROM Users;
SELECT prenom, nom, email FROM Users;
SELECT prenom, nom, email FROM Users ORDER BY prenom ASC;
SELECT prenom, nom, email FROM Users ORDER BY mail DESC;
SELECT pseudo, password FROM Users WHERE pseudo='Starkih';
SELECT pseudo, password FROM Users WHERE pseudo='Pompiette';


/* gestion des sites */
CREATE TABLE IF NOT EXISTS Sites(
    id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(20) NOT NULL
)ENGINE=InnoDB;

INSERT INTO Sites (name)
VALUES ('Lille'), ('Roubaix'), ('Armentières'), ('Saint Omer');

SELECT * FROM Sites;

/* premiere relation */
ALTER TABLE Users
ADD site_id TINYINT UNSIGNED NOT NULL;

UPDATE Users SET site_id=1;
SELECT * FROM Users

ALTER TABLE Users 
ADD CONSTRAINT fk_sites
FOREIGN KEY (sites_id)
REFERENCES Sites(id)
UPDATE Users SET site_id = 1 WHERE site="Roubaix";
UPDATE Users SET site_id = 2 WHERE site="Lille";
UPDATE Users SET site_id = 3 WHERE site="Armentiere";
UPDATE Users SET site_id = 4 WHERE site="Saint Omer";

UPDATE Users SET site_id = 5;

ALTER TABLE Users
DROP site;


/* jointure */
SELECT Users.pseudo, Users.email, Sites.name FROM Users INNER JOIN Sites On Users.site_id = Sites.id;

/* les livres*/

CREATE TABLE IF NOT EXISTS Genres (
id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR (255) NOT NULL UNIQUE
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS Livres (
    id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR (255) NOT NULL,
    auteur VARCHAR (255) NOT NULL DEFAULT "Inconnu",
    genre_id TINYINT UNSIGNED NOT NULL DEFAULT 1,
    synopsis TEXT,
    date_of_edition CHAR (4) NOT NULL DEFAULT 'NOCO',
    pages SMALLINT,
    site_id TINYINT UNSIGNED NOT NULL,
    CONSTRAINT fk_genre
    FOREIGN KEY (genre_id)
    REFERENCES Genres(id),
    CONSTRAINT fk_sites_book
    FOREIGN KEY (site_id)
    REFERENCES Sites(id)

)ENGINE=InnoDB;

ALTER TABLE Livres 
ADD COLUMN user_id SMALLINT UNSIGNED;

ALTER TABLE Livres
ADD  CONSTRAINT fk_livres_user
FOREIGN KEY (user_id)
REFERENCES Users (id);



/* Les jointures */

SELECT titre, Users_id FROM Livres;

SELECT Livres.titre, Users.pseudo FROM Livres
INNER JOIN Users ON Livres.user_id = Users.id;

SELECT Livres.titre, Users.pseudo FROM Livres
LEFT JOIN Users ON Livres.user_id = Users.id;

SELECT Livres.titre, Users.pseudo FROM Livres
RIGHT JOIN Users ON Livres.user_id = Users.id;



SELECT Livres.titre, Genres.name, Users.pseudo FROM Livres
INNER JOIN Users ON Livres.user_id = Users.id
INNER JOIN Genres ON Livres.genre_id = Genres.id;


CREATE VIEW livres_vw AS (SELECT Livres.titre, Livres.auteur, Genres.name AS Genre, Livres.date_of_edition AS Date, Livres.pages, Sites.name AS Site, Users.pseudo, Livres.id, Livres.genre_id, Livres.site_id, user_id FROM Livres
LEFT JOIN Genres ON Livres.genre_id = Genres.id
LEFT JOIN Sites ON Livres.site_id = Sites.id
LEFT JOIN Users ON Livres.user_id = Users.id);



/* ajouter un genre favoris dans user*/

ALTER TABLE Users 
ADD COLUMN Genres_favoris SMALLINT UNSIGNED;

ALTER TABLE Users
ADD  CONSTRAINT Genres_favoris
FOREIGN KEY (Genres_favoris)
REFERENCES Genres (id);


/* RECHERCHE */

SELECT * FROM livres_vw WHERE pages <= 100 AND site="Lille" ORDER BY pages ASC;

/* Relation plusieurs a plusieurs - commentaire */

CREATE TABLE IF NOT EXISTS Comments (
comment TEST NOT NULL,
user_id SMALLINT UNSIGNED NOT NULL,
livre_id SMALLINT UNSIGNED NOT NOT NULL,
PRIMARY KEY (user_id, livre_id),
CONSTRAINT fk_comment_user
FOREIGN KEY (user_id)
REFERENCES Users (id),
CONSTRAINT fk_comment_livre
FOREIGN KEY (livre_id)
REFERENCES Livres (id),
)ENGINE=InnoDB;

SELECT Livres.titre, Users.pseudo, Comments.comment FROM Livres
INNER JOIN Comments ON Livres.id = Comments.livre_id,
INNER JOIN Users ON Comments.user_id ⁼ Users.id
WHERE Livres.id = 32;