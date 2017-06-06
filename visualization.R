#visualzation
getwd()
setwd("/Users/ashwalkn/Documents/r")
read.csv("vehicle.csv")

#Histogram
hist(vehicle$mc)

hist(vehicle$lc,
     breaks=30,
     xlim=c(0,1500),
     ylim=c(0,600),
     col="yellow",
     xlab = "Labor cost",
     ylab = "Frequency",
     main = "Histogram of Labor cost")

#Bar plot
plot(vehicle$State)

#Pie chart
pie(table(vehicle$State))

#Box plot
boxplot(Mileage~State, vehicle)

#Scatter plot
plot(vehicle$lh, vehicle$lc,
     xlab = "Labor hour",
     ylab = "Labor Cost",
     main = "Scatter plot of Labor hours vs Labor cost")

#Multi-plot
pairs(vehicle[2:6])

#3D Scatter plot 
library(scatterplot3d)
scatterplot3d(vehicle$lh,vehicle$lc,vehicle$mc)

#Contour plot
filled.contour(volcano, color=terrain.colors, asp=1, plot.axes = contour(volcano, add = T))

#3D Surface plot
persp(volcano, theta = 25, phi=30, expand = 0.5, col = "lightblue")
