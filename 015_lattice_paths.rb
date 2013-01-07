class Array
  def new_grid_column
    # self.enum_for(:each_with_index).collect do |x, i|
    #   x + self[i+1] if i < self.length - 1
    # end
    arr = [1]
    self.each_with_index do |x, i|
      arr << arr[i] + self[i + 1] if i < self.length - 1
    end
    arr
  end
end

arr = []
21.times { arr << 1 }
20.times { arr = arr.new_grid_column}

puts arr