#' @title Show available Adwords Reports
#' 
#' @description reports provides an overview of all available Adwords report types. The report type is specified in \code{\link{statement}}.
#' 
#' @param apiVersion Supports 201502 or 201409. Default is 201502.
#' 
#' @export
#' @return Available report types.
reports <- function(apiVersion="201502"){
# Function which returns all available report types
#
# Args: None
#
# Returns:
#     Report types
if (apiVersion=="201502"){
  reportTypes <- list.files(system.file(package="RAdwords",'extdata/api201502/'))
  reportTypes <- sub('.csv','',reportTypes)
  reportTypes <- gsub('-','_',reportTypes)
  reportTypes <- toupper(reportTypes)
}
else if (apiVersion=="201409"){
  reportTypes <- list.files(system.file(package="RAdwords",'extdata/api201409/'))
  reportTypes <- sub('.csv','',reportTypes)
}
reportTypes
}
