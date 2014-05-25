# Across the United States, how have emissions from coal combustion-related sources changed 
# from 1999–2008?

# find all coal pollutants
SCC_coal = SCC[grepl("coal",SCC$Short.Name,ignore.case=T),]$SCC
NEI_coal = subset(NEI, NEI$SCC %in% SCC_coal)
total_emissions_coal_by_year = aggregate(NEI_coal$Emissions, list(year=NEI_coal$year), sum)

png(file="plot4.png",width=480,height=480)
qplot(year,x,data=total_emissions_coal_by_year,ylab="total emissions (tons)",main="Emissions from Coal Pullutants by Year",geom='line')
dev.off()
