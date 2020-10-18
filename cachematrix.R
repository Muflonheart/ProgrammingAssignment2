## The structure is pretty similar to the MakeVector/Cachemean example
## Instead of a mean it will cache the inverse of a matrix

## This function sets the values and has a nested function that 
## calls to the parent environment to clear the chaced value 

makeCacheMatrix <- function(x = matrix()) {
  i=NULL
  set <- function(y) {
      x <<- y
      i <<- NULL
  }
  get <- function(x)
  setinv <- function(inverse) i <<-inverse
  getinv <- function() i
  list(set = set, get = get, setinv = setinv, getinv = getinv)
  }


## This part is where the programs checks if there is cached value
## and, if not, where the inverse matrix is calculate

cacheSolve <- function(x, ...) {
        i <- x$getinv()
        if(!is.null(i)) {
          message("getting cached data")
          return(j)
        }
        dat <- x$get()
        i <- solve(dat, ...)
        x$setinv(i)
        i
}
