# random number generator with 1 to 10 range
r = rand(1...11)

# assigns value to number of guesses. Allows us to add, subtract or
# make conditions as the value changes
guesses = 3
# Begins program user interaction with prompt for input
puts "I'm thinking of a number between 1 and 10... You have 3 tries to guess it!"

# assigns user number from input, converts to integer for boolean comparison
user_number = gets.chomp.to_i

# creates condition for proper number range
# if input is out of range, error message puts and no guesses are lost
for user_number in 1..10
  if (user_number > 10 || user_number < 0) then
    puts "Error: Please try again.. Between 1 and 10, silly! You still have #{guesses}!"
    break
  end
  guesses -= 1
end
