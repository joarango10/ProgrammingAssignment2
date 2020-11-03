## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##initializing inverse as NULL
## function to get matrix x
## function to obtain inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL                     
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function

## This is used to cache data
## gets cache data
## checks whether invesrse is Null
## returns inverse value
## calcuates inverse value 

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data.")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  inv
        ## Return a matrix that is the inverse of 'x'
}

