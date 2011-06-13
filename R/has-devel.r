#' Check if you have a development environment installed.
#'
#' Thanks to the suggestion on Simon Urbanek. 
#'
#' @return TRUE if your development environment is correctly set up, otherwise
#'   returns an error.
has_devel <- function() {
  foo_path <- file.path(tempdir(), "foo.c")
  
  cat("void foo(int *bar) { *bar=1; }\n", file = foo_path)
  on.exit(unlink(foo_path))
  
  capture.output(in_dir(tempdir(), system_check("R CMD SHLIB foo.c")))
  dylib <- file.path(tempdir(), paste("foo", .Platform$dynlib.ext, sep=''))
  on.exit(unlink(dylib), add = TRUE)
  
  dyn.load(dylib)
  on.exit(dyn.unload(dylib), add = TRUE)

  stopifnot(.C("foo",0L)[[1]] == 1L)
  TRUE
}
