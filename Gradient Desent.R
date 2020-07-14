#input data 
data <- read.csv("test.csv")


th0 <-10
th1 <-10
alp <-0.001
m <-length(data$YearsExperience)
x <- data$YearsExperience
y <- data$Salary

h <- function(x){
  hx <- th0 + th1*x
  hx
}
n <- 1000000
for(i in 1:n){
  th0 <- th0 -alp*(sum(h(x)-y))/m
  th1 <- th1 -alp*(sum((h(x)-y)*x))/m
  
  }



