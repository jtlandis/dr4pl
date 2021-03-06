% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/outlier_detection.R
\name{OutlierDetection}
\alias{OutlierDetection}
\title{Detect outliers by the method of Motulsky and Brown (2006).}
\usage{
OutlierDetection(residuals)
}
\arguments{
\item{residuals}{Vector of residuals from a robust fit.}
}
\value{
Vector of indices of outliers in the input vector of residuals
}
\description{
Detect outliers by the method of Motulsky and Brown (2006).
}
\details{
This function detects outliers from a vector of residuals obtained from
a robust fit. The method used here is the same with Motulsky and Brown (2006)
except that the median absolute deviation is used instead of the sample quantile
based estimator suggested in that paper. Based on the False Discovery Rate (FDR)
a set of multiple outliers that have lower FDR's than a threshold are reported.
}
\references{
\insertRef{Motulsky2006}{dr4pl}
}
\author{
Hyowon An
}
