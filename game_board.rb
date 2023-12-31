# frozen_string_literal: true

# Creates gameboard and updates values
class GameBoard
  attr_accessor :current_turn

  def create_board
    create_board_top
    print newline
    create_board_body
    print newline
    create_board_bottom
    print newline
  end

  def create_board_top
    create_code_peg_top
    create_key_peg_top
  end

  def create_board_body
    create_code_peg_body
    create_key_peg_body
  end

  def create_board_bottom
    create_code_peg_bottom
    create_key_peg_bottom
  end

  def maker_color_choices(choices)
    @code_peg_interior = choices.join
  end

  def compared_color_choices(results)
    @key_peg_interior = results.join
  end

  def receive_current_turn(turn_counter)
    self.current_turn = turn_counter
  end

  private

  attr_reader :top_left_corner, :horizontal_line, :top_right_corner,
              :vertical_line, :bottom_left_corner, :bottom_right_corner,
              :code_peg_horizontal_line, :key_peg_horizontal_line, :newline,
              :code_peg_interior, :key_peg_interior

  def initialize
    @top_left_corner = "\u250C"
    @horizontal_line = "\u2500"
    @code_peg_horizontal_line = horizontal_line * 8
    @key_peg_horizontal_line = horizontal_line * 8
    @top_right_corner = "\u2510"
    @vertical_line = "\u2502"
    @bottom_left_corner = "\u2514"
    @bottom_right_corner = "\u2518"
    @newline = "\n"
  end

  def create_code_peg_top
    print top_left_corner + code_peg_horizontal_line + top_right_corner
  end

  def create_code_peg_body
    print vertical_line + code_peg_interior + vertical_line
  end

  def create_code_peg_bottom
    print bottom_left_corner + code_peg_horizontal_line + bottom_right_corner
  end

  def create_key_peg_top
    print top_left_corner + key_peg_horizontal_line + top_right_corner
  end

  def create_key_peg_body
    print vertical_line + key_peg_interior + vertical_line
  end

  def create_key_peg_bottom
    print bottom_left_corner + key_peg_horizontal_line + bottom_right_corner
  end
end
