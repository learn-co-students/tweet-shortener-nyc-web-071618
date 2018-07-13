
def dictionary
  {'hello' => 'hi',
   'to' => '2',
   'two' => '2',
   'too' => '2',
   'for' => '4',
   'four' => '4',
   'be' => 'b',
   'you' => 'u',
   'at' => '@',
   'and' => '&',
  }
end

def word_substituter(tweet)
  tweet.split.each do |word|
    dictionary.each do |og, slang|
      if og == word
        word = slang
      else
        word
      end
    end
  end.join(' ')
end
