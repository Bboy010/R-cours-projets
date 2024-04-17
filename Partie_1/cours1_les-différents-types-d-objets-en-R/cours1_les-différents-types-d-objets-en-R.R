#I Les différents types d'objet en R


MonPremierObjet <- 5 # crée l’objet x en lui donnant la valeur 5
mondeuxieme_objet = 10 # mon-deuxieme-objet reçoit la valeur 10
mon_troisieme_objet = MonPremierObjet # mon_troisieme_objet reçoit la valeur MonPremierObjet, soit ici 5
3 -> mon4objet # mon4objet reçoit la valeur 3

#pour afficher un élément

x <- 2
print(x)

x 

objects()

ls()



#supprimer un objet avec rm()

x <- 2

rm(x)

#pour supprimer pluseurs objets : 

a <- 56
b <- 25
c <- "bonjour"

rm(a,b,c)

# les types de données

rien = NULL
longeur = 14.5
ail = TRUE
femmelle = F
village = 'ando'
ville = "Beoumi"

# la commande mode()

x = "bonjour"

mode(x)

#pour  tester l’appartenance d’un objet  x  à un mode particulier avec "is."

is.complex(x)

is.character(x)

#convertion d'un type à un autre grace à "as." suivi du nom du type correspondant en R.

as.logical(x)

mode(x)

as.character(x)


#NB : Un objet a deux attributs intrinsèques : son mode et sa longueur (fonction length).

#Pour accéder à la liste de plus d'attribut faite : attributes(objet)

mon_objet <- 2
attributes(mon_objet)

#les données manquantes NA

x <- NA
print(x+1) #NA

#Pour trouver la valeur manquante poser la question  is.na  :

is.na(x)

#- Inf : pour infini. 
  
1/0

exp(1e12)

#- NaN: pour <<Not a Number>>. 

log(-3)

# Raccourcis dans R

#Alt + Shift + K

# Cours2 utiliser les vecteurs.