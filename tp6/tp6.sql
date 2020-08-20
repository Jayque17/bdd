-- TP6 - sous-requêtes

-- Exercice 1 : Sous-requêtes simples

--
-- 1/
--
select idmag, nom
from magasin
where idmag not in (
    select idmag
    from magasin natural join stocke natural join produit
    where libelle = 'bureau'
);

--
-- 2/
--
-- TODO

--
-- 3/
--
select libelle
from produit
where idpro not in (
    select idpro
    from contient
);

--
-- 4/
--
with prixfact as (
    select idfac, sum(prixunit * quantite) as prixbyfact
    from contient
    group by idfac
    order by idfac
)
select avg(prixbyfact) as prixfactmoy 
from prixfact;

--
-- 5/
-- TOFINISHED

-- le prix moyen par produits
with moyprixpro as (
    select libelle, avg(prixunit) as moyprix
    from produit natural join contient
    group by libelle
)
select libelle, moyprix
from moyprixpro;

-- produits achetés par clients 
select nom, prenom, libelle, prixunit
from client natural join facture natural join contient natural join produit;


-- Exercice 2 : Sous-requêtes intermédiaires

--
-- 1/
--

--
-- 2/
--


--
-- 3/
--

--
-- 4/
--

--
-- 5/
--
