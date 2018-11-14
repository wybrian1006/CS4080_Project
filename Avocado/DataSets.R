##########################################################################
# CS4080_Group_Project
# Last Date Modified as: 11/14/2018
#
# Getting datasets from csv file called 'avocado.csv'
# getting parts from datasets and store as variables
##########################################################################

# Calling avocado.csv dataset
myvalues <- read.csv("~/Desktop/Programming/R/CS4080_Project/avocado.csv", header = T)

# Sorting by region
region <- table(myvalues$region)

# To display region with number
region2 <- data.frame(region)
colnames(region2)[1] <- "region"
colnames(region2)[2] <- "# of Data"
