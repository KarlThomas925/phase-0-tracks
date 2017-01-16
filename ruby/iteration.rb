def print_thing 

	puts "These are things! "
	yield("Hello","GoodBye")
end



print_thing { |thing1, thing2| "I guess it will say #{thing1} and #{thing2}" }

#using .each and .map! on arrays and hashes
bears = ["black", "kodiak", "polar", "panda"]

bear_rank = {1 => "black", 2 => "kodiak", 3 => 'polar', 4 => 'panda'}

p bears
bears.each do |bear|
	puts "WOAH LOOK AT THAT #{bear.upcase} BEAR"
end
p bears

p bears
bears.map! do |bear|
	bears = "brown"
end
p bears

puts "the best bear is #{bears} though."

puts "but if you wanted a ranking of lesser bears, it would be this:"

p bear_rank
bear_rank.each do |rank, species|
	puts "Rank #{rank}: #{species}"
end
p bear_rank

puts "Another way to say it is"

p bear_rank
bear_rank.map {|rank, species| puts "#{rank} is #{species}"}
p bear_rank



