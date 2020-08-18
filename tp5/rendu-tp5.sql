---
--- Q1
---
select count(idfac) as nbfact 
from facture;

---
--- Q2
---
with nbville as (
    select distinct ville, nom
    from magasin
    group by nom, ville
)
select nom, count(ville)
from nbville
group by nom;


---
--- Q3
---
select client.numcli, nom, count(idfac) as nbfact
from client left join facture on client.numcli = facture.numcli
group by client.numcli, nom
order by client.numcli;

---
--- Q4
---
select avg(prixunit) as moy, min(prixunit) as min, max(prixunit) as max
from produit natural join stocke natural join magasin
where libelle = 'bureau' and ville = 'paris';

---
--- Q5
---
select libelle, min(prixunit)
from produit natural join stocke
group by libelle
order by libelle;

---
--- Q6
---
select idfac, numcli, nom, prenom, sum(quantite*prixunit) as totfac
from facture natural join client natural join contient
group by idfac, numcli, nom, prenom
order by totfac desc;

---
--- Q7
---
select distinct nom
from magasin natural join stocke natural join produit
group by nom
having count(distinct libelle) >= 20;



---
--- Q8
---
select distinct nom, count(distinct libelle) as nblib
from magasin natural join stocke natural join produit
group by nom
order by nblib desc
limit 3;

---
--- Q9
---
select numcli, nom, prenom, ville, sum(prixunit * quantite) as prix
from client natural join facture natural join contient
where ville = 'paris'
group by numcli, nom, prenom, ville
having sum(prixunit * quantite) >= 3000;