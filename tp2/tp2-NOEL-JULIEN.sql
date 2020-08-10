/**
 *	Compte rendu de JULIEN NOEL
 **/

/**
 *  Exercice 1 

    Done
 **/

-- Commentaires/Réponses sur les questions de l'exo 1

/**
 *  Exercice 2 
 **/

-- Commentaires/Réponses sur les questions de l'exo 2

-- 1
insert into c_produit(npro,libelle,prix,qstock) values('PA75','POINTE ACIER 75',80,40);

-- 2
insert into c_produit(npro,libelle,prix,qstock) values('PA60','pointe carbonne',110,3);
-- ERREUR:  la valeur d'une clé dupliquée rompt la contrainte unique « c_produit_pkey »
-- DÉTAIL : La clé « (npro)=(PA60      ) » existe déjà.

-- 3
-- On nous dit que la clé primaire PA75 existe déjà cela provoque donc un bug.

-- 4
insert into c_client(ncli,nom,adresse,localite,compte) values('B4321','MUNSTER','23 A.CAMENBERT','Sancy',1250);

-- 5
alter table c_commande
add constraint commande_ref_client_fkey foreign key (ncli) references c_client(ncli);

-- 6
insert into c_commande values ('30190','J008','2003-12-23');
-- ERREUR:  une instruction insert ou update sur la table « c_commande » viole la contrainte de clé
-- étrangère « commande_ref_client_fkey »
-- DÉTAIL : La clé (ncli)=(J008    ) n'est pas présente dans la table « c_client ».

-- 7
insert into c_detail values ('30188','PA90',22);

-- 8
alter table c_detail
add constraint detail_ref_produit_fkey foreign key (npro) references c_produit(npro);
-- ERREUR:  une instruction insert ou update sur la table « c_detail » viole la contrainte de clé
-- étrangère « detail_ref_produit_fkey »
-- DÉTAIL : La clé (npro)=(PA90      ) n'est pas présente dans la table « c_produit ».

-- 9
delete from c_detail where ncom = '30188' and npro = 'PA90';
-- Il n'y a plus de bug tout fonctionne, c'est la JOIE.

-- 10
alter table c_detail
add constraint detail_ref_commande_fkey foreign key (ncom) references c_commande(ncom);

-- 11
alter table c_client 
drop column cat;



/**
 *  Exercice 3 
 **/

-- Commentaires/Réponses sur les questions de l'exo 3

-- 5
-- je sais pas :/

