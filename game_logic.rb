# frozen_string_literal: true

require_relative 'circle_colors'

# Hosts win conditions
class GameLogic
  include CircleColors
  attr_accessor :maker_colors, :breaker_colors, :turn_counter

  def initialize
    self.turn_counter = 1
    super() # This initialize overwrites circlecolors. Super needed.
  end

  def compare_colors
    compared_colors = maker_colors.each_with_index.map do |maker_color, maker_index|
      if maker_color == breaker_colors[maker_index]
        maker_color = red_circle
      elsif breaker_colors.include?(maker_color)
        maker_color = white_circle
      else
        maker_color = "  "
      end
    end
    self.turn_counter = turn_counter + 1
    { turn_counter: turn_counter, result_colors: compared_colors.sort.reverse }
  end

  def receive_maker_colors(colors)
    self.maker_colors = colors
  end

  def receive_breaker_colors(colors)
    self.breaker_colors = colors
  end
end