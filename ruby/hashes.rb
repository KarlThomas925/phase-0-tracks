#Create the hash, ask the client for their name, age, number of children, and preferred decor style. 
#ask a question for all of their information to guarantee they have written the correct information. 
#print their information. 

client = Hash.new 
 
 puts "Please give us your name: "
 client[:clientname] = gets.chomp!
 
 puts "Please give us your age: "
 client[:clientage] = gets.to_i 
 
 puts "How many children do you have?: "
 client[:clientchildnum] = gets.to_i
 
 puts "What is your preferred Decor Style?: "
 client[:clientdecor] = gets.chomp!
 
 puts "Have you gotten your name correct? (Type 'yes' to keep your name)"
 tmpname = gets.chomp!

 	if(tmpname == "yes")
   		puts "No change for your name."
 	else
   		client[:clientname] = tmpname
 	end
 
 puts "Is your age correct?  (Type '00' to keep your age)"
 tmpage = gets.to_i
 
 	if(tmpage == 00)
   		puts "Keeping current name."
 	else
   		client[:clientage] = tmpage
 	end
 
 puts "Do we have the correct amount of children? (Type '00' to keep your number of children)"
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