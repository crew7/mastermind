# frozen_string_literal: true

# Stores computer breaker generated code
class ComputerBreaker
  include CircleColors

  attr_accessor :breaker_colors

  def gen_breaker_colors(turn_counter, result_colors)
    if turn_counter == 1
      blind_choice = breaker_moves.sample(2) # start with 1122
      self.breaker_colors = [blind_choice[0], blind_choice[0], blind_choice[1], blind_choice[1]]
    else
      if result_colors.all? {|x| x.strip.empty?} == true # dont use options if no solution
        breaker_colors.uniq.each { |x| breaker_moves.delete(x) }
        puts "no matches!"
        blind_choice = breaker_moves.sample(2) # start with 1122
        self.breaker_colors = [blind_choice[0], blind_choice[0], blind_choice[1], blind_choice[1]]
      else
        puts "matches!"
      end
    end
    
    # self.breaker_colors = [yellow_circle, blue_circle, black_circle, purple_circle] # temp
  end
end
