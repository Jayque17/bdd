/**
 *	Compte rendu de Julien NOEL
 **/


/**
 *  Exercice 1 sur la base usimag
 **/

-- Commande pour importer la base usimag.sql

\i usimag.sql


-- Schéma de la base usimag

magasin(ref_mag, nom_mag, ville)
produit(ref_prod, nom_prod, couleur, poids)
usine(ref_usine, nom_usine, ville)
provenance(ref_prod, ref_usine, ref_mag, quantite)

/*

Mettre ici la liste des tables ainsi que les clés primaires et étrangères

magasin, pk : ref_mag 
produit, pk : ref_prod
provenance, pk : (ref_prod, ref_usine, ref_mag), fk : ref_prod, ref_usine, ref_mag
usine, pk : ref_usine

*/


-- le contenu la table magasin

select * from magasin ;


-- la colonne nom de la table magasin

select nom_mag from magasin ;


-- les noms de magasin sans doublon

select distinct nom_mag from magasin ;


-- le nom des villes dans lesquelles il y a une usine

select ville from usine;


-- le nom des villes dans lesquelles il y a une usine sans doublon

select distinct ville from usine;


-- les noms et les couleurs de chaque produit

select nom_prod, couleur from produit;


-- la référence et la quantité de chaque produit livré au magasin avec la référence 14;

select ref_prod, quantite from provenance where ref_mag = 14;


-- la référence, le nom et la ville de toutes les usines de Marseille;

select * from usine where ville = 'Marseille';


-- les références des magasins qui sont approvisionnés par l'usine de référence 109 en produit de référence 1;

select ref_mag from provenance where ref_usine = 109 and ref_prod = 1;


-- la référence et le nom de tous les produits rouges;

select ref_prod, nom_prod from produit where couleur = 'rouge';


-- la référence et le nom de tous les produits dont le nom commence par "casse";

select ref_prod, nom_prod from produit where nom_prod like 'casse%';


-- la référence des magasins auxquels on livre quelque chose.

select ref_mag from provenance where quantite <> 0;


-- la même sans doublon

select distinct ref_mag from provenance where quantite <> 0;


-- le nom des produits qui pèsent entre 15 et 45;

select nom_prod from produit where poids between 15 and 45;


-- le nom des produits qui sont jaunes ou bleus, et qui pèsent moins que 20;

select nom_prod from produit where couleur in ('jaune','bleu') and poids = 20;


-- le nom des produits bleus qui pèsent moins que 20 et des produits jaunes;

select nom_prod from produit where couleur = 'bleu' and poids < 20 or couleur = 'jaune';


-- le nom des lampes et des produits qui pèsent plus que 30;

select nom_prod from produit where nom_prod like 'lampe%' or poids > 30;


/**
 *  Exercice 3 sur la base GestCommande
 **/

-- Schéma de la base GestCommande

c_client(ncli, nom, adresse, localite, cat, compte)
c_produit(npro, libelle, prix, qstock)
c_commande(ncom, ncli, datecom)
c_detail(ncom, npro, qcom)

/*

Mettre ici la liste des tables ainsi que les clés primaires et étrangères

c_client, pk : ncli
c_commande, pk : ncom
c_detail, pk : (ncom, npro), fk : ncom, npro
c_produit, pk : npro

*/


-- Commandes pour afficher le contenu de la table C_CLIENT puis celui de la table C_COMMANDE.

select * from c_client, c_commande;

-- Le gestionnaire des commandes souhaite afficher la liste des commandes avec les informations client.
-- Il décide de le faire à l'aide de la requête suivante:  SELECT * FROM C_CLIENT, C_COMMANDE
-- Observez le résultat. Cette requête est-elle correcte? 
-- Non car on a des client qui n'ont rien commandés qui apparaissent dans la liste.


-- Que manque-t-il pour que cette requête soit pertinente? Proposez en une.

select * from c_commande, c_client where c_commande.ncli = c_client.ncli;

-- Numéro du client qui a passé la commande numéro 30179.

select ncli from c_commande where ncom = '30179';

-- Nom et localité du client qui a passé la commande numéro 30179.

select nom, localite from c_client natural join c_commande where ncom = '30179';

-- Donner la liste des localités.{\tiny (Vous devez trouver 7 enregistrements)}

select distinct localite from c_client;

-- Liste des localités où habitent un client (ou plus) qui a passé une commande.

select localite from c_client natural join c_commande where c_commande.ncli = c_client.ncli;


-- Liste sans doublons des clients (numéro) qui ont commandé le produit CS464.

select distinct ncli from c_commande natural join c_detail where npro = 'CS464';


-- Liste des clients (numéro, nom, localité) qui ont commandé le produit CS464.

select ncli, nom, localite from c_client natural join c_commande natural join c_detail where c_client.ncli = c_commande.ncli and npro = 'CS464';

-- Quels sont les produits en sapin (numéro et libellé) qui font l'objet d'une commande ?

select distinct npro, libelle from c_produit natural join c_detail where libelle like '%SAPIN%';