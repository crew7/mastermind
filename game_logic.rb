# frozen_string_literal: true

require_relative 'circle_colors'

# Hosts win conditions
class GameLogic
  include CircleColors
  attr_accessor :maker_colors, :breaker_colors, :turn_counter, :duplicates

  def initialize
    self.turn_counter = 1
    self.duplicates = []
    super() # This initialize overwrites circlecolors. Super needed.
  end

  def compare_colors
    compared_colors = compare_reds # Executions separately to prevent whites from future reds
    compared_colors = compare_whites(compared_colors)
    compared_colors = compare_fails(compared_colors)
    self.duplicates = []
    self.turn_counter = turn_counter + 1
    { turn_counter: turn_counter, result_colors: compared_colors.sort.reverse }
  end

  def compare_reds
    maker_colors.map.with_index do |maker_color, maker_index|
      if maker_color == breaker_colors[maker_index]
        duplicates.push(maker_index)
        maker_color = red_circle
      end
      maker_color
    end
  end

  def compare_whites(compared_colors)
    compared_colors.map.with_index do |maker_color, maker_index|
      if maker_color != red_circle && includes_color?(breaker_colors[maker_index])
        p breaker_colors[maker_index]
        p duplicates
        maker_color = white_circle
      end
      maker_color
    end
  end

  def compare_fails(compared_colors)
    compared_colors.map.with_index do |maker_color, _maker_index|
      maker_color = "  " if maker_color != white_circle && maker_color != red_circle
      maker_color
    end
  end

  def receive_maker_colors(colors)
    self.maker_colors = colors
  end

  def receive_breaker_colors(colors)
    self.breaker_colors = colors
  end

  def includes_color?(breaker_color)
    color_index = maker_colors.find_index(breaker_color)
    if !color_index.nil? && !duplicates.include?(color_index)
      duplicates.push(color_index)
      true
    else
      false
    end
  end
end
