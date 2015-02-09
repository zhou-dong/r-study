# five basic or "atmoic" class in R language
# 1. character
# 2. numeric (real numbers)
# 3. integer
# 4. complex
# 5. logical (True/False)

# the most basic object is a vector
# - a vector can only have the same class
# - list can have different class

# 1. character
msg <- "hello world!"
print(msg)
class(msg)

# 2. numeric
one_integer <- 1L
one_integer
class(one_integer)

Inf # infinity
class(Inf) #numeric

NaN # null
class(NaN) #numeric

# 3. integer
one_numeric <- 1
one_numeric
class(one_numeric)

a <- 1: 20 # ":" operator is used to create integer sequences.
a # [1] 1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20
class(a) # [1] "integer"

# 4. create complex
1 + 2i

# 5. create logical
T

# creating vectors
b <- c(0.5, 0.6)
class(b)
c <- c(TRUE, FALSE)
class(c)
d <- c(T,F)
class(d)
e <- c("hello", "world", "!")
class(e)
f <- 9:20
class(f)
g <- c(1+0i, 2+4i)
class(g)

# create vectors with different class with change to same class
k <- c(1.7, "a")
class(k) #"character"
l <- c(T, 1.0)
class(l) #"numeric"
m <- c(F, "m")
class(m) #"character"

# use vector method to create vector
h <- vector("numeric", length=10)
class(h)
i <- vector("integer", length=15) 
class(i)

# as operator
n <- 1:16
class(n)
as.numeric(n)
as.logical(n)
o <- as.character(n)
o

# create matrix
p <- matrix(nrow = 2, ncol = 3)
dim(p)
attributes(p)

x <- 1:3
y <- 10:12
cbind(x, y)
rbind(x, y)

# create list
z <- list(1, "a", T, F, TRUE, 1+5i)
z
class(z)