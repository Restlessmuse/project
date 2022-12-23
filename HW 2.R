#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
revenue
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)
expenses

#HINT
round()
mean()
max()
min()

#Task

#1. Profit for each month
#2. Profit after tax for each month (the tax rate is 30%)
#3. Profit margin for each month - equals to profit after tax divided by revenue
#4. Good months - where the profit after tax was greater than the mean for the year
#5. Bad months - where the profit after tax was less than the mean for the year
#6. The best month - where the profit after tax was max for the year
#7. The worst month - where the profit after tax was min for the year

#Solution for Financial Statement assessment

#1.
profit = revenue - expenses
profit

#2.
taxprofit = 0.7 * profit
taxprofit

#3.
margprofit = taxprofit / revenue * 100 
margprofit
marg <- round(margprofit, 0)
marg

#from HINT
#profit.margin <- _(_/_, 2)* _
profit.margin <- c(taxprofit/revenue, 2)* 100
profit.margin

#4.
M <- mean(taxprofit)
M

Goodmonths <- c(taxprofit > M)
Goodmonths

#5.
Badmonths <- c(taxprofit < M)
Badmonths

#From HINT  bad months are the opposite of good months
Badm <- !Goodmonths
Badm

#6.
Best <- max(taxprofit)
Best
#From HINT where the profit after tax was equal to the maximum
BestM <- taxprofit == max(taxprofit)
BestM

#7.
Worst <- min(taxprofit)
Worst
#From HINT where the profit after tax was equal to the minimum
WorstM <- taxprofit == min(taxprofit)
WorstM


#Convert All calculations to units of One Thousand Dollars

revenue.1000 <- round(revenue / 1000,0)
expenses.1000 <- round(expenses / 1000, 0)
profit.1000 <- round(profit / 1000, 0)
taxprofit.1000 <- round(taxprofit / 1000, 0)


#Extra

Matrix <- rbind(
  revenue.1000,
  expenses.1000,
  profit.1000,
  taxprofit.1000,
  marg,
  Goodmonths,
  Badmonths,
  BestM,
  WorstM
)
Matrix
