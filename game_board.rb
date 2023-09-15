first_chosen_color = 'a'
second_chosen_color = 'b'
third_chosen_color = 'c'
fourth_chosen_color = 'd'

top_left_corner = "\u250C"
horizontal_line = "\u2500" * 9
top_right_corner = "\u2510"
inside_box = [
  ' ', first_chosen_color,
  ' ', second_chosen_color,
  ' ', third_chosen_color,
  ' ', fourth_chosen_color,
  ' '
].join
vertical_line = "\u2502"
bottom_left_corner = "\u2514"
bottom_right_corner = "\u2518"
newline = "\n"
print newline
print top_left_corner
print horizontal_line
print top_right_corner + newline
print vertical_line
print inside_box
print vertical_line + newline
print bottom_left_corner
print horizontal_line
print bottom_right_corner + newline