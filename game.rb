# frozen_string_literal: true

# Initiates game depending on player input
class Game
  attr_reader :player_maker, :player_breaker

  def play
    get_player_details

    if @player_maker
      play_as_maker
    elsif @player_breaker
      play_as_breaker
    end
  end

  def play_as_maker
    game_board = GameBoard.new
    game_logic = GameLogic.new
    computer_breaker = ComputerBreaker.new
    player_maker.get_maker_colors
    game_board.maker_color_choices(player_maker.maker_colors)
    game_logic.receive_maker_colors(player_maker.maker_colors)
    game_state = { turn_counter: 1, result_colors: nil }
    # logic in loop here
    game_board.receive_current_turn(game_logic.turn_counter) # color comparison increments turn, so this is before
    computer_breaker.gen_breaker_colors(game_state[:turn_counter], game_state[:result_colors])
    game_logic.receive_breaker_colors(computer_breaker.breaker_colors)
    game_state = game_logic.compare_colors
    game_board.compared_color_choices(game_state[:result_colors])
    
    game_board.create_board
    # end loop logic
  end

  def play_as_breaker
    puts 'nope'
  end

  def get_player_details
    player = Player.new
    player.ask_player_name
    player.ask_player_role

    case player.player_role
    when 'maker'
      @player_maker = PlayerMaker.new(player)
    when 'breaker'
      puts 'case says breaker'
    end
  end
end
