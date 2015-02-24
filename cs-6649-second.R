# http://www.csc.ncsu.edu/faculty/samatova/practical-graph-mining-with-R/PracticalGraphMiningWithR.html

# first part, not work on new version of R stuido
install.packages("devtools")

library("devtools")

install_local("/Users/dongdong/Downloads/ProximityMeasure.tgz")

install_local("/Users/dongdong/Downloads/LinkAnalysis.tgz")

library(igraph)
library(ProximityMeasure)
library(LinkAnalysis)
A<-matrix(c(0,1,1,0,0,0,
            1,0,1,1,1,1,
            0,1,0,0,0,0,
            0,0,1,0,1,0,
            0,1,1,0,0,0,
            0,0,1,0,0,0),
          nrow=6,ncol=6, byrow=TRUE);
G<-graph.adjacency(A,mode=c("directed"), weighted= NULL)
kmax<-6;
op=HITS(G,kmax);

help(HITS)

# second part use the igraph