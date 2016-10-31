# question_1
new.cat <- function(color, weight){
  output <- list(color=color, weight=weight)
  class(output) <- "cat"
  return(output)
}
race <- function(first, second){
  if(!inherits(first,"cat") | !inherits(second,"cat"))
    stop("The participant is not a cat!")
  if(first$weight < second$weight){
    print("The first cat is the winner!")
    return(first)
  }
  print("The second cat is the loser!")
  return(second)
}
chester <- new.cat('black', 15)
felix <- new.cat("orange", 7)

print.cat <- function(x, ...){
  cat("This", color, "cat weighs", weight, "kg\n")
}
# question_2



