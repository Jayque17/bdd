# Pour pouvoir utiliser les fonctions de upentk
from upemtk import *

largeurFenetre=400
hauteurFenetre=400
#Crée une fenêtre
cree_fenetre(largeurFenetre,hauteurFenetre)


hauteurs = [100, 200, 350, 40, 160, 210, 130, 80, 170, 300, 280, 210, 320, 30, 70]

i = 0
while(i < len(hauteurs)):
    rectangle(0 + 20*i, hauteurFenetre - hauteurs[i], 20 + 20*i, hauteurFenetre, remplissage='black')
    i += 1


cercle(300, 250, 50, remplissage='red')


#attend que l'utilisateur clique dans la fenêtre
attente_clic()
#ferme la fenêtre
ferme_fenetre()
