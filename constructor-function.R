make.power <- function (n){
    pow <- function (x) {
        x ^ n
    }
    pow
}

cube <- make.power(3)
cube(2)
cube(3)
get("n", environment(cube))

square <- make.power(2)
square(2)
square(3)
get("n", environment(square))

y <- 10
f <- function(x){
    y <- 2
    y^2 + g(x)
}
g <- function(x){
    x*y
}
f(3)