# Install "SNA" package first
# Install "gplots" package second

# "igraph" package can aslo be a choice

# goal of the class: 
# 1. family with r "sna" package
# 2. family tieh r "gplots" package 
# 92 - 96

library(sna)
N=10
plink=0.15
graph=rgraph(N,1,plink,"digraph",TRUE)
gplot(graph,gmode="digraph", displaylabels=TRUE)

# Define the cars vector with 5 values
#cars <- c(1, 3, 6, 4, 9)

# Graph the cars vector with all defaults
#plot(cars)