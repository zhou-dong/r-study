# subsetting
x <- c("a","b","c","c","d","e","e")
x[1]
x[2]
x[1:4]
x[x>"a"]

u <- x>"a"
u
x[u]

a = 1:5
b = 7:11
c = cbind(a,b)
c
c[1,2]
c[3,2]
c[1,]
c[,2]

d <- matrix(1:6, 2, 3)
d
d[1,2]
d[1,2, drop=F]
d[2]
d[1,]
d[1, , drop=F]

# subsetting lists
e <- list(foo=1:4, bar=0.6)
e
e[1]
e[[1]]
e$bar
e["bar"]
e[["bar"]]

e$foo
name <- "foo"
e[name]

# partial matching
e$f
e[["f", exact=F]]

# removing NA values
f <- c(1,2,3,NA,4,NA)
bad <- is.na(f)
f[!bad]

# complete cases
g <- c(1,2,NA,4,NA,5)
h <- c("a", NA, "b", NA, "c", "d")
good <- complete.cases(g,h)
g[good]
h[good]