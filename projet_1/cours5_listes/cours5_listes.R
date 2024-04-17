#V. Les listes

#Les listes vous permettent de stocker différents objets dans un seul objet

#1. Définition
#Une liste : 
#- Est un ensemble ordonné d’objets qui n’ont pas toujours le même mode ou la même longueur.
#- Est composée de différentes objets qui peuvent être associés à un nom spécifique
#- possède trois attributs : length, mode et names

#2. Création de listes
#2.1. la fonction "list"

maliste <- list(c("A","B","C","D"),matrix(1:4,2,2))
maliste


#Notre liste contient deux objets, vérifions cela :

length(maliste)

mode(maliste)

is.list(maliste)


#2.2. Nommer une liste avec la fonction "names"


names(maliste) # pas de nom associé, la fonction retourne un NULL

names(maliste) <- c("vecteur","matrice")

names(maliste)
maliste


#2.3. Créer une liste à partir d'une liste vide 

#Créons une liste à partir d'une liste vide

li_vide <- list()

li_vide

list()

li_vide[[1]] <- 1:4

li_vide


li_vide$nouv <- matrix(1:4,nrow=2)

li_vide

li_vide$ensuite <- c("A","B","C","D")

li_vide

names(li_vide)


#NB : les attributs de cette liste sont des noms

#3. Fonctions utiles applicables sur des listes

#- "lapply"  applique une fonction (comme la moyenne, etc.) 
#successivement à chacune des composantes.

#- "unlist(maliste)"  crée un seul vecteur contenant tous les éléments de la liste. 

#- "c(liste1,liste2)"  concatène deux listes.

lapply(maliste,mean)


#les dataframes.