nums = []
(1..999).each do |n|
  if n % 3 == 0 or n % 5 == 0
    nums << n
  end
end
sum = nums.inject(:+)
puts sum