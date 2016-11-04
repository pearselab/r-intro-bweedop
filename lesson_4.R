# question_1

q1<-replicate(10,rnorm(1,mean=runif(100,0,100),sd=runif(100,0,5)))

#question_2
q2<-replicate(10,rnorm(5,mean=runif(100,0,100),sd=runif(100,0,5)))
df2<-data.frame(q2)

summ<-function(dataset){
  mean<-apply(dataset, 2,mean)
  sd<-apply(dataset, 2,sd)
  output<-data.frame(mean,sd)
  print(ouput)
}

# - calculates the mean and sd of the observations of each of the columns of random variables in dataset. 

#question_3
owner<-c("Jim",'Kathy','Bob','Will')
gender<-c('male',"female",'male','male')
pet<-c("dog",'dog','bird','cat')
cate.df<-data.frame(owner,gender,pet)
cate.sum<-function(dataset){
  if(Negate(is.numeric)(dataset)){
    lapply(dataset, head)
  }
}

# question_4
age<-c(28,56,65,35)
cate.df4<-data.frame(owner,gender,pet,age)

duo.sum<-function(dataset){
  if(is.numeric(dataset)){
    return(summ(dataset))
  } else {
    return(cate.sum(dataset))
  }
}

# question_5
codon<-function(len){
  split(seq(from=1,to=len,by=3))
}
arb<-c('ACGATATACGA')
pro.trans<-function(dna){
  lapply(arb,)
}
expand.grid(dna=c('A','G','C','T'), aa length.out = 21)
# question_6

# question_7

# question_8