def collatz(n)
  i = 1
  until n == 1
    if n.even?
      n /= 2
    elsif n.odd?
      n = 3 * n + 1
    end
    i += 1
  end
  i
end

from = 1
to = 1000000
biggest_count = 0
strating_num = 0

(from..to).each do |x|
  if biggest_count < collatz(x)
    biggest_count = collatz(x)
    strating_num = x
  end
end
puts biggest_count
puts strating_num

__END__

---------- if check sequence numbs (slow 65s+)----------
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
