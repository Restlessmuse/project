
#HW4
#scatterplot Life Expectancy (y) and Fertility Rate (x) statistics by Country
#Scatterplot needs to be categorized by Country Regions
#1960 and 2013 for yeach year 
#some data in csv, some in vectors. csv has data for both years. 
#provide insights how the two periods compare

hw <- read.csv(file.choose())
hw

data1960 <- hw[hw$Year==1960,]
data1960

hw
data1960

data2013 <- hw[hw$Year==2013,]
data2013

#Creating Data Frame 
mydf1960<-data.frame(Code=Country_Code, LifeExpectancy=Life_Expectancy_At_Birth_1960) #pass the vectors to create data frame
head(mydf1960)

mydf2013<-data.frame(Code=Country_Code, LifeExpectancy=Life_Expectancy_At_Birth_2013) #pass the vectors to create data frame
head(mydf2013)

#Merging data frames - matching with codes
merged1960 <- merge(data1960,mydf1960,by.x="Country.Code", by.y="Code")
head(merged1960)

merged2013 <- merge(data2013,mydf2013,by.x="Country.Code", by.y="Code")
head(merged2013)

#Visualizing the new data frames
qplot(data=merged1960, x=Fertility.Rate, y=LifeExpectancy, size=I(5), colour = Region, shape=I(19), alpha=I(0.6), main="Fertility Rate vs Life Expectancy in 1960")

qplot(data=merged2013, x=Fertility.Rate, y=LifeExpectancy, size=I(5), colour = Region, shape=I(19), alpha=I(0.6), main="Fertility Rate vs Life Expectancy in 2013")

#Fertility rate was low in Europe in 1960 and in 2013 with high life expectancy, 

