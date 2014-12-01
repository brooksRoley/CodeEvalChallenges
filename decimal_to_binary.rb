


def decimal_to_binary(number)
  number = number.to_i
  p number.to_s(2).to_i
end

File.open(ARGV[0], "r") do |f|
  f.each_line do |line|
    decimal_to_binary(line)
  end
end
