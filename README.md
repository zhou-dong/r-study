# R-study Notes

#### Data types of R language

##### Five basic or "atmoic" class in R
 1. character
 2. numeric
 3. integer
 4. complex
 4. logical 

##### Vector
 1. create vector with c(a, b, ...)
 2. create vector with vector("numeric", length=10)
 3. a vector can only have the same class 

##### List
 1. can have different class

##### Matrix
 1. can have different class
 2. dim()
 3. attribuates()

##### Other operator or method
 1. as
 2. class()
 3. dim()
 4. print()
 5. attributes()

---
 
#### Factors of R language

##### Data Frames
- create by calling:
    + read.table()
    + read.csv()
- can be converted to matix by calling:
    + data.matrix()

##### Factor: could add factor to object

##### Names: Can add names attribute to vector and list

##### Operstions 
- is.na(a)
- is.nan(a) 

---

#### Subsettings

##### Subset
1. use "[]" to subset
2. use "$" to subset
3. "[]" can use variable
4. "$" can partial matching
5. "[]" can partical mathing use exact=FALSE

##### Remove NA values
- is.na()
    f <- c(1,2,3,NA,4,NA)
    bad <- is.na(f)
    f[!bad]

- complete cases
    g <- c(1,2,NA,4,NA,5)
    h <- c("a", NA, "b", NA, "c", "d")
    good <- complete.cases(g,h)
    g[good]
    h[good]

#### Start at Sunday, Feb 01, 2015
