---
title: "Marriage & Weather datasets advanced ggplot visuals"
author: "Luke Geel"
date: "10/11/2020"
output:
  pdf_document: default
  html_document: default
---

```r
library(tidyverse)
library(nycflights13)
```
Question 1
A. Use a bar chart to show the distribution of bg_married within each treatment condition. Which treatment condition has the highest proportion of married people?

According to the bar chart, the treatment condition which has the highest proportion of married people is lockbox.

B. Add appropriate title, labels of axes, lengend name.

C. Change the names of the two levels in the legend.

D. Make the following plot.


```r
rosca <- read.csv("/Users/lukegeel/Downloads/rosca (1).csv")

rosca$treatment <- NA
rosca$treatment[rosca$encouragement == 1] <- "control"
rosca$treatment[rosca$safe_box == 1] <- "safebox"
rosca$treatment[rosca$locked_box == 1] <- "lockbox"
rosca$treatment <- as.factor(rosca$treatment)
rosca <-  filter(rosca, has_followup2 == 1 | has_followup2 == "has_followup2")
rosca$bg_female <-  as.factor(rosca$bg_female)
rosca$bg_married <-  as.factor(rosca$bg_married)
```


```r
levels(rosca$treatment)
```

```
## [1] "control" "lockbox" "safebox"
```

```r
ggplot(filter(rosca, bg_married ==1))+
  geom_bar(mapping = aes(x = bg_married, fill = treatment))+
  labs(title = "Marriage vs Treatment", x = "Married people", y = "Count", fill = "Treatment type")
```

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3-1.png)


```r
ggplot(filter(rosca, treatment == "control" | treatment == "safebox" | treatment == "lockbox"))+
  geom_bar(mapping = aes(x = treatment, fill = bg_married), position = "dodge")+
  labs(title = "Distribution of marital status", 
       fill = "marital status", y="", x="")+
  theme(legend.position="bottom")+
  scale_fill_manual(name = "marital status", 
                    labels = c("unmarried", "married"), 
                    values =c("0"="red","1"="blue")
                    )
```

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4-1.png)
Question 2
A. Add appropriate title, labels of axes. Remove the y-axis ticks and tick labels (200,400…)
B. Change the facet labels from numeric month to month abbreviations,e.g., 1 to Jan.
C. Make the following plot. You can use round(tapply(weather$temp, factor(weather$month),mean)) to obtain the average temperature of each month.


```r
weather <- weather %>% filter(!is.na(temp))
month.labs <- c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12")
names(month.labs) <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sept", "Oct", "Nov", "Dec")
temp.labs <- c("25", "50", "75", "100")
names(temp.labs) <- c("25°", "50°", "75°", "100°")

temp.facet <- ggplot(data = weather)+
  geom_histogram(mapping = aes(x = temp),color= "white",binwidth = 5)+
  facet_wrap(~month,nrow=4)+
  theme(axis.text.y = element_blank(), axis.ticks.y = element_blank())+
  labs(title = "Temperature in 12 months", x = "Temperature (in Fahrenheit)", y="")

temp.facet
```

![plot of chunk unnamed-chunk-5](figure/unnamed-chunk-5-1.png)

Question 3
A. Remove the x-axis label, and change the tick label from numeric month to month abbreviation as in the following plot.
B. Remove the y-axis label, and change the tick label as in the following plot.
C. We can make it better by adding the degree symbol. Make the following plot.


```r
ggplot(data = weather, mapping = aes(x= factor(month),y = temp)) +
  geom_boxplot()+
  labs(x="",y="")+
  scale_y_continuous(breaks = c(25, 50, 75, 100), labels = c("25°F", "50°F", "75°F", "100°F"))+
  scale_x_discrete(labels = c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sept", "Oct", "Nov", "Dec")
  )
```

![plot of chunk unnamed-chunk-6](figure/unnamed-chunk-6-1.png)



