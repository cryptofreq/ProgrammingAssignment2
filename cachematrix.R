## Put comments here that give an overall description of what your
## functions do

## This function produces a list of functions related to the cachesolve matrix function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set<- function(y)
                {
                x<<-y
                m<<-NULL
                }
                
        get<-function()
                x
        setmatrix<-function(solve)
                m<<- solve
        getmatrix<-function()
                m
        list(set=set, get=get, setmatrix=setmatrix, getmatrix=getmatrix)
        
}


## This function computes the inverse of the supplied matrix but uses the cached solution if it exists

cacheSolve <- function(x, ...) {
        m<-x$getmatrix()
        if(!is.null(m)){
                message("Using cached data")
                return(m)
                }
        matrix<-x$get()
        m<-solve(matrix,...)
        x$setmatrix(m)
        m
        }
        

