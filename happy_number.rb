


def happy_number (number_as_string)
  first = number_as_string[0].to_i

  if number_as_string[1]
    second = number_as_string[1].to_i
  end

  product = first**2 + second**2
  p product
end

File.open(ARGV[0], "r") do |f|
  f.each_line do |line|
    happy_number(line)
  end
end
