//create a longest word function
function longestword(words){
	var longestword = ""; //create variable for the longestword

	// right a loop that will go through the words, 
	// if a word is longer than another, it replaces it.
	for (i = 0; i < words.length; i++) {
		if(words[i].length > longestword.length) {
			longestword = words[i];
		}
	}

	console.log("The longest word you gave there was" + longestword);
}
//create a match key/value function
function matchKV(entry1, entry2){ //both entries will have both a name and age, 
								 // so i should not have to delieniate between them.

//make an if else statement, if the name or age matches, then true. else = false.
if (entry1.name == entry2.name || entry1.age == entry2.age) {
	console.log("true");
	return true;
	}
else {
	console.log("false");
	return false;
	}
}
