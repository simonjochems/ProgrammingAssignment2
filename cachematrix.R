## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed)
## then the cachesolve should retrieve the inverse from the cache.

## The first function, makeCacheMatrix creates a special "matrix", which is really a list containing a function to

   ## set the matrix
    ##get the matrix
   ## set the inverse of the matrix
   ## get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  I <- NULL
  set <- function(y) {
    x <<- y
    I <<- NULL
  }
  get <- function() x
  setInverse <- function(solve) I <<- solve
  getInverse <- function() I
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}
 ##The following function calculates the inverse of the special "matrix" created with the above function.
 ##However, it first checks to see if the inverse has already been calculated. If so, it gets the inverse from 
 ##the cache and skips the computation.  Otherwise, it calculates the inverse of the data and sets the value
 ## of the inverse in the cache via the setInverse function.
 
cacheSolve <- function(x, ...) {
  I <- x$getInverse()
  if(!is.null(I)) {
    message("getting cached data")
    return(I)
  }
  data <- x$get()
  I <- solve(data, ...)
  x$setInverse(m)
  I
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
