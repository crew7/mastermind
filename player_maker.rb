# frozen_string_literal: true

# Stores player maker details.
class PlayerMaker
  include CircleColors

  attr_reader :player_name, :player_role
  attr_accessor :user_colors

  def initialize(player)
    @player_choices = %w[yellow blue orange green purple black]
    @player_name = player.player_name
    @player_role = player.player_role
    super()
  end

  def get_player_colors
    while true
      puts "#{@player_name}, choose your 4 breaker colors separated by a comma. Your options are as follows;"
      puts "Yellow, Blue, Orange, Green, Purple, Black"
      user_colors = gets.chomp.downcase.split(',').map!(&:strip)
      if user_colors.length == 4
        if user_colors.all? { |color| @player_choices.include?(color) }
          user_colors.map! do |color|
            case color
            when 'yellow'
              color = yellow_circle
            when 'blue'
              color = blue_circle
            when 'orange'
              color = orange_circle
            when 'green'
              color = green_circle
            when 'purple'
              color = purple_circle
            when 'black'
              color = black_circle
            end
          end
          self.user_colors = user_colors
          break
        else
          puts 'You didn\'t pick the colors listed! Try again.'
          redo
        end
      else
        puts 'You didn\'t enter 4 characters separated by a comma! Try again.'
        redo
      end
    end
  end
end