#cours 10
#IV. La sélection dans une liste

#1. La sélection par position 

#Les  "[[ ]]"  permettent de retourner l’élément de la liste.

#Remarque:
#maliste[1]  retourne une sous-liste composée de l’élément 1 de la liste initiale.
#Donc length(maliste[1])  vaut 1. 

#maliste[[1]] retourne l’objet R qui compose l’élément 1 de la liste.
#Donc length(maliste[[1]])  retourne la longueur de l’objet stocké
#en premier dans la liste  maliste.

#Créons une liste de 4 éléments

x <- c("a","b","c","d")

X <- matrix(1:8,ncol=4)

y <- c(T,F,T,F,T,F)

Y <- matrix(c("H","E","L","L","O"),ncol=2)

malist <- list(comp1=x,comp2=X,comp3=y,element4=Y) #annotation des éléments

malist

# mettons en évidence la différence entre [] et [[]] grace à notre liste

malist[2] # retourne comp2

length(malist[2]) # retourne 1

malist[[2]] # extrait le contenu du second élément de la liste

length(malist[[2]]) # retourne tous les éléments de la liste 2


#2. La sélection par nom

#avec les quotes "" ou "$". 

malist["comp2"] # renvois comp2

malist[["comp2"]] # extrait les éléments de comp2

malist$comp2 # Extrait également les éléments de comp2

# Créer une sous liste avec [ ]  et non  [[ ]]  :

malist[c(1,4)]

#cours11 sélectionner au sein d'un dataframe.
