#NUMBER_1
seq1 <- -5:5
seq1
x <- 1:7
x

#NUMBER_2
seq2 <- seq(1, 3, by = 0.2)
seq2

#NUMBER_3
print(paste(workers[[3]], "is the value of the 3rd element"))
print(paste(workers[[2]], "is the 2nd element and", workers[[4]], "is the 4th element"))
exclude <- workers[-c(4, 12)]
exclude

#NUMBER_4
x
names(x)
x[c("first", "third")]

#NUMBER_5
x <- c(-3:2)
x
x[2] <- 0
x

#NUMBER_6
mrCruzdata <- data.frame(
  Month = c("Jan", "Feb", "Mar", "Apr", "May", "Jun"),
  Price_Per_Liter = c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00),
  Purchase_Quantity = c(25, 30, 40, 50, 10, 45))
mrCruzdata
avr_fuel <- weighted.mean(mrCruzdata$Price_Per_Liter, mrCruzdata$Purchase_Quantity)
print(paste("Mr. Cruz avarage fuel expenditure is", avr_fuel))

#NUMBER_7
rivers
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers), sd(rivers), min(rivers), max(rivers))
datf <- data.frame(
  DATA = c("Length", "Sum", "Mean", "Median", "Variance", "Std.Dvn.", "Minimum", "Maximum"),
  VALUE = data
)
datf

#NUMBER_8
power_ranking <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25)
celebrity_name <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", "Tiger Woods", "Steven Spielberg", "Howard Stern", "50 Cent", "Cast of the Sopranos", "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali", "Paul McCartney", "George Lucas", "Elton John", "David Letterman", "Phil Mickelson", "J.K. Rowling", "Bradd Pitt", "Peter Jackson", "Dr. Phil McGraw", "Jay Leno", "Celine Dion", "Kobe Bryant")
pay <- c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55, 40, 233, 34, 40, 47, 75, 25, 39, 45, 32, 40, 31)
power_ranking
celebrity_name
pay
celebrity_name[19] <- "J.K. Rowling"
power_ranking[19] <- 15
pay[19] <- 90
power_ranking
celebrity_name
pay
forbes_data <- read.csv("PowerRanking.csv")
ranks <- forbes_data[10:20, ]
save(ranks, file = "Ranks.RData")

#NUMBER_9
library(openxlsx)
vienna <- read.xlsx("hotels-vienna.xlsx")
dim(vienna)
selcol <- vienna[, c("country", "neighbourhood", "price", "stars", "accommodation_type", "rating")]
save(selcol, file = "new.RData")
load("new.RData")
head(selcol)
tail(selcol)

#NUMBER_10
veg <- list("Carrot", "Squash", "Cucumber", "Eggplant", "Cabbage", "Beans", "Potato", "Spinach", "Corn", "Peanuts")
veg
veg <- append(veg, list("Broccoli", "Radish"))
veg
veg <- append(veg, list("Cauliflower", "Lettuce", "Celery", "Bell Peppers"), after = 5)
veg
veg <- veg[-c(5, 10, 15)]
veg