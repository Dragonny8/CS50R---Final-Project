mean_year <-function(years){
  load("../R/scraped.RData")
#validate if user input is numbers, and present in the database
  if (is.numeric(years) == FALSE){
    return("Please input a valid year or set of years.")
  }
  if (any(!(years %in% scraped_infla$Ano))){
    return("At least 1 year you've selected is not present in the database")
  }
#validate if user ran the scrape function first
  if (!exists("scraped_infla")){
    return("Please run the scrape function on the csv file provided by INE first!")
  }

  len <- length(years)
#begin dataframe for later population
  mean_year <- data.frame(Ano = integer(), Média = numeric())

#calculate average and append it with the year to the mean_year dataframe.
  for (i in 1:len) {
    mean_value <- round(mean(scraped_infla$Total[which(scraped_infla$Ano == years[i])]), 1)
    mean_year <- rbind(mean_year, data.frame(Ano = years[i], Média = mean_value))
  }
  return(mean_year)
}
