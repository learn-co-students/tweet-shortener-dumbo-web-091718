# Write your code here.

# word_substituter
require "pry"
def dictionary

  {
  "hello" => 'hi',
  "to"  => '2',
  "two"  => '2',
  "too" => '2',
  "for" => '4',
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@",
  "and" => "&",
  "For" => '4'

}
end

puts dictionary

def word_substituter(string)
  tweet = []
  string.split(" ").each do |word|
    if dictionary.has_key?(word) #true or false
      tweet << dictionary[word]
    else
      tweet << word
  end
end

  tweet.join(" ")
end


def bulk_tweet_shortener(string)
  string.each {| tweet | puts word_substituter(tweet)}
end

def selective_tweet_shortener(string)
  if string.length > 140
    word_substituter(string)
  else
    string
  end
end


def shortened_tweet_truncator(string)
     result = word_substituter(string)
     if result.length > 140
       string[0..139]
  else
    string
  end
end
