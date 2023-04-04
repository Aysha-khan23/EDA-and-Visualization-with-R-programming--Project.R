install.packages("dplyr")
library(dplyr)
data()
data("iris")
head(iris)
iris
sum(is.na(iris))
summary(iris,mean=mean(Sepal.Length))
summary(iris,min=min(Species))
summary(iris,median=median(Petal.Length))
length(iris)
dim (iris)
str(iris)
summary(iris)
var(iris$Sepal.Width, na.rm = FALSE)
#The var() function is used to calculate the variance of a numerical vector.
#In this case, it is calculating the variance of the "Sepal.Width" variable in the "iris" dataset.
# since "na.rm" is set to FALSE, missing values will not be removed before computing the variance.

sd(iris$Petal.Width,na.rm=TRUE)
#it is calculating the standard deviation of the "Petal.Width" variable in the "iris" dataset.
#since "na.rm" is set to TRUE, missing values will be removed before computing the standard deviation.

IQR(iris$Petal.Length)
# it is calculating the IQR of the "Petal.Length" variable in the "iris" dataset.
#The IQR is a measure of the spread of the middle 50% of the data. It is a robust measure of spread 
#because it is not influenced by extreme values or outliers.

sort(iris$Petal.Length)
#The sort() function is used to sort a vector in ascending or descending order.
#it is sorting the "Petal.Length" variable in ascending order.

sort(iris$Sepal.Length)

arrange(iris, Sepal.Length)
#The arrange() function is used to reorder the rows of a dataset based on one or more variables. 
#In this case, it is arranging the rows of the "iris" dataset in ascending order based on the values 
#of the "Sepal.Length" variable.

arrange(iris, Petal.Length)
arrange(iris, Species)

i<-iris%>%arrange(desc(Sepal.Length))
i
#This line of code creates a new dataset called "i" that is a copy of the "iris" dataset, 
#but with the rows arranged in descending order based on the values of the "Sepal.Length" variable 
#using the arrange() function in the dplyr package in R.

plot(iris[, 1:4])
#This line of code creates a scatter plot matrix of the "iris" dataset in R, 
#using the plot() function.

boxplot(iris[, 1:4], col = iris$Species, main = "Boxplot of Iris Variables by Species")
#This line of code creates a box plot for each of the four numerical variables in the "iris" dataset 
#in R, using the boxplot() function. The box plots are colored by the species of iris using the 
#"col" argument and the main title of the plot is set using the "main" argument.

aggregate(iris[, 1:4], by = list(Species = iris$Species), FUN = mean)
#This will calculate the mean of each feature for each species of iris.

install.packages("ggplot2", dependencies = TRUE)
library(ggplot2)

ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + geom_point()
#This will create a scatter plot of sepal length versus sepal width, where each point is colored by 
#the species of the iris.

ggplot(iris, aes(x = Petal.Length, fill = Species)) + geom_density(alpha = 0.5) + labs(title = "Density Plot of Petal Length by Species")
#This will create a scatter plot of sepal length versus sepal width, where each point is colored by 
#the species of the iris.

ggplot(iris, aes(x = Petal.Length, fill = Species))+geom_histogram(binwidth = 0.2, alpha = 0.5)+labs(title = "Histogram of Petal Length", x = "Petal Length", y = "Count")+scale_fill_manual(values = c("#FF6666", "#33FFCC", "#FFCC33"))
#This will create a histogram of petal length, where the bars are colored by the species of the iris.

ggplot(iris, aes(x = Species, y = Petal.Width, fill = Species))+geom_boxplot()+labs(title = "Box Plot of Petal Width", x = "Species", y = "Petal Width")+scale_fill_manual(values = c("#FF6666", "#33FFCC", "#FFCC33"))
#This will create a box plot of petal width, where each box represents the distribution of petal 
#width for each species of iris.

#Scatterplot of Sepal.Length vs. Sepal.Width, colored by Species
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species))+geom_point()+labs(title = "Sepal.Length vs. Sepal.Width", x = "Sepal.Length", y = "Sepal.Width")

#Scatterplot of Petal.Length vs. Petal.Width, colored by Species
ggplot(iris, aes(x = Petal.Length, y = Petal.Width, color = Species))+geom_point()+labs(title = "Petal.Length vs. Petal.Width", x = "Petal.Length", y = "Petal.Width")

#Boxplot of Sepal.Width, colored by Species
ggplot(iris, aes(x = Species, y = Sepal.Width, fill = Species))+geom_boxplot()+labs(title = "Boxplot of Sepal.Width by Species", x = "Species", y = "Sepal.Width")

#Histogram of Petal.Length, colored by Species
ggplot(iris, aes(x = Petal.Length, fill = Species))+geom_histogram(binwidth = 0.2, position = "dodge")+labs(title = "Histogram of Petal.Length by Species", x = "Petal.Length", y = "Count")




