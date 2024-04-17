#IV/ générer des nombres aléatoires

#loi normale;  r  pour random et  norm  pour normale :
  
rnorm(5) #valeurs aléatoire différente à chaque lancement

#pour fixer la graine du générateur de nombres aléatoires
#on utilise la fonction  set.seed.

set.seed(12345) #limite les variations
rnorm(5)

#relançons à nouveau

set.seed(12345)
rnorm(5) #même résultat chez vous
  
#Pour calculer les probabilités, on utilise  pnorm.

pnorm(0)

pnorm(1.96)

#La fonction  dnorm  calcule la densité
  
gx <- seq(-3,3,length=100)

plot(gx,dnorm(gx),type="l") #plot pour tracer le graphe

#on retrouve le dessin de la courbe gaussienne.

#Pour calculer les quantiles d’une normale centrée réduite:
  
qnorm(c(0.025,0.5,1))

#cours16 localiser les données manquantes
