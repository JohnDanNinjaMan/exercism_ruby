# Script to determine the hamming distance between two lists of nucleotides.
module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(dna1,dna2)
    raise ArgumentError.new if dna1.length!=dna2.length
    hdistance=0
    for i in 0..(dna1.length-1)
      hdistance+=1 if dna1.chars[i]!=dna2.chars[i]
    end
    hdistance
  end
end
