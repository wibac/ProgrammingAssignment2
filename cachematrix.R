## Put comments here that give an overall description of what your
## functions do
## function to calculate the inverse of the matrix and cache the result
## if a cache result is available then no need to calculate inverse
## Write a short comment describing this function

## contains the getters and setters and returns the special object i.e. list
makeCacheMatrix <- function(x = matrix()) {
    i <- null ##initialize inverse
    set <- function(x){ ##setfunction to set the matrix
        x <<- y
        i <<- NULL
    }
    get <- function x ##to return the matrix
    setinv <- function(inverse) i <- inverse ## to set inverse
    getinv <- function() i ## to get inverse
    list(set=set,get=get,setinv=setinv,getinv=getinv)
}


## Write a short comment describing this function
## check if cached copy is available else calculate inverse
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    i <- x$getinv(); ##get the cached inverse value
    if(!is.null(i)){
        ##cached copy available
        return(i);
    }
    ## no cached copy available
    mat <- x$get() #get the matrix
    i <- solve(mat) #calculate inverse
    x$setinv(i) #set the value of the object
    i #return the inverse of the matrix
}
