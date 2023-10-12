# frozen_string_literal: true

# Stores computer breaker generated code
class ComputerBreaker
  include CircleColors

  attr_accessor :chosen_colors

  def get_chosen_colors
    self.chosen_colors = [yellow_circle, blue_circle, black_circle, purple_circle] # temp
  end

end
