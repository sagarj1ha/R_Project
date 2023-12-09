setwd("C:/Users/Admin/Desktop/R/churn analysis")


data<-read.csv("C:/Users/Admin/Desktop/R/churn analysis/telecom_customer_churn.csv")




install.packages("caTools")
library(caTools)
set.seed(123)

#building model 1 tenure in months wrt Age of the customers
sample.split(data$Tenure.in.Months ,SplitRatio = 0.65)->split_index
subset(data,split_index==T)->train1
subset(data,split_index==F)->test1

lm(Tenure.in.Months~Age ,data=train1)->mod_regress#make model where tenure in months is dependent on age
predict(mod_regress,test1)->result_regress
cbind(Actual=test1$Tenure.in.Months,Predicted=result_regress)->final_data
as.data.frame(final_data)->final_data #convert matrix to dataframe
View(final_data) #gives actual tenure in months value and the predicted values

#find error
(final_data$Actual- final_data$Predicted)->error
cbind(final_data,error)->final_data
#aggregate error in the model using root mean square error 
rmse1<-sqrt(mean(final_data$error^2))
rmse1


