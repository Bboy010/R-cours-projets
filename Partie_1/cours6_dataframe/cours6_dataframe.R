#VI. Les Dataframes

#1. Définitions
#Les dataframes sont des listes dont les composantes sont:
#de même longueur, mais les modes peuvent être différents.

#2. Création de dataframe


#- "data.frame"  qui permet de concaténer des vecteurs de même taille 
#et éventuellement de modes différents ;

#- "read.table" qui permet d’importer un tableau de données provenant
#d’un fichier externe (csv, txt, etc.)

#"as.data.frame" pour la conversion explicite d’un objet à deux dimensions (comme une matrice).

x <- c("A","B","C","D","E")
y <- 1:5

# Utilisons x et y pour créer un dataframe

mondf <- data.frame(x,y)
mondf

length(mondf)

attributes(mondf)

#NB: transformation de matrice en dataframe on utilise la fonction  "as.data.frame".
#ou la fonction  "data.matrix".

#3. Visualisation d'un dataframe
#3.1. la fonction "str"

str(mondf) #résumé rapide

#3.2. la fonction "View"

View(mondf) # voir le contenu du dataframe

#Cette visualisation permet d’effectuer plusieurs opérations rapides sur le dataframe 
#- trier le dataframe selon une colonne définie ;
#- filtrer les valeurs d’une colonne définie.

# Partie 2 :la sélection d'élément