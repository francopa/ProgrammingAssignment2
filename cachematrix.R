# Course : Coursera - R Programming
# Programming Assignment 2
# Author: Paul Franco
# Matrix inversion is usually a costly computation and there may be some benefit
# to caching the inverse of a matrix rather than compute it repeatedly. The
# following two functions are used to cache the inverse of a matrix.
# Function Descriptions ###
# makeCacheMatrix - function creates a matrix and sets inverse calculation in cache
# makeCacheMatrix creates a list containing a function to
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix


makeCacheMatrix <- function(x = matrix()) {
        invmatrix <- NULL
        set <- function(y) {
                x <<- y
                invmatrix <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) invmatrix <<- inverse
        getinverse <- function() invmatrix
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


makeCacheMatrix <- function(x = matrix()) {

}


# The following function returns the inverse of the matrix. It first checks if
# the inverse has already been computed. If so, it gets the result and skips the
# computation. If not, it computes the inverse, sets the value in the cache via
# setinverse function.

## function cacheSolve computes the inverse of the special "matrix" created by 
## function makeCacheMatrix above

cacheSolve <- function(x, ...) {
        invmatrix <- x$getinverse()
        if(!is.null(invmatrix)) {
                message("getting cached data.")
                return(invmatrix)
        }
        data <- x$get()
        invmatrix <- solve(data)
        x$setinverse(invmatrix)
        invmatrix
}


