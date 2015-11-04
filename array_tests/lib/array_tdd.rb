class Array
  def my_uniq
    result = []
    each do |el|
      result << el unless result.include?(el)
    end
    result
  end

  def two_sum
    [].tap do |pairs|
      (0...length).each do |i|
        ((i + 1)...length).each do |j|
          pairs << [i, j] if self[i] + self[j] == 0
        end
      end
    end
  end

  def my_transpose
    self[0].zip(self[1],self[2])
  end

  def stock_picker
    best_profit = 0
    best_indexes = []

    (0...length).each do |i|
      (i + 1...length).each do |j|
        if self[j] - self[i] > best_profit
          best_profit = self[j] - self[i]
          best_indexes = [i,j]
        end
      end
    end
    best_indexes
  end


end
