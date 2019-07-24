---
title: "TestMarkD"
author: "Henri"
date: "7/24/2019"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

```{r cars}
summary(cars)
```

## Including Plots

You can also embed plots, for example:

```{r pressure, echo=FALSE}
plot(pressure)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.


```{r}
features <- read.table("features.txt", col.names = c("n","vars"))
summary(features)
```
then we do other things and

```{r}
workDir <- "~/Documents/JOHN HOPKINS UNIV/MONTH 03 Get&CleanData/UCI HAR Dataset"
activity_labels <- read.table("activity_labels.txt",col.names = c("num_activity","type_activity"))
summary(activity_labels)
```
then we do 
```{r}
subject_test <- read.table(paste(workDir,"/test/subject_test.txt",sep=""), col.names = "subj")
summary(subject_test)
```


