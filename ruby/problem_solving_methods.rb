def fib (int)
	int.times.each_with_object([0,1]) { |num, obj| obj << obj[-2] + obj[-1] }
end

p fib(100)
#bubble sort
#A simple sorting algorithm that repeatedly steps through the list to be sorted,
#compares each pair of adjacent items and swaps them if they are in the wrong order.
#Most of my feelings when researching new concepts are esceitement followed by frustration, I ont ever feel as though my emotions get in te way of me researching something. 
# Make a bubble sorting method, name bubbleSort
	# make a look until true
	# set variable 'i' for interger
	#make 'i' loop sort in an 'if' loop
	#end. 
 def bubbleSort(list)
   sorted = false
   until sorted
     sorted = true
     for i in 0..(list.length - 2)
       if list[i] > list[i + 1]
         sorted = false
         list[i], list[i + 1] = list[i + 1], list[i]
       end
     end
   end
   return list
 end

 p bubbleSort ( [ 3,1,90,32,100,2,20])
