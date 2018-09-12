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
def word_substituter(string_of_tweets)
new_string = string_of_tweets.split
new_string.collect! do |x|
if dictionary.keys.include?(x.downcase)
x = dictionary[x.downcase]
else
x

end
end
new_string.join(" ")
end

def bulk_tweet_shortener (tweets)
  tweets.map do |x|
      new_tweet_array = x.split
      new_tweet_array.collect! do |b|
        if dictionary.keys.include?(b.downcase)
          b = dictionary[b.downcase]
        else
          b
      end
    end
  puts  new_tweet_array.join(" ")
    end

end

def selective_tweet_shortener(tweet)
  if tweet.length >= 140
    new_string = tweet.split
    new_string.collect! do |x|
    if dictionary.keys.include?(x.downcase)
    x = dictionary[x.downcase]
    else
    x

    end
    end
    new_string.join(" ")
  else
    tweet
    end

  end


  def shortened_tweet_truncator(tweet)
    if tweet.length >= 140
      new_string = tweet.split
      new_string.collect! do |x|
      if dictionary.keys.include?(x.downcase)
      x = dictionary[x.downcase]
      else
      x

      end
      end
      new_string.join(" ").slice(0...140)
    else
      tweet
      end

    end
