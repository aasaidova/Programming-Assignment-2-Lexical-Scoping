## These are a pair of functions that cache the inverse of a matrix.

## This function creates a special "matrix", which is actually a list containing a function to set and get the values of the matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been computed (and the matrix has not changed), cacheSolve should get the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if (!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}


