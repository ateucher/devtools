% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/install-cran.r
\name{install_cran}
\alias{install_cran}
\title{Attempts to install a package from CRAN.}
\usage{
install_cran(pkgs, repos = getOption("repos"), type = getOption("pkgType"),
  ..., quiet = FALSE)
}
\arguments{
\item{pkgs}{Character vector of packages to install.}

\item{repos}{A character vector giving repositories to use.}

\item{type}{Type of package to \code{update}.  If "both", will switch
automatically to "binary" to avoid interactive prompts during package
installation.}

\item{...}{Additional arguments passed to \code{install_packages}.}

\item{quiet}{If \code{TRUE}, suppress output.}
}
\description{
This function is vectorised on \code{pkgs} so you can install multiple
packages in a single command.
}
\examples{
\dontrun{
install_cran("ggplot2")
install_cran(c("httpuv", "shiny")
}
}
\seealso{
Other package installation: \code{\link{install_bitbucket}},
  \code{\link{install_github}}, \code{\link{install_git}},
  \code{\link{install_svn}}, \code{\link{install_url}},
  \code{\link{install_version}}, \code{\link{install}},
  \code{\link{uninstall}}
}

