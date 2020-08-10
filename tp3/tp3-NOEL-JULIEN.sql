---------------------------------------------------------------------------
--- Requêtes d'échauffement, facultatives si vous vous sentez à l'aise.
---------------------------------------------------------------------------
---
--- P1 Le nom des usines de Bordeaux. Le résultat est constitué de 1
--- enregistrement.
---
select nom_usine from usine where ville = 'Bordeaux';



---
--- P2 Les noms de produits qui finissent par la lettre 'e'. Le résultat est
--- constitué de 6 enregistrements (n'oubliez pas d'éliminer les doublons!).
---
select distinct nom_prod from produit where nom_prod like '%e';



---
--- P3 Les numéros de références des bottes de couleur rouge. (Il n'y a qu'un
--- seul modèle.)
--- 
select ref_prod from produit where nom_prod = 'bottes' and couleur = 'rouge';




----------------------------------------------------------------------------
--- Nom: NOEL
--- Prénom: JULIEN
--- Groupe de TP: X
--- Groupe de TD: X
----------------------------------------------------------------------------
--- Requêtes obligatoires à rendre.
----------------------------------------------------------------------------
---
--- Q1  Le nom et la couleur des produits livrés par l'usine 302. Le résultat
--- doit comprendre 6 enregistrements.
---
select nom_prod, couleur from produit natural join provenance natural join usine where ref_usine = 302;


---
--- Q2 Les produits (tous les attributs) dont la couleur est connue. Le
--- résultat est constitué de 19 enregistrements.
---
select nom_prod from produit where couleur is not null;


---
--- Q3 La couleur du produit de référence 22.
---
select couleur from produit where ref_prod = 22;


---
--- Q4 Les produits dont la couleur est différente de 'bleu'. Le résultat doit
--- comprendre 13 enregistrements. Le produit 22 ne fait pas partie de la
--- réponse.  Est-ce normal ?
--- Normal le produit 22 n'a même pas de couleur.
select * from produit where couleur <> 'bleu';


---
--- Q5 Les produits dont la couleur et le poids sont connus. Le résultat est
--- constitué de 17 enregistrements.
---
select * from produit where couleur is not null and poids is not null;



---
--- Q6 Les produits pour lesquels il manque au moins une information de poids
--- ou de couleur. Le résultat est constitué de 6 enregistrements.
---
select * from produit where couleur is null or poids is null;



---
--- Q7 Les produits pour lesquels il manque une et une seule information de
--- poids ou de couleur. Le résultat est constitué de 5 enregistrements.
---
select * from produit where couleur is not null and poids is null or couleur is null and poids is not null;



---
--- Q8 Les couples nom d'usine, nom de magasin qui sont dans la même ville. Le
--- résultat est constitué de 7 enregistrements.
---
select nom_mag, nom_usine from magasin, usine where magasin.ville = usine.ville;


---
--- Q9 Les noms des produits rouges fabriqués à Nantes. Le résultat est
--- constitué de 2 enregistrements.
---
select distinct nom_prod from produit natural join provenance natural join usine where couleur = 'rouge' and ville = 'Nantes';



---
--- Q10 Les couples nom de produit, nom de magasin où on peut acheter celui-ci.
--- Le résultat est constitué de 24 enregistrements.
---




---
--- Q11 Les couples nom de produit, nom de magasin où on peut acheter
--- celui-ci en se limitant aux produits de couleur bleue ou rouge. Le résultat
--- est constitué de 12 enregistrements.
---




---
--- Q12 Les couples de magasins (références) qui s'approvisionnent du même
--- produit fabriqués par la même usine (attention, votre requête ne devrait
--- pas afficher les paires (x,x) composées de deux fois le même magasin.) Le
--- résultat est constitué de 6 enregistrements.
---
select p1.ref_mag, p2.ref_mag from provenance as p1, provenance as p2 where p1.ref_mag <> p2.ref_mag and p1.ref_prod = p2.ref_prod and p1.ref_usine = p2.ref_usine;



---
--- Q13 Ajuster la requête pour ne pas afficher le couple (y,x) si le couple
--- (x,y) est affiché. Le résultat est constitué de 3 enregistrements.
---
select distinct p1.ref_mag, p2.ref_mag from provenance as p1, provenance as p2 where p1.ref_mag <> p2.ref_mag and p1.ref_prod = p2.ref_prod and p1.ref_usine = p2.ref_usine limit 3;



---
--- Q14 Les noms des lampes fabriquées par peugeot vendues à Bordeaux. Le
--- résultat est constitué de 2 enregistrements.
---
select nom_prod from produit natural join provenance natural join usine where nom_usine = 'peugeot' and nom_prod like 'lampe%'
intersect
select nom_prod from produit natural join provenance natural join magasin where ville = 'Bordeaux' and nom_prod like 'lampe%';



---
--- Q15 Toutes les références et les couleurs des produits fabriqués et vendus
--- dans la même ville. Le résultat est constitué de 2 enregistrements.
---
select distinct ref_prod, couleur from produit natural join provenance as propro natural join usine as proprousi natural join magasin;




----------------------------------------------------------------------------
--- Requêtes plus techniques obligatoires pour les étudiants L2info.
----------------------------------------------------------------------------
---
--- Q16  Les couples de noms de produits différents tels que leurs poids
--- diffèrent d'au plus 2 et tels qu'ils sont vendus dans le même magasin. Le
--- résultat est constitué de 5 enregistrements.
---
--- A FINIR
select p1.nom_prod, p2.nom_prod from produit as p1, produit as p2 natural join provenance natural join magasin where ((p1.poids between p2.poids - 2 and p2.poids + 2) or (p2.poids between p1.poids - 2 and p1.poids + 2)) and p1.nom_prod != p2.nom_prod;
--- A FINIR TROUVER COMMENT FAIRE POUR QUE ÇE SOIT LE MÊME MAGASIN POUR LES 2 PRODUITS.



---
--- Q17 Les couples de noms de produits différents tels que leurs poids diffèrent d'au
--- plus 2 et tels qu'ils sont vendus dans la même ville. Le résultat est
--- constitué de 5 enregistrements.
---





---
--- Q18 Les couples nom de produit, nom de magasin où on peut acheter celui-ci
--- en se limitant aux produits bleus, et aux produits rouges disponibles dans
--- le magasin en quantité supérieure à 400 pièces. Le résultat doit comprendre
--- 9 enregistrements.
---
