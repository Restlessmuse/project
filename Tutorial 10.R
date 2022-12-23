#Matrices

Salary

#access smth in the matrix A[3,4] indeces
#A[1,] i will mean 1st row
#A[,1] i will mean 1st column

Games
MinutesPlayed

#Salary <- rbind(KobeBryant_Salary, JoeJohnson_Salary, LeBronJames_Salary, CarmeloAnthony_Salary, DwightHoward_Salary, ChrisBosh_Salary, ChrisPaul_Salary, KevinDurant_Salary, DerrickRose_Salary, DwayneWade_Salary)
#colnames(Salary) <- Seasons
#rownames(Salary) <- Players
#rbind to make a matrix #row binding they have to be the same length
#cbind connects colomns into the matrix
#rm() to remove smth
#matrix bends a vector into the matrix

?matrix
mydata <- 1:20

A <- matrix(mydata, 4, 5)
A
A[2,3]
B <- matrix(mydata, 4, 5, byrow=T)#horisontally
B
B[2,5]

#rbind()

r1 <- c("I","am","happy")
r2 <- c("What","a","day")
r3 <- c(1,2,3)#numbers will become characters
C <- rbind(r1,r2,r3)
C

#cbind
c1 <- 1:5
c2 <- -1:-5
D <- cbind(c1,c2)
D


#Named Vectors
Charlie <- 1:5
Charlie

#give names
names(Charlie) #checking names
names(Charlie) <- c ("a", "b", "c", "d", "e") #assigning names
#treating names(charlie) as an object
Charlie
Charlie["d"]

#clear names
names(Charlie) <- NULL
Charlie

#naming Matrix dimensions

temp.vec<-rep(c("a", "B", "zZ"), times=3)
temp.vec
temp.vec2<-rep(c("a", "B", "zZ"), each=3)
temp.vec2

Bravo <- matrix(temp.vec, 3,3)
Bravo


rownames(Bravo) <- c("How", "are", "you?")
Bravo

colnames(Bravo) <- c("X", "Y", "Z")
Bravo

Bravo ["are", "Y"]

Bravo ["are", "Y"] <- 0 #replace a value
Bravo

rownames(Bravo)

rownames(Bravo) <- NULL #to remove
 





