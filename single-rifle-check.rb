def is_single_riffle_recursive(half1, half2, shuffled_deck, shuffled_deck_index=0, half1_index=0, half2_index=0)

  if shuffled_deck_index+1 > shuffled_deck.length
    return true
  end

  if !half1_index

end

arr = []
(1..52).each do |x|
  arr << x
end

arr.shuffle!
p arr

is_single_riffle_recursive(arr[0..5], arr[5..52], arr)