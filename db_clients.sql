-- LDD 
-- 1. Creation de la base de donnees
CREATE DATABASE IF NOT EXISTS poe_tours_clients;

-- Selectionner la base de donnes
USE poe_tours_clients;

-- 2. Creation de la table client
CREATE TABLE IF NOT EXISTS clients(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nom VARCHAR(50) NOT NULL,
prenom VARCHAR(50) NOT NULL,
email VARCHAR(70) UNIQUE,
telephone VARCHAR(16) NOT NULL 
);

-- 3 Afficher la description de la table
-- DESC clients;
DESCRIBE clients;

-- Ajouter une colonne
-- ALTER TABLE clients ADD COLUMN postnom VARCHAR(50) AFTER prenom;

-- LMD 
INSERT INTO clients(nom,prenom,email,telephone) VALUES("Zozor","Alain","zozor@gmail.com","0555454545"),("Lydie","Toto","toto@gmail.com","0645454545"),("Jean","Zazar","jean.zazar@hotmail.fr","0746464646");

SELECT * FROM clients;


