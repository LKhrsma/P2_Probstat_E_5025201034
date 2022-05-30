# No 1A
x = c(78,75,67,77,70,72,78,74,77)
y = c(100,95,70,90,90,90,89,90,100) 
data = data.frame(x,y)
sd(data$x-data$y)

# No 1B
t.test(x, y, alternative = "greater", var.equal = FALSE)

# No 1C
var.test(x,y)
t.tes(x,y, alternative = "two.sided", mu=0)
