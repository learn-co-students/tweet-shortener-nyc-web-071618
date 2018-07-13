# Write your code here.
require 'pry'

def dictionary
  dictionary = {
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
  tweet_arr = tweet.split(' ')
  keys_arr = dictionary.keys
  tweet_arr.each_with_index do |word, index|
    i = 0
    while i < keys_arr.length
      if keys_arr[i] == word.downcase.to_sym
        tweet_arr[index] = dictionary[keys_arr[i]]
      end
      i += 1
    end
  end
  shorter_tweet = tweet_arr.join(' ')
  shorter_tweet
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    short_tweet = word_substituter(tweet)
    puts short_tweet
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length < 140
    return tweet
  else
    short_tweet = word_substituter(tweet)
    return short_tweet
  end
end

def shortened_tweet_truncator(tweet)
  selected_tweet = selective_tweet_shortener(tweet)
  if selected_tweet.length > 140
    truncated_tweet = selected_tweet[0..135] + ' ...'
    return truncated_tweet
  else
    return selected_tweet
  end
end
