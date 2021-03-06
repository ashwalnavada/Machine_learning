#multiple plots
library("psych")
pairs.panels(vehicle[2:5])


#color coded scatter plot
library(ggplot2)
qplot(Mileage,fm,data = vehicle)
qplot(Mileage,fm, data = vehicle, color=State)

#Multiple plots
data(mpg)  #miles per gallon
qplot(displ, hwy, data=mpg, facets=drv~.)
qplot(hwy, data = mpg, facets = drv~.,binwidth=1)

#Motion Chart
library(googleVis)
data(Fruits)
mychart <-gvisMotionChart(Fruits, idvar="Fruit", "Year")
plot(mychart)

#Geo Map
data(Population)
head(Population)
w <-gvisGeoMap(Population,locationvar = 'Country', numvar= "Population")
plot(w)

#Pivot table/chart

library(devtools)
install_github("ramnathv/htmlwidgets") 
install_github("smartinsightsfromdata/rpivotTable")
## Load rpivotTable
library(rpivotTable)

## One line to create pivot table
rpivotTable(vehicle, rows="State", col="Count", aggregatorName="Count", 
            vals="State", rendererName="Treemap")