corr <- function(directory, threshold = 0) {
    
    old.dir <- getwd() ;
    new.dir <- "/Users/dongdong/Workspaces/rlanguage/r-study/r-programming"
    
    setwd(new.dir)
    source("complete.R")
    
    dir <- paste("/Users/dongdong/Downloads/", directory, sep = "")
    dir <- paste(dir, "/", sep = "")
    
    completes <- complete(directory=directory)

    
    selects <- subset(completes, completes$nobs>threshold)
    

    correlates <- vector(mode="numeric", length=nrow(selects))
    for(i in 1:nrow(selects)){
        
        file <- paste(dir,sprintf("%03.f", as.numeric(selects$id[i])),".csv", sep="")
        
        this<-(read.csv(file))
        that<-subset(this,complete.cases(this)==T) # filter the NAs
        correlates[i]<-round( cor(that$sulfate,that$nitrate), 5)
    }
    return(correlates)
    
    setwd(old.dir)
}