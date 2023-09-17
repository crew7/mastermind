first_chosen_color = 'a'
second_chosen_color = 'b'
third_chosen_color = 'c'
fourth_chosen_color = 'd'

first_key_peg_result = 'a'
second_key_peg_result = 'b'
third_key_peg_result = 'c'
fourth_key_peg_result = 'd'
# Code peg box
top_left_corner = "\u250C"
horizontal_line = "\u2500"
code_peg_horizontal_line = horizontal_line * 9
key_peg_horizontal_line = horizontal_line * 4
top_right_corner = "\u2510"
code_peg_interior = [
  ' ', first_chosen_color,
  ' ', second_chosen_color,
  ' ', third_chosen_color,
  ' ', fourth_chosen_color,
  ' '
].join
key_peg_interior = [first_key_peg_result, second_key_peg_result, third_key_peg_result, fourth_key_peg_result].join
key_peg_interor = []
vertical_line = "\u2502"
bottom_left_corner = "\u2514"
bottom_right_corner = "\u2518"
newline = "\n"
print newline

#top
print top_left_corner + code_peg_horizontal_line + top_right_corner + newline
#middle
print vertical_line + code_peg_interior + vertical_line + newline
#bottom
print bottom_left_corner + code_peg_horizontal_line + bottom_right_corner + newline

# Key peg box

#top
print top_left_corner + key_peg_horizontal_line + top_right_corner + newline
#middle
print vertical_line + key_peg_interior + vertical_line + newline
#bottom
print bottom_left_corner + key_peg_horizontal_line + bottom_right_corner + newline