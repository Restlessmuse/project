#Advanced visualization
#Factors
movies <- read.csv(file.choose())
movies
colnames(movies) <- c("Film", "Genre", "CriticRating", "AudienceRating", 
"BudgetMillions","Year")
head(movies)
str(movies)
summary(movies)
#converting year to factor categoric
factor(movies$Year) #made a vector of that column
movies$Year <- factor(movies$Year) #assigning this vector to that column
summary(movies)
str(movies)
factor(movies$Film) 
movies$Film <- factor(movies$Film)
factor(movies$Genre)
movies$Genre <- factor(movies$Genre)
summary(movies)
str(movies)
#I made categoric things factors YAY!


#Aesthetics
libraary(ggplot2)
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating))   #aesthetics function-how your data maps to what you want to see

#introducing geometry layer or we don`t see anything`

ggplot(data=movies, aes(x=CriticRating, y=AudienceRating)) + 
  geom_point()

#add colour

ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre)) + 
  geom_point()                                                                   #legend added automatically
#add size = Using size for a discrete variable is not advised. 
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre, size=Genre)) + 
  geom_point()                                                                   

#add size - Better way
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre, size=BudgetMillions)) +    #adding layers
  geom_point()    


#----This #1 (Chart to be Improved)

#plotting with layers

p <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre, size=BudgetMillions))
#point
p+geom_point()
#lines
p+geom_line()

#multiple layers= layering works as you add something on top of each other, the last thing appears on top
p+geom_point()+geom_line()
p+geom_line()+geom_point()   


#Overriding Aesthetics


q <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre, size=BudgetMillions))

#add geom layer
#example1
q+geom_point(aes(size=CriticRating))

#example2
q+geom_point(aes(colour=BudgetMillions))
q+geom_point()

#example3 - x and y can be overrided
q+geom_point(aes(x=BudgetMillions)) + xlab("Badget Millions $$$")

#example4
q+geom_line()+geom_point()
#reduce line size #mapping vs setting, no aes function used

q+geom_line(size=1)+geom_point()

#Mapping vs Setting

r <- ggplot(data=movies,aes(x=CriticRating, y=AudienceRating))
r+geom_point()
#add colour
#1 way with mapping


r+geom_point(aes(colour=Genre))

#2 way with setting
r+geom_point(colour="DarkGreen")

#Error:
#r+geom_point(aes(colour="DarkGreen"))

#1.Mapping
r+geom_point(aes(size=BudgetMillions))
#2 Setting
r+geom_point(size=10)

#Error:
r+geom_point(aes(size=10)) # 10 as it is a category and a legend is added



#1.Mapping
r+geom_point(aes(size=Genre))
#2 Setting
r+geom_point(size=10)
#Error:
r+geom_point(aes(size=10))

r+geom_point(aes(colour=Year, size=Genre))

#Histograms and Density Charts

s <- ggplot(data=movies, aes(x=BudgetMillions)) #R is aggregating "Count" new statistic
s+geom_histogram(binwidth=10) #controlling width

#add colour

s+geom_histogram(binwidth=10, aes(fill=Genre))  #colour is the outline, fill is the fill of boxes
#add border
s+geom_histogram(binwidth=10, aes(fill=Genre), colour="Black")

#Chart #3 to be improved

#sometimes you need density charts

s+geom_density(aes(fill=Genre))
s+geom_density(aes(fill=Genre), position="stack")

#Starting Layer Tips

t <- ggplot(data=movies, aes(x=AudienceRating))
t+geom_histogram(binwidth=10,
fill="White", colour="Blue")

#another way:

t <- ggplot(data=movies)
t+ geom_histogram(binwidth=10, aes(x=AudienceRating),fill="White", colour="Blue")

# 4 Chart

t+ geom_histogram(binwidth=10, aes(x=CriticRating),fill="White", colour="Blue")


#5

t <- ggplot() #skeleton plot


#Statistical Trnsformation

?geom_smooth #shows dependancies and relationships
u <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre))
u+geom_point()+geom_smooth(fill=NA)


#boxplots

u <- ggplot(data=movies, aes(x=Genre, y=AudienceRating, colour=Genre))
u+geom_boxplot()
u+geom_boxplot(size=1.2)+geom_point()

#TIP:
u+geom_boxplot(size=1.2)+geom_jitter()


#another way:
u+geom_jitter()+geom_boxplot(size=1.2, alpha=0.5)

#Chart 6
#Challenge

u <- ggplot(data=movies, aes(x=Genre, y=CriticRating, colour=Genre))
u+geom_jitter()+geom_boxplot(size=1.2, alpha=0.5)


#Using Facets

v <- ggplot(data=movies,aes(x=BudgetMillions))
v + geom_histogram(binwidth=10, aes(fill=Genre), colour="Black")


#Facents

v + geom_histogram(binwidth=10, aes(fill=Genre), colour="Black")+ 
  facet_grid(Genre~., scales="free") #scales=free is for the axis to chenge zooming

#scatterplot
w <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre))
w+geom_point(size=3)
#Facent
w+geom_point(size=3)+facet_grid(.~Year)

w+geom_point(size=3)+facet_grid(Genre~Year)+geom_smooth()

w+geom_point(aes(size=BudgetMillions))+facet_grid(Genre~Year)+geom_smooth()


#Chart 1 to be improved

#Coordinates

#Today: #limits #zoom

m<- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating,size=BudgetMillions, colour=Genre))
m+geom_point()

m+ geom_point()+xlim(50,100)  #adding layer 

m+ geom_point()+xlim(50,100)+ylim(50,100) 


#won`t work well here:
n<-ggplot(data=movies,aes(x=BudgetMillions))
n+geom_histogram(binwidth=10,aes(fill=Genre), colour="Black")
#to zoom in 
n+geom_histogram(binwidth=10,aes(fill=Genre), colour="Black")+ylim(0,50) #the data is cut out :(

#instead to zoom in:
n+geom_histogram(binwidth=10,aes(fill=Genre), colour="Black")+coord_cartesian(ylim=c(0,50))

#improve #1

w+geom_point(aes(size=BudgetMillions))+facet_grid(Genre~Year)+geom_smooth()+coord_cartesian(ylim=c(0,100))


#Theme

o <- ggplot(data=movies, aes(x=BudgetMillions)) 
h <- o+geom_histogram(binwidth=10, aes(fill=Genre), colour="Black")
h
#add axes labels

h + xlab("MoneyAxis")+ylab("Number of Movies")


#label formatting

h +
  xlab("MoneyAxis")+
  ylab("Number of Movies")+
  theme(axis.title.x = element_text(colour="DarkGreen", size=30), 
        axis.title.y=element_text(colour="Red", size=30))


#tick mark formatiing

h +
  xlab("MoneyAxis")+
  ylab("Number of Movies")+
  theme(axis.title.x = element_text(colour="DarkGreen", size=30), 
        axis.title.y=element_text(colour="Red", size=30),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size=20))

?theme
#legend formatting

h +
  xlab("MoneyAxis")+
  ylab("Number of Movies")+
  theme(axis.title.x = element_text(colour="DarkGreen", size=30), 
        axis.title.y=element_text(colour="Red", size=30),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size=20),
        
        legend.title=element_text(size=30),
        legend.text=element_text(size=20),
        legend.position = c(1,1),
        legend.justification=c(1,1))

#title of the plot

h +
  xlab("MoneyAxis")+
  ylab("Number of Movies")+
  ggtitle("Movie Budget Distribution")+
  theme(axis.title.x = element_text(colour="DarkGreen", size=30), 
        axis.title.y=element_text(colour="Red", size=30),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size=20),
        
        legend.title=element_text(size=30),
        legend.text=element_text(size=20),
        legend.position = c(1,1),
        legend.justification=c(1,1),
        plot.title=element_text(colour="DarkBlue", size=40,family="Courier")) #font































