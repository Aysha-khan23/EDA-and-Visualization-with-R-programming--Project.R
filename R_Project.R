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
sd(iris$Petal.Width,na.rm=TRUE)
IQR(iris$Petal.Length)
sort(iris$Petal.Length)
sort(iris$Sepal.Length)
arrange(iris, Sepal.Length)
arrange(iris, Petal.Length)
arrange(iris, Species)
i<-iris%>%arrange(desc(Sepal.Length))
i
plot(iris[, 1:4])

boxplot(iris[, 1:4], col = iris$Species, main = "Boxplot of Iris Variables by Species")

aggregate(iris[, 1:4], by = list(Species = iris$Species), FUN = mean)
#This will calculate the mean of each feature for each species of iris.
_____________________________________
        #DATA VISUALIZATION
_____________________________________

install.packages("ggplot2", dependencies = TRUE)
library(ggplot2)

ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + geom_point()
#This will create a scatter plot of sepal length versus sepal width, where each point is colored by the species of the iris.

ggplot(iris, aes(x = Petal.Length, fill = Species)) + geom_density(alpha = 0.5) + labs(title = "Density Plot of Petal Length by Species")
#This will create a scatter plot of sepal length versus sepal width, where each point is colored by the species of the iris.

ggplot(iris, aes(x = Petal.Length, fill = Species))+geom_histogram(binwidth = 0.2, alpha = 0.5)+labs(title = "Histogram of Petal Length", x = "Petal Length", y = "Count")+scale_fill_manual(values = c("#FF6666", "#33FFCC", "#FFCC33"))
#This will create a histogram of petal length, where the bars are colored by the species of the iris.

ggplot(iris, aes(x = Species, y = Petal.Width, fill = Species))+geom_boxplot()+labs(title = "Box Plot of Petal Width", x = "Species", y = "Petal Width")+scale_fill_manual(values = c("#FF6666", "#33FFCC", "#FFCC33"))
#This will create a box plot of petal width, where each box represents the distribution of petal 
width for each species of iris.

#Scatterplot of Sepal.Length vs. Sepal.Width, colored by Species
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species))+geom_point()+labs(title = "Sepal.Length vs. Sepal.Width", x = "Sepal.Length", y = "Sepal.Width")

#Scatterplot of Petal.Length vs. Petal.Width, colored by Species
ggplot(iris, aes(x = Petal.Length, y = Petal.Width, color = Species))+geom_point()+labs(title = "Petal.Length vs. Petal.Width", x = "Petal.Length", y = "Petal.Width")

#Boxplot of Sepal.Width, colored by Species
ggplot(iris, aes(x = Species, y = Sepal.Width, fill = Species))+geom_boxplot()+labs(title = "Boxplot of Sepal.Width by Species", x = "Species", y = "Sepal.Width")

#Histogram of Petal.Length, colored by Species
ggplot(iris, aes(x = Petal.Length, fill = Species))+geom_histogram(binwidth = 0.2, position = "dodge")+labs(title = "Histogram of Petal.Length by Species", x = "Petal.Length", y = "Count")




