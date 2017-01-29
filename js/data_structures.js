var colors = ["blue", "REALLY BLUE","woah like that's blue", "teal"];

var names = ["Ed","pot-OOOOOOOO", "c-bizkit", "dE"];

colors.push("purple, i guess");

names.push("horse");

var megazord = {name: "Karl", color: "WOAH MAN LIKE THATS BLUE"};
//Why megazord? because i'm tired and we're combining things

for (x = 0; x < colors.length; x++)
{
	megazord.name = names[x];
	megazord.color = colors[x];

	console.log(megazord);
}

function Cars(make,model,color,speed) {

	this.make = make;
	this.model = model;
	this.color = color;
	this.speed = speed;
	this.engine = function(){console.log("RIMBLERAMBLE"}

	console.log("Unveiling our new car:", this);
}

var heyacar = new Cars("Volkswagon", "van", "red", 90);

var anothercar = new Cars("Jeep", "Wrangler", "yellow", 120);

anothercar.engine();



