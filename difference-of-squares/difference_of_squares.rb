module BookKeeping
  VERSION = 3
end

class Integer
  def squared
    self**2
  end
end

class Squares
  def initialize(max_value)
    @numbers=(0..max_value).to_a
  end

  def square_of_sum
    @numbers.reduce{|sum, n| sum+n}.squared
  end

  def sum_of_squares
    @numbers.reduce{|sum, n| sum+n**2}
  end

  def difference
    self.square_of_sum - self.sum_of_squares
  end
end
