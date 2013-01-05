require 'prime'

Prime.take(10) #=> [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
Prime.take_while {|p| p < 10 } #=> [2, 3, 5, 7]
Prime.prime?(19) #=> true

puts Prime.first(10001).last