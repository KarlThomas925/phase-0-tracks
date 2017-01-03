
# => use one will enter a word, and the other user is going to try and guess that word. 
# =>  guesses will be limited, the shorter the word the less guesses
# => if multiple guesses are made, then it will not count against player two
# => the word will be continually updated as player 2 makes guesses. 
# => the user will get a nice message if they are correct, and a taunting message if they are now


#I tried making this operation with sugary syntax, and attributes, but i couldn't get
#those instances to work properly, so i just used loops and math. 

class Game
	#ask for input using a strang
	puts "Player one, please enter a word"
	guessing_word = gets.chomp!

	p guessing_word
	word = guessing_word.split("") #this will seperate in array indices at every blank space.
	p word

	#create an array that will show blank spaces for the word
	blank = []
	x = 0
	while x < word.size do 
		blank.push("_") #underscores like hang man
		x += 1
	end

	p blank

	guess = []
		wrong = 0
		while wrong < guessing_word.size && blank.include?("_")
			puts "Now Player 2, guess a letter."
			letter = gets.chomp!
			if word.include?(letter) == true
				puts "Very good, go on..."

			#I need to figure out how to make an exception, so that a repeating guess is not counted. 
			  if word.count(letter) > 1 
        		z = word.each_index.select{|i| word[i] == letter}  #specifically here, i was guessing. 
        		z.each_index {|i|
        		blank.delete_at(z[i]) 
        		blank.insert(z[i], letter)}
        end

        	#these two lines will replace the blank space in hangman underscores with the correctly guessed letter.
        	blank.delete_at(word.index(letter))
      		blank.insert(word.index(letter), letter)

      	elsif guess.include?(letter) == true
      		puts "You're repeating yourself, think out side of your sad little box..."
      	else
      		puts "That was... completely wrong."
      		wrong += 1
      		guess.push(letter)
      	end

      	p blank

      end
#this took far longer than it should have, but it was really good practice to get my brain back in the math-mood
#below will now have a simple if/else to end the game once the conditions have/not been met

if blank.include?("_") == false #no more blankies, no more.. losing
	puts "You won, you operate at a higher function"
else
	puts"YOU ARE AN IG-NO-RAY-MOOSE"
end
end #<class end
