=begin

Instructions
Calculate the number of grains of wheat on a chessboard given that the number on each square doubles.

There once was a wise servant who saved the life of a prince. The king promised to pay whatever the servant could dream up. Knowing that the king loved chess, the servant told the king he would like to have grains of wheat. One grain on the first square of a chess board, with the number of grains doubling on each successive square.

There are 64 squares on a chessboard (where square 1 has one grain, square 2 has two grains, and so on).

Write code that shows:

how many grains were on a given square, and
the total number of grains on the chessboard

=end

class Grains
    def self.square(n)
        puts "invalid value" if n < 1 || n > 64
        2**(n-1)
    end
    
    def self.total
        (1..64).reduce { |sum, n| sum + square(n) }
    end
end

number = 10
puts "The number of grain in the chessboard for the number #{number} is #{Grains.square(10)}" 
puts "The total number of grains on the chessboard is #{Grains.total}" 