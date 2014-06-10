# random number generator with 1 to 10 range
r = rand(1...11)

# Begins program user interaction with prompt for input
puts "I'm thinking of a number between 1 and 10... You have 3 tries to guess it!"

# assigns user number from input, converts to integer for boolean comparison
user_number = gets.chomp.to_i

# assigns value to number of guesses. Allows us to add, subtract or
# make conditions as the value changes
guesses = 3

# runs as long as user has guesses left
# first conditional checks first for valid number
while guesses > 1
  if (user_number == r)
    puts "Congratulations, You guessed correctly!"
    break
  elsif (user_number > 10 || user_number < 0)
    puts "Error: Please try again.. Between 1 and 10, silly! You still have #{guesses}!"
  else
    guesses -= 1
    if (user_number > r)
      puts "Incorrect, try again. (Guess lower!) #{guesses} left."
    else (user_number < r)
      puts "Incorrect, try again. (Guess higher!) #{guesses} left."
    end
  end
  user_number = gets.chomp.to_i
end


# Add segment to run only if (user_number != r) at guesses = 0
if guesses == 1 && (user_number != r)
  puts "Good try, but you're out of guesses, the number I was thinking of is #{r}!"
end
