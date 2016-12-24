library(tm)
library(stringr)
now<-getwd()
setwd(now)
dir.create("novels")


path <- "~/iiiR/The Philosopher's Stone.txt"
text <- readLines(path,encoding="UTF-8")
# head(text,40)
page <-"(Page | [0-9]* Harry Potter and the Philosophers Stone - J.K. Rowling)"
text <-str_replace_all(text,page,"")
head(text,40)
setwd("C:/Users/Student/Documents/iiiR/novels")
write(text,"The Philosopher's Stone.txt")
setwd(now)

path <- "~/iiiR/The Prisoner of Azkaban.txt"
text <- readLines(path,encoding="UTF-8")
# head(text,40)
page <-"(Page | [0-9]* Harry Potter and the Prisoner of Azkaban - J.K. Rowling)"
text <-str_replace_all(text,page,"")
head(text,40)
setwd("C:/Users/Student/Documents/iiiR/novels")
write(text,"The Prisoner of Azkaban.txt")
setwd(now)

path <- "~/iiiR/The Chamber of Secrets.txt"
text <- readLines(path,encoding="UTF-8")
page <-"(Page | [0-9]* Harry Potter and the Chamber of Secrets - J.K. Rowling )"
text <-str_replace_all(text,page,"")
head(text,40)
setwd("C:/Users/Student/Documents/iiiR/novels")
write(text,"The Chamber of Secrets.txt")
setwd(now)

path <- "~/iiiR/The Goblet of Fire.txt"
text <- readLines(path,encoding="UTF-8")
page <-"(Page | [0-9]* Harry Potter and the Goblet of Fire - J.K. Rowling)"
text <-str_replace_all(text,page,"")
head(text,40)
setwd("C:/Users/Student/Documents/iiiR/novels")
write(text,"The Goblet of Fire.txt")
setwd(now)

path <- "~/iiiR/The Order of the Pheonix.txt"
text <- readLines(path,encoding="UTF-8")
page <-"(Page | [0-9]* Harry Potter and the Order of the Phoenix - J.K. Rowling)"
text <-str_replace_all(text,page,"")
head(text,40)
setwd("C:/Users/Student/Documents/iiiR/novels")
write(text,"The Order of the Pheonix.txt")
setwd(now)

path <- "~/iiiR/The Half Blood Prince.txt"
text <- readLines(path,encoding="UTF-8")
page <-"(Page | [0-9]* Harry Potter and the Half Blood Prince - J.K. Rowling)"
text <-str_replace_all(text,page,"")
head(text,40)
setwd("C:/Users/Student/Documents/iiiR/novels")
write(text,"The Half Blood Prince.txt")
setwd(now)




path <- "~/iiiR/The Deathly Hallows.txt"
text <- readLines(path,encoding="UTF-8")
page <-"(Page | [0-9]* Harry Potter and the Deathly Hallows - J.K. Rowling)"
text <-str_replace_all(text,page,"")
head(text,40)
setwd("C:/Users/Student/Documents/iiiR/novels")
write(text,"The Deathly Hallows.txt")
setwd(now)