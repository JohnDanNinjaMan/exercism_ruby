module BookKeeping
  VERSION = 1
end

def check_input(i)
  raise ArgumentError.new if not i.is_a? Integer
  raise ArgumentError.new if i < 1
end

def isitprime?(i,prime_list)
  prime_list.each do | prime |
    if i % prime == 0 then return false end
  end
  return true
end

def findnextprime(prime_list)
  i = prime_list.last + 1
  loop do
    if isitprime?(i,prime_list) then return i end
    i = i + 1
  end
end

class Prime
  @@prime_list = [2]
  def self.nth(i)
    check_input(i)
    loop do
      @@prime_list << findnextprime(@@prime_list)
      break if @@prime_list.length >= i
    end
    @@prime_list[i-1]
  end
end

Prime.nth(2)
