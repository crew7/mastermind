# frozen_string_literal: true

require_relative 'game_board'

# Stores player information and changes game state.
class Player
  attr_reader :player_name, :player_role,
              :yellow_circle, :blue_circle, :orange_circle,
              :green_circle, :purple_circle, :black_circle

  def ask_player_name
    puts 'What is your name?'
    @player_name = gets.chomp.capitalize
  end

  def ask_player_role
    while true
      puts "\n#{@player_name}, would you like to be the code maker or code breaker? (Enter either 'Maker' or 'Breaker')"
      @player_role = gets.chomp.downcase

      if player_role == 'maker' || player_role == 'breaker'
        puts "\n#{player_name}, you are now the #{player_role}."
        break
      else
        redo
      end
    end
  end
end
