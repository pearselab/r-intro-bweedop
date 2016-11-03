# question_1

q1=replicate(10,rnorm(10,mean=sample(seq(from=0,to=100,by=1)),sd=sample(seq(from=0,to=10,by=1))))

#question_2

summ<-function(dataset){
  output<-cat("Mean: ", mean(dataset),'\n','std: ',sd(dataset),'\n')
  print(output)
}

#question_3
q3<-
colnames(q1, do.NULL = FALSE)
colnames(q1) <- colnames(q1,do.NULL = FALSE, prefix = 'species')
rownames(q1) <- rownames(q1, do.NULL = FALSE, prefix = "Obs.")
cate.sum<-function(data){
  read.table(q1, header = FALSE, sep = ",", row.names, col.names, !is.numeric)
}

# question_4



