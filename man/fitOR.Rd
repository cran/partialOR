\name{fitOR}
\alias{fitOR}
\title{FITTING H- and F-MODELS}
\description{Fits the multinomial logistic regression models.
See \code{partialOR()} for details. }
\usage{fitOR(dd)}
\arguments{
  \item{dd}{data frame with variables x,y,z1,...,zm}}
\value{
  \item{fitH}{details of the H-model fit as returned by the 
  optimization procedure \code{optim()} }
  \item{fitF}{details of the F-model fit as returned by the 
  function \code{summary.nnet()} }
  \item{fit0}{details of the null model, i.e. the model without 
  covariates, as returned by \code{nnet()}}
}

\author{Vaclav.Fidler and Nico.Nagelkerke}

\examples{
## simulate example data 
dd <- simData(50,2,1.5,123) 
## fit the models
ff <- fitOR(dd) 
## display parameter estimates of the H-model
ff$fitH$coefficients
}
