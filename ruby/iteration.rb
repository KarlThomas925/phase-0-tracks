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

#do the thing section

#1
a = [ 20,30,45,47,50]
a.delete_if {|a| a < 46}
puts a

#2
a = [ 20,30,45,47,50]
a.keep_if {|a| a < 46}
puts a

#3
b = [ 1, 2, 3, 4, 5, 0]
puts b.reject {|b| b < 2 }

#4
b = [ 1, 2, 3, 4, 5, 0]
puts b.drop_while {|b| b < 3 }

