#Maheshwaran K

#import Required Libraries
library(e1071)
library(utils)
library(ggplot2)

#Get the data and convert into Data Frame
df <- as.data.frame(read.csv("https://raw.githubusercontent.com/AdiPersonalWorks/Random/master/student_scores%20-%20student_scores.csv"))

#Plot the Attributes
graph <- ggplot(df, aes(x=Hours, y=Scores))+ geom_point() + geom_smooth(method="lm", col="black")
print(graph)

#Model the Data using Linear Regression
linearMod <- lm(Scores ~ Hours, data=df)

#Predict Score for New Data
x <- 9.25
if(x >= 0){
  p <- predict(linearMod, newdata=data.frame(Hours=x))
  print(paste0("The Pedicted Score for ",x," Hour(s) is ", p))
}
