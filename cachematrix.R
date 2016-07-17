## makeCacheMatrix() function creates a special "matrix" object that cache its inverse.
## set() reads the matrix
## get() shows/print the matrix
## setinverse() calculates the inverse of the matrix
## getinverse() shows/prints the inverse of the matrix

## makeCacheMatrix() reads the matrix, prints the matrix, calculates the inverse of the matrix and prints the inverse of the matrix.

makeCacheMatrix <- function(x = matrix()) {
m <<- NULL
set <- function(y) {
x <<- y
m <<- NULL
}
get <- function() x 
setinverse <- function(matrix) m <<- solve(x)
getinverse <- function() m
list(set = set, get = get, setinverse = setinverse,
getinverse = getinverse)
}


## cacheSolve() function computes the inverse of the "matrix" returned by makeCacheMatrix() function. 
## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
m <- x$getinverse()
if(!is.null(m)) {
message("getting cached inverse of matrix")
return(m)
}
read <- x$get()
m <- matrix(read)
x$setinverse(m)
x$getinverse()        ## Return a matrix that is the inverse of 'x'
}
