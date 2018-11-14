##########################################################################
# CS4080_Group_Project
# Last Date Modified as: 11/14/2018
#
# Declare functions
# inputNumber: Exception handling of input type
# displayMenu: Display menu prompt to user
# displayRegion: Display regions to user for selection in main
# displayYear: Display years to user for selection in main
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
  print(region2)
}
displayYear <- function()
{
  cat("2015\t2016\t2017\t2018")
}
