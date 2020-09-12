library(vosonSML)
library(syuzhet)

#google dev api key
apikey <-'XXXXXXXXXXXXXXXXXX'
# for security purpose can not provide my api, one can make their own using google's youtube api
key <- Authenticate('youtube',apikey)

#collect youtube data
video1 <- 'OExRBGfhLKc'  # 29th Aug 2020 (Man ki baat)
ytdata1 <- Collect(key, video1, writeToFile = F)


video2 <- 'vH2Z0YdS7f0' # 7th Sept 2020 
ytdata2 <- Collect(key, video2, writeToFile = F)


video3 <- 'axbpbQTIiZo' # Precious moments: PM Modi feeding peacocks at his residence
ytdata3 <- Collect(key, video3, writeToFile = F)


video4 <- 'vkJdtkie1Ek' # "School Education in 21st Century" under NEP 2020 Conclave
ytdata4 <- Collect(key, video4, writeToFile = F)


video5 <- 'HwpaxIc5YX4' # "Pradhan Mantri Matsya Sampada Yojana
ytdata5 <- Collect(key, video5, writeToFile = F)


video6 <- 'zKO0-J7bDcQ' # "PM Modi in conversation with Akshay Kumar
ytdata6 <- Collect(key, video6, writeToFile = F)


video7 <- '5RRIQvViQw0' # "Narendra Modi in Aap Ki Adalat (Full Interview)
ytdata7 <- Collect(key, video7, writeToFile = F)


video8 <- 'mlYHw-lyjvA' # "PM Modi's interview to India TV
ytdata8 <- Collect(key, video8, writeToFile = F)


par(mfrow=c(2,2))

#Sentiment Analysis on 29th Aug Video
comments <- iconv(ytdata1$Comment, to='utf-8')
s1 <- get_nrc_sentiment(comments) #This lexicon is for english and will ignore hindi comments
barplot(100*colSums(s1)/sum(s1),
        las = 2, 
        col = rainbow(10),
        ylab = '%',
        main = 'Sentiment Scores for Mann Ki Baat with the Nation, August 2020')


#Sentiment Analysis on 7th Sept Video
comments <- iconv(ytdata2$Comment, to='utf-8')
s2 <- get_nrc_sentiment(comments) #This lexicon is for english and will ignore hindi comments
barplot(100*colSums(s2)/sum(s2),
        las = 2, 
        col = rainbow(10),
        ylab = '%',
        main = "Sentiment Scores for Governor's Conference on National Education Policy")


# Sentiment Analysis on video3
comments <- iconv(ytdata3$Comment, to='utf-8')
s3 <- get_nrc_sentiment(comments) #This lexicon is for english and will ignore hindi comments
barplot(100*colSums(s3)/sum(s3),
        las = 2, 
        col = rainbow(10),
        ylab = '%',
        main = 'Sentiment Scores for feeding peacocks video')


#Sentiment Analysis on video4
comments <- iconv(ytdata4$Comment, to='utf-8')
s4 <- get_nrc_sentiment(comments) #This lexicon is for english and will ignore hindi comments
barplot(100*colSums(s4)/sum(s4),
        las = 2, 
        col = rainbow(10),
        ylab = '%',
        main = 'Sentiment Scores for School Education in 21st Century, Sept 2020')


#Sentiment Analysis on video5
comments <- iconv(ytdata5$Comment, to='utf-8')
s5 <- get_nrc_sentiment(comments) #This lexicon is for english and will ignore hindi comments
barplot(100*colSums(s5)/sum(s5),
        las = 2, 
        col = rainbow(10),
        ylab = '%',
        main = 'Sentiment Scores for Pradhan Mantri Matsya Sampada Yojana, Sept 2020')


#Sentiment Analysis on video6
comments <- iconv(ytdata6$Comment, to='utf-8')
s6 <- get_nrc_sentiment(comments) #This lexicon is for english and will ignore hindi comments
barplot(100*colSums(s6)/sum(s6),
        las = 2, 
        col = rainbow(10),
        ylab = '%',
        main = 'Sentiment Scores for PM Modi in conversation with Akshay Kumar, april 2019')


#Sentiment Analysis on video7
comments <- iconv(ytdata7$Comment, to='utf-8')
s7 <- get_nrc_sentiment(comments) #This lexicon is for english and will ignore hindi comments
barplot(100*colSums(s7)/sum(s7),
        las = 2, 
        col = rainbow(10),
        ylab = '%',
        main = 'Sentiment Scores for Narendra Modi in Aap Ki Adalat, april 2014')


#Sentiment Analysis on video8
comments <- iconv(ytdata8$Comment, to='utf-8')
s8 <- get_nrc_sentiment(comments) #This lexicon is for english and will ignore hindi comments
barplot(100*colSums(s8)/sum(s8),
        las = 2, 
        col = rainbow(10),
        ylab = '%',
        main = "Sentiment Scores for PM Modi's interview to India TV, may 2019")

