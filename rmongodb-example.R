# add library
library(rmongodb)

# connection with mongodb use R
mongo<-mongo.create(host="127.0.0.1")

# check is connection ok
print(mongo.is.connected(mongo))

# API for rmongodb: https://github.com/mongosoup/rmongodb

query <- mongo.bson.from.JSON('{"first-name" : "Amark"}') ;
cursor <- mongo.find(mongo, "linkedin.employee", query, limit = 5)
while(mongo.cursor.next(cursor))
    print(mongo.cursor.value(cursor))
mongo.cursor.destroy(cursor)

mongo.disconnect(mongo)
mongo.destroy(mongo)