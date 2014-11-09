def parse(line)
  output = ""
  p line
  # line.each do |symbol|
  #   puts symbol
  #   # if symbol == "00"
  #   #   "turn to 1"
  #   # end

  #   # if symbol == "0"
  #   #   puts "write to output"
  #   # end
  # end
end

File.open(ARGV[0], "r") do |f|
  f.each_line do |line|
    arr = line.split(" ")
    parse(arr)
    puts "===" *8
  end
end
