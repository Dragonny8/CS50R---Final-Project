max_month <- function(years) {
  load("../R/scraped.RData")


#validation of user's input
  if (is.numeric(years) == FALSE){
    return("Please input a valid year or set of years.")
  }
  if (any(!(years %in% scraped_infla$Ano))){
    return("At least 1 year you've selected is not present in the database")
  }
  #To check if user ran the scrape function first
  if (!exists("scraped_infla")){
    return("Please run the scrape function on the csv file provided by INE first!")
  }

  len <- length(years)
#creation of empty dataframe for later population
  max_month <- data.frame(Ano = integer(), Mês = character(), Total = integer())
#calculate max month in each year and append it to the max_month dataframe
  for (i in 1:len) {
    max_value <- round(max(scraped_infla$Total[which(scraped_infla$Ano == years[i])]), 1)
    month <-scraped_infla$Mês[which(scraped_infla$Total == max_value & scraped_infla$Ano == years[i])]
    max_month <- rbind(max_month, data.frame(Ano = years[i], Mês = month, Total = max_value))
  }
  return(max_month)
}