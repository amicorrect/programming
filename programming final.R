library(tidyr)
library(dplyr)
books=read.csv("books.csv",sep = ";")
ratingpga=read.csv("RatingPGA.csv")
ratingpgb=read.csv("ratingpgb.csv")
users=read.csv("users.csv")

head(books)
head(ratingpga)
head(ratingpgb)
head(users)
ratings = rbind(ratingpga, ratingpgb)
head(ratings)

# Merge the books and ratings datasets by ISBN
book_ratings = merge(books_clean, ratings, by = "ISBN")
head(book_ratings)
