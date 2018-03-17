module BookKeeping
  VERSION = 2
end

class Namelist
  @@list_of_names=Array.new
  def self.check_name(name)
    @@list_of_names.include?(name)
  end

  def self.add_name(name)
    @@list_of_names << name
  end

  def self.lastName
    @@list_of_names[-1]
  end
end

def rand_letters
  ('A'..'Z').to_a.shuffle[0,2].join
end

def rand_numbers
  rand(10).to_s + rand(10).to_s + rand(10).to_s
end

def name_duplicate_check(name)
  Namelist.check_name(name)
end

def add_name_to_list(name)
  Namelist.add_name(name)
end

def robot_name_gen
  name = rand_letters + rand_numbers
  name_duplicate_check(name)? robot_name_gen : add_name_to_list(name)
end

class Robot
  def initialize
    robot_name_gen
  end

  def name
    Namelist.lastName
  end

  def reset
    robot_name_gen
  end
end
puts Robot.new.name
