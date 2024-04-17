#Cours 13

#II. Exportez vos réalisations
  
#1. Exporter dans un fichier externe

# exporter sans nom de lignes ou de colonnes ni guillemets 
#et avec un séparateur tabulation :

dt1 <- read.table("abeille_fail.csv", sep=";", header=TRUE, dec=",")
dt1 # pour afficher les données
section <- dt1[1:4,c("LoAb","LoVA","LoVB")]

write.table(section,"montableau.txt",row.names=F,col.names=F,quote=F,sep='\t')

section

#2. Exporter en format RDS avec saveRDS

saveRDS(section,"section.rds")

#Pour recupérer on utilise la fonction  readRDS  :
  
section2 <- readRDS("section.rds")

section2

#cours14 concaténez des tableaux de données