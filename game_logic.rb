# frozen_string_literal: true

# Hosts win conditions
class GameLogic
  attr_accessor :maker_colors, :breaker_colors

  def receive_maker_colors(colors)
    self.maker_colors = colors
  end

  def receive_breaker_colors(colors)
    self.breaker_colors = colors
  end
end