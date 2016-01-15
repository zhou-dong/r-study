complete <- function(directory, id=1:332){
 
    dir <- paste("/Users/dongdong/Downloads/", directory, sep = "")
    dir <- paste(dir, "/", sep = "")
    
    nobs <- vector(mode="numeric", length(id))
    
    for(x in 1:length(id)){
        formatId <- sprintf("%03.f", as.numeric(id[x]))
        filename <- paste(formatId, ".csv", sep = "")
        filepath <- paste(dir, filename, sep = "") 
        rough_data <- read.csv(filepath)
        complete_num <- sum(complete.cases(rough_data))
        nobs[x] <- complete_num
    }
    
    data.frame(id, nobs)
    
}