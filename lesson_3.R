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
  cat("This", x$color, "cat weighs", x$weight, "kg\n")
}
# question_2

locate<-function(y,x){
  point<-list(latitude = y, longitude = x)
  class(point)<-"location"
  return(point)
}
loganUT<-locate(41.7, -111.8)
boiseID<-locate(43.6187, -116.2146)

# question_3
deg_rad<-function(deg){(deg * pi) / (180)}
distance<-function(p1, p2, ...){
  if(!inherits(p1,"location") | !inherits(p2,"location"))
    stop("the point is not in space")
  R <- 3961
  long1<-deg_rad(p1$longitude)
  long2<-deg_rad(p2$longitude)
  lat1<-deg_rad(p1$latitude)
  lat2<-deg_rad(p2$latitude)
  dlong<-(long1-long2)
  dlat<-(lat1-lat2)
  a = (sin(dlat/2))^2 + cos(lat1) * cos(lat2) * (sin(dlong/2))^2 
  c = 2 * atan2( sqrt(a), sqrt(1-a) ) 
  d = R * c
  cat("The distance is", d,"miles.")
}

# question_4

new.point<- function(x,y){
  points<-list(point_x=x, point_y=y)
  class(points)="line"
  return(points)
  plot(x,y,type='b', xlim = 15, ylim = 20)
}
point_1<-new.point(9,10)
point_2<-new.point(1,2)

line <- function(p1,p2,...){
  if(!inherits(p1,"line") | !inherits(p2,"line"))
    stop("User must load point")
  dx<-c(p1$x,p2$x)
  dy<-c(p1$y,p2$y)
  plot(dx,dy,type='b', xlim = 15, ylim = 20)
}


