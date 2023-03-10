% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/opt.joint.accel.R
\name{opt.joint.accel}
\alias{opt.joint.accel}
\title{Fit an Unbiased Random Walk with an accelerating rate of change through time.}
\usage{
opt.joint.accel(y, pool = TRUE, meth = "L-BFGS-B", hess = FALSE)
}
\arguments{
\item{y}{an univariate evoTS object.}

\item{pool}{logical indicating whether to pool variances across samples}

\item{meth}{optimization method, passed to function optim. Default is "L-BFGS-B".}

\item{hess}{logical, indicating whether to calculate standard errors from the Hessian matrix.}
}
\value{
\item{logL}{the log-likelihood of the optimal solution}
\item{AICc}{AIC with a correction for small sample sizes}
\item{parameters}{parameter estimates}
\item{modelName}{abbreviated model name}
\item{method}{Joint consideration of all samples}
\item{K}{number of parameters in the model}
\item{n}{the number of observations/samples}
}
\description{
Function to find maximum likelihood solutions to a Unbiased Random Walk with an accelerating or decelerating rate of change through time.
}
\note{
The models have been implemented to be compatible with the joint parameterization routine in the package paleoTS. The optimization is therefore fit using the actual sample values, with the autocorrelation among samples accounted for in the log-likelihood function. The joint distribution of sample means is multivariate normal, with means and variance-covariances determined by evolutionary parameters and sampling errors.
}
\examples{
## Generate a paleoTS object by simulating a univariate evolutionary sequence
y <- paleoTS::sim.GRW(30)

## Fit the model
opt.joint.accel(y)

}
\author{
Kjetil Lysne Voje
}
