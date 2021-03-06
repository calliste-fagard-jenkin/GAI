% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{transform_output}
\alias{transform_output}
\title{Parameter transformation}
\usage{
transform_output(GAIoutput, DF)
}
\arguments{
\item{GAIoutput}{The output of the fit_GAI function, a fitted model}

\item{DF}{A data.frame containing rows of covariate values for which
transformed parameter values should be obtained. It is important that the 
names of columns in this data.frame are identical to those that were
specified in the options argument of the fit_GAI function.}
}
\value{
A named vector of parameters, on the parameter-space scale
}
\description{
Transforms parameters from the real scale on which they are estimated to the
correct parameter-space scale using the appropriate link functions and 
covariate formulas
}
