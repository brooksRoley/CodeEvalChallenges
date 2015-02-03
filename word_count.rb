# read a file line by line
# parse the words - []
# create a word_consistency hash for the count.
# output number of letters and each word at that spot.


def parse_to_array(line_as_string)
  as_array = line_as_string.split(" ")
end

def create_consistency_hash(array_of_words)
  consistency = {}
  keys = []
# Create All the keys in the hash
  array_of_words.each do |word|
    length = word.length.to_s
    keys << length
    if consistency[length]
      consistency[length] << word
    else
      consistency[length] = []
      consistency[length] << word
    end
  end

  keys.each do |key|
    consistency[key].sort!
  end

  consistency
end

def pretty_print(consistency)
  to_count_to = consistency.keys.max.to_i
  (1..to_count_to).each do |i|
    i= i.to_s
    if consistency[i]
      puts "#{i}. #{consistency[i].join(" ")}"
    else
      puts "#{i}."
    end
  end

end

File.open(ARGV[0], "r") do |f|
  f.each_line do |line|
    words = parse_to_array(line)
    hash_of_words_at_length_n = create_consistency_hash(words)
    pretty_print(hash_of_words_at_length_n)
  end
end

