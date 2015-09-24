
####READ BOTH DATASETS#######
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
###SUMMARIZE#################
PM25_Year <- tapply(NEI$Emissions, NEI$year, sum)
###PLOT######################
png("plot1.png")
plot(names(PM25_Year), PM25_Year, type="l",
     xlab="Year", ylab=expression("Total" ~ PM[2.5] ~ "Emissions (tons)"),
     main=expression("Total US" ~ PM[2.5] ~ "Emissions by Year"))
dev.off()