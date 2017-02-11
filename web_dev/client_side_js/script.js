console.log("The script is running!");

function addBorder(event) {
	event.target.style.border = "10px dashed green";
}

function addBorder2(event) {
	event.target.style.border = "10px dashed purple";
}

var photo = document.getElementById("orange");
photo.addEventListener("click", addBorder);

var photo = document.getElementById("purple");
photo.addEventListener("click", addBorder);