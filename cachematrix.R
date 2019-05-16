## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##This function makeCacheMatrix takes a matrix as its input, set the value of the matrix,
##get the value of the matrix, set the inverse Matrix and get the inverse Matrix. 

#In this function,we are goint to use the <<- operator,which is used to assign a value to an object in an environment that is different 
#from the current environment 


makeCacheMatrix<- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setsolve <- function(solve) m <<- solve
    getsolve <- function() m
    list(set = set, get = get,
         setsolve = setsolve,
         getsolve = getsolve)
}


## Write a short comment describing this function

##The following function calculates the inverse of the "special" matrix created with the above function. 
##However, it first checks to see if the inverse has already been calculated. 
##If so, it gets the inverse from the cache and skips the computation. 
##Otherwise, it calculates the inverse of the matrix and sets the value of the inverse in the cache via the setmean function.



cacheSolve <- function(x, ...) {
        
                m <- x$getsolve()
                if(!is.null(m)) {
                      message("getting cached data")
                   return(m)
}
            data <- x$get()
               m <- solve(data,...)
              x$setsolve(m)
               m

## Return a matrix that is the inverse of 'x'
}
