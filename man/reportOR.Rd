\name{reportOR}
\alias{reportOR}

\title{REPORTING THE RESULTS}
\description{Prints the results of \code{fitOR()}.}
\usage{reportOR(fit,dd,ci)}
\arguments{
  \item{fit}{list containing output of \code{fitOR()} }
  \item{dd}{data frame used to fit the models }
  \item{ci}{confidence level (default 0.95) }
}
\value{Prints the deviances of the null, F- and H-models, 
the LR-test, the odds ratio, standard error of log(OR) 
and confidence intervals based on parameters of 
the H- and F-models. 
} 

\examples{
## generate data
dd <- simData(50,2,1.5,123)
## fit the models
fit <- fitOR(dd)
## report the results
reportOR(fit,dd,0.95)
}