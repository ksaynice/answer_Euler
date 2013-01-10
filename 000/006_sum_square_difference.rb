from = 1
to = 100
sum_of_square = 0
square_of_sum = ((from..to).inject(:+)) ** 2

sum_of_square = (from..to).map do |v|
  v * v
end.inject(:+)

puts sum_of_square
puts square_of_sum
puts square_of_sum - sum_of_square