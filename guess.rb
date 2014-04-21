# Generate a number between 1 and 10
answer = rand(1..10)

# Ask the user to provide a number between 1 and 10
print "Please guess a number between 1 and 10: "
user_guess = gets.chomp.to_i

# User is allowed 3 guesses


# Evaluate guess
  if user_guess == answer
    puts "Congratulations!  You're a lucky guesser!"

  elsif user_guess < answer
    puts "You're a bit low, try again!"
    # restart game if guesses < 3
    # exit if guesses = 3

  elsif user_guess > answer
    puts "You're a big over, try again!"
    # restart game if guesses < 3
    # exit if guesses = 3

  else
    puts "Please resubmit a number between 1 and 10."
  end



"Sorry, you're out of guesses.  You should have guessed.." #number
