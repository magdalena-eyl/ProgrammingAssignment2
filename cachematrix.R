## Put comments here that give an overall description of what your
## functions do

## This function creates a special “matrix” object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    Inv <- NULL
    set <- function(y) {
        x <<- y
    Inv <<- NULL
    }
    get <- function()x
    setInv <- function(invMatrix) Inv <<- InvMatrix
    getInv <- function() Inv
    list(set = set, 
         get = get, 
         setInv = setInv, 
         getInv = getInv)

}


## The function calculates the inverse of the special matrix created with the
## function above ("makeCacheMatrix")
## it first checks if the inverse has already been created.
## if yes: it gets the inverse from the cache
## if no: it creates the inverse matrix

cacheSolve <- function(x, ...) {
    m <- x$getInv()
    if(!is.null(Inv)){
        message("getting cached data")
        return(Inv)
    }
    data <- x$get()
    Inv <- inv(data)
    x$setInv(Inv)
    Inv
}
