average <- function(x){
  
  if(any(is.na(x))){
    warning("'x' contains one or more NA values")
    return(NA)
  }
  
  if(!is.numeric(x)){
    stop("'x' must be a numeric vector.") 
    # see difference to funcitons 'message' or 'warning' 
    # return(NA)
  } 
  
  sum(x) / length(x)

}
