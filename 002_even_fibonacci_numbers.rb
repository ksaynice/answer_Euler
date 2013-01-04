first = 1
second = 2
third = first + second

fibonacci = []
fibonacci << first << second
# fibonacci_even = []
# fibonacci_even << second

while third < 4000000
  first = second
  second = third
  third = first + second
  fibonacci << third
end

puts fibonacci.select{|v| v.even?}.inject(:+)