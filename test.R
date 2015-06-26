
m1 <- matrix(c(1, 2, 3, 4, 5, 6, 1, 4, 9), nrow=3, ncol=3, byrow = T)
m2 <- matrix(c(2, 4, 5, 1, 2, 4, 6, 9, 6), nrow=3, ncol=3, byrow = T)

m1 %*% m2

m3 <- matrix(c(1, 2, 1, -2, -3, 1, 3, 5, 0),nrow=3, ncol=3, byrow = T)

m3