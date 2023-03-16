# Creating the data frame
data_frame = data.frame(X = c(39,65,62,90,82,75,25,98,36,78),Y =
c(47,53,58,86,62,68,60,91,51,84))
print(data_frame)
# 1) Using Karl Pearson's Correlation ->
# Using built in method
cor.test(data_frame$X,data_frame$Y,method="pearson")
# using the formula
corr_x_y =
var(data_frame$X,data_frame$Y)/sqrt(var(data_frame$X)*var(data_frame$X,data_frame$Y))
print(paste0("The correlation between the two variables is ",corr_x_y))
# 2) Using Spearman method
cor.test(data_frame$X,data_frame$Y,method="spearman")
# Scatter plot of X with respect to Y and Y to X
plot(data_frame$X,data_frame$Y, col='darkgreen', pch=19)
plot(data_frame$Y,data_frame$X, col='red', pch=19)
