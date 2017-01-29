//Release 0
// create a longest word function
function longestword(words){
	var longestword = ""; //create variable for the longestword

	// write a loop that will go through the words, 
	// if a word is longer than another, it replaces it.
	for (i = 0; i < words.length; i++) {
		if(words[i].length > longestword.length) {
			longestword = words[i];
		}
	}

	console.log("The longest word you gave there was: " + longestword);
}

//Release 1
// create a match key/value function
function matchKV(entry1, entry2){ // both entries will have both a name and age, 
								 // so i should not have to delineate between them.

// make an if else statement, if the name or age matches, then true. else = false.
if (entry1.name == entry2.name || entry1.age == entry2.age) {
	return true;
	}
else {
	return false
	}
}
//Release 2
// Study notes, Math != math, Math.floor returns the largest interger lesser,
// than or equivalent to a number. Which is pretty cool. Math.random will return 
// a random number between 0 and 1, yes karl, precalculus is back.

function RandoS(word_count) {
	var word_storage = [];
	var possible ="qwertyuioplkjhgfdsazxcvbnm"; //cannon fodder for word making

	//loop through word_count, which should be the number of words to be made
	// by selecting random letters for words of random lengths. The charAt() method 
	// returns the character at the specified index in a string.
	for (var i = 0; i < word_count; i++){
		
		var words = ""; // create empty variable to place randomized words into. 
		randomizer = (Math.floor(Math.random()* 10) + 1)
		
		for (var x = 0; x < randomizer; x++) {
			words += possible.charAt(Math.floor(Math.random() * possible.length));
		}
		word_storage.push(words); // rando words going into the array. 
	}
	return word_storage
}

//Make loop for an array to use for longestword method.
for (var i = 0; i < 10; i++){
		var ray = RandoS(2); //repeat twice to help with longest word method
		console.log(ray);
}
console.log(matchKV({name: "paul", age: 24}, {name: "scarlette", age: 24}));
console.log(matchKV({name: "paul", age: 59}, {name: "paul", age: 24}));
console.log(matchKV({name: "paul", age: 59}, {name: "scarlette", age: 24}));
console.log(longestword([ray]));