\name{mean_year}
\alias{mean_year}
\title{Mean Year}
\description{Calculates the average total percentage value of variation per year.}
\usage{
mean_year(x)
}
\arguments{
  \item{x}{Year, or vector of years}
}
\value{
A dataframe with the mean value of total variation in percentage and the corresponding year.
}
\examples{
mean_year(2020)
mean_year(2020:2024)
}