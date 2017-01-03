class Puppy

def speak(i)
	i.times {
		puts "BORK"
	}
end

def roll_over(name)
	puts "#{name} flops around"
end

def dog_years(i)
	puts i * 7
end

def shake(name)
	puts "#{name} shakes your hand"
end

 def initialize
    puts "Initializing new puppy instance..."  #mispelling init is no good, kills method dead. 
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
		puts "Your normal level of cuteness is understoood as #{normalhumanlevel}"
		puts "but to this kitten it is" normalhumanlevel * 47
	end

	def sleep
		puts "it's always sleeping"
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
	puts "_________________________"
end