require(tm)
data <- readLines("https://www.stanford.edu/")
data <- readLines("D:/Python3/google.txt")
corpus = Corpus(VectorSource(data))   # for preprocessing the data
corpus
corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus,removeNumbers)
corpus <- tm_map(corpus,removePunctuation)
corpus <- tm_map(corpus,removeWords, c(stopwords("english")))
dtm <- TermDocumentMatrix(corpus)   # Takes out words from the lines and separates them  
dtm
m <- as.matrix(dtm)    # Explicit Coersion
View(m)
wordfreq <- rowSums(m)
d <- data.frame(word = names(wordfreq),freq=wordfreq)
View(d)

require(wordcloud)
set.seed(1234)
wordcloud(words= d$word, freq =d$freq, min.freq = 15,max.words = Inf,colors=brewer.pal(n=8,name="Dark2"))


