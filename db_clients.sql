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

-- Creation de la table telephones
CREATE TABLE IF NOT EXISTS telephones(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(16) NOT NULL,
    id_client INT,
    FOREIGN KEY(id_client) REFERENCES clients(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- 3 Afficher la description de la table
-- DESC clients;
DESCRIBE clients;

-- Ajouter une colonne
-- ALTER TABLE clients ADD COLUMN postnom VARCHAR(50) AFTER prenom;

-- LMD 
-- INSERT INTO clients(nom,prenom,email,telephone) VALUES("Zozor","Alain","zozor@gmail.com","0555454545"),("Lydie","Toto","toto@gmail.com","0645454545"),("Jean","Zazar","jean.zazar@hotmail.fr","0746464646");

-- Lister toutes les colonnes
-- SELECT * FROM clients;

-- Lister quelques colonnes
-- SELECT prenom, nom FROM clients;

-- Lister dans l'ordre croissant des prenom
-- SELECT id,prenom,nom FROM clients ORDER BY prenom ASC;

-- Lister les clients dont les noms commencent par "Lisa"
-- SELECT id,prenom,nom FROM clients WHERE nom LIKE "Lisa%";

-- Lister les clients dont les noms terminent par "ola"
-- SELECT id,prenom,nom FROM clients WHERE nom LIKE "%ola";

-- Lister les clients dont les email contiennent par "@gmail."
-- SELECT id,prenom,nom,email FROM clients WHERE email LIKE "%@amazon.%";

-- Fusionner les colonners prenom et nom
-- SELECT id,CONCAT(prenom," ",nom) as nom_complet FROM clients;

-- Suppression de la colonne "telephone" de la table "clients"
-- ALTER TABLE clients DROP COLUMN telephone;


-- camel case : idProduit
-- Pascal case : IdProduit
-- snake case : id_produit

-- [ clients ]<-- [ telephones ]
-- SELECT * FROM clients INNER JOIN telephones ON clients.id=telephones.id_client;

-- SELECT clients.id,clients.prenom,clients.nom,telephones.numero FROM clients INNER JOIN telephones ON clients.id=telephones.id_client;

SELECT clients.id,CONCAT(clients.prenom," ",clients.nom) as nom_complet,telephones.numero FROM clients INNER JOIN telephones ON clients.id=telephones.id_client;