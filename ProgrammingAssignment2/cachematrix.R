## Put comments here that give an overall description of what your
## functions do

## The following functions maintains a matrix and its inverse in a cache.
## It is used to set the value in the cache of the matrix and its inverse
## and retrieve them when reuired.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    mcache <<- NULL
  }
  get <- function() x
  setsolve <- function(m) mcache <<- m
  getsolve <- function() mcache
  list(set = set, get = get,
       setsolve = setsolve, getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  mcache <- x$getsolve()
  if (!is.null(mcache)) {
    return(mcache)
  }
  data <- x$get()
  m <- solve(x)
  x$setsolve(m)
  m
}
