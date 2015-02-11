#' Graphical User Interface for Biomon
#' 
#' @title Function to call Biomon's interface
#'  
#' @import shiny
#' @import biomonCore
#' @import analyz

#' @export
biomon <- function(){
  shiny::runApp(system.file('shiny', package='biomon'))
}