p0 = c(0, 0)
p1 = c(1, 0)
p2 = c(2, 0)
p3 = c(2, 1)
p4 = c(2, 2)
p5 = c(1, 2)
p6 = c(0, 2) 
p7 = c(0, 1)
p8 = c(0, 0)

m = rbind(p0, p1)
m = rbind(m, p2)
m = rbind(m, p3)
m = rbind(m, p4)
m = rbind(m, p5)
m = rbind(m, p6)
m = rbind(m, p7)
m = rbind(m, p8)

degree = 120L
rotateIndex = c(sin(60) ,cos(60),1)

x = 60
c1 =c(-cos(x), sin(x))
c2 =c(sin(x), -cos(x))

rotateIndex = cbind(c1, c2)
rotateIndex

m2 = m+3

m2

m2 = m2 %*% rotateIndex

plot(m, col='red', type='l',  xlim=c(-6,6), ylim =c(-6,6))
points(m+3, cex = 0.5, col = "dark red", type = 'l')   
points(m2, cex = 0.5, col = "dark red", type='l')   

