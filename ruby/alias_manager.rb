#The first time i did this it was entirely too complicated. 
#this time it will all be one big loop, pressing enter (having an empty input) will break the loop
  #First ask for input. continue to ask untill input is empty, break loop and printing the list of alias names
  #for edge cases, each one will be taken care of on it's own. 
  #looping thru each letter will be done with .char
  #map results to a new array
  # .join the new array char together. 

loop_break = false
names = []
spy_names = []

until loop_break

  puts "Please give us your name, so we can give you an alias. (press ENTER to exit)"
  input = gets.chomp

  if input.empty?
    loop_break = true
  else
    names << input
    def Alias(name)
      #pick it up, flip it, reverse it.
      name = name.downcase #downcase is to prevent any issues with other methods
      name = name.split(' ').reverse
      name = name.join(' ')
      name = name.split('')

      #special arrays for special cases. 
      vowels = ["a", "e", "i", "o", "u"]
      edgecases = ["z", "d", "h", "n", "t"]
      edgesolution = ["b", "f", "j", "p", "v"]

      #the meat of the method, 
      #mixing up and mapping the mixed up name to the results variable
      results = name.map do |char|
        if vowels.include?(char)
          vowels.rotate(1)[vowels.index(char)]
        elsif edgecases.include?(char)
          edgesolution[edgecases.index(char)]
        elsif char == " "
          char == " "
        else
          char.next
        end
      end
      results = results.join
      results.split.map(&:capitalize).join(' ')
    end
    puts "Your Super secret, totally untrackable spy name is #{Alias(input)}"
    spy_names << Alias(name)
  end
  names = names.map!{|x| x.to_sym}

  names_HASH = names.zip(spy_names).to_h
end

names_HASH.each do |input,results|
  puts"#{input} is also known as #{results}

