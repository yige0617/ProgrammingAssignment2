## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## creates a special "vector", which is
## really a list containing a function to

## 1.  set the value of the matrix
## 2.  get the value of the matrix
## 3.  set the inverse matrix of x
## 4.  get the inverse matrix

makeCacheMatrix <- function(x = matrix()) {

         inv_m <- NULL
         set <- function (y) {
            x <<- y
            inv_m <<- NULL
      }
     get <- function() x
     set_inv_matrix <- function(inv_matrix) inv_m <<- inv_matrix 
     get_inv_matrix <- function () inv_m
     list(set = set, get = get,set_inv_matrix = set_inv_matrix, get_inv_matrix = get_inv_matrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv_matrix <- x$get_inv_matrix()
        if(!is.null(inv_m)) {
		message("get inverse matrix from cache\r\n")
            return (inv_m)
        }
        data <- x$get()
        inv_matrix <- solve(data)
        x$set_inv_matrix(inv_matrix)
        inv_matrix
        
}

