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

new.point<-function(x,y,...){
  output<-list(x=x,y=y)
  class(output)<-"point"
  return(output)
}
pointS<-new.point(2, 2)
pointE<-new.point(8, 2)
point_1<-new.point(9,5)
point_2<-new.point(5,7)
point_3<-new.point(1,5)

# question_3

distance<-function(p1, p2, ...){
  if(!inherits(p1,"point") | !inherits(p2,"point"))
    stop("points not loaded")
  distance<-sqrt((p2$x-p1$x)^2+(p2$y-p1$y)^2)
  return(distance)
}

# question_4

new.line<- function(start,end,...){
  output<-list(pointS=start, pointE=end)
  class(output)="line"
  return(output)
}

da.line<-new.line(pointS,pointE)
line_2<-new.line(pointE,point_1)
line_3<-new.line(point_1,point_2)
line_4<-new.line(point_2,point_3)
line_5<-new.line(point_3,pointS)

# question_5

new.poly<-function(s1,s2,s3,s4,s5,...){
  output<-list(side1=s1,side2=s2,side3=s3,side4=s4,side5=s5)
  class(output)="polygon"
  return(output)
}

five.poly<-new.poly(pointS,pointE,point_1,point_2,point_3)

# question_6

plot.point<-function(corx,...){
  if(!inherits(corx,"point"))
    stop('this is not a point')
  a<-(corx$x)
  b<-(corx$y)
  plot(x=corx$x,y=corx$y,type='b', xlab = "X", ylab = "Y",xlim = range(c(0,10)),ylim = range(c(0,10)))
  par(new=TRUE)
}

plot.line<-function(line){
  if(!inherits(line,"line"))
    stop("User must load line")
  start<-(c(pointS$x,pointE$x))
  end<-(c(pointS$y,pointE$y))
  plot(start, end,type='l', xlab = "", ylab = "",xlim = range(c(0,10)),ylim = range(c(0,10)))
}

# question_7


plot.poly<-function(poly,...){
  if(!inherits(poly,"polygon"))
    stop("User must load full polygon")
  a<-(c(poly$side1$y,poly$side1$x))
  b<-(c(poly$side1$y,poly$side1$y))
  c<-(c(poly$side2$x,poly$side2$x))
  d<-(c(poly$side2$y,poly$side2$y))
  e<-(c(poly$side3$x,poly$side3$x))
  f<-(c(poly$side3$y,poly$side3$y))
  g<-(c(poly$side4$x,poly$side4$x))
  h<-(c(poly$side4$y,poly$side4$y))
  i<-(c(poly$side5$x,poly$side5$x))
  j<-(c(poly$side5$y,poly$side5$y))
  plot.window(xlim=c(0,15),ylim=c(0,15))
  plot(x<-c(a,c,e,g,i,a),y<-c(b,d,f,h,j,b),type='l', xlab = "", ylab = "",xlim = range(c(0,10)),ylim = range(c(0,10)))
}

# question_8

add.canvas<-function(point,line,circle,polygon){
  if(!inherits(point,"point") | !inherits(line,"line") | !inherits(circle,"circle") |!inherits(polygon,"polygon"))
    stop("I think you missed something")
  canvas<-list(point=point,line=line,circle=circle,polygon=polygon)
  return(canvas)
}

canvas.objects<-add.canvas(point_3,da.line,circle1,five.poly)

plot.canvas<-function(canvas,...){
  if(!inherits(canvas,"canvas"))
    stop("User must load full polygon")

# question_9

new.circle<-function(x,y,r){
  circle<-list(x=x,y=y,radius=r)
  class(circle)="circle"
  return(circle)
}
circle1<-new.circle(3,3,5)

# question_10

circle.area<-function(r,...){
  if(!inherits(r,"circle"))
    stop("This is not a circle")
  area<-pi*r^2
  return(area)
}

poly.area<-function(r,...){
  if(!inherits(r,"polygon"))
    stop("This is not a polygon")
