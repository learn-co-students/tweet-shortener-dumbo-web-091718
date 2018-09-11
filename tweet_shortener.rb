
def word_substituter(tweet)
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }

  words = tweet.split(" ")

  modified = words.map do |word|
    downcase = word.downcase
    keys = dictionary.keys
    keys.include?(downcase) ? dictionary[downcase] : word
  end

  return modified.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  return tweet.length <= 140 ? tweet : word_substituter(tweet)
end

def shortened_tweet_truncator(tweet)
  shortend_tweet = selective_tweet_shortener(tweet)
  if shortend_tweet.length > 140
    shortend_tweet[0..136] + "..."
  else
    return shortend_tweet
  end
end
