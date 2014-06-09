random = rand(10)

# prompts the user to guess the number
def guess_prompt
  puts "Guess a number between 1 and 10: "
  guess = gets.chomp.to_i
end

# let the user know if the guess was correct
def game
  correct = false

  # create a random number between 1 and 10
  random = 1 + rand(10)
  puts random

  # runs until user guesses correctly
  while !correct

    # prompts the user to guess the number and returns it
    guess = guess_prompt
    if guess == random
      puts "You're correct!"
      correct = true
    end
  end
end

game
