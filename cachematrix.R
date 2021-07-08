## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(cloud = matrix()) {
  langit <- NULL
  set <- function(matrix){
    cloud <<- matrix
    langit <<- NULL
  }
  get <- function()langit
  setanswer <- function(answer) langit <<- answer
  getanswer <- function() langit
  list(set = set, get = get,
       setanswer = setanswer,
       getanswer = getanswer)
}

cacheSolve <- function(x, ...) {
  langit <- x$getanswer()
  if(!is.null(langit)){
    message("getting inversed matrix")
    return(langit)
  }
  data <- x$get()
  langit <- solve(data, ...)
  x$setanswer(langit)
  langit
}