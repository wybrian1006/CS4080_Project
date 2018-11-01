##########################################################################
# CS4080_Group_Project
# Last Date Modified as: 10/31/2018
#
# Draw Histogram, Box plot, etc..
# To calculate mean value, variant, standard deviation, and average.
##########################################################################

# Input Number Exception Handling
inputNumber <- function(prompt){
  while(TRUE){
    num = suppressWarnings(as.numeric(readline(prompt)))
    if(!is.na(num)){
      break
    }
    else{
      print("You entered non-integer... Please try again!!")
    }
  }
  return(num)
}

# Display Menu Options
displayMenu <- function(options){
  for(i in 1:length(options)){
    cat(sprintf("%d. %s\n", i, options[i]))
  }
  
  # Get a Valid Menu Choice
  choice = 0
  while (!any(choice == 1:length(options))){
    choice = inputNumber("Please choose a menu item: ")
  }
  return(choice)
}

# Display Region with Number
displayRegion <- function()
{
  region2
}

# Make Histogram
makeHist <- function(ap)
{
  hist(ap, main = "Average price of selected region", 
       xlab = "Average Price of Avocado")
}

# Make Box Plot
makeBoxPlot <- function(arg1, arg2)
{
  boxplot(arg1, arg2)
}

