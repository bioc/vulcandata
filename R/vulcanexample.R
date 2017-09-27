#' Function to load an example VULCAN dataset into the workspace
#'
#' This function loads a dummy ChIP-Seq dataset used for VULCAN examples.
#'
#' @return A list of components:
#' \describe{
#' \item{peakcounts}{A matrix of raw peak counts, peaks as rows, samples as
#' columns}
#' \item{peakrpkms}{A matrix of peak RPKMs, peaks as rows, samples as
#' columns}
#' \item{samples}{A vector of sample names and conditions}
#' }
#' @examples
#' vobj<-vulcanexample()
#' names(vobj)
#' vobj$peakcounts[1:5,]
#' @export
vulcanexample<-function(){
    load(system.file("extdata","vobj.rda",package="vulcandata",mustWork=TRUE))
    return(vobj)
}
