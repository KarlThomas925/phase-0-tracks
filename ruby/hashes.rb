#create a new hash to store the clients information
	#ask for the name, age, number of children, and their preferred style of decor. 
	# print out clients list of info
	# ask client if they had put in the correct information for each variable. 
	# print list. 
client = Hash.new 
 
 puts "What is your name? "
 client[:clientname] = gets.chomp!
 
 puts "What is yuour age? "
 client[:clientage] = gets.to_i 
 
 puts "How many children do you have?: "
 client[:clientchildnum] = gets.to_i
 
 puts "What style of decor do youprefer the most? "
 client[:clientdecor] = gets.chomp!
 
  p client