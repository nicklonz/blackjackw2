# Tealeaf Week 2 - Blackjack OOP
# By NPL

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
		puts "The #{@face_value} of #{@suit}"
	end
end

#Create instance variables outside of the class	
c1 = Card.new('K','10')
c2 = Card.new('Q','10')

# Refer back to the class for output
c1.pretty_output
c2.pretty_output
# Print out the result in the form of a puts
puts c1.suit
puts c2.suit
#This is another variable create by line 6
c1.suit = "New Suit for C1"
c2.suit = "New Suit for C2"

puts c1.suit
puts c2.suit

#I added this face_value variable as another test

c1.face_value = "New Value for C1"
c2.face_value = "New Value for C2"

puts c1.face_value
puts c2.face_value

