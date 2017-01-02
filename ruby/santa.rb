class santa

 def speak 
    p "Ho, ho, ho! Haaaappy Holidays!"
 end 

 def eat_milk_and_cookies(cookie)
    p "That was a good #{cookie}!"
 end 
 def initialize(gender, ethnicity)
 	 @gender 
     @ethnicity
     @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  	 @age = 0
  	p "Initializing Santa instance..."
 end

end
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")