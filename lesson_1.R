################################################
## Exercises ###################################
################################################

# c - concatenate
#     - takes two (or more) vector and joins them together
c(1, 2, 3)
c(c(1,2,3), c(4,5,6))
#     - they need to be of the same type, though!
c(1,2, "three")

################################################
## Bonus exercises #############################
################################################

bonus.text <- "It was the best of times, it was the worst of times, it was the age of
wisdom, it was the age of foolishness, it was the epoch of belief, it
was the epoch of incredulity, it it was the season of Light, it was the
season of Darkness, it was the spring of hope, it was the winter of
despair, we had everything before us, we had nothing before us, we
were all going direct to Heaven, we were all going direct the other
way- in short, the period was so far like the present period, that
some of its noiosiest authorities insisted on its being received, for
good or for evil, in the superlative degree of comparison only."

# cat - concatenate and print 
#       - takes two or more vectors of the same type and joins them together.
cat(1:100)

# cbind - combine objects by rows and columns.
#       -combine a sequence vectors, matrix, or some data by columns or rows. 
cbind(1:7) 
#       -combining columns one through seven.

# col, row - prints the number of columns or rows within a matrix.
col(beetledata) #prints the number of columns used in the beetledata dataset within a matrix.

# cut - divides the intergers within a matrix into intervals.
cut(beetledata, breaks = 2) #divides the intergers within 'beetledata' into two equal intervals.
#   - the 'breaks=' function must be added to signify the amount of unique cut points desired.

# diff - Returns the difference of the present value and the following value.
diff(1:10) #Returns the difference of the sequential values e.g. 2-1, 3-4.
#     - values may be skipped by using the lag function

# dim - get or set the dimensions of an object.
table<-c(1:20);dim(table)<-c(4,5) 
# - Creates a table for the numeric vector of 1:20 with the dimensions of four rows and four columns.


# rownames, colnames, names - assigns or retrieves the names pertaining to a given row, column, or both.
colnames(beetledata) # - returns the names of the dataset 'beetedata.'

# expand.grid - print out a data frame that is a combination of all the supplied vectors or factors.
expand.grid(time=seq(60,10,-10), speed=seq(5,25,5))
#  - creates a data frame with the columns time and speed ranging from the provided supplied vectors.  

# eigen - calculates and prints the eigenvalues and eigenvectors of the matrix provided.
eigen(cbind(c(4,2),c(4,2)),symmetric = TRUE)
#       - 
# %*% - multiplies two matrices or a matrix with a vector while they are conformable.
a<-matrix(1:15,nrow=3,ncol=5)
c<-diag(1:5)
b<- a%*%c
# - multiplies the matrix with the vector to create another 3by5 matrix.

#lower.tri - returns a matrix of logicals the same size as the given matrix with TRUE in the lower triangle of the matrix.
lower.tri(tabl, diag = TRUE)
# - returns the matrix of logicals with the diagonal with the value: TRUE.
lower.tri(tabl, diag = FALSE)
# - returns the matrix of logicals with the diagonal with the value: FALSE.

# upper.tri - returns a matrix of logicals the same size as the given matrix with TRUE in the upper triangle of the matrix.
upper.tri(tabl, diag = TRUE)
# - returns the matrix of logicals with the diagonal with the value: TRUE.

# diag - Extracts or replaces the diagonal of a matrix
diag(tabl)
# - prints out the diagonal values of the matrix 'tabl'
diag(x=1, nrow, ncol)
# - dimensions may be given when x is not a matrix. 

# gl - produce factors by indicating the pattern of their levels.
gl(3,9,27)
# - produces the 9 replications of the numbers 1:3 each for a total of 27 numbers in length.

# identical - tests whether or not two objects are exactly equal. Returning TRUE in the case that both are equal and FALSE otherwise.
identical(1,-1)
# - reports FALSE because 1 is not exactly equal to -1.
identical(1,0.99999999999)
# - values that are in very close proximity show FALSE.

# image - produces a grid of colored or gray-scale rectangles with colors given by the values. 
c <- matrix(5*(1:20))
d <- matrix(5*(1:20))
x <- matrix(-c*-d)
image(c,d, x, col = topo.colors(100), axes = FALSE)

# library - loads and applies packages
library(base)
# - loads applies the 'base' package
# - package that is being loaded must be installed

# length - retrieve or set the length of some vector or any other object.
v <- c(1:10)
length(v)
# - returns the value of the vector 'v' which is 10.

# jitter - sort of wobbles the value of some vector in order to avoid ties of values.
jitter(c(1:10)) 
# - returns the values 1:10 but with a bit of wobble or noise added to each value in the vector.

# ls - command returns the name of objects used in a function or the command.
model<-function(){
  t<-3*(5+5)
  ls()
}
model()
# - calling the the function with no argument returns the object within the function.

# - mean, median, max, min - these functions return useful statistical information for data analysis.
y<-c(10:238)
mean(y)
# - returns the mean of whatever vector of values called.
median(y)
# - returns the median value of the vector called in the command.
max(y)
# - returns the maximum value of the vector called.
min(y)
# - returns the minimum value of the vector called.

# paste - joins together two or more vectors after converting them to a character string and returns the string.
paste(1:4,9:12,sep = ",")
# - joins the two vectors of values by increments.

# read.csv, read.table, write.csv, write.table
read.csv(beetledata.txt, header= TRUE,sep=",")

# - rnorm, pnorm, dnorm, qnorm
rnorm(50, mean=27.3, sd=2.3)
# - returns a random, normal distribution of a given number of observations, mean, and sd.
pnorm(62, mean = 24,sd=5)
# -returns the distribution of a normal distribution of a given number of observations, mean, and sd.
qnorm(62, mean = 24,sd=5)
# -returns the quatile of a normal distribution of a given number of observations, mean, and sd.
dnorm(62, mean = 24,sd=5)
# -returns the density of a normal distribution of a given number of observations, mean, and sd.

# runif, rpois
runif(100,min=0,max=50)
# - returns random deviates from the uniform distribution of 100 observations
#and distribution limits of 0 to 50 .
rpois(100,seq(0.5,2,0.5))
# - returns random deviates from a poission distribution of 100 random variables
#provided a vector of mean values.

# rank - returns the ranks of the values within a vector.
num<-c(1:12,15:19)
rank(num)

# sort, order
cr<-c(5,6,19,36,9,2,18)
sort(cr)
# - sorts the random values within the vector.
order(cr)
# - returns the order of the rank of each value in the vector in a descending 
#order

# outer
outer(num,cr,"*")
# - returns the outer product of two vectors. Performs the function on the values in num and cr
#and returns a matrix.

# rep - replicates the values given in the argument.
rep(cr,2)
# - replicates the values in cr two times.

# rowSum, colSum - calculates the sum of a the column or row of interest.

# seq - generates regular sequences of the provided values by a provided increment.
seq(2,12,2)
# - returns a sequence of the numbers 2-12 by 2 increments.

# source - a file is read and evaluated in the chosen location.

# which, which.min, which.max - returns the values which are true, the min() that is true, and the max() that is true.
TF<-c(TRUE,FALSE,FALSE,TRUE,FALSE,FALSE,TRUE)
which(TF)
# setdiff, intersect, union 
setdiff(num,cr)
# - will return a vector of all the values that are not common in the two vectors.
union(num,cr)
# - will unite the values in the vectors into one vector.
intersect(num,cr)
# - will return a vector of all the values that are common in the two vectors.

# table - creates a contigency table using the values provided as cross factors.
table(cr,levels=c('A','B','C','D','E','F','G'))

# with - command that evaluates a called expression using the environment created by the data.
with(beetledata, )