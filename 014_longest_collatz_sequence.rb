def collatz(n, i)
  if n != 1
    if n.even?
      n /= 2
    elsif n.odd?
      n = 3 * n + 1
    end
    i << n
    collatz(n, i)
  else
    i.count
  end
end

sequence = []
(1..1000000).each do |x|
  sequence << {:num => x, :chain => collatz(x, [])}
end

max = sequence.max_by do |x|
  x[:chain]
end

puts max
