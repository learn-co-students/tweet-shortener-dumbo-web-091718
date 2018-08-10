# Write your code here.
def dictionary
dictionary = {
  :"hello" => "hi",
  :"to" => "2",
  :"two" => "2",
  :"too" => "2",
  :"for" => "4",
  :"For" => "4",
  :"four" => "4",
  :"be" => "b",
  :"you" => "u",
  :"at" => "@",
  :"and" => "&"
}
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  shorter_tweet = []
  tweet_array.map do |element|
    if dictionary.keys.include?(:"#{element}")
      element = dictionary[:"#{element}"]
    end
    shorter_tweet << element
  end
  tweet_join = shorter_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet_length = tweet.length

    if tweet_length <= 140
      return tweet
    end
    return word_substituter(tweet)
end

def shortened_tweet_truncator(tweet)
  if tweet.length <= 140
    puts tweet
  end

  tweet_array = tweet.split(" ")
  shorter_tweet = []
  tweet_array.map do |element|
    if dictionary.keys.include?(:"#{element}")
      element = dictionary[:"#{element}"]
    end
    shorter_tweet << element
  end
  tweet_join = shorter_tweet.join(" ")

  if tweet_join.length <= 140
    return tweet_join
  elsif tweet_join.length > 140
    return "#{tweet_join[0..136]}..."
  end
end
