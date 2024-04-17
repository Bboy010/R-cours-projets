#localiser les données manquantes

ozoneNA <- readRDS("C:/R_cours_2024/Partie 3/ozoneNA.RDS")

summary(ozoneNA) #affiche le resumer du dataframe ozoneNA

#Afin de faciliter la lecture, travaillons sur des données restreintes :
  
ozR <- ozoneNA[1:4,1:7]
ozR

is.na(ozR) #recherche des données manquantes


which(is.na(ozR),arr.ind=TRUE) #localisation des données manquantes

#La première donnée manquante correspond à la ligne 3 et la colonne 1, ...

#elimination des individus qui admettent au moins un  NA

indligneNA <- which(is.na(ozR),arr.ind=TRUE)[,1] #selectionne la première colonne
indligneNA


ozRsansNa <- ozR[-indligneNA,] #supprime les lignes avec données manquantes
ozRsansNa

#cours17_utilisez les fonctions spécifiques à l'analyse de données.