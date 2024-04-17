#III. Les facteurs

#factor et as.factor

x <- c("M","F","F","M","M","M")

x

xfactor <- factor(x)

xfactor # level identifie le nombre de facteur contenu dans nos données


#Pour voir les attributs de ce "xfactor"

attributes(xfactor) # donne les attributs de notre xfactor

levels(xfactor) # présente les niveaux de "xfactor"

nlevels(xfactor) # donne le nombre de mode de xfactor

#Pour renommer les modalités 

levels(xfactor) <- c("Femme","Homme")

xfactor


#NB: ce changement peut se faire  l’intérieur de la fonction  factor  avec l’argument  labels.

#La fonction as.factor


combo <- c(1:4,5:1)

combo

combo.factor <-as.factor(combo)

combo.factor

#. La fonction ordered

#La fonction  != de factor et as.factor va nous permettre de créer des facteurs ordonnés :
  
niveau <- ordered(c("Licence","Licence","BAC","Master","Doctorat","Licence","Master","BAC","Doctorat"), 
                  levels=c("BAC","Licence","Master","Doctorat"))

niveau

nlevels(niveau)

# Les facteurs pour mieux représenter la réalité


X <- c(rep(5,2),rep(10,1),rep(13,5))

X

# Déterminer le type de données d'un vecteur : Interroger R sur le type

is.factor(X)

is.numeric(X)

# utiliser la variable "summary"


summary(X)

corbeille <- paste(rep("bidon vide",5),1:5,sep=".")

corbeille

summary(corbeille)

#NB : faire un "summary" sur un nouveau (dataframe) importé.
#permet de repérer rapidement les éventuelles erreurs de type pour les variables.

#Passons X en facteur.

Xf <- factor(X)

Xf

summary(Xf)

#Le facteur se distingue du numérique à cause de la présence des niveaux "levels" en fin d'affichage.  

# Convertion d'un facteur en numérique

as.numeric(Xf)

## conversion sans recodage des modalités : 2 étapes

debut <- as.character(Xf)

debut

as.numeric(debut)

# création des matrices avec R.