# Tealeaf Week 2
# Object Oriented Blackjack Game
# By NPL

require 'rubygems'
require 'pry'

# Methods are treated as Behaviors
# Instance Variables are treated as States

# Identify the Class
class	Card
	attr_accessor :suit, :face_value

# Initialize Funtionality within the class
	def initialize(s,fv)
		@suit = s
		@face_value = fv
	end

# Add Methods in the class
	def pretty_output
		puts "The #{face_value} of #{find_suit}"
	end

def to_s
		pretty_output
end

def find_suit
		ret_val = case suit
				when 'H' then 'Hearts'
				when 'D' then 'Diamonds'
				when 'C' then 'Clubs'
				when 'S' then 'Spades'
		end

		ret_val
		end
end

class Deck
	attr_accessor :cards

def initialize
    @cards = []
    ['H', 'D', 'S', 'C'].each do |suit|
      ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'].each do |face_value|
        @cards << Card.new(suit, face_value)
      end
    end
    scramble!
  end

def scramble!
	cards.shuffle!
end

def deal_one
	cards.pop
end

def size
	cards:size
end

end

deck=Deck.new

# puts "I like it!"