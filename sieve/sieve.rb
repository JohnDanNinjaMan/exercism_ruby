module BookKeeping
  VERSION = 1
end

def multiple_calc(max,value)
  multiples=[*2..max/value]
  multiples.map!{|i| i*value}
end

class Sieve
  def initialize(max=2)
    @max = max
  end

  def primes
    list=[*2..@max]
    list.each{|j| list-=multiple_calc(@max,j)}
    return list
  end
end
