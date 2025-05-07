#' Forest growth model differential equation
#'
#' @param r pre canopy closure growth rate, kg/year
#' @param C forest size measured in units of carbon (C)
#' @param g post canopy closure growth rate, kg/year
#' @param K carrying capacity kg C
#' @param thresh canopy closure threshold
#'
#' @return 

forest_growth <- function(time, state, params) {
    C <- state["C"]
    K <- params$K
    r <- params$r
    g <- params$g
    thresh <- params$thresh
    
    if (C < thresh) {
        dC <- r * C
    } else {
        dC <- g * (1 - C / K)
    }
    
    return(list(dC))
}