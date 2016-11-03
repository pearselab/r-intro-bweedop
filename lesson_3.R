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
  class(point)<-"point"
  return(point)
}
loganUT<-locate(41.7, -111.8)
boiseID<-locate(43.6187, -116.2146)

# question_3
deg_rad<-function(deg){(deg * pi) / (180)}
distance<-function(p1, p2, ...){
  if(!inherits(p1,"point") | !inherits(p2,"point"))
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

new.line<- function(x,y){
  points<-list(point_x=x, point_y=y)
  class(points)="line"
  return(points)
}
point_1<-new.point(9,10)
point_2<-new.point(1,2)

line<-function(p1,p2,...){
  if(!inherits(p1,"line") | !inherits(p2,"line"))
    stop("User must load point")
  plot(x=c(p1$point_x, p2$point_x), y=c(p1$point_y,p2$point_y),type='b', xlab = "X", ylab = "Y")
}

# question_5,6,7

new.poly<-function(x,y){
  points<-list(x=x,y=y)
  class(points)="polygon"
  return(points)
}
s1<-new.poly(3,1)
s2<-new.poly(4,1)
s3<-new.poly(5,2)
s4<-new.poly(4,3)
s5<-new.poly(3,3)
s6<-new.poly(2,2)

plot.poly<-function(p1,p2,p3,p4,p5,p6,...){
  if(!inherits(p1,"polygon") | !inherits(p2,"polygon") | !inherits(p3,"polygon") |!inherits(p4,"polygon") |!inherits(p5,"polygon")|!inherits(p6,"polygon"))
    stop("User must load point")
  plot(x=c(p1$x,p2$x,p3$x,p4$x,p5$x,p6$x,p1$x), y=c(p1$y,p2$y,p3$y,p4$y,p5$y,p6$y,p1$y),type='b', xlab = "X", ylab = "Y")
}

# question_8

add<-function(poi,li,cir,poly){
  if(!inherits(poi,"point") | !inherits(li,"line") | !inherits(cir,"circle") |!inherits(poly,"polygon"))
    stop("I think you missed something")
  canvas<-list(point=poi,line=li,circle=cir,polygon=poly)
  return(canvas)
}
w=
canvas<-add()
# question_9

new.circle<-function(x,y,r){
  circle<-list(x=x,y=y,radius=r)
  class(circle)="circle"
  return(circle)
}
circle1<-new.circle(3,3,5)

# question_10

area


circle<-function(x,y,r){
  th = seq(0,2*pi,length=200)
  plot(c((x-5),(x+5)),c((y-5),(y+5), type='n')
       
  linesxunit = r * cos(th) + x
  yunit = r * sin(th) + y
  plot(xunit, yunit)
}

