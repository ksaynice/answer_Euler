class Integer
  def sum_of_digits
    n = 0
    self.to_s.split("").each {|x| n += x.to_i }
    n
  end
end

puts (2 ** 1000).sum_of_digits