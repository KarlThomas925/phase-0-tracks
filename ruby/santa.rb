class Santa
  
#getter and setter short cuts
  attr_accessor :gender 
  attr_reader  :ethnicity, :age
 

 #method for allowing a santa to speak.
 def speak 
    p "Ho, ho, ho! Haaaappy Holidays!"
 end 
 #method for eating delicious cookies. 
 def eat_milk_and_cookies(cookie)
    p "That was a good #{cookie}!"
 end 
 #init method, used for storing attributes
 def initialize(gender, ethnicity)
 	 @gender 
     @ethnicity
     @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  	 @age = rand(0..140) 
  	p "Initializing Santa instance..."
 end
 #birthday method, increases the age by one. 
 def celebrate_birthday
    @age = @age + 1
 end

 #this method moves a reindeer to the lowest rank.
 def get_mad_at(reindeer)
    @reindeer_ranking.insert(8, @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer)))
    p @reindeer_ranking
 end
end

 # *** DRIVER CODE *********
# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# karl = Santa.new("MACHO MANLY MALE", "VERY GERMAN")
# karl.speak
# karl.eat_milk_and_cookies("chunkymonkey")
# karl.get_mad_at("rudolf")
# karl.gender = ("dudebro")

#****************************
santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

#this will create 50 random santas
50.times do
  santas << Santa.new(genders[rand(0..6)], ethnicities[rand(0..6)]) 
end
p santas