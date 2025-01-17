max_category <- function(month = NA, year) {
  library(tools)
  load("../R/scraped.RData")
#transform month to be properly capitalized
month <- toTitleCase(tolower(month))
#validate users input
  if (is.numeric(year) == FALSE){
    return("Please input a valid year.")
  }
  if (any(!(year %in% scraped_infla$Ano))){
    return("The year you've selected is not present in the database.")
  }
  if (length(month) > 1) {
    return("Please insert just one month or no month at all.")
  }
  if (!(month %in% scraped_infla$Mês)){
    if (!is.na(month)) {
      return("Please input a valid month, or no month at all if you want to analyze the full year")
    }
  }
  if (length(year) != 1) {
    return("Please insert just one year.")
  }

#To check if user ran the scrape function first
if (!exists("scraped_infla")){
  return("Please run the scrape function on the csv file provided by INE first!")
}



  #creation of a subset for the given month or year
  if (is.na(month)) {
    subset_df <- scraped_infla[scraped_infla$Ano == year, -c(1:3)]
    subset2 <- scraped_infla[scraped_infla$Ano == year,]
  } else {
    subset_df <- scraped_infla[scraped_infla$Ano == year & scraped_infla$Mês == month, -c(1:3)]
    subset2 <- scraped_infla[scraped_infla$Ano == year & scraped_infla$Mês == month,]
  }


#calculation of max value for the given subset, the rest of the steps allow to take position of that value to takeaway remaining information (month, year, category)
  max_value <- max(as.matrix(subset_df), na.rm = TRUE)
  max_position <- which(as.matrix(subset_df) == max_value, arr.ind = TRUE)
  row_number <- max_position[1]
  col_index <- max_position[2]
  col_name <- colnames(subset_df)[col_index]
  row_name <-subset2$Mês[[row_number]]
  return(paste("A categoria com maior variação de índice foi",col_name, "no mês de", row_name,"de",year,"com o valor de", max_value,"%"))
}
