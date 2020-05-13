library(dplyr)

data <- read.csv2('activity.csv',sep = ',')
day <- 288
ndays <- length(data$steps) / day

data$date <- as.Date(data$date, '%Y-%m-%d')
i <- 1
acc <- c()
means <- c()
while (i < length(data$steps)){
    subs <- filter(data,data$date == data$date[i])
    i <- i + day
    sum <- sum(subs$steps,na.rm = TRUE)
    avg <- mean(subs$steps,na.rm = TRUE)
    acc <- c(acc,sum)
    means <- c(means,avg)
}



