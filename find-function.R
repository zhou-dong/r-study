#install.packages("sos")
#library(sos)
#findFn("cosine", maxPages=2, sortby="MaxScore")

#install.packages("lsa")

#oid <- mongo.oid.create()
#mongo.bson.buffer.append(buf, "_id", oid)

v1 <- c(1:10)
v2 <- c(5:14)
v3 <- c(7:16)

m <- matrix(v1)
m <- cbind(m, v2)
m <- cbind(m, v3)

c <- cosine(m)

print(c)

plot(c)