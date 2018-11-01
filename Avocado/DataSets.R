##########################################################################
# CS4080_Group_Project
# Last Date Modified as: 10/31/2018
#
# Draw Histogram, Box plot, etc..
# To calculate mean value, variant, standard deviation, and average.
##########################################################################

# Calling avocado.csv dataset
myvalues <- read.csv("~/Desktop/Programming/R/CS4080_Project/avocado.csv", header = T)

# Sorting by year
year <- table(myvalues$year)
y2015 <- subset(myvalues, year == 2015)
y2016 <- subset(myvalues, year == 2016)
y2017 <- subset(myvalues, year == 2017)
y2018 <- subset(myvalues, year == 2018)

# Sorting by region
region <- table(myvalues$region)
albany <- subset(myvalues, region == 'Albany')
atlanta <- subset(myvalues, region == 'Atlanta')
baltimore <- subset(myvalues, region == 'BaltimoreWashington')
boise <- subset(myvalues, region == 'Boise')
boston <- subset(myvalues, region == 'Boston')
buffalo <- subset(myvalues, region == 'BuffaloRochester')
california <- subset(myvalues, region == 'California')
charlotte <- subset(myvalues, region == 'Charlotte')
chicago <- subset(myvalues, region == 'Chicago')
cincinnati <- subset(myvalues, region == 'CincinnatiDayton')
columbus <- subset(myvalues, region == 'Columbus')
dallas <- subset(myvalues, region == 'DallasFtWorth')
denver <- subset(myvalues, region == 'Denver')
detroit <- subset(myvalues, region == 'Detroit')
grandrapids <- subset(myvalues, region == 'GrandRapids')
greatlakes <- subset(myvalues, region == 'GreatLakes')
harrisburg <- subset(myvalues, region == 'HarrisburgScranton')
hartford <- subset(myvalues, region == 'HartfordSpringfield')
houston <- subset(myvalues, region == 'Houston')
indiana <- subset(myvalues, region == 'Indianapolis')
jacksonville <- subset(myvalues, region == 'Jacksonville')
lasvegas <- subset(myvalues, region == 'LasVegas')
losangeles <- subset(myvalues, region == 'LosAngeles')
louisville <- subset(myvalues, region == 'Louisville')
miami <- subset(myvalues, region == 'MiamiFtLauderdale')
midsouth <- subset(myvalues, region == 'Midsouth')
nashville <- subset(myvalues, region == 'Nashville')
neworleans <- subset(myvalues, region == 'NewOrleansMobile')
newyork <- subset(myvalues, region == 'NewYork')
northeast <- subset(myvalues, region == 'Northeast')
northernnewengland <- subset(myvalues, region == 'NorthernNewEngland')
orlando <- subset(myvalues, region == 'Orlando')
philadelphia <- subset(myvalues, region == 'Philadelphia')
phoenix <- subset(myvalues, region == 'PhoenixTucson')
pittsburgh <- subset(myvalues, region == 'Pittsburgh')
plains <- subset(myvalues, region == 'Plains')
portland <- subset(myvalues, region == 'Portland')
raleigh <- subset(myvalues, region == 'RaleighGreensboro')
richmond <- subset(myvalues, region == 'RichmondNorfolk')
roanoke <- subset(myvalues, region == 'Roanoke')
sacramento <- subset(myvalues, region == 'Sacramento')
sandiego <- subset(myvalues, region == 'SanDiego')
sanfrancisco <- subset(myvalues, region == 'SanFrancisco')
seattle <- subset(myvalues, region == 'Seattle')
southcarolina <- subset(myvalues, region == 'SouthCarolina')
southcentral <- subset(myvalues, region == 'SouthCentral')
southeast <- subset(myvalues, region == 'Southeast')
spokane <- subset(myvalues, region == 'Spokane')
stlouis <- subset(myvalues, region == 'StLouis')
syracuse <- subset(myvalues, region == 'Syracuse')
tampa <- subset(myvalues, region == 'Tampa')
tatalus <- subset(myvalues, region == 'TotalUS')
west <- subset(myvalues, region == 'West')
newmexico <- subset(myvalues, region == 'WestTexNewMexico')

# To display region with number
region2 <- data.frame(region)
colnames(region2)[1] <- "region"
colnames(region2)[2] <- "# of Data"

# Sorting Organic and Conventional
avocadoType <- table(myvalues$type)
conventional <- subset(myvalues, type == 'conventional')
organic <- subset(myvalues, type == 'organic')
