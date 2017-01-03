module Shout
# 	# we'll put some methods here soon, but this code is fine for now!
# 	def self.yell_angrily(words)
#     	words + "!!!" + " :("
#     end

#     def self.yell_happily(words)
#     	words + "!!!" + ":D"
#   	end
	def roar(noise)
		puts "IT MAKES ME WANNA PUT MY HANDS UP AND #{noise}"
	end
 end
 
class Bear
	include Shout
end

class Lion
	include Shout
end

theo = Bear.new
theo.roar("RAAOOOAOEUOAIUIAUOEIAEIAOU")

paul = Lion.new
paul.roar("meow")
