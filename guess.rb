# method to play a guessing game
def game
  correct = false
  guess_count = 0

  # prompt user for a maximum number in the guessing range and assigns input as Fixnum
  puts "You are about to try to guess a number in a range from 1 up to some number."
  puts "What would you like the maximum number to be?"
  max_num = gets.chomp.to_i

  # create a random number between 1 and max_num
  random = 1 + rand(max_num)

  # determine the allowable guesses
  num_guesses = max_num / 3

  # program runs until user guesses the random number correctly or they reach the allowable guesses
  while !correct && guess_count < num_guesses

    # prompts the user to guess the number and assigns input as a Fixnum
    puts "Guess a number between 1 and #{max_num}. You have #{num_guesses - guess_count} guesses remaining."
    guess = gets.chomp.to_i

    # if number is correct the program let's the user know and reassigns correct to true to end the while loop
    if guess == random
      puts "You're correct!"
      correct = true

    # error message if guess is out of range
    elsif guess < 1 || guess > max_num
      puts "You're guess is out of range. Guess again!"

    # increases the guess count and let's the user know if the answer is higher or lower
    # if they are out of guesses it returns the correct answer
    else
      guess_count += 1
      if guess_count != num_guesses
        if guess < random
          puts "That is incorrect. The number is higher."
        else
          puts "That is incorrect. The number is lower."
        end
      else
        puts "Sorry you are out of guesses. The random number is #{random}."
      end
    end
  end

  # prompt the user to ask if they want to play again
  puts "Would you like to play again? (yes or no)"
  play_again = gets.chomp.downcase

  # starts a new game if yes; else ends program
  game if play_again == "yes"
end

game
