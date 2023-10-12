# frozen_string_literal: true

# Stores player maker details.
class PlayerMaker
  include CircleColors

  attr_reader :player_name, :player_role
  attr_accessor :chosen_colors

  def initialize(player)
    @player_choices = %w[yellow blue orange green purple black]
    @player_name = player.player_name
    @player_role = player.player_role
    super()
  end

  def get_chosen_colors
    while true
      puts "\n#{player_name}, type your 4 colored code separated by a comma. Your options are as follows;"
      puts "Yellow, Blue, Orange, Green, Purple, Black\n\n"
      chosen_colors = gets.chomp.downcase.split(',').map!(&:strip)
      if chosen_colors.length == 4
        if chosen_colors.all? { |color| @player_choices.include?(color) }
          chosen_colors.map! do |color|
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
          self.chosen_colors = chosen_colors
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
