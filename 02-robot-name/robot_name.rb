
class Robot
  @@robots_names = []
  attr_reader :name, :robot_names

  def initialize
    @robot_names = []
    @name = reset
  end

  def random_name
    letter_array = ("A".."Z").to_a
    letters = letter_array.sample(2).join
    numbers_array = ("1".."9").to_a
    numbers = numbers_array.sample(3).join.to_i
    regex_name = "#{letters}#{numbers}"
    return regex_name
  end

  def reset
    reset_name = random_name
    until unique_name(reset_name)
      reset_name = random_name
    end
    @name = reset_name
    @robot_names << reset_name
    @@robots_names << reset_name
    return reset_name
  end

  def unique_name(name_attempt)
    if !@@robots_names.include?(name_attempt) && (@robot_names.count == 0 || !@robot_names.include?(name_attempt))
      return true
    else
      false
    end
  end
end
