def print_thing 

	puts "These are things! "
	yield("Hello","GoodBye")
end

print_thing { |thing1, thing2| "I guess it will say #{thing1} and #{thing2}" }

heros = {
	"superman" => "everything",
	"deathpool" => "healing factor",
	"thor" => "hammer",
	"ironman" => "money",
}

villains = ["joker", "penguin", "clayface", "catwoman"]

puts heros
heros.each { |hero,power| puts "#{hero} uses #{power}"}
puts heros

puts villains
villains.each {|x| puts "Batman vanquished #{x}!!!?!"}
puts villains

puts heros
heros.map {|hero,power| puts "#{hero} uses #{power.upcase}"}
puts heros

puts villains
villains.map {|x| puts "Batman vanquished #{x.upcase.reverse}!!!?!" }
puts villains
villains.map! {|x| puts "Batman vanquished #{x.reverse}!!!?!"}
puts villains

a = [ 20,30,45,47,50]
#a.delete_if {|a| a < 46}
#puts a

#a.keep_if {|a| a < 46}
#puts a
b = [ 1, 2, 3, 4, 5, 0]

puts b.reject {|b| b < 2 }

#puts b.drop_while {|b| b < 3 }
