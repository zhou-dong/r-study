# use r to visualize the perceptron algorithm
    
random_int_vector <- function(){
    c(random_int(), random_int())
}

random_int <- function(){
    sample(1:10, 1, replace=T)
}
    
data <- function(size){
    result <- rbind(random_int_vector(), random_int_vector())
    for (x in 1:(size-2))
        result <- rbind(result, random_int_vector())
    result
}

t <- data(15)
print(t)
plot(t, type = "p",xlab = "x-0",col=rainbow(15L), ylab = "x-2", main="perceptron")
points(t, cex = .6, col = "dark red")

# still working on the algorithm