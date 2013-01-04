class String
  def palindrome?
    self == self.reverse
  end
end

from = 100
to = 999

highest = (from..to).map do |i|
  (i..to).map do |j|
    i * j
  end.select{|n| n.to_s.palindrome?}
end.flatten.max

puts highest