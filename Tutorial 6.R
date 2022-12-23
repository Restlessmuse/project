firstvector <- c(3, 45, 56, 732)
firstvector
is.numeric(firstvector)
is.integer(firstvector)
is.double(firstvector)
V2 <- c(3L, 12L, 243L, 0L)
is.numeric(V2)
is.integer(V2)
is.double(V2)

V3 <- c("a", "B23", "H")
is.numeric(V3)
is.character(V3)
V4 <- c("a", "B23", "H", 7)
is.numeric(V4)
is.character(V4)

seq() #sequence
rep() #replicate

seq(1,15)
1:15
seq(1,15,2)
z <- seq(1,15,4)
z
rep(3,50)
d <- rep(3,50)
rep('a', 5)

x <- c(80,20)
y <- rep(x,10)

x <- c(1,123,534,13,4) #combine
y <- seq(201,250,11)   #sequence
z<-rep("Hi!",3)        #replicate
w <- c("a","b", "c", "d", "c")
w[1] #accessing the elements
w[-1] #accessing all except first one
v <- w[-3] #accessing all except third one in return - a vector again
w[1:3]
w[3:5]
w[c(1,3,5)]
w[c(-2,-4)]
w[-3:-3]
w[0:-3]
w[0:1]
w[-1:0]

z <- x-y
z
#lygometry
