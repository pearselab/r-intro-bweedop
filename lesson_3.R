# Lesson_3
new.cat <- function(color, weight){
  output <- list(color=color, weight=weight)
  class(output) <- "cat"
  return(output)
}
race <- function(first, second){
  if(!inherits(first,"cat") | !inherits(second, "cat"))
    stop("The participant is not a cat!")
  if(first$weight < second$weight){
    print("The first cat is the winner!")
    return(first)
  }
  print("The second cat is the loser!")
  return(second)
}
print.dog <- function(x, ...){
  cat("This ", x$color, "cat weighs ", x$weight, "kg\n")
}
