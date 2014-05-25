# Question: Have total emissions from PM2.5 decreased in the Baltimore City, Maryland 
# (fips == "24510") from 1999 to 2008? Use the base plotting system to make a plot 
# answering this question.
baltimore_data = subset(NEI, fips=='24510')
total_emissions_baltimore_by_year = aggregate(baltimore_data$Emissions, list(year=baltimore_data$year), sum)

png(file="plot2.png",width=480,height=480)
with(total_emissions_baltimore_by_year,plot(year,x,ylab="total emissions (tons)",main="Emissions decreasing by year in Baltimore"))
with(total_emissions_baltimore_by_year,lines(year,x))
dev.off()
