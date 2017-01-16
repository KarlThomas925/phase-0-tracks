# Create hash representative of skateboard types
# fill it with the types, and brands of those types, and things about those brands. 
# fill those things with things inside of those things, appropriately.
# print navigation examples

Skateboard_types = { 
	Skate: {
		Pizza: {
			Size: [7, 9],
			Cutaway: 'no',
			Board_only?: 'no'
		},
		Girl: {
			Size: [7, 10],
			Cutaway: 'yes',
			Board_only?: 'yes'
		}
	},
	Cruisers: {
		Arbor: {
			Size: [37, 44],
			Cutaway: 'no',
			Board_only?: 'no'
		},
		Earthwing: {Size: [33, 38],
			Cutaway: 'yes',
			Board_only?: 'no'
		}
	}



}

puts Skateboard_types[:Skate][:Cutaway]
puts Skateboard_types[:Cruisers][:Arbor][:Size][0]

p desk