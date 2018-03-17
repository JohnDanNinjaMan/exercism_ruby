# Script to determine the exact date and time when a person
# reaches 1 billion seconds old. Input is the date and time
# of birth.
module BookKeeping
  VERSION = 5
end

class Gigasecond
  def self.from(birth)
    birth+1000000000
  end
end

birthday=Time.utc(1990,3,31,12,0,0)
puts Gigasecond.from(birthday)
