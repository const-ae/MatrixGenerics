#' Calculates the weighted median for each row (column) of a matrix-like object
#'
#' Calculates the weighted median for each row (column) of a matrix-like object.
#'
#' @param x An NxK matrix-like object.
#' @param w  A \code{\link[base]{numeric}} \code{\link[base]{vector}} of length
#' K (N).
#' @param rows,cols A \code{\link[base]{vector}} indicating subset of rows
#' (and/or columns) to operate over. If \code{\link[base]{NULL}}, no subsetting
#' is done.
#' @param na.rm If \code{\link[base:logical]{TRUE}}, \code{\link[base]{NA}}s
#' are stripped from x or not.
#' @param ... Additional arguments passed to specific methods.
#'
#' @return Returns a \code{\link[base]{numeric}} \code{\link[base]{vector}} of
#' length N (K).
#'
#' @seealso
#' \itemize{
#' \item See \code{matrixStats::\link[matrixStats]{rowWeightedMedians}()} and
#'   \code{matrixStats::\link[matrixStats]{colWeightedMedians}()} which are used for
#'   \code{matrix} input.
#' \item See \code{\link{rowMedians}()} and \code{colMedians()}
#'   for classical medians.
# #' \item For mean estimates, see \code{\link{rowMeans2}()} and
# #'   \code{\link[base:colSums]{rowMeans}()}.
#' }
#'
#' @keywords array iteration robust univar
#'
#' @name rowWeightedMedians
#' @export
setGeneric("rowWeightedMedians", function(x, w = NULL, rows = NULL, cols = NULL, na.rm=FALSE, ...) standardGeneric("rowWeightedMedians"),
           signature = "x",
)

#' @rdname rowWeightedMedians
setMethod("rowWeightedMedians", signature = "matrix", function(x, w = NULL, rows = NULL, cols = NULL, na.rm=FALSE, ...){
  matrixStats::rowMedians(x, w = w, rows = rows, cols = cols, na.rm=na.rm, ...)
})



#' @rdname rowWeightedMedians
#' @name colWeightedMedians
setGeneric("colWeightedMedians", function(x, rows = NULL, cols = NULL, na.rm=FALSE, ...) standardGeneric("colWeightedMedians"),
           signature = "x",
)

#' @rdname rowWeightedMedians
setMethod("colWeightedMedians", signature = "matrix", function(x, rows = NULL, cols = NULL, na.rm=FALSE, ...){
  matrixStats::colWeightedMedians(x, rows = rows, cols = cols, na.rm=na.rm, ...)
})



