#IV. Les matrices

# matrice simple

x <- matrix(c(1:8),nrow=2,ncol=4) # classement par colonne par défaut
x

x <- matrix(c(1:8),nrow=2,ncol=4,byrow=TRUE) # classement par ligne
x
 
y <- matrix(1:2,ncol=1)
y
 
z <- matrix(6:1,ncol=6)
z

#Matrice décalé
#vecteur trop grand coupure sinon repétition

t <- matrix(1:4,nrow=3,ncol=3)
t

#2.3. Matrice à élément unique
  
matrix_unique <- matrix(3,nrow=3,ncol=4)
matrix_unique

#2.4. Transformez un vecteur en matrice

#transformer un vecteur en une matrice unicolonne avec la fonction  as.matrix
  
x <- seq(1:5)
x

as.matrix(x)

#2.5. Matrice de caractère

matrix(c("A","K","W","A","B","A"),ncol=2)

#3. Opérations entre matrices

m <- matrix(1:6,ncol=3)
m

n <- matrix(3:8,ncol=3,byrow=T)
n
 
m+n # addition de matrice de même dimension

m*n

# allez plus loin

exp(n) # Exponentielle élément par élément

m^2 # m puissance 2

#3.2. Autres fonctions utiles

X <- matrix(1:8,ncol=4)
X

ncol(X) #nombre de colonne

nrow(X) #nombre de ligne
 
dim(X) # dimension 

#3.2.2. Concaténation avec cbind et rbind
 
cbind(c(1,2),c(3,4)) #concaténer par colonne

rbind(c(1,2),c(3,4)) #concaténer par ligne

#3.2.3. La fonction apply

apply(X,MARGIN=2,sum) # somme de colonne
 
apply(X,1,mean) # moyennes par ligne

#créer une liste