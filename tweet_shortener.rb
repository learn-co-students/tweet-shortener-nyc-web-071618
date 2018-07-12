def dictionary
  words = {
  "hello"=>'hi',
  "to"=>'2',
  "two"=>'2',
  "too"=>'2',
  "for"=>'4',
  "four"=>'4',
  "be"=>'b',
  "you"=>'u',
  "at"=>"@",
  "and"=>"&"
}
end



def word_substituter(str)
arr=str.split(' ').map do |word|
    if dictionary.keys.include?(word.downcase)
      word=dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener(arr)
  arr.each do |tweet|
  puts word_substituter(tweet)
end
end

def selective_tweet_shortener(str)
  if str.length>140
    word_substituter(str)
  else
    str
  end
end

def shortened_tweet_truncator(str)
  new_str=word_substituter(str)
  if new_str.length >140
    new_str=new_str[0,135]+ "(...)"
  else
    str
  end
end
