% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{produce_skeleton}
\alias{produce_skeleton}
\title{Produce a skeleton for GAI parameters}
\usage{
produce_skeleton(
  a_choice = "mixture",
  distribution = "P",
  options = list(),
  DF = NULL
)
}
\arguments{
\item{a_choice}{The character name for the seasonal trend function being
fitted. options include "splines", "stopover", and "mixture"}

\item{distribution}{The distribution of the counts, Poisson ("P"), Negative
Binomial ("NB") or Zero-Inflated Poisson ("ZIP")}

\item{options}{A list containing different specifications, which vary
depending on the model. For stopover and mixture models this contains B (the
number of broods), shared_sigma (boolean denoting if the SDs are the same for
each component), mu_formula (specifying a formula which describes a covariate
dependency for the mean arrival times for each brood), and sd_formula
(similar, for the SD of each brood).}

\item{DF}{If covariate relationships are specified, this is the data.frame
which contains these covariate values for each observation.}
}
\value{
A named list containing 'skeleton', the skeleton of parameter values
used by the model to relist optim guesses, and 'DMs', the list of design
matrix objects which are required to obtain the correct parameter values 
in each case where the user has specified a formula
}
\description{
Produces a skeleton object which can be used by relist to restructure a 
vector of parameters into a named list of parameters for a GAI model
}
