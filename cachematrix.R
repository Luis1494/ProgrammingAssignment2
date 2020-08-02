## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { 
## I define the inverse if it exists or not  
  inv1 <- NULL
##Here a matrix is set even it exists or not and also for the inverse 
set <- function(y){
  x <<- y
  inv1 <<- NULL
}
##with this with get the value of the matrix
get <- function(){x}
##In case the inverse exists, here we set to the inverse
setInverse <- function(inverse) {inv1 <<- inverse}
getInverse <- function() {inv1}
##we define the values for each of the objects above
list(set = set, get = get, 
     setInverse = setInverse, 
     getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
##Here we get the value in case the invert exists  
  inv2 <- x$getInverse()
  if(!is.null(inv2)){
##if it exists a message would be displayed while the value is searched    
    message("getting cached data")
##and when it is founded the value is returned    
    return(inv2)
  }
##in case the value it doesn't exist, the matrix is searched and then calculated its inversed  
  matrix1 <- x$get()
## the inverse is computed  
  inv2 <- solve(matrix1,...)
##the inverse is setted
    x$setInverse(inv2)
  inv2
}
