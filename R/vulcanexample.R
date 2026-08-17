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
    # The object is loaded into an environment of its own rather than into
    # the function frame. Naming vobj after a bare load() leaves it with no
    # visible binding as far as R's code analysis can tell, which is what
    # "no visible binding for global variable 'vobj'" was reporting
    e<-new.env()
    load(system.file("extdata","vobj.rda",package="vulcandata",
                    mustWork=TRUE),envir=e)
    return(e$vobj)
}
