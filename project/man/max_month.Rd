\name{max_month}
\alias{max_month}
\title{Max Month}
\description{Calculates the month where there was a greater total percentage value of variation per year.}
\usage{
mean_year(x)
}
\arguments{
  \item{x}{Year, or vector of years}
}
\value{
A dataframe with the month where there was a greater of total variation in percentage and the corresponding year and value.
}
\examples{
max_month(2020)
max_month(2020:2024)
}