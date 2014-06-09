# method that starts the guessing game
def game
  correct = false
  guess_count = 0

  # create a random number between 1 and 10
  random = 1 + rand(10)

  # program runs until user guesses the random number correctly or three incorrect guesses
  while !correct && guess_count < 3

    # prompts the user to guess the number and assigns input as a Fixnum
    puts "Guess a number between 1 and 10: "
    guess = gets.chomp.to_i

    # if number is correct the program let's the user know and reassigns correct to true to end the while loop
    if guess == random
      puts "You're correct!"
      correct = true

    # error message if guess is out of range
    elsif guess < 1 || guess > 10
      puts "You're guess is out of range. Guess again!"

    # increases the guess count and let's the user know if the answer is higher or lower
    else
      guess_count += 1
      if guess < random
        puts "Higher!"
      else
        puts "Lower!"
      end

    end
  end

  # Shows the correct answer to the user if they did not guess it.
  puts "Sorry you are out of guesses. The random number is #{random}." if !correct

  # prompt the user to ask if they want to play again
  puts "Would you like to play again? (yes or no)"
  play_again = gets.chomp.downcase

  # starts a new game if yes; else ends program
  game if play_again == "yes"
end

game
