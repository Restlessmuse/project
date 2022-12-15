
#set of numbers that are randomly distributed
#  ----2---- -1 --- 0 ----1 -----2----
rm(answer)  #remove variables
x <- rnorm(1)
 if (x > 1){
     answer<- "Greater than 1"
 } else{
  answer <- "Less or equal to 1"
}
#nested if-else statement
rm(answer)  
x <- rnorm(1)
if (x > 1){
  answer<- "Greater than 1"
} else{
  
  if (x >= -1){
    answer <- "Between -1 and 1"
  }else{
    answer <- "Less than -1"
  }
}

#chain statement else if
rm(answer)  
x <- rnorm(1)
if (x > 1){
  answer<- "Greater than 1"
} else if (x >= -1){
    answer <- "Between -1 and 1"
} else{
    answer <- "Less than -1"
}


