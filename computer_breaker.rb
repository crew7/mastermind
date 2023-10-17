# frozen_string_literal: true

# Stores computer breaker generated code
class ComputerBreaker
  include CircleColors

  attr_accessor :breaker_colors

  def get_breaker_colors
    self.breaker_colors = [yellow_circle, blue_circle, black_circle, purple_circle] # temp
  end

end
