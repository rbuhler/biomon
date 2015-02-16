#' Graphical User Interface for Biomon
#' 
#' @title Function to call Biomon's interface
#'  
#' @import shiny
#' @import biomonCore
#' @import analyz
#' 
#' @param parm Parameter just for atomatic test purposes, there is no need to inform it.
#' 
#' @examples
#' biomon(FALSE)
#' 
#' @export
biomon <- function(parm=TRUE){
  if(parm){
    shiny::runApp(system.file('shiny', package='biomon'))  
  }else{
    TRUE
  }
}