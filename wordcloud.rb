# https://www.interviewcake.com/question/word-cloud

def make_word_cloud(words_to_parse)
  cloud = Hash.new(0)
  words_to_parse.gsub!(/[\.\,\'s]/, " ")
  words = words_to_parse.split

  words.each do |word|
    cloud[word.downcase] +=1;
  end

  cloud.sort_by {|k,v| v}
  cloud
end


test = "This is my test data. This is, data too."
test = "We came, we saw, we conquered...then we ate Bill's (Mille-Feuille) cake."

p make_word_cloud(test)