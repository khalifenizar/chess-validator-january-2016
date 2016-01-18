# app.rb

require_relative("lib/piece.rb")
require_relative("lib/king.rb")
require_relative("lib/rook.rb")
require_relative("lib/knight.rb")

# --------------------------
# --------- King -----------
# --------------------------

black_king = King.new(5, 8, "black")

white_king = King.new(5, 1, "white")

puts "\nTesting the King"
puts "Good moves"
p white_king.move?(6, 2)
p white_king.move?(5, 2)
p white_king.move?(4, 1)
puts "Bad moves"
p white_king.move?(7, 2)
p white_king.move?(1, 5)
p white_king.move?(1, 1)

puts "\n------------------\n"


# --------------------------
# --------- Rook -----------
# --------------------------

black_rook_left = Rook.new(1, 8, "black")
black_rook_right = Rook.new(8, 8, "black")
white_rook_left = Rook.new(1, 1, "white")
white_rook_right = Rook.new(8, 1, "white")

puts "\nTesting the Rook"
puts "Good moves"
p white_rook_right.move?(8, 5)
p white_rook_right.move?(2, 1)
puts "Bad moves"
p white_rook_right.move?(6, 3)
p white_rook_right.move?(2, 3)

puts "\n------------------\n"


# --------------------------
# -------- Knight ----------
# --------------------------

black_knight_left = Knight.new(2, 8, "black")
black_knight_right = Knight.new(7, 8, "black")
white_knight_left = Knight.new(2, 1, "white")
white_knight_right = Knight.new(7, 1, "white")

puts "\nTesting the Knight"
puts "Good moves"
p white_knight_right.move?(6, 3)
p white_knight_right.move?(5, 2)
puts "Bad moves"
p white_knight_right.move?(7, 4)
p white_knight_right.move?(3, 5)
p white_knight_right.move?(8, 4)

puts "\n------------------\n"
