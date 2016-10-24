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
    print(c(i,"Good: NUMBER"))
  } else if (any(i %% 2:(i-1)==0)){
    print(c(i,"Job: NUMBER"))
  } else {
    print (c(i,""))
  }
  }
#number_5
