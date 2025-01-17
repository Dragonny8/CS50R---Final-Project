# -*- coding: UTF-8 -*-

graph_mean <-function(dataframe) {
#validate if dataframe exists
  if(!is.data.frame(dataframe)){
    return("Please input dataframe from mean_year function.\n")
  }
  library(ggplot2)
  graph <- ggplot(data = dataframe, aes(x = Ano, y = Média, fill=Ano)) +
    geom_bar(stat = "identity") +
    theme_classic() +
    guides(fill = FALSE)

  print(graph)
}