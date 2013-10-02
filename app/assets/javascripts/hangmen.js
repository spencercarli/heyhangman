function main(word){
  word = word.toLowerCase();
	var guess = readVal();
  alert(checkIfInWord(word, guess));
}

function readVal() {
	var guess = document.getElementById('user-guess').value
	return guess.toLowerCase();
}

function checkIfInWord(word, guess){
	var truth = word.indexOf(guess) != -1;
  return truth;
}