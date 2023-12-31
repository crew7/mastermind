# frozen_string_literal: true

# Stores computer breaker generated code
class ComputerBreaker
  include CircleColors

  attr_accessor :breaker_colors

  def gen_breaker_colors(turn_counter, result_colors)
    if turn_counter == 1
      first_choice = all_circles.sample(2) # start with 1122
      self.breaker_colors = [first_choice[0], first_choice[0], first_choice[1], first_choice[1]]
    else
      if result_colors.all? {|x| x.strip.empty?} == true
        puts "no matches!"
      else
        puts "matches!"
      end
    end
    
    # self.breaker_colors = [yellow_circle, blue_circle, black_circle, purple_circle] # temp
  end

end
