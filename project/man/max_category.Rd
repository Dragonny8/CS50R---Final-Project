\name{max_category}
\alias{max_category}
\title{Max Category}
\description{Discovers the category where there was more variation in percentage monthly for the given period.
It can be user for the whole year (input month as empty), or just a month in a year.
}
\usage{
mean_year(x, y)
}
\arguments{
  \item{x}{Month}
  \item{y}{Year, or vector of years}
}
\value{
A sentence where it states the category that had the most monthly variation, with the respective month, year and value.
}
\examples{
max_category(,2020)
max_category("Dezembro",2020)
}