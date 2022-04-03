install.packages("jsonlite")
tiktok <- jsonlite::fromJSON("trending.json")$collector

newdata <- tiktok[,c("id", "createTime")]

install.packages("usethis")

usethis::use_data()


tutorialdata<- tiktok[,c("id", "shareCount", "playCount", "commentCount", "diggCount")]

usethis::use_data(tutorialdata)
usethis::use_data(tutorialdata, internal=TRUE)





