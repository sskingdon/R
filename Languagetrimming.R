library(tm)
library(stringr)
# path <- "~/iiiR/novels/THe Philosopher's Stone.txt"
# text <- readLines(path,encoding="UTF-8")
# page <-"(Page | [0-9]* Harry Potter and the Philosophers Stone - J.K. Rowling)"
# text <-str_replace_all(text,page,"")
# vs <- VectorSource(text)
# 
# path <- "~/iiiR/The Chamber of Secrets.txt"
# text <- readLines(path,encoding="UTF-8")
# page <-"(Page | [0-9]* Harry Potter and the Philosophers Stone - J.K. Rowling)"
# text <-str_replace_all(text,page,"")
# vs <- VectorSource(text)
txt <- Corpus(DirSource("novels"), list(language = NA))
# NOW The text variable is an array of the lines of the statement.
# txt <-Corpus(vs)
txt <-tm_map(txt, tolower)
txt <-tm_map(txt, removePunctuation)
txt <-tm_map(txt, removeNumbers)


# inspect(txt) inspect(dtm)

txt <- tm_map(txt, removeWords, stopwords("english"))
txt <- tm_map(txt, PlainTextDocument)
# str(txt)
 dtm <- TermDocumentMatrix(txt)
 # inspect(dtm[1:13,1:10])
 # str(dtm)
 
 
 
 
 
 
 (freq.terms <- findFreqTerms(dtm,1500))

term.freq <- rowSums(as.matrix(dtm))
term.freq <- subset(term.freq, term.freq >= 1500)
df <- data.frame(term = freq.terms, freq = term.freq)
 
 
 # library(Rgraphviz)
 # plot(dtm, terms = findFreqTerms(dtm, lowfreq = 150)[1:10], corThreshold = 0.5)
 library(ggplot2)
 ggplot(df,aes(x = term, y = freq)) + geom_bar(stat = "identity")
 