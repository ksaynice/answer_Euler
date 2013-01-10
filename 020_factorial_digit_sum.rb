sum = (1..100).inject(:*).to_s.split(//).map {|x| x.to_i}.inject(:+)

puts "sum of the digits in the number 100! is #{sum}"