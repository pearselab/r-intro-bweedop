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

#cat - concatenate and print 
#       - takes two or more vectors of the same type and joins them together.
cat(1:100)

#cbind - combine objects by rows and columns.
#       -combine a sequence vectors, matrix, or some data by columns or rows. 
cbind(1:7) 
#       -combining columns one through seven.

#col, row - 

#cut -

#diff - Returns the difference of the present value and the following value.
diff(1:10) #Returns the difference of the sequential values e.g. 2-1, 3-4.
#     - values may be skipped by using the lag fu

#dim - get or set the dimensions of an object.
table<-1:20;dim(table)<-c(4,4) #Creating a table for the numeric vector of 1:20 with the dimensions of four rows and four columns.


#rownames, colnames, names - assigns or retrieves the names pertaining to a given row, column, or both.
colnames(beetledata) # - returns the names of the dataset 'beetedata.'

#expand.grid

#eigen, %*%, lower.tri, upper.tri, diag (try ?"%*%", not ?%*%, as this is an operator, and document
                                          the function, not the maths
                                          • gl
                                          • identical
                                          • image
                                          • library