class Puppy

	def initialize
	    puts "Initializing new puppy instance..."  #mispelling init is no good, kills method dead. 
	end

	def speak(repetitions)
		i.times {puts "BORK"}
	end

	def roll_over(name)
		puts "#{name} flops around"
	end

	def dog_years(real_years)
		puts real_years * 7
	end

	def shake(name)
		puts "#{name} shakes your hand"
	end

end

# doug = Puppy.new
# doug.speak(20)
# doug.roll_over("doug")
# doug.shake("doug")

class Kitten
	
	def initialize
		puts "init///BEGIN KITTEN PROGRAM"
	end

	def cute_levels(normalhumanlevel)
	  	@cat_level = normalhumanlevel * 47

		puts "Your normal level of cuteness is understoood as #{normalhumanlevel}"
		puts "but to this kitten it is #{@cat_level}" 
	end

	def eat(food)
		if food.downcase == "dry"
			puts "swats dry food out of bowl"
		elsif food.downcase == "wet"
			puts "cat chows down"
		else
			puts "does not know how eat"
		end
	end
	def sleep
	  if(@cat_level < 5*47)
		  puts "it never sleeps"
		else
		  puts "it's always sleeping"
		end
	end
end

cats = Array.new
	
50.times {
	cat5000 = Kitten.new
	cats.push(cat5000)
}

cats.each do |cat4000|
  puts "_________________________"
	cat4000.cute_levels(rand(1..10))
	cat4000.sleep
	cat4000.eat('wet')
	puts "_________________________"
end