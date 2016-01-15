# sulfate | nitrate

pollutantmean <- function(directory, pollutant, id=1:332){
    
    dir <- paste("/Users/dongdong/Downloads/", directory, sep = "")
    dir <- paste(dir, "/", sep = "")
    
    formatId <- sprintf("%03.f", as.numeric(id))
    filename <- paste(formatId, ".csv", sep = "")
    filepath <- paste(dir, filename, sep = "")
    
    data <- read.csv(filepath[1])
    
    for(i in filepath[-1]){
        tmp <- read.csv(i)
        data <- rbind(data, tmp)
    }
    
    poll_data <- data[,pollutant]
    poll_data <- poll_data[!is.na(poll_data)]
    m <- mean(poll_data)
    round(m, 3)
}