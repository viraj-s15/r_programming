x = c(21, 23, 30, 54, 57, 58, 72, 78, 87, 90)
y = c(60, 71, 72, 83, 110, 84, 100, 92, 113, 135)
var(x)
var(y)
var(x,y)
P = (var(x,y))/(sqrt(var(x)*var(y)))
p
cor.test(x,y,method="pearson")