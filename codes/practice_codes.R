5 + 2
5 - 2
5 * 2
5 / 2
5 ^ 2
5 %% 2
5 %/% 2
sqrt(9)
abs(-9)


h <- 180
w <- 70
h
w

bmi <- h / (w ^ 2)
bmi

rnorm(n = 2, mean = 5, sd = 2)


# how to install packages
install.packages("tidyverse")
devtools::install_github()

print("Hello World!")

# Naming of the variables
ali <- 12
# .2 <- "hi"
# _3 <- "yes"
# _so <- 2 * 6
# 2a <- "salaam" 
As2 <- "congrats"
absolute_value <- abs(-18)  # snake_case
# absolute-value <- abs(-20)  # kebab-case
absoluteValue <- abs(-25)   # camelCase
AbsoluteValue <- abs(-83)   # PascalCase



h <- 170
h <- 165
h <- 160

if(h > 165) {          
  print("Normal")           # if height is higher than 165 "Normal is printed
} else if (h == 165) {
  print("threshold")        # if height is equal to 165 "threshold" is printed
} else {
  print ("short")           # if height is lower than 165 "short" is printed
}


# global variables
glob <- "Hello"
glob_fun <- function(){
  paste(glob, "World!")
}
glob_fun()

glob_fun2 <- function(){
  glob <- "Damn"
  paste(glob, "World!")
}
glob
glob_fun2()

glob_fun3 <- function(){
  glob <<- "Power"
}
glob
glob_fun3()
glob


function(arguements){
  body()
}

# Function to calculate the BMI by getting the weight and height
BMI <- function(height, weight, unit = "cm") {
  if (unit != "cm"){
    print("the height should be in cm")
  } else {
  bmi <- weight / (height ^ 2)
  print(bmi)
  }
}

BMI(180, 120)
BMI(height = 180, weight = 120)
BMI(height = 180, weight = 120, unit = "m")
bmi(180, 120)

# Nested function
outer_func <- function(x) {
  inner_func <- function(y) {
    a <- x + y
    return(a)
  }
  return (inner_func)
}
output <- outer_func(2) # To call the Outer_function
output(6)

# Recursive functions
recursion <- function(x) {
  if (x > 1) {
    result <- x + recursion(x - 1)
    print(result)
  } else {
    result = 0
    return(result)
  }
}
recursion(6) 

ifelse()

# Data Structures
# Vector
a <- 1
b <- "b"
str(a)
str(b)
class(a)
class(b)
typeof(a)
typeof(b)

is.vector(a)
is.atomic(a)
is.vector(b)
is.atomic(b)

double_vec <- c(1.5, 2.5, 3.0)
double_vec2 <- c(2, 3, 4)
int_vec <- c(2L, 3L, 4L) # L suffix creates integer rather than double
char_vec <- c("one", "2", "TRUE")
logical_vec <- c(TRUE, FALSE, F, T)

typeof(double_vec)
typeof(double_vec2)
typeof(int_vec)
typeof(char_vec)
typeof(logical_vec)

is.numeric(double_vec2)
is.vector(double_vec2)
is.atomic(double_vec2)
is.double(double_vec2)
is.integer(double_vec2)
is.character(double_vec2)
is.character(char_vec)
is.logical(logical_vec)

# Coercion
c <- c(1L, 1.5, 2L)
d <- c(1, "2", "three")
e <- c(1, "2", "three", FALSE)
typeof(c)
typeof(d)
typeof(e)

# list
f <- list(
  1,
  "blah",
  14:20,
  seq(1, 7, 2),
  c("one", "two", "three"),
  c(FALSE, T)
)
str(f)
class(f)
typeof(f)

# Recursive list
g <- list(TRUE,
          list("a",
               list(
                 c(1, 2), 1, list("a")
                 )
               )
          )

# Coercion
i <- list(
  c(1, 3),
  list("a", T)
)

j <- c(
  c(1, 3),
  list("a", T)
)
str(i)
str(j)

# arrays and matrices
k <- matrix(data = 1:24, nrow = 4, ncol = 6)
l <- array(data = 1:24, dim = c(2, 3, 4))
k_prime <- array(data = 1:24, dim = c(4, 6))
str(k)
str(l)
is.matrix(k)
is.matrix(l)
is.array(k)
is.array(l)
is.matrix(k_prime)
all(k_prime == k)
k
l
dim(k)
t(k)
k %*% t(k) # gives a square symmetric matrix

# dataframe
# this function gets named vector
df <- data.frame(
  No = 1:10,
  Odds = log(seq(1, 20, 2)),
  weights = runif(n = 10, min = 50, max = 100),
  hieght = runif(n = 10, min = 150, max = 210),
  marital_status = sample(c("S", "M"), size = 10, replace = T)
    )
df
summary(df)
str(df)
class(df)
typeof(df)

# for loop
for (i in 1:10){
  a = rep(x = "*", i)
  print(a)
}

m <- list("apple", "banana", "pitch", "strawberry", "melon", "orange")
for (i in m){
  if (i == "pitch"){
    next
  } else if (i == "melon") {
    break
  } else {
    print(i)
  }
}


# while
n <- 1
while (n < 6) {
  print(n)
  n <- n + 1
} 

o <- 2
repeat {
  print(o)
  o = o + 3
  if (o == 8) {
    break
  }
}


#Set Working Directory
setwd("~/Documents/Main/Programming_with_R/")
getwd()

# how to install packages
install.packages("tidyverse")
devtools::install_github("MathiasHarrer/dmetar")


# Read and Write CSV
df_1 <- read_csv("p1.csv", col_names = T)
write_csv(x = df_1, file = "p2.csv")

# working with dataframe
head(df_1)
summary(df_1)

class(df_1)
typeof(df_1)
str(df_1)

nrow(df_1)
length(df_1)
ncol(df_1)
nrow(df_1)

df_1 <- drop_na(df_1)

# filter and select
df_2 <- filter(df_1, height > 170)
df_3 <- df_1 %>% 
  filter(height > 170)
df_3 <- df_1 %>% 
  filter(df_1$height > 170)

df_4 <- select(df_1, -male_female)
df_5 <- select(df_1, -c(male_female, id))
df_6 <- df_1 %>% 
  select(-c(male_female, id))

df_7 <- df_1 %>% 
  filter(height > 167) %>% 
  select(-c(male_female))

df_8 <- subset(df_1, height > 167, -c(male_female))

df_9 <- df_1[which(df_1$height > 167), -c(5)]
df_10 <- df_1[which(df_1$height > 167), -c(which(colnames(df_1) == "male_female"))]

df_11 <- arrange(df_1, height)
df_12 <- arrange(df_1, desc(height))

#transmute and mutate
df_13 <- df_1 %>% 
  select(-male_female) %>% 
  mutate(male_female = factor(gender, levels = c(0, 1), labels = c("male", "female")))

df_14 <- df_1 %>% 
  transmute(male_female = factor(gender, levels = c(0, 1), labels = c("male", "female")))

p <- 1:12 %>% 
  structure(dim = c(3, 4), 
            description = "a test for structure function",
            label = "1 to 12",
            names = letters[1:12],
            dimnames = list(
              c("foo", "bar", "baz"),
              c("Sa", "Re", "Ga", "Ma")
            ))






# Part 2
# some sample datasets
setwd("~/Documents/Main/Programming_with_R/")
df_s1 <- datasets::ToothGrowth
df_s2 <- datasets::women
df_s3 <- datasets::esoph
df_s4 <- datasets::infert
df_s5 <- datasets::sleep
df_s6 <- read_csv("p1.csv", col_names = T)

# remove NA data
df_s6 <- drop_na(df_s6)
# viewing the first and last rows of datasets
library(tidyverse)

head(df_s1)
head(df_s2)
head(df_s3)
head(df_s4)
head(df_s5)
head(df_s6)


head(df_s4, 10)
tail(df_s1)

summary(df_s4)
summary(df_s1)

gather(df_s4)
gather(df_s1)

# distinct is used to keep the unique rows of a dataframe
# to add a similar row to the data
df_s6[c(10, 11, 12),] <- df_s6[9,]
df_s6
print(df_s6, n = 15)
distinct(df_s6)
gather(df_s6)

library(Hmisc)
Hmisc::describe(df_s1)
Hmisc::describe(df_s4)

library(psych)
psych::describe(df_s1)
psych::describe(df_s4)

mean(df_s4$age)
median(df_s4$age)
mode <- unique(df_s4$parity)
mode[which.max(tabulate(match(df_s4$parity, q)))]
table(df_s4$parity)
quantile(df_s4$age)


library(DescTools)
DescTools::Mode(df_s4$parity)

r <- table(df_s4$case, df_s4$induced)
prop.table(r, margin = 1)
proportions(r, margin = 2)

df_s4 %>% 
  group_by(case) %>% 
  summarize(mean_by_group = mean(age))


hist(df_s4$age)
hist(df_s4$age, col = "blue", breaks = 30)


# ggplot
library(ggplot2)
example("ggplot")

plot <- ggplot(df_s4, aes(y = after_stat(density), x = age))
plot + geom_histogram(binwidth = 1, color = "red", fill = "darkblue")

plot <- ggplot(df_s4, aes(y = after_stat(density), x = age))
plot + geom_histogram(binwidth = 1, color = "red", fill = "darkblue") +
  theme_dark()




hist <- ggplot(df_s4, aes(x = age))
hist + geom_freqpoly(binwidth = 1, color = "darkorange", aes(y = after_stat(density))) + 
  stat_function(fun = dnorm, args = list(mean = mean(df_s4$age), sd = sd(df_s4$age)), color = "darkgreen") +
  geom_histogram(color = "brown", binwidth = 1, fill = "violet", alpha = .5, aes(y = after_stat(density))) +
  theme_classic() + facet_wrap(df_s4$case)

plot(df_s6$weight, df_s6$height)
barplot(df_s4$age)  
boxplot(df_s6$weight, df_s6$height)
hist(df_s4$age)



# inferential statistics
hist <- ggplot(df_s4, aes(x = age))
hist + geom_freqpoly(binwidth = 1, color = "red", aes(y = after_stat(density))) + 
  geom_histogram(color = "darkgreen", binwidth = 1, fill = "yellow", alpha = .5, aes(y = after_stat(density))) +
  stat_function(fun = dnorm, args = list(mean = mean(df_s4$age), sd = sd(df_s4$age)), color = "purple") +
  theme_dark()

qq <- ggplot(df_s4, aes(sample = age))
qq + geom_qq(size = 0.05, position = "jitter") + # "jitter" adds a small amount of random variation to the location of each point, and is a useful way of handling overplotting caused by discreteness in smaller datasets.
  geom_qq_line(color = "blue")

library(ggpubr)
ggqqplot(df_s4$age, size = 0.05, position = "jitter")

# test for normality 
shapiro.test(x = df_s4$age)
ks.test(df_s4$age, "pnorm", mean = mean(df_s4$age), sd = sd(df_s4$age))
ks.test(df_s4$age, "pnorm")
library(nortest)
ad.test(df_s4$age)


t.test(x = df_s4$age, y = df_s4$case)
wilcox.test(x = df_s4$age, y = df_s4$case)

cov(df_s6$weight, df_s6$height)
cor(df_s6$weight, df_s6$height)
library(psych)
corr.test(df_s6$weight, df_s6$height)
library(Hmisc)
rcorr(df_s6$weight, df_s6$height)

chisq.test(table(df_s4$induced, df_s4$case))
table(df_s4$induced, df_s4$case)
