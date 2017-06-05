require 'pry'

def word_substituter(tweet)
  dictionary =
  { "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"}
  new_tweet = []
  split_tweet = tweet.split(" ")
  i = 0
  while i < split_tweet.length
    dictionary.each do |x, y|
      if split_tweet[i].downcase == x
        split_tweet[i] = y
      end
    end
    i += 1
  end
  split_tweet.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |x|
    puts word_substituter(x)
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
  if selective_tweet_shortener(tweet).length > 140
    "#{selective_tweet_shortener(tweet)[1..137]}..."
  else
    selective_tweet_shortener(tweet)
  end
end
