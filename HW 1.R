# Xn --> E(X) when n --> infinity Law of Large Numbers
#Xn average   #E-theoretical value of X
#  i is not an index but a variable

N <- 100
X <- rnorm(100)
i <- 1
for (x in N){
if (X <= 1){
  print (i)
  i <- i+1
}else {
  (X >= -1) 
  print (i)
  i <- i+1
  }
 }
ex <- 68.2
MeanXN <- X / i
result <- MeanXN < ex
result

#Hints:
N <- 200
counter <- 1
 for(i in rnorm(N)){
   if (i <= 1 & i >= -1){
     counter <- counter +1
   }
 }
result <- counter / N
result
ex <- 0.682
answer <- result < ex
answer