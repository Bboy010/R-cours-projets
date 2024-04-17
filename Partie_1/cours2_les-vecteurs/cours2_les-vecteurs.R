#II. Les vecteurs

#1. Les vecteurs numériques
# représentent les varibles quantitatives 
#1.1. l'opérateur séquence ":"

1:4

#1.2. la fonction "seq"

seq(1,4,by=0.5) # compte de 1 à 4 par pas de 0.5 grace à l'argument by

seq(1,4,length=5) # donne 5 valeur  grace à l'argument length

#1.3. la fonction collecteur "c"

#la fonction collecteur "c" 

x <- c(1, 5, 10) # vecteur de numérique qui permet de collecter 3 éléments

x

y <- seq(1,10,by=3) # compte de 1 à 10 par pas de 3

y

z <- c(x,y) # collecte les données de x et y et les affiches dans l'ordre.

z

#1.4. la fonction "rep"

#la fonction "rep" permet de répéter un objet un nombre de fois définis
  
rep(1,4) # répète 1 quatre fois

rep(c(1,2),each=4) # repète chaque éléments collecter ici 1 et 2 4 fois

#2. Les vecteurs de caractères 

#Les vecteurs de caractères représentent des variables qualitatives.
#informations textuelles comme : les noms des abeilles, les noms des élèves, etc.

#ont peut également créer des vecteurs avec les fonctions "c" et "rep"

x <- c("bonjour","hello","good morning")
x

x <- rep(c("orange","banane","avocat"),times=2) #répète les élement énuméré deux fois
x

x <- rep(c("orange","banane","avocat"),times=c(1,4,2)) #répète le "orange" 1x le "banane" 4x et le "avocat" 2x
x

#conversion avec format() ou tostring()
  
format(1:10) # transforme les chiffres de 1 à 10 en chaine de caractère

x <- c("bon", "jo", "ur") #affiche une collection des caractères "bon" "jo" et "ur"

x

toString(x) # transfome la collection des caractères de x en phrase

#3. Création par concaténation
#3.1. la fonction "paste"

#Création de vecteur de caractères par concaténation( c'est à dire les mettre bout à bout) 

#Pour la concaténer, on utilise la fonction  "paste" :

corbeille <- paste(rep("bidon vide",5),1:5,sep=".")

corbeille


paste(c("L","A"),1:5,sep=".",collapse="+") # ecris "L" et "A" 5x separé par "." mais coller avec "+"


#3.2. la fonction "substr"

#la fonction "substr" permet d'exttraire un élément 

#exemple : 

substr("Bonjour",4,7) # extrait du 4 au 7eme éléments

#4. les vecteurs logiques
#4.1. le vecteur booléen  TRUE ou FALSE

#représenter des vecteurs binaires (mort ou vivant, présence ou non d’une maladie, etc.),
#mais peuvent aussi être le résultat d’une fonction appliquée à un autre vecteur 

#Les vecteurs de booléens sont en général générés grâce à des opérateurs logiques :
#  >=  ,  <  ,  <=  ,  ==  ,  !=  , etc.

#Ils permettent des sélections complexes ou des opérations de conditions.
 
2 > 0 # TRUE pour dire que 2 est supérieure à 0


#NB : En cas d’opérations arithmétiques, les FALSE sont transformés en 0 et les TRUE en 1.

#exemple : créons un objet test qui est le vecteur de logiques (TRUE,FALSE,TRUE).

x <- c(2,-1,4)

test <- x>1 #Affiche vrai si la valeur de x est supérieur ou sinon faux

(1+x^2)*test 


#demo : si x>1 alors on multiplie le résultat final par 1 sinon par 0
#cas x = 2, 1 + 2^2 =(1+4)*1 =5
#cas x = -1, 1 + -1^2 = (1+1)*0=0 
#cas x = 4, 1 + -4^2 = (1+16)*1=17

#4.2. les fonctions all ou any

#La fonction  all  renvoie TRUE si tous les éléments satisfont la condition et FALSE sinon.
#La fonction  any  renvoie TRUE dès que l’un des éléments satisfait la condition, FALSE sinon.

all(x>1) # tous les éléments du test précédent ne sont pas supérieur à 1

any(x>1)  # au moins 1 éléments du test précédent ne sont pas supérieur à 1

 
#cas particulier de vecteur : les facteurs. 