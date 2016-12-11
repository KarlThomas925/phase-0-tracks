puts "Hamsters name?"
hamster_name = gets.chomp

puts "How loud is your hamster?"
hamster_volume = gets.to_i

puts "What color is you hamster?"
hamster_color = gets.chomp

puts "Is your hamster friendly (yes or no)?"
hamster_mood = gets.chomp
if hamster_mood == 'yes'
	hamster_mood = true
elsif hamster_mood == 'no'
	hamster_mood = false
end

puts "How old is your hamster?"
hamster_age = gets.to_i
if hamster_age == ""
	hamster_age == nil
end

puts "The hamsters name is #{hamster_name}. The hamster noise level is #{hamster_volume}. The hamster fur color is #{hamster_color}. The hamster is ready for adoption: #{hamster_mood}. The hamster is #{hamster_age} years old."


