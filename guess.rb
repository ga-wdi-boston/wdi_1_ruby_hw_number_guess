play_again = true
while play_again
  num_max = 0
  while num_max < 5 || num_max > 1000 # have user select maximum number
    print("Please choose a maximum number between 5 and 1,000: ")
    num_max = gets.chomp.to_i
  end

  number = ((rand() * num_max) + 1).to_i # generate random number
  guesses = (num_max / Math.sqrt(num_max)).to_i # scale guesses according to num_max
  while guesses > 0
    puts("You have #{guesses} guesses remaining")
    print("Guess a random number between 1 and #{num_max}: ")
    guess = gets.chomp.to_i
    if guess > num_max || guess < 1 # ensure proper guess
      puts("Please guess a number within range.")
      next
    elsif guess > number
      puts("Guess lower") if guesses != 3
    elsif guess < number
      puts("Guess higher") if guesses != 3
    else
      puts("You got it!")
      guesses = -1 # end round if user guesses correctly
      next
    end
    guesses -= 1
  end
  puts("Sorry, you're out of guesses.  The answer was #{number}.") if guesses != -1

  valid_response = false # ensure valid response to question
  while !valid_response
    print("Would you like to play again? (y/n): ")
    answer = gets.chomp
    valid_response = true if answer.casecmp("y") == 0 || answer.casecmp("n") == 0
    play_again = false if answer.casecmp("n") == 0 # exit loop if user doesnt want to play again
  end
end
