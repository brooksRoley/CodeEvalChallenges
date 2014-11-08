require 'prime.rb'
def get_sum_of_primes
  number = 3
  sum = 2
  count = 0

  while count < 999 do
    if (Prime.prime?(number))
      sum+=number
      count+=1
    end

    number +=2
  end
  puts sum

end

get_sum_of_primes
