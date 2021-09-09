# Citations for loaded packages
#' @description function to cite all loaded packages in the session
#' @author Matthew Grainger, \email{matthew.grainger@@nina.no}
#' @examples
#' cite_loaded_packages()
#' @export

cite_loaded_packages<-function(){
  pkgs<-(.packages())

  for (i in 1:length(pkgs)){
    print(citation(package=pkgs[i]))
  }
}


cite_loaded_packages()
