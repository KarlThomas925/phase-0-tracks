//split string, turn into an array
//reverse the array, like you do. 
//un-split the array back into a string
//return the result. 

function reverses_word(s) {
	var splitS = s.split("");

	var reverseS = splitS.reverse();

	var joinS = reverseS.join("");

	return joinS;
}

// DRIVER CODE

console.log (reverses_word("Karl"));
