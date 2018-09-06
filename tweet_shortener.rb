# Write your code here.
def word_substituter(tweet)
  dictionary = { "hello"=>"hi","to"=>"2","for"=>"4","be"=>"b","you"=>"u",
               "at"=>"@","and"=> "&","too"=>"2","two"=>"2","four"=>"4" }
  keyArray=dictionary.keys
  splitTweet=tweet.split(" ")
  shortenedTweet=[]

  splitTweet.each do |word|
    if keyArray.include?(word.downcase)
      shortenedTweet<<dictionary[word.downcase]
    else
      shortenedTweet<<word
    end
  end
  shortenedTweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length>140
    word_substituter(tweet)
  else
    tweet
end
end

def shortened_tweet_truncator(tweet)
  short_tweet = word_substituter(tweet)
  "#{short_tweet[0..139]}"

end
