#FieldGoals, Minutes played per Games

round(FieldGoals / Games, 1) # matrix should be the same size
round(MinutesPlayed / Games)

round(FieldGoalAttempts / Games)
round(FieldGoals /FieldGoalAttempts, 3)

#visualization

?matplot #this function plots columns of the matrix one by one
matplot(FieldGoals)
#we need transpozing (changing rpws with the columns and vise versa)
t(FieldGoals)
matplot(t(FieldGoals))
matplot(t(FieldGoals), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.01, legend=Players, col=c(1:4,6), pch=15:18, horiz=F)

matplot(t(FieldGoals/FieldGoalAttempts), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.01, legend=Players, col=c(1:4,6), pch=15:18, horiz=F)

matplot(t(Salary/Points), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.01, legend=Players, col=c(1:4,6), pch=15:18, horiz=F)

matplot(t(Points/Games), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.01, legend=Players, col=c(1:4,6), pch=15:18, horiz=F)


#subsetting - retrieving just the parts of large files which are of interest for a specific purpose.
x <- c("a","b","c", "d", "e")
x
x[c(1,5)]
x[1]

Games
Games[1:3,6:10] #1;3 rows, 6;10 columns
Games[c(1,10),]
Games[,c(4:5)]
Games[,c("2008","2009")]
Games[1,]
is.matrix(Games[1,])
is.vector(Games[1,])
Games[1,5] #when you use square brakets R will guess what you want, it will think of the vector 

Games[1,,drop=F] #giving you the same class of object that you had originally which was matrix
Games[1,5,drop=F]


#visualizing subsets

matplot(t(MinutesPlayed), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.01, legend=Players, col=c(1:4,6), pch=15:18, horiz=F)

Data <- MinutesPlayed[1:3,]
Data

matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.01, legend=Players[1:3], col=c(1:4,6), pch=15:18, horiz=F) #Players are also modified, chose 1 to 3 as Players is also a vector

Data1 <- MinutesPlayed[1,,drop=F]
Data1

matplot(t(Data1), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", inset=0.01, legend=Players[1], col=c(1:4,6), pch=15:18, horiz=F)

#Creating My Function

myplot <- function() {
  Data1 <- MinutesPlayed[2:3,,drop=F]
  Data1
  
  matplot(t(Data1), type="b", pch=15:18, col=c(1:4,6))
  legend("bottomleft", inset=0.01, legend=Players[2:3], col=c(1:4,6), pch=15:18, horiz=F)
}

myplot()

#specifying parameters

myplot1 <- function(rows) {
  Data1 <- MinutesPlayed[rows,,drop=F]
  Data1
  
  matplot(t(Data1), type="b", pch=15:18, col=c(1:4,6))
  legend("bottomleft", inset=0.01, legend=Players[rows], col=c(1:4,6), pch=15:18, horiz=F)
}

myplot1(1:10) #function will look what you are supplying it, in this case ROWS

#visualizing other datasets and making function flexible
myplot1 <- function(data,rows) {
  Data1 <- data[rows,,drop=F]
  Data1
  
  matplot(t(Data1), type="b", pch=15:18, col=c(1:4,6))
  legend("bottomleft", inset=0.01, legend=Players[rows], col=c(1:4,6), pch=15:18, horiz=F)
}

myplot1(Salary,1:2)

#setting defolt parameters-if the user is not supplying data the function will use smthing

myplot1 <- function(data,rows=1:10) {
  Data1 <- data[rows,,drop=F]
  Data1
  
  matplot(t(Data1), type="b", pch=15:18, col=c(1:4,6))
  legend("bottomleft", inset=0.01, legend=Players[rows], col=c(1:4,6), pch=15:18, horiz=F)
}

myplot1(Salary)


 

myplot(Salary)
myplot(Salary/Games)
myplot(Salary/FieldGoals)

#In-game metrics
myplot(MinutesPlayed)
myplot(Points)

#In-game metrics normalized
myplot(FieldGoals/Games)
myplot(FieldGoals/FieldGoalAttempts)
myplot(FieldGoalAttempts/Games)
myplot(Points/Games) #requires more domain knowledge

#observations
myplot(MinutesPlayed/Games)
myplot(Games)

myplot(FieldGoals/MinutesPlayed)


myplot(Points/FieldGoals)




