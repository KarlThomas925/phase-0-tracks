# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # print what is the name of list, get the user input, and create a hash. 

  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: define method, ask user for the item name as a string, ask user for the quantity as integer, 
# => and put those into a hash. 
# output:return the hash.

# Method to remove an item from the list
# input: list item name
# steps: ask the user what they would like to remove, check to see if the key=>value pair exists,
#return error message if it does not. 
# output: item list hash

# Method to update the quantity of an item
# input: list, item name,  and optional quantity
# steps:  ask user what items quantitiy they would like to change, check to see if that item is in existance,
# access that items quantity value in order to change it
# output: item list hash

# Method to print a list and make it look pretty
# input:
# steps:
# output:

def create_list
 list = Array.new
end

def add_item (list)
	puts "Please name your item, and its quantity"
	item = gets.chomp.split(' ')
	items = {item[0].to_sym => item[1].to_i}
	list.push(items)
	return list
end

def remove_item (list)
	puts "what item would you like to remove"
	item = gets.chomp.to_sym
	list.delete(item)
	return list
end

def update_item (list)
	puts "which items quantity would you like to change?"
	item = gets.chomp.to_sym
	puts "what would you like to change the quantity to?"
	quantity = gets.chomp.to_i
	list[item] = quantity 
	return list
end
