def prime_factors(n)
  return [] if n == 1
  factors = (2..n).find{|v| n % v == 0}
  [factors] + prime_factors(n / factors)
end

largest_prime_factor = prime_factors(600851475143)

puts largest_prime_factor.max
