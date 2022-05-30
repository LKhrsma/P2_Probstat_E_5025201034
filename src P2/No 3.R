# No 3A
# H0 = 9.50, H1 = 10.98

# No 3B
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, 
          mean.y =2.79 , s.y = 1.32, n.y = 27, 
          alternative = "greater", var.equal = TRUE)

# No 3C
library(mosaic)
plotDist(dist = 't', df = 2, col = "Red")

# No 3D
qchisq(p = 0.05, df = 2, lower.tail = FALSE)

# No 3E

# No 3F
