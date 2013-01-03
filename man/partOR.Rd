\name{partialOR}
\alias{partialOR}
\title{PARTIAL ODDS RATIO ESTIMATION}
\description{Estimates odds ratio adjusted for a vector of covariates}

\usage{partialOR(dd,ci=0.95)}

\arguments{
  \item{dd}{ Data frame with binary 0/1 response variables x,y 
and covariates z1,...,zm (in that order)}
  \item{ci}{ Confidence level (default ci=0.95) }
}

\details{
\code{partialOR()} estimates the adjusted odds ratio OR(X,Y | Z1,...,Zm) 
between two binary variables X and Y adjusted for a vector 
(Z1,...,Zm) of m numerical covariates ("confounders"). It is 
based on fitting a multinomial logistic regression model to the data. 
In this model the categorical response variable corresponds to 
the four possible outcomes of (X,Y), namely (0,0), (0,1), (1,0) 
and (1,1). The program fits the null model (without covariates), 
the full F-model and the H-modelwith parameters restricted by 
the hypothesis of homogeneity of odds ratio's. 
The homogeneity hypothesis is tested by comparing the two 
models by the Likelihood Ratio test. 
The program reports OR estimates under the respective models,
the standard errors of log(OR) and confidence intervals.
Note: to include categorical covariates the user has to transform 
them into dummy variables.   
}
\value{The program prints information about the convergence 
of the optimizer, the model deviances, the LR-test and the 
adjusted odds ratios. It calls the function 
\code{fitOR()} which, when called separatelly, returns detailed 
information on model fitting. 
}

\author{Vaclav Fidler and Nico Nagelkerke}

\references{Fidler, V. and Nagelkerke, N.J.D. (2012)  
The Mantel-Haenszel procedure revisited: 
models and generalizations. Submitted.
}

\examples{
## simulate data from the H-model 
dd <- simData(n=50, m=2, rr=1.5, rseed=123) 
## estimate the OR
partialOR(dd)   
}

