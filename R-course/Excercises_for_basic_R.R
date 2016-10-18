# Excercise 1

# Create a function that takes argument n and calculates n-th element of Fibonacchi sequence.

fibi <- function(n) {
  a <- vector("numeric",n)
  if (n==1 | n==2) return(1)
  a[1]=a[2]=1
  for (i in 3:n)
    a[i] = a[i-1] + a[i-2]
  return(a[n])
}
fibi(1)
fibi(2)
fibi(3)
fibi(5)
fibi(10)

# Excercise 2

# Create a k x k matrix of zeros, put 1s in the positions where i+j = k+2 and calculate the sum in every column.
k=5
M <- matrix(0,nrow=k,ncol=k)
for (i in 2:k)
  M[i,k+2-i] <- 1
M
colSums(M)

# Excercise 3

# Imagine you have a list of observations of bacterial counts in different timepoints in several dishes:
bactcounts <- list(plate_1 = c(130,240,344,560), plate_2 = c(200,267,300,222), plate_3 = c(400,370,230,190))
# Calculate the means and medians of values in every plate and create a named vector MeMe which will contain 
# "yes" if a mean count for a plate is less than its median and "no" otherwise.

means <- sapply(bactcounts,mean) 
means 
medians <- sapply(bactcounts,median)
medians
MeMe <- ifelse(medians>means,"yes","no")

# Excercise 4

# Create a function that takes a vector of real numbers in unit interval (and prints an "Error" if it's not),
# calculates how many of them are larger than 0.5 and returns this count and the names of these entries.

crazy <- function(v) {
  if (length(which(v<0 | v>1))>0) {
    return("Error")
  }
  return(c(length(which(v>0.5)),names(which(v>0.5))))
}
v <- c(a=0.1, b=0.2, c=0.8, d=0, e=0.51, f=0.99)
crazy(v)
