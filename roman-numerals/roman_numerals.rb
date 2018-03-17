module BookKeeping
  VERSION = 2
end

Roman_num = {"M"=>1000, "CM"=>900, "D"=>500, "CD"=>400, "C"=>100, "XC"=>90, "L"=>50, "XL"=>40, "X"=>10, "IX"=>9, "V"=>5, "IV"=>4, "I"=>1}

#puts Roman_num.key(1000) # Gives key (i.e. letter) from value
#puts Roman_num.values[-1] # Gives value from element number
#puts Roman_num.key(Roman_num.values[0]) # Gives key from element number

def get_value(element)
  Roman_num.values[element]
end

def get_letter(element)
  Roman_num.key(Roman_num.values[element])
end

def append_letter(element,answer)
  answer += get_letter(element)
end

def next_letter(number,element,answer)
  return answer if number == 0
  if element < Roman_num.length
    if number - get_value(element) >= 0
      number-= get_value(element)
      answer = append_letter(element,answer)
      next_letter(number,element,answer)
    else
      next_letter(number,element+1,answer)
    end
  end

end

class Integer
  def to_roman
    element = 0 # Starts with the largest numeral element
    answer = ""
    answer = next_letter(self,element,answer)
  end
end
