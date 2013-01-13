# sum of alphabetical index of string
#'ABCD'.bytes.inject(0) { |sum, n| sum + n - 64 }

names = File.read("022_names.txt").gsub!(/\"/,"").split(",").map(&:strip).sort!
scores = 0
names.each.with_index do |x, i|
  scores += x.bytes.inject(0) { |sum, n| sum + n - 64} * (i + 1)
end
puts scores