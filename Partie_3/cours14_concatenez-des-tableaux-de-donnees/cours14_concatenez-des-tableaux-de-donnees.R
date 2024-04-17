#cours 14

#III. Concaténez des tableaux de données

#1. Concaténez plusieurs tableaux

#1.1. La concaténation par ligne avec la fonction "rbind"

X <- matrix(c(1,2,3,4),2,2)
rownames(X) <- paste("ligne",1:2,sep="")
colnames(X) <- paste("X",1:2,sep="")
X

Y <- matrix(11:16,3,2)
colnames(Y) <- paste("Y",1:2,sep="")
rownames(Y) <- paste("ligne",1:3,sep="")
Y

# Concatenons les deux matrices X et Y

z <- rbind(X,Y) #concatenation par ligne
z

#Exemple avec deux dataframes de structure identique: 
  
x <- c("A","B","C","D")
y <- 1:4
mondf <- data.frame(x,y)
mondf

mondf2 <- data.frame("C",1)
mondf2

rbind(mondf,mondf2) #erreur car noms des variables différents
  
# pour que cela marche il faut changer le nom des variables de l’un des dataframes
#pour pouvoir les concaténer :
  
mondf2 <- data.frame(x="C",y=1)
rbind(mondf,mondf2)

#1.2. Concaténation par colonne avec "cbind"

mondf3 <- data.frame(taille=c(182,170,172,194),age=c(14,18,25,16))
cbind(mondf,mondf3)

cbind(mondf3,mondf)

#2. Fusionnez plusieurs dataframes avec la fonction "merge"

mondf4 <- data.frame(x=c("A","B","A"),taille=seq(180,190,by=5))
mondf4

#fusion de mondf et mondf4 avec variable commune x

mondf
mondf4
merge(mondf,mondf4) #jointure interne

#3. Les types de jointures

merge(mondf,mondf4,all.x=T) #jointure gauche

merge(mondf,mondf4,all.y=T) #jointure droite

merge(mondf,mondf4,all=T) #La jointure externe (all=T)


#allez plus loin: https://www.datasciencemadesimple.com/join-in-r-merge-in-r/

#cour15 générer des nombres aléatoires avec R.
