#cours 11

#V. La sélection dans un dataframe

x <- c("A","B","C",rep("D",2),"E")
y <- 1:6
z <- c(seq(12,50,length=5),-5)
mondf <- data.frame(x,y,z)

mondf

#1. La sélection par position

mondf[1:3,1:2] # sélection des 3 premières lignes et des colonnes 1 à 2 :

# la sélection peut se faire via un nom associé à une colonne au sein du dataframe

mondf$z

mondf["z"]

z

# on peut conbiner les deux méthodes. 

mondf$x[2:4] # sélection dees lignes 2 à 4 de la colonne x

#NB : le vecteur de caractères a été automatiquement modifié en facteur par R 
#lors de la création du dataframe. Pour éviter cela, vous devrez préciser l’argument
#stringsAsFactors = FALSE  lors de la création du dataframe !
  
#  2. la sélection par condition
 
mondf[(mondf$y>4)|(mondf$z>17),] # affiche les valeurs de y > 4 ou celle de z > 17

mondf[(mondf$y>4)&(mondf$z>17),] # la ligne où les deux conditions sont respectées
  
mondf[mondf$y>4,1:2] # est identique à

mondf[mondf$y>4,c('x','y')]

#cours12 importez des fichiers externe