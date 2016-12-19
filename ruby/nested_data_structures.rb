# Create desk hash, 
# fill it with things on/in/apart of a desk
# fill those things with things inside of those things, appropriately.
# print navigation examples

desk = {
	"printer" => [
		'ink',
		'paper',
		'scanner',
		'printer head',
		],

	"speakers" => [
		'magnets',
		'terminals',
		'voicecoil',
		'knobs',
		'plastic body',
		'speaker cones',
		],

	"drawers" => [
		'Assignments',
		'excess wires',
		'playing cards',
		'alcohol',
		],
	"computer" =>[
		'cpu',
		'gpu',
	 	'SSD',
	 	'Hard drive',
	 ]
}

p desk['speakers']
p desk['computer'][2]
p desk['drawers'].push('headphones')


p desk