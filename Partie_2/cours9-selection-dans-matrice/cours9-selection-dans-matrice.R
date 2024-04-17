#cours 9

#III. la sélection dans une matrice

m <- matrix(2:10,4:12,byrow=T)
m

m[,c(2,2,1)] #récupérer la 2è colonne et la 1er ligne

#Tout comme avec les vecteurs, il est tout à fait possible de sélectionner
#avec des entiers négatifs :

m[-1,] # supprime la première ligne

m[1:2,-1] # deux prémières ligne de m privée de la première colonne

#1.2. La sélection par condition

t <- matrix(1:12,nrow=3,ncol=4)

t

t[,t[1,]>2] # colonnnes de t avec valeurs strictement sup à 2

# le résultat est une matrice si on fait

t[t>2]

#cela retourne un vecteur de tous les nombres strictement supérieur à 2

t[t<4] <- NA #Remplacer tous les éléments de t<4 par des NA

t

#cours10 la sélection dans une liste.