# Inflation Data Analysis (Portugal)

**Author:** Daniel Tavares
**Course:** CS50's Introduction to Programming with R  
**Date:** 16th January of 2025  


**Video Demo:** [https://youtu.be/agCuRRvRHUE]



## Scope

This project scrapes, cleans and tidies IHPC variation data from INE (Portuguese National Statistic Institute - [https://www.ine.pt/xportal/xmain?xpid=INE&xpgid=ine_base_dados]). IHPC variation is a way of measuring inflation in Portugal with values comparable to other countries in the eurozone.

Some functions were also created to speed up and help with the analysis of the corresponding scraped data.


## Structure

- **`scrape.R`**: Takes a csv file from the INE website, cleans and tidies it, and finally saves it as an RData file for use in other functions.
- **Functions**:
  - `mean_year`: Returns a dataframe with the average of total variation for a given year or set of years.
  - `graph_mean`: Plots data from `mean_year` function. 
  - `max_category`: Returns the category where variation of IHPC value was higher, the corresponding value, and the corresponding month for any given period of time. 
  - `max_month`: Returns a dataframe with the month where variation of IHPC value was higher for any given year or set of years.
  

- **Tests**: Unit tests are implemented for each of the functions. These tests can be run to ensure the functions are working correctly.
- **Documentation and Tests**: Documentation for each function is provided in the 'man' folder. Unit tests, present in the 'tests' folder are implementented for each function to ensure they are working correctly.


## Conclusion

This project was performed in the scope of the final project of CS50R. This project puts in use what was learned during the lectures of the course. The project demonstrates the use of R as a powerful tool for data manipulation, data analysis, functions and corresponding testing and visualization of data.

The program created here allows the quick analysis of inflation data from INE by cleaning and tidying data provided by the INE.
