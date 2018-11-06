> str(data)
'data.frame':   153 obs. of  6 variables:
 $ Ozone  : int  41 36 12 18 NA 28 23 19 8 NA ...
 $ Solar.R: int  190 118 149 313 NA NA 299 99 19 194 ...
 $ Wind   : num  7.4 8 12.6 11.5 14.3 14.9 8.6 13.8 20.1 8.6 ...
 $ Temp   : int  67 72 74 62 56 66 65 59 61 69 ...
 $ Month  : int  5 5 5 5 5 5 5 5 5 5 ...
 $ Day    : int  1 2 3 4 5 6 7 8 9 10 ...
> names(data)
[1] "Ozone"   "Solar.R" "Wind"    "Temp"    "Month"   "Day"    
> ## column names of data provided
> data[1:2, ]
  Ozone Solar.R Wind Temp Month Day
1    41     190  7.4   67     5   1
2    36     118  8.0   72     5   2
> ## extract first 2 rows of data set
> nrows(data)
Error in nrows(data) : could not find function "nrows"
> nrow(data)
[1] 153
> ## number of rows/observations
> tail(data,n = 2)
    Ozone Solar.R Wind Temp Month Day
152    18     131  8.0   76     9  29
153    20     223 11.5   68     9  30
> ## extract last 2 rows of the data set
> data[[47,1]]
[1] 21
> ## value of Ozone in 47th row
> x <- data[ , 1]
> bad <- is.na(x)
> length(x[bad])
[1] 37
> ## number of missing values in Ozone column of data
> mean(x[!bad])
[1] 42.12931
> mean of Ozone column, excluding missing values
Error: unexpected symbol in "mean of"
> ##mean of Ozone column, excluding missing values
> y <- subset(data, Ozone > 31 & Temp > 90)
> mean(y[ , 2])
[1] 212.8
> ## Extract subset of rows with Ozone > 31 & Temp > 90 and find mean of Solar.R in resulting subset
> x <- subset(data, Temp == 6)
> x <- subset(data, Month == 6)
> mean(x[ , 4])
[1] 79.1
> ## mean of Temp when Month = 6
> #
> x <- subset(data, Month == 5)
> y <- complete.case(x)
Error in complete.case(x) : could not find function "complete.case"
> y <- complete.cases(x)
> a <- x[y]
Error in `[.data.frame`(x, y) : undefined columns selected
> y
 [1]  TRUE  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE  TRUE
[13]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
[25] FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE
> 
