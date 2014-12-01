def mth_to_last(line)
  array = line.split(" ")
  index = array.pop.to_i

  if index <= array.length
    puts array[-index]
  end
end


File.open(ARGV[0], "r") do |f|
  f.each_line do |line|
    mth_to_last(line)
  end
end