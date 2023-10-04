class Game
  attr_reader :maker_player, :breaker_player

  def play
    get_player_details

    if @maker_player
      play_as_maker
    elsif @breaker_player
      play_as_breaker
    end
  end

  def play_as_maker
    maker_player.get_player_colors
    game = GameBoard.new
    game.color_choices(maker_player.user_colors)
    game.create_board
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
      @maker_player = PlayerMaker.new(player)
    when 'breaker'
      puts 'case says breaker'
    end

    player
  end
end
