# frozen_string_literal: true

# Simply initiates game as main file.

require_relative 'game'
require_relative 'game_board'
require_relative 'game_logic'
require_relative 'circle_colors'
require_relative 'player'
require_relative 'player_maker'

require_relative 'computer_breaker'

Game.new.play
