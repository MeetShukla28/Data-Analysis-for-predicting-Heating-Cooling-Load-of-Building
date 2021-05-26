setwd("C:/Meet College/613/project")
training_set = read.csv('train.csv')
test_set = read.csv('test1.csv')
test_set = na.omit(test_set)
library(gbm)
set.seed(24)
boost.data = gbm(Y1~.,data=training_set, distribution="gaussian",n.trees=7000, interaction.depth=4)

yhat.pred = predict(boost.data,newdata=test_set,
                     n.trees=7000)
test_error = mean((yhat.pred-test_set$Y1)^2)
test_error

