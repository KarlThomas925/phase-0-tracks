#Start the vampire busting survey

def survey
  puts "What's your name?"
  name = gets.chomp!
  puts "How old are you? "
  age = gets.to_i
  puts "What's your year of birth?"
  dob = gets.to_i
  puts "Our cafeterias special today is garlic bread. Would you like any during your visit today?  (yes or no)"
  gb = gets.chomp!
  puts "Would you like to enroll in the company's health insurance?  (yes or no)"
  hs = gets.chomp!

  #code for handling variables/booleans.

  vampage = 2016 - dob

  if age == vampage
    lies=true
  else
    lies=false
  end

  if gb == "yes"
    gb=true
  else
    gb=false
  end

  #Boolean statements to handle vamp verdict.


  if (lies && (gb || hs))
    a = true
  else
    a = true
  end

  if (!lies && (!gb || !hs))
    b = true
  else
    b = false
  end

  if (!lies && !gb && !hs)
    c = true
  else
    c = false 
  end

  if name == "Drake Cula" || name == "Tu Fang"
    d = true
  else
    d = false
  end

  #allergy sniffer question loop

  puts "List your allergies one by one. Type 'end' when you're done: "
  allergy = gets.chomp!

  while allergy != "end"
    if allergy == "sunshine"
      c = false
      b = true
        break
    end
      puts "Allergy #{allergy}"
      allergy = gets.chomp
  end

 if d
    puts "Definitely vampire"
  elsif (a || b) && c
     puts "Almost certainly a vampire"
  elsif (b)
     puts "Probably a vampire"
  elsif  a
    puts "Maybe not a vampire"
  else
    puts "Results inconclusive"

  end
end

#loop for multiple surveys
puts "How many people will be taking the survey?"
people = gets.to_i

x = 0
  while x < people
    survey
    x += 1
  end

  #plat twitst line
  puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."