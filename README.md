# R Language Study Notes

#### 1. Data types of R language

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
 
#### 2. Factors of R language

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

#### 3. Subsettings

##### Subset
1. use "[]" to subset
2. use "$" to subset
3. "[]" can use variable
4. "$" can partial matching
5. "[]" can partical mathing use exact=FALSE

##### Remove NA values
- is.na()  
   `f <- c(1,2,3,NA,4,NA)  
    bad <- is.na(f)  
    f[!bad]` 

- complete cases  
    `g <- c(1,2,NA,4,NA,5)  
    h <- c("a", NA, "b", NA, "c", "d")  
    good <- complete.cases(g,h)  
    g[good]  
    h[good]` 

---

#### 4. vectorized Operations
1. normal vectorized operations
    - a + b
    - a - b
    - a * b
    - a / b
2. vectorized Matrix Operations
    - a + b
    - a - b
    - a * b
    - a / b
3. true matrix multiplication
    - `a %*% b`

---

#### 5. Reading and Writing data

##### Reading data

| Method | Description |
| :-- | :-- |
| read.table,    read.cvs  | for reading tabular data |
| readLines                | for reading line of text file |
| source                   | for reading in R code file (inverse of dump) |
| dget                     | for reading in R code file (inverse of dput) |
| load                     | for reading in saved workspaces |
| unserialize              | for reading in single R object in binary form |

##### Writing data

| Method | Description |
| :-- | :-- |
| write.table              | for writing tabular data |
| writeLines               | for writing line of text file |
| dump                     | for writing in R code file |
| dput                     | for writing in R code file |
| save                     | for writing in saved workspaces |
| serialize                | for writing in single R object to binary form |

---

#### 6. Control Structure

| operator | explain |
|:--|:--|
| if, else | testing a condition |
| for | execute a loop a fixed number of times |
| while | execute a loop while a condition is true |
| repeat | execute an infinite loop |
| break | break the execution of a loop |
| next | skip an interation of a loop |

---

#### 7. Function

- function in R in first class object
- arguments can have default value
- argument can match by name, don't need position

##### Argument Matching 

1. check for exact match for a named argument
2. check for partial match
3. check for positional match 

##### Lazy Evaluation
- pretty cool things

##### ... Argument
- if wanna change some of the argument and leave others can use ...
- generic function
- argument after ... must be named

---

#### 8. Scoping

- Lexical Scoping
- function can return function

---

#### 9. Dates and Times

1. as.Date("1970-01-01")
2. Sys.time()
3. %B, %d, %Y %H:%M
4. POSIXct: as.POSIXct(y)
5. POSIXlt: as.POSIXlt(y)

---

#### 10. Loop Functions 

- lapply
- apply
- mapply
- tapply
- split

---

#### 11. str function

Like to toString() method in JAVA

- str()
- summary()
- head()

---

#### 12. Simulation

- Drawing sample from specific probablity distributions can be done with r* function
- Standard distributions are build in: Normal, Poisson, Binomial, Exponential, Gamma, etc.
- The sample function can be used to draw random samples from arbitary vectors
- Setting the random number generator seed via set seed is critical for reproducibility

---

##### Start at Sunday, Feb 01, 2015

