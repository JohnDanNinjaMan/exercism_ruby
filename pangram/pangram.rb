module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end

class Pangram
  def self.pangram?(phrase)
    n=0
    ('a'..'z').each {|letter|
      if phrase.downcase.include?(letter) then n += 1 end
    }
    if n==26 then true else false end
  end
end
