library(lattice)
library(ggplot2)

cData <- read.csv("04cars.csv", TRUE, ",")

hist(cData$MSRP, main="List Price", xlab ="Price Range", col= "green")
text(150000, 200, "Measured in US Dollars")

counts <- table(cData$Number_of_cylinders)
barplot(counts, main = "Cylinder Capacity", xlab = "Number of Cylinder", ylab="Number of Cars")

pairs(cData[,11:13], main="Engine Size, Cylinder, & Horsepower")

densityplot(cData$Dealer_cost, main="Density Plot", xlab="Dealer Cost")

cData$Number_of_cylinders <- factor(cData$Number_of_cylinders, levels=c(-1,3,4,5,6,8,10,12), labels =c("-1cyl","3cyl","4cyl","5cyl","6cyl","8cyl","10cyl","12cyl"))
qplot(cData$Horsepower, data =cData, geom ="density", fill=cData$Number_of_cylinders, alpha=I(.5), main ="Distribution of HorsePower", xlab ="Horsepower", ylab ="Density")

