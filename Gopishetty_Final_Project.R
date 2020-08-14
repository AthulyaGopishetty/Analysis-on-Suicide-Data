#Author: Venkata Sri Athulya Gopishetty#
#Course: AIT-580#
#Final Project#
#correlation analysis, regression analysis, hypothesis test using R#

#importing file and displaying data and stats
mydata<-read.csv("master.csv")
print(mydata)
summary(mydata)
colnames(mydata)

#Correlation analysis: pearson Coefficient
cor.test(mydata$population,mydata$suicides_no)
cor.test(mydata$suicides.100k.pop,mydata$year)

#Regression analysis
linearModel <- lm(formula = mydata$suicides_no~ mydata$age+mydata$year+
                    mydata$population,data = mydata)
print(linearModel)
summary(linearModel)

#Hypothesis Testing
#chi square test
chisq.test(mydata$age,mydata$suicides_no)

#Wilcoxon ranksum test
wilcox.test(mydata$population,mydata$gdp_per_capita...., paired = TRUE)
