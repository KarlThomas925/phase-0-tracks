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
 
 puts "How many children do you have? "
 client[:clientchildnum] = gets.to_i
 
 puts "What style of decor do youprefer the most? "
 client[:clientdecor] = gets.chomp!
 
  p client

  puts "Do we have your name down right? (Type 'yes' to keep your name)"
 tmpname = gets.chomp!

 	if(tmpname == "yes")
   		puts "Keeping current name."
 	else
   		client[:clientname] = tmpname
 	end
 
 puts "Is your age correct?  (Type '00' to keep your age)"
 tmpage = gets.to_i
 
 	if(tmpage == 00)
   		puts "Keeping current age"
 	else
   		client[:clientage] = tmpage
 	end
 
 puts "Is the number of kids we have down correct? (Type '00' to keep your number of children)"
 tmpkids = gets.to_i
 
 	if(tmpkids == 00)
   		puts "Keeping current number of kids."
 	else
   		client[:clientchildnum] = tmpkids
 	end
 
 puts "Is your preferred decor style correct? (Type 'yes' to keep your decor theme)"
 tmpdecor = gets.chomp!
 
 	if(tmpdecor == "yes")
   		puts "Keeping current decor style."
 	else
   		client[:clientdecor] = tmpdecor
 	end
   
 
 p client 