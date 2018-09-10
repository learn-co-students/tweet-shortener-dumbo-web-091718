def dictionary
  words = {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}
end  


def word_substituter(tweet)
  tweet_array = tweet.split(" ")
   tweet_array.collect! do |word|
    dictionary.each do |term, defi|
      if word.downcase == term
        word = defi
      end 
    end 
    word 
  end     
   return tweet_array.join(" ")
end       
  
def bulk_tweet_shortener(array_of_tweets)
 # binding.pry
 array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end   
end   

def selective_tweet_shortener(tweet)
  unless tweet.length > 140
    return tweet
  else     
   word_substituter(tweet)
  end 
end 
  
def shortened_tweet_truncator(tweet)
  if tweet.length <= 140
    return tweet
  else 
    tweet_trunc = tweet[0..136] 
    tweet_trunc << "..."
    return tweet_trunc
  end   
end 
  