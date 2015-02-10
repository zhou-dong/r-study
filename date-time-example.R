x <- as.Date("1970-01-01")
x
class(x)
unclass(x)
unclass(as.Date("1970-01-02"))

y <- Sys.time()
p <- as.POSIXlt(y)
p
unclass(p)

# %B, %d, %Y %H:%M