import psycopg2
from upemtk import *

try:
    # On crée la connexion à la base de données, les arguments de la
    # fonction sont :
    # - le nom d'utilisateur, 
    # - le mot de passe,
    # - le nom de l'hote de la base
    #   sqletud pour votre base de données étudiante
    #   cet argument peut être supprimé si vous travaillez en local sur la debian de la virtualbox,
    # - le nom de votre base de données.
    cnx = psycopg2.connect("dbname='BDDfac' user='jnoel' host='' password='n72h7J'")
except:
    print("An error occured while connecting to database")
else:

    largeurFenetre=400
    hauteurFenetre=400
    #Crée une fenêtre
    cree_fenetre(largeurFenetre,hauteurFenetre)

    cnx.autocommit = True

    # On crée maintenant le curseur que l'on va utiliser pour
    # dialoguer avec la base.
    cursor = cnx.cursor()
    # Le curseur permet la fois d'executer les requetes mais aussi de
    # recuperer les reponses. Les erreurs de SQL sont assez bien
    # recuperees dans le cursor
    
    # On crée maintenant la requête qui va être envoyée à la base pour
    # récupérer le nom des différentes tables.
    # Pour se faire, il vous suffit d'afficher la table pg_catalog.pg_tables
    # en précisant que le schemaname soit différent de 'pg_catalog' et différent
    # de la chaîne 'information_schema' pour ne pas afficher les tables internes à la
    # base.
    requete = "select ref_batiment, hauteur, largeur, couleur from batiment natural join type order by ref_batiment;"

    # On demande maintenant au curseur d'éxécuter notre requête sur la
    # base.
    cursor.execute(requete)

    # Une fois que l'éxécution de la requête a été faite, on utilise
    # une boucle pour parcourir les résultats.

    hauteurs = []
    for result in cursor:
        # On affiche les réponses une par une en utilisant print.
        hauteurs.append(result)
    
    i = 0
    largeur = 0
    while(i < len(hauteurs)):

        rectangle(largeur, hauteurFenetre - hauteurs[i][1], largeur + hauteurs[i][2], hauteurFenetre, remplissage=hauteurs[i][3])
        
        if hauteurs[i][3] == 'black':
            diametre = hauteurs[i][2]
            cercle(largeur + hauteurs[i][2]/2, hauteurFenetre - hauteurs[i][1] - diametre/2, diametre/2, remplissage='red')
        largeur += hauteurs[i][2]
        i += 1


    # On a fini de se servir de la base, on supprime donc notre
    # curseur (cursor) puis on ferme la connexion à la base de données
    # (cnx).
    cursor.close()
    cnx.close()

    #attend que l'utilisateur clique dans la fenêtre
    attente_clic()
    #ferme la fenêtre
    ferme_fenetre()