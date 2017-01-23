# Method to create a list
# 
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here] define new method - create list
  # set default quantity- input , a single string, 
  # turn this string into a hash , string.split will turn string into an array
  # iterate through array setting each item as key and value to default of 1
  #hash = Hash[item_array.map] {|x| [x, 1]}
  # hash = Hash[array.collect { |item| [item, 1] } ]
  # set default to 1

  # print hash
  # print the list to the console [can you use one of your other methods here?]
# output: hash { "apples" =>1 , so }
def create_list(string)
	item_array=string.split
	#grocery_list=Hash[item_array.map {|x| [x,1]}]
	hash = {}
	item_array.each do |x|
		

		hash[x]=1
    #p grocery_list
	end
	return hash
end
 
# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: define new method for list
  # hash[item]= quantity
# output: list ( hash)

 def add_item(list,item, quantity=2)
	list[item]= quantity
	list
end 

# Method to remove an item from the list
# input:list, item
# steps:list.delete(item)
# return list
# output:list 
def remove_item(list,item)
	list.delete(item)
	p list
end
#remove_item(grocery_list,"apples")

# Method to update the quantity of an item
#same as add_item

def update_item(list,item, quantity=2)
	list[item]= quantity
	p list
end 
#update_item(grocery_list,"juice", 4)

# Method to print a list and make it look pretty
# input:list
# steps:p list.each do |key,value|
# there is value of key
# output:printed list( explicit return)

def print(list)
	list.each do |key,value|
		puts "There is #{value} count of #{key}"

     end
end 
#print(grocery_list)

# define new method - create_list
#create_list("apples juice oranges")
#grocery_list = create_list("apples juice oranges")
#puts add_item(create_list("apples juice oranges"),"chips", 2)
#p add_item(grocery_list,"chips",2)
#p add_item(grocery_list,"chocolate")
#p grocery_list
=begin 
Create a new list
Add the following items to your list
Lemonade, qty: 2
Tomatoes, qty: 3
Onions, qty: 1
Ice Cream, qty: 4
Remove the Lemonade from your list
Update the Ice Cream quantity to 1
Print out your list (Is this readable and nice looking)?
=end
grocery_list = create_list(" ")
add_item(grocery_list,"lemonade", 2)
add_item(grocery_list,"Tomatoes", 3)
add_item(grocery_list,"Onions", 1)
add_item(grocery_list,"ice_cream", 4)
remove_item(grocery_list, "lemonade")
update_item(grocery_list, "ice_cream", 1)
print(grocery_list)

