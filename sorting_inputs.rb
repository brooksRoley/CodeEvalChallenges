count = 0
output_size = 0
words_by_length = []
f = File.open(ARGV[0])

f.each_line do |x|
  count +=1
  if count == 1
    output_size = x.chomp!.to_i
  else
    words_by_length << x.chomp
    words_by_length = words_by_length.sort_by{|x| x.length}
  end
end

output_size.times{puts words_by_length.pop}