data_frame = data.frame(math_test = c(15,23,25,30,34,34,40),stats_test = c(20,26,27,32,35,37,35))
print(data_frame)
# Fitting the data into the model
fit=lm(data_frame$math_test~data_frame$stats_test)
fit
# The equation of the line of regression of X and Y is X=-10.379+1.291Y
# The expected score of the student in Zoology is 25.769
