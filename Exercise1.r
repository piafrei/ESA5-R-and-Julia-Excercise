checkGuess <- function (guess, randomNumber){
	print(guess)
	print(randomNumber)
	if(identical(guess,randomNumber)) {
 	 	print("Glückwunsch, du hast richtig geraten!")
	} else {
  		print(paste0("Hmm.. Das wohl nichts! Richtig wäre:", randomNumber))
	} 
}

print("Herzlich willkommen! Lass und gegeneinander antreten")
print("Ich überlege mir nun eine zufällige Zahl und du muss diese erraten...")
randomNumber <- sample(1:100,1)
print("Your turn: ...")
guess <- readline(prompt="Welche Zahl denkst du habe ich ausgewählt?")
guess <- as.integer(guess)
checkGuess(guess, randomNumber)


