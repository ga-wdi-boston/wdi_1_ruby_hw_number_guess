# method that prompts the user to guess the number and returns it as a Fixnum
def guess_prompt
  puts "Guess a number between 1 and 10: "
  guess = gets.chomp.to_i
end

# method that starts the guessing game
def game
  correct = false
  guess_count = 0

  # create a random number between 1 and 10
  random = 1 + rand(10)
  puts random

  # program runs until user guesses the random number correctly
  while !correct && guess_count < 3

    # prompts the user to guess the number and returns it
    guess = guess_prompt

    # if number is correct the program let's the user know and reassigns correct to true to end the while loop
    if guess == random
      puts "You're correct!"
      correct = true

    # allows the user to guess 3 times
    else
      guess_count += 1
    end
  end

  # Shows the correct answer to the user if they did not guess it.
  puts "Sorry you are out of guesses. The random number is #{random}." if !correct
end

game
