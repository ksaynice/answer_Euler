require 'prime'
class Integer
  def divisors_count
    # For an arbitrary integer:
    # n = p_1**e_1 * p_2**e_2 * .... * p_n**e_n,
    # Prime.prime_division(12) #=> [[2,2], [3,1]]
    # total number of divisors must be: (r1+1)*(r2+1)*...*(rs+1) --- (*)
    divisors_count = 1
    self.prime_division.each do |x|
      divisors_count *= (x[1] + 1)
    end
    divisors_count
  end
end

triangle = 1
i = 1

while triangle.divisors_count <= 500
  i += 1
  triangle += i
end

puts triangle
puts triangle.divisors_count