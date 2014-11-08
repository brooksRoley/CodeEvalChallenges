def fizzbuzz(divisor, divider, count)
  result = ""
  (1..count).each do |current|
    if current%divisor==0 && current%divider==0
      result += "FB "
    elsif current%divisor==0
      result += "F "
    elsif current%divider==0
      result += "B "
    else
      result += current.to_s + " "
    end
  end
  puts result[0..-2]
end

ARGV.each do |a|
  f = File.open(a)
  f.each_line do |line|
    inputs = line.split(" ")
    inputs.map!{|x| x.to_i}
    fizzbuzz(inputs[0], inputs[1], inputs[2])
  end
end
