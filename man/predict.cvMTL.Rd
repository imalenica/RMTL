% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MTL.R
\name{predict.cvMTL}
\alias{predict.cvMTL}
\title{Predict the outcomes of new individuals}
\usage{
\method{predict}{cvMTL}(object, newX = NULL, ...)
}
\arguments{
\item{object}{A trained cvMTL model}

\item{newX}{The feature matrices of new individuals}

\item{...}{Other parameters}
}
\value{
The predictive outcome
}
\description{
Predict the outcomes of new individuals. For classification, the
    probability of the individual being assigned to positive label P(y==1) is estimated, and for regression, the
    prediction score is estimated
}
\examples{
#Create data
data<-Create_simulated_data(Regularization="L21", type="Regression")
#Train
model<-cvMTL(data$X, data$Y, type="Regression", Regularization="L21",
    Lam1=0.1, Lam2=0, opts=list(init=0,  tol=10^-6, maxIter=1500))
predict(model, newX=data$tX)

}
