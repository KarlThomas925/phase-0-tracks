
#first, obtain the names needed to mash. 
 puts "What's your first name? "
 fname = gets.chomp
 
 puts "What's your last name? "
 lname = gets.chomp
 

 
 #make the names downcase so that there is no issue with making the mashedup name uppercase later.  
 fname = fname.downcase
 lname = lname.downcase
 
 #the method below will switch a vowel to the next vowel in the array. 
 def next_vowel(str)
   vowels = ["a", "e", "i", "o", "u"]
   str = str.split('')
   str_new = str.map do |char|
     if vowels.include?(char)
      vowels.rotate(1)[vowels.index(char)]
    else
       char
     end
   end
   str_new.join
 end


 
 #the method below will switch a consonant to the next vowel in the array. 
 def next_consonant(str)
   consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
   str = str.split('')
   str_new = str.map do |char|
    if consonants.include?(char)
       consonants.rotate(1)[consonants.index(char)]
     else
       char
    end
   end
   str_new.join
end
 #doing the conosonants and vowels this way prevents me from running into problems with edge cases,
 #because i am not dealing witht he index or ordser of the natural letter, but making my own. 
 
 #this method puts the name together, and makes the first letter upcase. 
 def theMixup (fname, lname)
   mix_firstname = next_vowel(fname)
   mix_firstname = next_consonant(mix_firstname)
   
   mix_lastname = next_vowel(lname)
   mix_lastname = next_consonant(mix_lastname)
   
   mix_firstname = mix_firstname.capitalize
   mix_lastname = mix_lastname.capitalize
   
   tmp = mix_firstname
   mix_firstname = mix_lastname
   mix_lastname = tmp
   return "#{mix_firstname} #{mix_lastname}"
   
 end
 #this array is where all the names are held. 
 newMix = Array.new
 
 newMix.push("#{fname.capitalize} #{lname.capitalize} AKA #{theMixup(fname, lname)}")
 
 #this loop will continue to ask for names unless stopped. 
 while (fname != "")
   
   puts "What is YOUR first name?(press 'Enter' to stop) "
   fname = gets.chomp
 
   puts "What's YOUR last name? "
   lname = gets.chomp
 
   fname = fname.upcase
   lname = lname.upcase
   if fname == ""
     break
   end
   newMix.push("#{fname.capitalize} #{lname.capitalize} AKA #{theMixup(fname, lname)}")
 end
 
 #after the mix up print the results. 
 p newMix