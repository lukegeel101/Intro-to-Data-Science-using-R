---
title: "Cars dataset exploration w/ggplot"
author: "Luke Geel"
date: "9/8/2020"
output:
  pdf_document: default
  html_document: default
---




## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:


```r
summary(cars)
```

```
##      speed           dist       
##  Min.   : 4.0   Min.   :  2.00  
##  1st Qu.:12.0   1st Qu.: 26.00  
##  Median :15.0   Median : 36.00  
##  Mean   :15.4   Mean   : 42.98  
##  3rd Qu.:19.0   3rd Qu.: 56.00  
##  Max.   :25.0   Max.   :120.00
```

## Including Plots

You can also embed plots, for example:

![plot of chunk pressure](figure/pressure-1.png)

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.


```
## [1] 150   5
```





```r
"Question 1"
```

```
## [1] "Question 1"
```

```r
"a"
```

```
## [1] "a"
```

```r
x <- c(81,170,1923,3825)
x%%3
```

```
## [1] 0 2 0 0
```

```r
y <- c(81,170,1923,3825)
y%%9
```

```
## [1] 0 8 6 0
```

```r
"b"
```

```
## [1] "b"
```

```r
(81%/%10)+(81%%10)
```

```
## [1] 9
```

```r
(170%/%100)+(170%%100%/%10)+(170%%10)
```

```
## [1] 8
```

```r
(1923%/%1000)+(1923%%1000%/%100)+(1923%%100%%100%/%10)+(1923%%10)
```

```
## [1] 15
```

```r
(3825%/%1000)+(3825%%1000%/%100)+(3825%%100%%100%/%10)+(3825%%10)
```

```
## [1] 18
```

```r
"I found that the if a number is divisible by 3, then the sum of it's digits is also divisible by 3. If a number is divisble by 9 then the sum of it's digits is also divisible by 9."
```

```
## [1] "I found that the if a number is divisible by 3, then the sum of it's digits is also divisible by 3. If a number is divisble by 9 then the sum of it's digits is also divisible by 9."
```

```r
"c"
```

```
## [1] "c"
```

```r
658/7
```

```
## [1] 94
```

```r
a <- (658%%10)
b <- (658%/%10)
x <- b-(2*a)
x
```

```
## [1] 49
```

```r
1489/7
```

```
## [1] 212.7143
```

```r
a <- (1489%%10)
b <- (1489%/%10)
x <- b-(2*a)
x
```

```
## [1] 130
```

```r
2401/7
```

```
## [1] 343
```

```r
a <- (2401%%10)
b <- (2401%/%10)
x <- b-(2*a)
x
```

```
## [1] 238
```

```r
"d"
```

```
## [1] "d"
```

```r
"From this experiment I found that if a number is divisible by 7, then the sum of the last digit and the rest of the number is also divisible by 7."
```

```
## [1] "From this experiment I found that if a number is divisible by 7, then the sum of the last digit and the rest of the number is also divisible by 7."
```

```r
"Question 2"
```

```
## [1] "Question 2"
```

```r
(10^15-10)/15
```

```
## [1] 6.666667e+13
```

```r
(10^21-10)/21
```

```
## [1] 4.761905e+19
```

```r
"15 and 21 are not prime numbers"
```

```
## [1] "15 and 21 are not prime numbers"
```

```r
"Question 3"
```

```
## [1] "Question 3"
```

```r
"a"
```

```
## [1] "a"
```

```r
2*2*2*4*4*6*6/(1*3*3*5*5*7)
```

```
## [1] 2.925714
```

```r
"b"
```

```
## [1] "b"
```

```r
a <- c(2,4,6)
b <- c(1,3,5)
c <- c(3,5,7)
d <- 2*prod(a,a)/prod(b,c)
d
```

```
## [1] 2.925714
```

```r
"c"
```

```
## [1] "c"
```

```r
"Question 4"
```

```
## [1] "Question 4"
```

```r
"a"
```

```
## [1] "a"
```

```r
a <- dim(cars)
a
```

```
## [1] 50  2
```

```r
"50 observations, 2 variables"
```

```
## [1] "50 observations, 2 variables"
```

```r
"b"
```

```
## [1] "b"
```

```r
names(cars)
```

```
## [1] "speed" "dist"
```

```r
"Variables are speed and distance.The speed means how fast the cars are going and the distance represents how far the car travelled."
```

```
## [1] "Variables are speed and distance.The speed means how fast the cars are going and the distance represents how far the car travelled."
```

```r
"c"
```

```
## [1] "c"
```

```r
"Each observation corresponds to a different car"
```

```
## [1] "Each observation corresponds to a different car"
```

```r
"d"
```

```
## [1] "d"
```

```r
plot(cars)
```

![plot of chunk unnamed-chunk-6](figure/unnamed-chunk-6-1.png)

```r
"Based on the scatterplot below there's a clear correlation between the distance the car travelled and the speed of the car. The faster the speed is the farther the car travelled."
```

```
## [1] "Based on the scatterplot below there's a clear correlation between the distance the car travelled and the speed of the car. The faster the speed is the farther the car travelled."
```

```r
"Question 5"
```

```
## [1] "Question 5"
```

```r
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = cyl))
```

![plot of chunk unnamed-chunk-7](figure/unnamed-chunk-7-1.png)

```r
"Based on the scatterplot, the higher the cylinder count the greater the displacement of the engine. For 4 cylindes, the displacement is between 1 & 3. For 6 cylinders the displacement is anywhere from 2.5 to 4.5, and with 8 cylinders the displacement is between 4 and 7."
```

```
## [1] "Based on the scatterplot, the higher the cylinder count the greater the displacement of the engine. For 4 cylindes, the displacement is between 1 & 3. For 6 cylinders the displacement is anywhere from 2.5 to 4.5, and with 8 cylinders the displacement is between 4 and 7."
```

```r
ggplot(data = mpg) +
  geom_point(mapping = aes(x = cty, y = hwy))
```

![plot of chunk unnamed-chunk-7](figure/unnamed-chunk-7-2.png)

```r
"This plot shows a strong correlation between highway mpg and cty mpg. The greater city mpg, the greater the highway mpg would be. The correlation is so strong because one can easily see the relationship between highway mpg and city mpg."
```

```
## [1] "This plot shows a strong correlation between highway mpg and cty mpg. The greater city mpg, the greater the highway mpg would be. The correlation is so strong because one can easily see the relationship between highway mpg and city mpg."
```
