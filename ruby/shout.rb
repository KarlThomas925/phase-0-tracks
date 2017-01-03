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
class bear
	include roar
end

class lion
	include roar
end

theo = bear.new
theo.roar("RAAOOOAOEUOAIUIAUOEIAEIAOU")

paul = lion.new
paul.roar("meow")



