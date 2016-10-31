for(i in 20:10){
  print(i)
}
for(i in 1:20){
  if(i %% 2 ==0) print(i)
}
# number_3
primer<-function(m){
  if(m==2){
      TRUE
  } else if (any(m %% 2:(m-1)==0)){
      FALSE
  } else {
      TRUE
      }
}
primer(11)
# number_4
for(i in 1:20){
  if(i %% 5 ==0){
    print(paste(i,"Good: NUMBER"))
  } else if (any(i %% 2:(i-1)==0)){
    print(paste(i,"Job: NUMBER"))
  } else {
    print (paste(i,""))
  }
  }
#number_5

pop.size<-function(t,a,b,c){
  y <- a*exp(-b*exp(-c*t))
  return(y)
}
pop.size(8,10,-0.5,-0.3)
# - The user inputs the time, population size, and parameters.

# number_6:
pop.size<-function(a,b,c){
  t <- seq(1,30,5)
  y <- a*exp(-b*exp(-c*t))
  plot((y) ,type = 'b', xlab="Time(Years)", ylab = "Population", main = "Population Growth")
}
pop.size(10,-0.5,-0.3)
# The user inputs the population size and parameters.

#number_7

pop.size<-function(a,b,c){
  t <- seq(0,100,by=5)
  y <- a*exp(-b*exp(-c*t))
  plot((y) ,xaxt="t",type = 'b', xlab="Time(Years)", ylab = "Population", main = "Population Growth", pch = 16, col= ifelse(y < a | y > b,'red','blue'))
  return(y)
}
pop.size(100,0.5,0.5)

#number_8

pop.size<-function(a,b,c){
  t <- seq(0,100,by=5)
  y <- a*exp(-b*exp(-c*t))
  plot((y) ,xaxt="t",type = 'b', xlab="Time(Years)", ylab = "Population", main = "Population Growth", pch = 16, col= ifelse(y > a ,'purple',NA))
  return(y)
}
pop.size(10,0.5,0.3)
# - Due to 'a' being an asymptote there are no values of y greater than a.

# number_9
n<-c(1:20)
stars<-function(x,y){
  top<-matrix(n,ncol = x, nrow = y)
  print(noquote(top))
}
stars(4,5)
# number_12
hurdle <- function(n,p,l){
  
}
