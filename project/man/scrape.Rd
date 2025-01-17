\name{scrape}
\alias{scrape}
\title{Scrape}
\description{Takes a csv file from INE containing data about IHPC and transforms into a dataframe easily readable.}
\usage{
scrape("file.csv")
}
\arguments{
  \item{"file.csv"}{csv file}
}
\value{
A tidy dataframe representation of the data present in the csv file
}
\examples{
scrape("ine.csv")
}