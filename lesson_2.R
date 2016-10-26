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
e=2.71828
# - e is for Euler's number which is 2.71828.
pop.size<-function(t,a,c,b){
  y <- a*e^((-b*e)^(-c*t));
  return(y)
}
pop.size(8,10,-0.5,-0.3)
# - The user inputs the time, population size, and parameters.

# number_6:
e=2.71828
# - e is for Euler's number which is 2.71828.
t = 15
# - the given length of time is 15 years.
pop.size<-function(a,c,b){
  y <- a*e^((-b*e)^(-c*t));
  return(y)
}
pop.size(10000,-0.5,-0.5)
# The user inputs the population size and parameters.

