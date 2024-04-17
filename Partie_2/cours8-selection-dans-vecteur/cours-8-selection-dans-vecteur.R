#cours 8

#II. la sélection dans un vecteur avec []

#1. Sélection par position

x <- c(1,5,-2)

x[3] # donne le troisième élément de x

x[c(1,2)] # donne les premiers et deuxièmes éléments de x

x[c(1,3,2,2,1)] # donne successivement les éléments demandé


#Une autre méthode consiste à enlever les éléments du vecteur que l’on
#ne souhaite pas conserver : il suffit de lui affecter un signe (-)

x

x[-2] # Exclut le deuxième élément de x

#2. La sélection par condition

x[!(x<0)] # recupère les éléments de x supérieur à 0

#Vérifiions si un élément de x est à la fois inférieur à 3 et supérieur à 10

x[(x<3) & (x>10)] # ensemble vide car c'est faux

#On peut aussi sélectionner les valeurs d’un vecteur à partir des valeurs
#d’un autre vecteur de même longueur :

P <- c(10, 15, 25, 45)

L <- c(60, 75, 84, 102)

L[P>17] # affiche les éléments supérieur à 17 dans P équivalent à ceux de L

P[L>77] # affiche les éléments supérieur à 77 dans L équivalent à ceux de P

# cours9 la sélection d'un ou de plusieurs éléments au sein d'une matrice.