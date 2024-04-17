#cours 12
#Partie 3
#I. importez des fichiers externes

# Pour lire le fichier "fichier" on utilise la fonction read.table

#cas sans row.names "nom de ligne"

data1 <- read.table("fichier1.txt", sep=";", header=TRUE)
data1

#cas sans row.names et header

data1 <- read.table("fichier1.txt", sep=";")
data1

#cas complet

data1 <- read.table("fichier1.txt", sep=";", row.names=1, header=TRUE)
data1


# NB :  le fichier importé ici se trouve dans le fichier courant de R,
#dans le cas ou il se trouve ailleurs, copier simplement le chemin d'accès
#au fichier puis coller le. par exemple : 
#read.table("C:/R_cours_2024/Partie 3/cours12_data/fichier1.txt", ...)
#attention le "\" sous windows devient "/" sous R

#1.2. Travailler avec les données manquantes
#NA

dt1 <- read.table("abeille_fail.csv", sep=";", header=TRUE, dec=",")
dt1 # pour afficher les données
dim(dt1)

dt1[1:3, ] # récupérer les trois premières lignes

#2. Gérez les erreurs d'importation

summary(dt1) # affiche le résumé des données

#Vous pouvez maintenant importer tous les types de fichiers vi RStudio en utilisant
#l'onglet Import Dataset situé dans le coin supérieur droit:

#cours13 exportez vos réalisations
