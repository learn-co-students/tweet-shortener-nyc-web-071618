def dictionary
  words = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
   "and" => "&",
   "For" => "4"
  }
end

def word_substituter(tweet)

 tweet.split.collect do |word|
  #the .split will turn the string into a array of indv elements

    if dictionary.keys.include?(word)
     # if the keys in the hash dictionary include the word in parathesis

 word = dictionary[word]

    else
      word
  end
end
 .join(" ")
 # we only put .join because collect will return the newly modified array
 # for us so we just need to append the .join(" ")

end

def bulk_tweet_shortener(tweets)

  tweets.each {|tweet| puts word_substituter(tweet)}
# this now takes each "tweet" in the array tweets
# and will put the function word_substituter taking a arguement of the tweet
end

def selective_tweet_shortener(tweet)

  if tweet.length > 140

    word_substituter(tweet)

  else
    tweet

  end
end

def shortened_tweet_truncator(tweet)

  if tweet.length < 140

    tweet

else
    cut_tweet = word_substituter(tweet)

    if cut_tweet.length > 140

    cut_tweet[0...140]

  end
end
end
