#Utiliser les fonctions spécifiques à l'analyse de données

#tirer 3 valeurs entre 1 et 10, sans remise :

sample(1:10, 3, replace=F)

set.seed(1234)
df <- data.frame(nb = sample(1:10, 100, replace = TRUE),
                 LT = sample(LETTERS[1:3], 100, replace = TRUE),
                 lt = sample(letters[1:3], 100, replace = TRUE))
df[1:10,]

summary(df)

# tableau croisé avec la fonction table

table(df$lt) #recupérer les lettres minuscules du tableau

table(df$lt,df$LT)

#autres fonctions

mean(df[,1])

min(df[,1])

#pour trier une valeur

sort(df[1:20,1], decreasing=T) #tri les 20 premières valeurs par ordre décroissant

demo(graphics)

