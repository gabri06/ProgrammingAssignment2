## Put comments here that give an overall description of what your
## functions do

## Simply, the next function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

## Once created the special "matrix" by making use of the makeCacheMatrix function,
## this function computes the inverse of it

cacheSolve <- function(x, ...) {
  
  inv <- x$getInverse()
  if (!is.null(inv)) {
    message("getting my cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}
