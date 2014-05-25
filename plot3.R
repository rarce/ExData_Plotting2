# Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, 
# which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? 
# Which have seen increases in emissions from 1999–2008? Use the ggplot2 plotting system to make 
# a plot answer this question.
library(ggplot2)
baltimore_data = subset(NEI, fips=='24510')
total_emissions_baltimore_by_year_and_type = aggregate(baltimore_data$Emissions, list(year=baltimore_data$year,type=baltimore_data$type), sum)

png(file="plot3.png",width=480,height=480)
qplot(year,x,data=total_emissions_baltimore_by_year_and_type,ylab="total emissions (tons)",main="Emissions decreasing by year and type in Baltimore",color=type,geom='line')
dev.off()
