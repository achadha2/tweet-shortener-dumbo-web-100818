# Write your code here.

def dictionary(word)
  words = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "four" => "4",
  "for" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
        }
 words[word]     

end

def word_substituter(string)
   array = string.split
  i = 0
  while i < array.length do
    replacement = dictionary(array[i].downcase)
    if replacement != nil
      array[i] = replacement
    end
    
    i += 1
  end 
  return array.join(" ")
end

def bulk_tweet_shortener(tweets)
  array = []
  tweets.each {|tweet| 
    array.push(word_substituter(tweet))
    puts array[-1]
  }
  return array
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(string)
  i = 0
  tweet = selective_tweet_shortener(string)
  if tweet.length  > 140
    tweet = tweet[0..139]
    while i < 3
      tweet[i] = '.'
      i += 1
    end
  end
  
  return tweet
  
end
