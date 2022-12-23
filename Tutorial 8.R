#Functions
rnorm()

c()
seq()
rep()
print()
is.numeric()
is.integer()
is.double()
is.character()
typeof()
sqrt()
paste()

#? gives tips
?rnorm()
?seq()
?rep()


rnorm(5, 10, 8)
rnorm(n=5, mean=5, sd=2) #can change places
rnorm(n=5, sd=2, mean=5)
rnorm(n=5, sd=2)

x <- c("a", "b", "c")
seq(10,20,3)
seq(from=10,to=20,by=3)
seq(from=10,to=20,length.out=100)
seq(from=10,to=20,along.with=x) #makes the same length as vector x

rep(5,10)
rep(5:6,10) 
rep(5:6, times=10) #same as above
rep(5:6, each = 10)
rep(x, each = 10)
rep(x, times = 10)


A <- seq(from=10,to=20,along.with=x)
A
B <- sqrt(A)
B
