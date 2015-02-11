# install rmongodb
install.packages(rmongodb)

# add library
library(rmongodb)

# connection with mongodb use R
mongo<-mongo.create(host="127.0.0.1")

# check is connection ok
print(mongo.is.connected(mongo))