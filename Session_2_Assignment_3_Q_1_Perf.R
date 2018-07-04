start_time_df<-0
end_time_df<-0
start_time_mat<-0
end_time_mat<-0
difference_mat<-0
difference_df<-0

for(k in 1:50){
  
m<- 10

n<- 10

mydf <- as.data.frame(replicate(m, rnorm(n)))

start_time_df[k] <- Sys.time()

for(i in 1:10)
  
{
  
  for(j in 1:10)
    
  {
    
    mydf[i,j] <- mydf[i,j]+ sin(mydf[i,j])
    
  }
  
}

end_time_df[k] <- Sys.time()

difference_df[k] <- (end_time_df[k]-start_time_df[k])




n<- 10

m<- 10

dat<- rnorm(n*m)

myMat<-matrix(data=dat, nrow = n, ncol = m)

start_time_mat[k] <- Sys.time()

for(i in 1:10)
  
{
  
  for(j in 1:10)
    
  {
    
    myMat[i,j] <- myMat[i,j]+ sin(myMat[i,j])
    
  }
  
}

end_time_mat[k] <- Sys.time()

difference_mat[k] <- end_time_mat[k]-start_time_mat[k]

}

df_diff <- as.vector(difference_df)
mat_diff <- as.vector(difference_mat)

plot(df_diff,type = "o",col = "red")
lines(mat_diff,type = "o", col = "blue")


