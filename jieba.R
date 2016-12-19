library(jiebaR)
txt=scan('stdin',what='char',encoding='UTF-8')
words_vector=worker()<=txt
words_char=paste(words_vector,collapse=' ')
cat(words_char)