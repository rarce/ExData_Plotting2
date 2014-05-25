# Question: Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? 
# Using the base plotting system, make a plot showing the total PM2.5 emission from all sources
# for each of the years 1999, 2002, 2005, and 2008.
total_emissions_by_year = aggregate(NEI$Emissions, list(year=NEI$year), sum)

png(file="plot1.png",width=480,height=480)
with(total_emissions_by_year,plot(year,x,ylab="total emissions (tons)",main="Emissions decreasing by year"))
with(total_emissions_by_year,lines(year,x))
dev.off()
