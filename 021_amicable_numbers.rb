class Integer
  def factors()
    1.upto(Math.sqrt(self)).select {|i| (self % i).zero?}.inject([]) do |f, i| 
      f << i
      f << self/i unless i == self/i
      f
    end.sort
  end
end

def sum_of_proper_divisors(num)
  factors = num.factors
  factors.pop
  factors
  sum = factors.inject(:+)
end

sum_of_amicable_nums = 0
(2..9999).each do |x|
  sum_of_amicable_nums += x if sum_of_proper_divisors(sum_of_proper_divisors(x)) == x && x != sum_of_proper_divisors(x) && sum_of_proper_divisors(x) < 10000
end

puts "the sum of all the amicable numbers under 10000 is: #{sum_of_amicable_nums}"
