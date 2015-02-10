# Many operations in R are vectorized making code more efficient, concise, and easier to read.
x <- 1:4
y <- 6:9

x
y

x + y

x > 2

x >= 2

y == 8

x * y

y / x

# vectorized Matrix Operations

a <- matrix(1:4, 2, 2) 
b <- matrix(5:8, 2, 2)

a
b

a * b
b / a
a %*% b ## true matrix multiplication