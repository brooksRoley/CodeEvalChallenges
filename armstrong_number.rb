def armstrong?(number)
  sum = 0
  number = number.to_i
  digits = number.to_s.split("")
  n = digits.length
  digits.each do |x|
    sum += x.to_i**n
  end
  if sum == number
    return true
  else
    return false
  end
end

File.open(ARGV[0], "r") do |f|
  f.each_line do |number|
    p armstrong?(number)
  end
end
