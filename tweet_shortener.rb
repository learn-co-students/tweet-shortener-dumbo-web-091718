# Write your code here.
def dictionary
  words = {
    hello: 'hi',
    to: '2',
    two: '2',
    too: '2',
    for: '4',
    four: '4',
    be: 'b',
    you: 'u',
    at: '@',
    and: '&'
  }
end

def word_substituter(tweet)
  array_words = tweet.split(' ')
  array_keys = dictionary.keys

  array_keys.each do |word|
    array_words.select{ |s| s.downcase == word.to_s.downcase }.map { |w| w.replace(dictionary[word]) }
  end
  array_words.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet) == tweet
    tweet
  elsif selective_tweet_shortener(tweet) == word_substituter(tweet)
    selective_tweet_shortener(tweet)[0..136] + '...'
  end
end
