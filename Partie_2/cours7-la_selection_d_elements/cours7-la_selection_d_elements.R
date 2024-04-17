#cours 7
#Partie 2
#I. La sélection d'éléments

#1. Principes de sélection
#Il y a deux grands principes dans la sélection d’éléments d’un objet R :

#1.1. La sélection par position

#Pour faire une sélection par position : 
#il faut indiquer un ou plusieurs vecteurs de positions (ou d’indices),
#des éléments à sélectionner ;

#1.2. La sélection par condition

#Pour faire une sélection par condition : 
#il faut indiquer une condition et ne seront 
#sélectionnés que les éléments satisfaisant cette condition.

#NB : les deux types de sélections se font avec l'opérateur de sélection "[]"

#2. La sélection par condition

opérateurs de conditions utiles

==  égal à (deux valeurs sont exactement pareilles)

!=  différent de

<  inférieur à

<=  inférieur ou égal

>  supérieur à

>=  supérieur ou égal

#Exemple
# test de comparaison
  
> 3 == 3 #[1] TRUE
> 3 == 3.1 #[1] FALSE
> 2 != 2 #[1] FALSE
> 2 != 5 #[1] TRUE
> 1 < 3 #[1] TRUE
> 1 < 0 #[1] FALSE
> 1 <= 1 #[1] TRUE
> 1 <= 0 #[1] FALSE
> 5 > 5 #[1] FALSE
> 5 > 4 #[1] TRUE
> 4 >= 9 #[1] FALSE

# Exemple avec un vecteur

x <- -2:4
x > 0


#à chaque valeur de x entre -2 et 4 la fonction retourne un booléen 

#3. Opérateurs logique

#pour faire plusieurs conditions on utilise les opérateurs logiques.
#Ces opérateurs permettent de combiner plusieurs valeurs booléennes : Il y en a 3
  
# 3.1. L'opérateur "&"

L’opérateur "&" =>ET, le résultat final est vrai seulement lorsque toutes les conditions sont vraies.
Par exemple : le résultat de condition1 & condition2  sera à TRUE seulement si condition1  est vraie ET condition2  est également vraie.

3.2. L'opérateur "|" 

L’opérateur "|" => OU, le résultat final est vrai lorsque au moins une des conditions est vraie.
Par exemple : le résultat de condition1  | condition2  sera à TRUE si   condition1  est vraie OU condition2  est vraie.

3.3. L'opérateur "!"

L’opérateur "!" => N’EST PAS, Cela inverse simplement le résultat de la condition donnée.
Par exemple, le résultat de !(condition)  est vrai lorsque condition  est faux.

Exemple :
TRUE & TRUE # TRUE
TRUE & FALSE # FALSE
FALSE & FALSE # FALSE
TRUE | FALSE # TRUE
TRUE | TRUE # TRUE
FALSE | FALSE # FALSE
!TRUE # FALSE
!FALSE # TRUE

Retenons :

Il existe deux façons de sélectionner des éléments au sein d’un objet en R : soit via une sélection par position (ou indice), soit via une sélection par condition.

Les conditions peuvent être construites en utilisant des opérateurs de comparaisons et/ou des opérateurs logiques.

Maintenant que les différents principes de sélection sont claires, nous allons voir comment les mettre en œuvre avec des vecteurs !

