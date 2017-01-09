// call a longest word function
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
