test_data <- kIn

value <- nrow(test_data)

if(value > 10 ){
kpop <- amap::Kmeans(test_data, knime.flow.in$n_clusters , method="correlation", nstart=20)
kpop$cluster = paste0("cluster_",kpop$cluster )
results <- cbind(test_data, Cluster = kpop$cluster)                        
   
}else if(value  <= 10 )  {
  
  out1<- data.frame(cbind(test_data,Cluster = 1))
  out1$Cluster = paste0("cluster_",out1$Cluster )
  results <- out1
}

rOut <- results