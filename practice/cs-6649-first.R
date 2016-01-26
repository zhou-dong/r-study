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
# Class code
library(sna)
N=10
plink=0.15
graph=rgraph(N,1,plink,"digraph",TRUE)
gplot(graph,gmode="digraph", displaylabels=TRUE)
#Degree of an undirected graph
degree(graph, gmode="digraph")

#Denisty of a graph
gden(graph, mode="digraph")

#Connectedness
is.connected(graph)
connectedness(graph)
is.isolate(graph,1)
is.isolate(graph,2)

#Betweenness
betweenness(graph)
geo=geodist(graph)
geo$gdist
#Egocentricity
ego.extract(graph,6, neighborhood = c("combined", "in", "out"))
ego.extract(graph,3, neighborhood = "in")
#Closeness centrality
closeness(graph) # a disconnected node can cause this measure to be 0, because that node can't be reached in INF hops
newGraph= ego.extract(graph,9)
gplot(newGraph, displaylabels=TRUE)
closeness(newGraph)
#Page rank algorithm
library(igraph)
g<-random.graph.game(20,5/20, directed=TRUE)
page.rank(g)$vector
plot(g)
