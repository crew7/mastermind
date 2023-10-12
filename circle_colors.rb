# frozen_string_literal: true

# Simply hosts unicode color circles for other files
module CircleColors
  attr_accessor :yellow_circle, :blue_circle, :orange_circle,
                :green_circle, :purple_circle, :black_circle,
                :white_circle, :red_circle

  def initialize
    self.yellow_circle = "\u{1F7E1}"
    self.blue_circle = "\u{1F535}"
    self.orange_circle = "\u{1F7E0}"
    self.green_circle = "\u{1F7E2}"
    self.purple_circle = "\u{1F7E3}"
    self.black_circle = "\u26AB"
    self.white_circle = "\u26AA"
    self.red_circle = "\u{1F534}"
  end
end
