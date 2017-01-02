# create the list outside of a method
# create a method to add an item, 
# 		Input(list, item, quantity)     
# 		after testing, remove driver print code. 
# create a method to remove an item  
# 		input(list, item)  
# 		after testing, remove driver print code. 
# create a method to update and item 
# 		input(list, item, quantity) 
#  		after testing, remove driver print code. 
# create a method to print the list.  
# 		input(list)
# 		after testing, remove driver print code. 

grocery_list = Hash.new
puts "Hello! welcome to grocery_list
       ** to add an item **
      *use  additem(grocery_list, item name in quotations, quantity of item)
       "
puts "       ** to remove an item **
*use removeitem(grocery_list, item name in quotations) 
 "
puts "       ** to update an item **
*use updateitem(grocery_list, item name in quotations, quantity) 
  "

puts "       ** to print out your completed list **
*printlist(grocery_list) 
 "


def additem (list, item, quantity)
	list[item] = quantity
	p list
end


def removeitem (list, item)
	list.delete(item)
	p list
end


def updateitem (list, item, quantity)
	list[item] = quantity
	p list
end


def printoutlist (list)
	list.each { |item, quantity| puts "There is  #{quantity} count of #{item}" } 
end
# driver code for testing methods.
# input(grocery_list,"Lemonade",2)
# input(grocery_list,"Tomatoes",3)
# input(grocery_list,"Onions",1)
# input(grocery_list,"Ice Cream",4)

# remove(grocery_list,"Lemonade")

# update(grocery_list,"Ice Cream",1)

# printout(grocery_list)