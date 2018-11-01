##########################################################################
# CS4080_Group_Project
# Last Date Modified as: 10/31/2018
#
# Draw Histogram, Box plot, etc..
# To calculate mean value, variant, standard deviation, and average.
##########################################################################

# Menu runs
menuItems <- c("Make region by region histogram (All year)",
"Make region by region histogram (specific year)",
"Make year by year histogram (All year)",
"Make region by region box plot (All year)",
"Make region by region box plot (specific year)",
"Make year by year box plot (All year)",
"Exit")

name <- ""
while(TRUE){
  # Display Menu
  choice <- displayMenu(menuItems)
  
  if(choice == 1){
    displayRegion()
    reg <- readline(prompt = "Which region would you like to select?(1 to 54): ")
    makeHist(reg)
  } else if(choice == 2){
    
  } else if(choice == 3){
    
  } else if(choice == 4){
    
  } else if(choice == 5){
    
  } else if(choice == 6){
    
  } else if(choice == 7){
    break
  }
}
# End of Main
print("Bye... See you again!!")
