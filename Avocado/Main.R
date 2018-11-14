##########################################################################
# CS4080_Group_Project
# Last Date Modified as: 11/14/2018
#
# Prompt user to choose menu items, and outputs the graph and datas.
# Draw histograms(frequency & density), calculate lowest & highest price.
##########################################################################

# Menu runs
menuItems <- c("Make frequency histogram of a region",
"Make density histogram of a region",

"Make frequency histogram of a year",
"Make density histogram of a year",

"Make box plot of a region",
"Make box plot of a year",

"Calculate the mean average price of a region",
"Calculate the mean average price of a year",

"Get the lowest & highest price of a region",
"Get the lowest & highest price of a year",
"Exit")

name <- ""
while(TRUE){
  # Display Menu
  choice <- displayMenu(menuItems)
  
  if(choice == 1){
    displayRegion()
    num <- readline(prompt = "Select a region (1~54): ")
    num = as.numeric(num)
    x = ((num-1)*52 + 1)
    y = num*52
    hist(myvalues$AveragePrice[x:y], ylim = c(0,2), main = "Average price of selected region", 
         xlab = "Price of Avocado", col = "blue", breaks = 10, probability = F)
    cat('\n')
  } else if(choice == 2){
    displayYear()
    num <- readline(prompt = "Select a region (1~54): ")
    num = as.numeric(num)
    x = ((num-1)*52 + 1)
    y = num*52
    hist(myvalues$AveragePrice[x:y], ylim = c(0,15), main = "Average price of selected region", 
         xlab = "Price of Avocado", col = "blue", breaks = 10, probability = T)
    cat('\n')
  } else if(choice == 3){
    displayYear()
    num <- readline(prompt = "Select a year (xxxx): ")
    num = as.numeric(num)
    year1 <- (subset(myvalues, year == num))$AveragePrice
    hist(year1, main = "Average price of selected region", 
         xlab = "Price of Avocado", col = "blue", probability = F)
    cat('\n')
  } else if(choice == 4){
    displayYear()
    num <- readline(prompt = "Select a year (xxxx): ")
    num = as.numeric(num)
    year1 <- (subset(myvalues, year == num))$AveragePrice
    hist(year1, main = "Average price of selected region", 
         xlab = "Price of Avocado", col = "blue", probability = T)
    cat('\n')
  } else if(choice == 5){
    
  } else if(choice == 6){
    
  } else if(choice == 7){
    reg1in <- readline(prompt = "Select a region(1 to 54): ")
    
  } else if(choice == 8){
    reg1in <- readline(prompt = "Select a region(1 to 54): ")
    
  } else if(choice == 9){
    reg1in <- readline(prompt = "Select a region(1 to 54): ")
    
  } else if(choice == 10){
    break
  }
}
# End of Main
print("Bye... See you again!!")
