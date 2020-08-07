## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
  set <- function(y){
    x <<- y 
    inv <<- NULL
  }
  get = function(){x}
  setInv <- function(inverse){inv <- inverse}
  getinv <- function(){inv}
  list(set=set,get=get,setinv=setInv,getinv=getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
       inv <- x$getinv()
  if(!is.null(inv)){
     message("get cached data")
     return(inv) ## Return a matrix that is the inverse of 'x'
  }
  mat <- x$get()
  inv <- solve(mat,...)
  x$setInv()
  inv
        
        
}
