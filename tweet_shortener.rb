# Write your code here.
def dictionary
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
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  tweet_array.map! do |word|
    dictionary.each { |key, substitute| word = substitute if word.downcase == key }
    word
  end
  tweet_array.join(" ")
end

def bulk_tweet_shortener(tweets_array)
  tweets_array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    new_tweet = tweet[0..136] + "..."
    new_tweet
  else
    tweet
  end
end
