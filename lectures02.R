library(tm)
path <- "~/tryy/the-state-of-the-union.txt"
text <- readLines(path,encoding="UTF-8")
vs <- VectorSource(text)
# NOW The text variable is an array of the lines of the statement.
txt <- Corpus(vs)
# Converting text to lowercase
txtlc <- tm_map(txt, tolower)
#inspect(txt[1])
#inspect(txtlc[1])
# Removing punctuation
txtnp <- tm_map(txt, removePunctuation)
# Removing numbers
txtnn <- tm_map(txt, removeNumbers)
# Removing stop words
txtns <- tm_map(txt[1], removeWords, stopwords("english"))
# ......
dtm <- DocumentTermMatrix(txt)
findFreqTerms(dtm,20)
findAssocs(dtm, "work", 0.2)
library(Rgraphviz)
plot(dtm, terms = findFreqTerms(dtm, lowfreq = 5)[1:10], corThreshold = 0.5)
(freq.terms <- findFreqTerms(dtm, lowfreq = 15))
term.freq <- rowSums(as.matrix(dtm))
term.freq <- subset(term.freq, term.freq >= 15)
df <- data.frame(term = names(term.freq), freq = term.freq)
library(ggplot2)
ggplot(df, aes(x = term, y = freq)) + geom_bar(stat = "identity")
