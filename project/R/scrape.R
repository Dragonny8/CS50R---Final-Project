scrape <- function(file){
# to check if the user inputted a csv file
  if(!grepl("\\.csv$", file)){
    return(cat("Please input a valid csv file.\n"))
  }
# read the csv file
  library("tidyverse")
  raw <- read.csv(file, header = FALSE, sep = ";", fileEncoding = "latin1")
#erase the last column
  raw<- raw[, -ncol(raw)]
#replace , with . as the numbers are in portuguese.
  raw$V3 <- gsub(",", ".", raw$V3)
  raw$V3 <-as.numeric(raw$V3)
  raw <- raw[!is.na(as.numeric(raw[, 3])), ]
#populate months in all rows
  n=2
  while (raw$V2[1]!=raw$V2[n]){
    n <- n+1
  }
  key <- n-1
  for (i in seq(1, nrow(raw), by = key)) {
    for (x in 1:key-1){
      raw$V1[x+i] <- raw$V1[i]
    }
  }
#extend values, to only have one row per month
  raw <- raw |> pivot_wider (names_from = V2, values_from = V3)
#separate month and year
  scraped_infla <- separate(raw, V1, into = c("Mês", "Ano"), sep = " de ")
  save(scraped_infla, file = "scraped.RData")
}


