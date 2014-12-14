def is_single_riffle_recursive(half1, half2, shuffled_deck)
  if shuffled_deck.length == 0
    return true
  end

  if half1.length>0 and half1[0] == shuffled_deck[0]
    p "matches 1st half"
    return is_single_riffle_recursive(half1[1..-1], half2, shuffled_deck[1..-1])
  elsif half2.length>0 and half2[0] == shuffled_deck[0]
    p "matches second half"
    return is_single_riffle_recursive(half1, half2[1..-1], shuffled_deck[1..-1])
  else
    return false
  end

end

arr = []
(1..52).each do |x|
  arr << x
end

arr.shuffle!
p arr

is_single_riffle_recursive(arr[0..5], arr[5..52], arr)