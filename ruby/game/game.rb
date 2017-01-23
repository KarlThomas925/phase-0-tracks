
# => use one will enter a word, and the other user is going to try and guess that word. 
# =>  guesses will be limited, the shorter the word the less guesses
# => if multiple guesses are made, then it will not count against player two
# => the word will be continually updated as player 2 makes guesses. 
# => the user will get a nice message if they are correct, and a taunting message if they are now


class Game
	 #I will need to access these throughout the code
		attr_accessor :guesses, :loop_break?

	 #My plan is to use these attributes to run my loop
		def initialize
			@guesses = 0
			@loop_break? = false
		end

		def hangman(guess, word)
		#first, make the guessing if statement. 
			if word.include?(guess)

				word.delete!(guess)
				puts word.gsub(/[abcdefghijklmnopqrstuvwxyz]/, '-')
				@guesses += 1
			else
				puts "That was like, suberbly incorrect"
				@guesses += 1
			end
		#build the win/lose conditions. 
		if word.length == 0
			@loop_break? = true
			puts "Congratulations, you have won, I am proud of you. Truly. Marverlous job."
		elsif @guesses == word.length + 5
			@loop_break? = true
			puts "YOU ARE AN IG-NO-RAY-MOOSE"
		else
			false
		end
	end
end
			


if blank.include?("_") == false #no more blankies, no more.. losing
	puts "You won, you operate at a higher function"
else
	puts"YOU ARE AN IG-NO-RAY-MOOSE"
end
end #<class end
