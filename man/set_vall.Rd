% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/set_vall.R
\name{set_vall}
\alias{set_vall}
\title{Set value labels
Pipe-workflow optimised}
\usage{
set_vall(x, value_labels)
}
\arguments{
\item{x}{Variable to assign value labels to}

\item{value_labels}{Named character vector to be assigned as value labels}
}
\description{
Set value labels
Pipe-workflow optimised
}
\examples{

library(magrittr)
library(dplyr)
library(tibble)
tibble(RESPID=1:1000,
       Q1=sample(c(0,1,2),1000,replace=TRUE),
       Q2=sample(c(0,1),1000,replace=TRUE))-> df
df \%>\%
  mutate_at("Q2",funs(set_varl(.,"What is your answer to this yes/no question?"))) \%>\%
  mutate_at("Q2",funs(set_vall(.,c("No"=0,"Yes"=1)))) \%>\%
  .$Q2 \%>\% attributes()
}
