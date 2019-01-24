# Write your code here.
# Write your code help
def dictionary 
  {
"hello" => 'hi',
"to" => '2',
"two" => '2',
"too" => '2', 
"for" => '4',
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@",
"and" => "&"
}
end

def word_substituter(tweet)
temp = tweet.split

dictionary.each do |key,value|
  temp.each do |word|
   if key.to_s == word
     word.replace(value)
   end
  end
 end
temp.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)

if tweet.length <= 140
  tweet
else
  word_substituter(tweet)
end

end

def shortened_tweet_truncator(tweet)
  if tweet.length >= 140
    tweet[0..136] << "..."
  else
    tweet
end
end