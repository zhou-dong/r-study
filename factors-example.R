# factors
x <- c("yes", "yes", "no", "yes", "no")
x

y <- factor(x)
y
table(y)
unclass(y)

z <- factor(c("yes", "yes", "no", "yes", "no"), levels = c("yes","no"))
z

# missing values
is.na(z)
is.nan(z)

a <- c("a", "b", NaN, NA, "c")
is.na(a)
is.nan(a)

# names
b <- 1:3
names(b)
names(b) <- c("first", "second", "third")
b
names(b)

c <- list(a=1, b=2, c=3)
c

d <- 1: 5
e <- 7: 11
f <- cbind(d, e)
f
dimnames(f) <- list(c("a","b","e","f","g"), c("1","2"))
f