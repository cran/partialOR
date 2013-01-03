\name{simData}
\alias{simData}
\title{DATA SIMULATION}

\description{Simulates data to be used as an example for partialOR.}

\usage{simData(n=50, m=2, rr=1.5, rseed = 123)}
\arguments{
  \item{n}{number of independent observations}
  \item{m}{number of covariates}
  \item{rr}{common Odds Ratio}
  \item{rseed}{seed for the random number generator (default 123)}
}

\details{The covariates are i.i.d. N(0,1) variables. }

\value{Data frame with n columns and m+2 variables x,y,z1,...,zm;
x, y are 0/1 binary variables and z's are the covariates. }

\examples{
dd <- simData(50, 2, 1.5, rseed=123)
head(dd)
}
