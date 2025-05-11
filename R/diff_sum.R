#' Summary statistics of diffusion model
#'
#' @param diff_results Results of diffusion model
#'
#' @return 

diff_summ <- function(diff_results) {
    
    concentration <- diff_results$conc
    
    avg_conc <- mean(concentration)
    
    print(avg_conc)
    
}

