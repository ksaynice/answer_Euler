fibonacci = [1,2]

while fibonacci.last < 4000000
  fibonacci << fibonacci[-1] + fibonacci[-2]
end

sum = fibonacci.select{|v| v.even?}.inject(:+)
puts fibonacci
puts sum