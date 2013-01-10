from = 1
to = 1000

(from..to).map do |i|
  (i..(to - i)).map do |j|
    (j..(to - i - j)).map do |k|
      if (i * i + j * j == k * k) && (i + j + k == 1000)
        puts i,j,k
        puts i * j * k
        break
      end
    end
  end
end