
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
