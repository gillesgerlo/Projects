library(Rcpp)
library(RcppArmadillo)
#setwd("C:/Users/mukul.chaware13/Desktop/N/deep learning/Restricted boltzmann machines")

data=matrix(c(1,1,1,0,0,0,1,0,1,0,0,0,1,1,1,0,0,0,0,0,1,1,1,0,0,0,1,1,0,0,0,0,1,1,1,0),6,6)
test=matrix(c(0,0,0,1,1,0))
test=t(test)
sourceCpp("rbm.cpp")

d=new(rbm,6,10,0.1,6000)
d$train(data)
d1=d$run_visible(test)
d2=d$run_hidden(d1)

print(d2)