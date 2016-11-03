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
stars<-function(x,y,ast,txt){
  for(i in 1:x){
    cat(ast)
  }
  cat('\n')
  for(j in 1:y-1){
    cat(ast,txt,ast,'\n')
  }
  for(k in 1:x){
    cat(ast)
  }
}
stars(5,5,"*"," ")

# number_10
stars<-function(x,y,ast,txt){
  for(i in 1:x){
    cat(ast)
  }
  cat('\n')
  for(j in y:y){
    cat(ast,'           ',ast,'\n')
  }
  for(j in y:y){
    cat(ast,txt,ast,'\n')
  }
  for(j in y:y){
    cat(ast,'           ',ast,'\n')
  }
  for(k in 1:x){
    cat(ast)
  }
}
stars(15,5,"*"," asterisks ")

# number_11
stars<-function(x,y,ast, txt){
  for(i in 1:x){
    cat(ast)
  }
  cat('\n')
  for(j in 1:1){
    cat('w  ', txt, ' w', '\n')
  }
  for(k in 1:x){
    cat(ast)
  }
}
stars(3,3,"wdp", "yo")

# number_12

hurdle <- function(n){
  m<-matrix(nrow=n,ncol=1)
  for(i in 1:n){
  presence<-(rbinom(1,1,sample(seq(from=0, to=1, by=0.01))))
  if(presence==1){
    abundance<-(rpois(n,sample(seq(from=0,to=10, by=1))))
    return(abundance)
  } else {
    abundance<-0
  }
  m[i,]<-abundance
  }
  return(m)
}
hurdle(10)

# number_13

specieshurdle <- function(spec,n){
  m<-matrix(nrow=n,ncol=spec)
  for(i in 1:spec){
  m[,i]<-hurdle(n)
  } 
  return(m)
  }
specieshurdle(5,10)

# question_14
deg_rad<-function(deg){(deg * pi) / (180)}
lost<-function(y,x,days){
  for(i in 1:days){
  R <- 3961
  long1<-deg_rad(x)
  long2<-deg_rad()
  lat1<-deg_rad(lat)
  lat2<-deg_rad(y)
  dlong<-(long1-long2)
  dlat<-(lat1-lat2)
  a = (sin(dlat/2))^2 + cos(lat1) * cos(lat2) * (sin(dlong/2))^2 
  c = 2 * atan2( sqrt(a), sqrt(1-a) ) 
  d = R * c
  }
  dlat <- rnorm(days,mean = sample(seq(from=0, to=20, by=2.5)), sd=1)
lost(41.7, -111.8,100)
