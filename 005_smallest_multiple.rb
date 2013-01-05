from = 1
to = 20
smallest_multiple = 1
(from..to).each do |x|
  smallest_multiple = smallest_multiple.lcm(x)
end

puts smallest_multiple