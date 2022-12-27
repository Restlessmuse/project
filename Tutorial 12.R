
?read.csv()
#Method1 select the file manualy
stats <- read.csv(file.choose())
stats
#method2 select working directory and read data from there
#getwd()
#setwd("C:/Users/anastasii.vysotskaia/Desktop/R") #couldn`t do that
#stats <- read.csv("DemographicData.csv")
nrow(stats) #check if everything was uploaded
ncol(stats)
head(stats)
head(stats, n=10)
tail(stats)
str(stats) #structure # in my program the cathegorical Factors are called chr (caracters)
?str
?runif #uniform distribution
summary(stats) #counts median, deviations, min,max


#Using $Sign
stats
head(stats)
stats[3,3]
stats[3,"Birth.rate"]
#in data frames rows have numbers, columns dont
stats$Internet.users #returs the vector of chosen column
stats$Internet.users[2]
stats[,"Internet.users"] #same as $
levels(stats$Income.Group) #NULL not working
stats$Income.Group

#basic operations with Data frame

stats[1:10,] #subsetting
stats[c(4,100),] #the structur of the data is preserved
stats[1,]
is.data.frame(stats[1,]) #after extracting data stays a data frame, no need the drop func
stats[,1] #now it`s vector
is.data.frame(stats[,1])
stats[,1,drop=F]
is.data.frame(stats[,1,drop=F])
#multiply columns
head(stats)
stats$Birth.rate*stats$Internet.users #same with +,-,/
#add column
head(stats)
stats$MyCalc <- stats$Birth.rate*stats$Internet.users
stats$xyz <- 1:5 #vector 1:5 is recycled 1:4 will not be possible as 195 not dividing by 4
head(stats)
head(stats, n=10)

#remove a column
head(stats)
stats$MyCalc <- NULL
stats$xyz <- NULL
head(stats)

#Filtering a Data Frame
head(stats)
filter <- stats$Internet.users < 2  #vector is compared with number 2

stats[filter,] #if it has True value it will display that row, if there is False it won`t

stats[stats$Birth.rate>40,]
stats[stats$Birth.rate>40 & stats$Internet.users <2,]
stats[stats$Income.Group == "High income",]
stats
stats[117,]


stats[stats$Country.Name == "Malta",]


#Introduction to qplot
?qplot
library(ggplot2)
?qplot
qplot(data=stats,x=Internet.users) #creating "shell"

qplot(data=stats, x=Income.Group,y=Birth.rate)
qplot(data=stats, x=Income.Group,y=Birth.rate, size=10) #the legend will be created
qplot(data=stats, x=Income.Group,y=Birth.rate, size=I(10)) #to use size just to plot on data
qplot(data=stats, x=Income.Group,y=Birth.rate, size=I(3),colour=I("blue")) 

qplot(data=stats, x=Income.Group,y=Birth.rate, geom="boxplot")


#Visualizing what we need
qplot(data=stats, x=Internet.users, y=Birth.rate)
qplot(data=stats, x=Internet.users, y=Birth.rate, size=I(4))

qplot(data=stats, x=Internet.users, y=Birth.rate, size=I(4), colour = I("red"))
qplot(data=stats, x=Internet.users, y=Birth.rate, size=I(5), colour = Income.Group)


#Creating Data Frame --------categorising by countries`regions, data was added
mydf<-data.frame(Countries_2012_Dataset,Codes_2012_Dataset, Regions_2012_Dataset) #pass the vectors to create data frame
head(mydf)

#colnames(mydf) <- c("Country", "Code", "Region")
#head(mydf)
 
rm(mydf) 

mydf<-data.frame(Country=Countries_2012_Dataset,Code=Codes_2012_Dataset, Region=Regions_2012_Dataset) #changing names on the go
head(mydf)

#Merging data frames


head(stats) 
#matching with codes
merged <- merge(stats,mydf,by.x="Country.Code", by.y="Code") #"Code column will be removed as it is the same"
head(merged)

merged$Country <- NULL
str(merged)

#Visualizing the new data frame

-------------------------------#
library(ggplot2)
qplot(data=merged, x=Internet.users, y=Birth.rate, size=I(5), colour = Region)

#1. Shapes

qplot(data=merged, x=Internet.users, y=Birth.rate, size=I(5), colour = Region, shape=I(23)) #shape numbers can be googled

#2. Transparancy
qplot(data=merged, x=Internet.users, y=Birth.rate, size=I(5), colour = Region, shape=I(19), alpha=I(0.6)) #alpha=transparancy

#3. Title = main
qplot(data=merged, x=Internet.users, y=Birth.rate, size=I(5), colour = Region, shape=I(19), alpha=I(0.6), main="Birth Rate vs Internet Users")












