number = ((rand() * 10) + 1).to_i # generate random number
guesses = 1
while guesses <= 3 # have user make 3 guesses
  print("Guess a random number between 1 and 10: ")
  guess = gets.chomp.to_i
  if guess > 10 || guess < 1 # ensure proper guess
    puts("Please guess a number within range.")
    next
  elsif guess > number
    puts("Guess lower") if guesses != 3
  elsif guess < number
    puts("Guess higher") if guesses != 3
  else
    puts("You got it!")
    exit # end program if user guesses correctly
  end
  guesses += 1
end
puts("Sorry, you're out of guesses.  The answer was #{number}.")
