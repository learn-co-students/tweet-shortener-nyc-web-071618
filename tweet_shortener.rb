def dictionary
  swag = {
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
tweet.split.collect do |word|
# we are spliting the tweet, .collect will collect the results
#in a new array and return that instead
if dictionary.keys.include?(word.downcase)
# if the word is included in dictionary keys do code below
#downcase to check for words that begin with a captial letter
word = dictionary[word.downcase]
#word = value pair of hash[key] *access hash data using bracket method hash []
else
word
# if word isnt incuded in dictonary keys return the word
end
end
.join(" ")
#since .collect returns our new array all thats missing is to .join(" ") our
# elements of array to string.
end

def bulk_tweet_shortener(tweets)
#parameter (tweets) is an array containing tweets
tweets.collect do |tweet|
#.collect every element in tweets array. variable tweet = each element
puts word_substituter(tweet)
#puts to screen each tweet after passed through method word_substituter
end

def selective_tweet_shortener(tweet)
#parameter is a varible tweet which is a sring
if tweet.length > 140
# if tweet length greater than 140 do code below
word_substituter(tweet)
# passes tweet through the word_substituter method
elsif tweet.length <= 140
# elsif if the tweet is 140 characters or less do code below
tweet
#return tweet
end
end

def shortened_tweet_truncator(tweet)
if tweet.length > 140
#if tweet is larger than 140 characters do code below
word_substituter(tweet)[0..136] + "..."
# pass tweet through  word_substituter and only return string elements 0-136
#and then add "..." to end of string
elsif tweet.length <= 140
# elsif if the tweet is 140 characters or less do code below
tweet
#return tweet
end
end
end
