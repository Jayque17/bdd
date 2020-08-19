-- P1 Donner le nom, le code et la capitale des pays (respectivement
-- name, code et capital de la table country) dont le nom (name) débute
-- par la lettre ’U’.
select name, code, capital
from country
where name like 'U%';

-- P2 Afficher le nom des rivières américaines (USA) (voir la table
-- geo_river).
select distinct river
from geo_river
where country = 'USA';

-- P3 Afficher le nom et la longueur des rivières américaines (USA) (voir
-- les tables geo_river et river).
select distinct  geo_river.river, river.length
from geo_river, river
where geo_river.country = 'USA' and geo_river.river = river.name;


-- P4 Donner le nom et la capitale des pays membres de l’organisation
-- mondiale de la santé (WHO). (Voir les tables is_member et country)
select name, capital
from country join is_member on country.code = is_member.country
where organization = 'WHO';

-- R1 Donner la liste des provinces (voire régions avant-2016) françaises
-- (code F) (voir la table province).
select name
from province
where country = 'F';

-- R2 Ajuster votre requête pour qu’elle donne le bon résultat même si on
-- ne connaît pas le code de la France. (voir la table country).
select province.name
from country join province on country.code = province.country  
where country.name = 'France';


-- R3 Ajuster la requête précédente pour qu’elle affiche la même liste
-- par ordre croissant de surface (attribut area).
select province.name
from country join province on country.code = province.country
where country.name = 'France'
order by province.area;


-- R4 Ajuster la requête précédente pour qu’elle affiche la même liste
-- par ordre décroissant.
select province.name
from country join province on country.code = province.country
where country.name = 'France'
order by province.area desc;

-- R5 On veut maintenant afficher uniquement les 3 plus grandes
-- provinces. Cherchez dans la documentation comment utiliser la commande
-- limit pour obtenir le résultat souhaité.
select province.name
from country join province on country.code = province.country
where country.name = 'France'
order by province.area desc
limit 3;

-- R6 Donner le nombre de pays dans la table country
select count(name) as nbcountry
from country;

-- R7 Ajouter maintenant en plus du nombre, la surface du plus petit
-- pays (attribut area), celle du plus grand pays ainsi que la surface
-- moyenne des pays de la table.
select count(name) as nbcountry, min(area) as smallest_area, max(area) as largest_area, avg(area) as medium_area
from country;

-- R8 Enfin limitez vos calculs aux pays qui ont une surface supérieure à
-- 500.
select count(name) as nbcountry, min(area) as smallest_area, max(area) as largest_area, avg(area) as medium_area
from country
where area >= 500;

-- R9 Donner la liste des pays dont la surface est supérieure à la
-- moyenne.
select name
from country
group by name, country.area
having area >= avg(area);

-- R10 Donner la liste des pays qui ont au moins une rivière. Ces
-- informations sont situées dans la table geo_river.
select distinct country.name
from country, geo_river
where country.code = geo_river.country;

-- R11 On veut maintenant écrire une requête qui donne le nombre de pays
-- qui ont au moins une rivière. (faites d'abord de manière simple, puis
-- avec une sous-requêtes dans le from).
-- TODO

-- R12 Donner le code des pays qui ont une rivière et au moins 2 lacs.
-- TOCHECK
select code_lake.country
from 
(
    select country
    from geo_lake 
    group by country
    having count(lake) >= 2
) as code_lake, 
(
    select country
    from geo_river
    group by country
    having count(river) = 1
) as code_riv
where code_lake.country = code_riv.country;

-- R13 Donner, en utilisant la commande union, le noms des pays qui
-- possèdent un lac et/ou une rivière.
select distinct name
from country
join
(
select country
from geo_river
union
select country
from geo_lake
) as code on country.code = code.country;

-- R14 Donner le code des pays qui font partie d’au moins une
-- organisation.
select distinct code
from country join is_member on country.code = is_member.country;

-- R15 Donner le nom des pays qui ne font partie d’aucune organisation en
-- utilisant NOT IN.
select name
from country
where country.code not in (
    select distinct code
    from country join is_member on country.code = is_member.country
);

-- R16 Donner la liste des pays qui ne font partie d’aucune organisation
-- en utilisant EXISTS.
-- TODO

-- R17 Donner les noms et les capitales des pays dont le nom commence par
-- Z qui sont membres de WHO et NATO. Donner une solution sans et une autre
-- avec l'utilisation d'INTERSECT. (voir is_member et country)
-- TOCHECK
select name, capital, organization
from country join is_member on country.code = is_member.country
where capital like 'Z%' and organization in ('WHO', 'NATO');

select name, capital
from country join
(select country
from is_member
where organization = 'WHO'
INTERSECT
select country
from is_member
where organization = 'NATO'
) code_member on country.code = code_member.country
where capital like 'Z%';


-- R18 Donner pour chaque pays, la langue qui y est la plus parlée. Ces
-- informations sont présentes dans la table language. Pour résoudre
-- cette question, vous devez utiliser une sous-requête qui calcule la
-- langue la plus parlée dans un pays donné.
-- TODO

-- R19 Modifier la requête précédente pour obtenir la liste des pays dans
-- lesquels l’anglais est la langue la plus parlée.
-- TODO

-- R20 Donner, en utilisant une sous-requête et la commande IN, la liste
-- des trois provinces les plus peuplées qui se trouvent dans les pays
-- dont la population est inférieure à 20000000 habitants. Ces informations
-- peuvent être trouvées dans la table province et country.
-- TOCONTINU
select province.name as proname
from country join province on code = country
where country.population <= 20000000;

-- R21 Donner la liste des pays qui sont membres d’exactement 50
-- organisations.
select name
from country join is_member on code = country
group by name
having count(distinct organization) = 50;

-- R22 Donner la liste des noms de pays qui sont membres d’autant
-- d’organisations que le Zimbabwe.
select name
from country join is_member on code = country
group by name
having count(distinct is_member.organization) = (
    select count(distinct is_member.organization)
    from is_member join country on country = code
    where country.name = 'Zimbabwe'
);