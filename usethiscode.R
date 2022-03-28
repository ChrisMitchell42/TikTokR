install.packages("jsonlite")
tiktok <- jsonlite::fromJSON("trending.json")$collector

newdata <- tiktok[,c("id", "createTime")]

install.packages("usethis")

usethis::use_data()


