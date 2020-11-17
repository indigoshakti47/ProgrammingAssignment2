## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        #  we START by declaring the variable we want to obtain with a null value. (n)
         n <<- NULL
        #  we declare the variable "saveinverse" that will contain a function that will receive an array and equal "x" with the value of "y".
         saveinverse <<- function(inverse) n <<- inverse
        # the function "res" will give the value of the calculated inverse
         res <<- function() n

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        # if the "inverse" variable was already calculated, we acquire that data so we don't have to calculate it again.
          if(is.null(n)){
             saveinverse(solve(x))
             n
  }
  else {
    message("getting the data that is cached...")
    n
  }
}
