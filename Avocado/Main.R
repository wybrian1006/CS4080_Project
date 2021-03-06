##########################################################################
# CS4080_Group_Project
# Last Date Modified as: 11/14/2018
#
# Prompt user to choose menu items, and outputs the graph and datas.
# Draw histograms(frequency & density), and calculate lowest & highest price.
##########################################################################

# Menu runs
menuItems <- c("Make frequency histogram of a region",
"Make density histogram of a region",

"Make frequency histogram of a year",
"Make density histogram of a year",

"Make box plot of a region",
"Make box plot of a year",

"Calculate the mean & median price of a region",
"Calculate the mean & median price of a year",

"Get the lowest & highest price of a region",
"Get the lowest & highest price of a year",
"Exit")

name <- ""
while(TRUE){
  # Display Menu
  choice <- displayMenu(menuItems)
  
  # Region Frequency Histogram
  if(choice == 1){
    displayRegion()
    num <- readline(prompt = "Select a region (1~54): ")
    num = as.numeric(num)
    if ((num >= 1) && (num <=54)) {
      x = ((num-1)*52 + 1)
      y = num*52
      hist(myvalues$AveragePrice[x:y], main = "Average price of selected region", 
          xlab = "Price of Avocado", col = "blue", probability = F)
      cat('\n')
    } else {
      cat('You entered invalid number... Please try again!\n\n')
    }
    
  # Region Density Histogram
  } else if(choice == 2){
    displayRegion()
    num <- readline(prompt = "Select a region (1~54): ")
    num = as.numeric(num)
    if ((num >= 1) && (num <=54)) {
      x = ((num-1)*52 + 1)
      y = num*52
      hist(myvalues$AveragePrice[x:y], main = "Average price of selected region", 
           xlab = "Price of Avocado", col = "blue", probability = T)
      cat('\n')
    } else {
      cat('You entered invalid number... Please try again!\n\n')
    }
  
  # Year Frequency Histogram
  } else if(choice == 3){
    displayYear()
    num <- readline(prompt = "Select a year (xxxx): ")
    num = as.numeric(num)
    if ((num >= 2015) && (num <= 2018)) {
      year1 <- (subset(myvalues, year == num))$AveragePrice
      hist(year1, main = "Average price of selected region", 
           xlab = "Price of Avocado", col = "blue", probability = F)
      cat('\n')
    } else {
      cat('You entered invalid number... Please try again!\n\n')
    }
    
  # Year Density Histogram
  } else if(choice == 4){
    displayYear()
    num <- readline(prompt = "Select a year (xxxx): ")
    num = as.numeric(num)
    if ((num >= 2015) && (num <= 2018)) {
      year1 <- (subset(myvalues, year == num))$AveragePrice
      hist(year1, main = "Average price of selected region", 
           xlab = "Price of Avocado", col = "blue", probability = T)
      cat('\n')
    } else {
      cat('You entered invalid number... Please try again!\n\n')
    }
    
  # Region Boxplot
  } else if(choice == 5){
    displayRegion()
    num <- readline(prompt = "Select a region (1~54): ")
    num = as.numeric(num)
    if ((num >= 1) && (num <=54)) {
      x = ((num-1)*52 + 1)
      y = num*52
      boxplot(myvalues$AveragePrice[x:y])
      cat('\n')
    } else {
      cat('You entered invalid number... Please try again!\n\n')
    }
    
  # Year Boxplot
  } else if(choice == 6){
    displayYear()
    num <- readline(prompt = "Select a year (xxxx): ")
    num = as.numeric(num)
    if ((num >= 2015) && (num <= 2018)) {
      year1 <- (subset(myvalues, year == num))$AveragePrice
      boxplot(year1)
      cat('\n')
    } else {
      cat('You entered invalid number... Please try again!\n\n')
    }
    
  # Region mean & median
  } else if(choice == 7){
    displayRegion()
    num <- readline(prompt = "Select a region (1~54): ")
    num = as.numeric(num)
    if ((num >= 1) && (num <=54)) {
      x = ((num-1)*52 + 1)
      y = num*52
      meanVal = mean(myvalues$AveragePrice[x:y])
      medianVal = median(myvalues$AveragePrice[x:y])
      cat('The mean price is', meanVal, ', and the median price is', medianVal, '.\n\n')
    } else {
      cat('You entered invalid number... Please try again!\n\n')
    }
    
  # Year mean & median
  } else if(choice == 8){
    displayYear()
    num <- readline(prompt = "Select a year (xxxx): ")
    num = as.numeric(num)
    if ((num >= 2015) && (num <= 2018)) {
      year1 <- (subset(myvalues, year == num))$AveragePrice
      meanVal = mean(year1)
      medianVal = median(year1)
      cat('The mean price is', meanVal, ',and the median price is', medianVal, '.\n\n')
    } else {
      cat('You entered invalid number... Please try again!\n\n')
    }
    
  # Region lowest & highest
  } else if(choice == 9){
    displayRegion()
    num <- readline(prompt = "Select a region(1 to 54): ")
    num = as.numeric(num)
    if ((num >= 1) && (num <= 54)) {
      x = ((num-1)*52 + 1)
      y = num*52
      index1 = which.min(myvalues$AveragePrice[x:y])
      lowest = myvalues$AveragePrice[index1]
      index2 = which.max(myvalues$AveragePrice[x:y])
      highest = myvalues$AveragePrice[index2]
      cat('The lowest price is', lowest, ',and the highest price is', highest, '.\n\n')
    } else {
      cat('You entered invalid number... Please try again!\n\n')
    }
    
  # Year lowest & highest
  } else if(choice == 10){
    displayYear()
    num <- readline(prompt = "Select a year (xxxx): ")
    num = as.numeric(num)
    if ((num >= 2015) && (num <= 2018)) {
      year1 <- (subset(myvalues, year == num))$AveragePrice
      lowest = year1[which.min(year1)]
      highest = year1[which.max(year1)]
      cat('The lowest price is', lowest, ',and the highest price is', highest, '.\n\n')
    } else {
      cat('You entered invalid number... Please try again!\n\n')
    }
    
  # Exit
  } else if(choice == 11){
    break
  }
}

# End of Main
print("Bye... See you again!!")
