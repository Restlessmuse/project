#Packages
#blender methaphor
#directory where packages are stored is a library
#Comprehensive R Archive Network

install.packages("ggplot2")  #installation of a package!!!!!!!
?ggplot()
library(ggplot2)   #activation of the package!!!!!!
?ggplot()
?diamonds
?qplot
qplot(data=diamonds, carat, price, colour=clarity, facets=.~clarity)
