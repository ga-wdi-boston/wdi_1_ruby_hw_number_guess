# program asks user to specify a maximum number
puts "Specify a maxium number:"
max_number = gets.chomp.to_i

# program generates a random number.
random_number = rand(max_number -1) + 1
# there are three guess trials set at the start of the program.
trials_left = 3

#program prompts user to guess it
puts "I'm thinking of a number between 1 and #{max_number}..."
puts "Guess what it is:"
guess = gets.chomp.to_i
#program subtracts one trial so two trials are now left.
trials_left = 2

# while trials are >= 1, the guesses are allowed
while trials_left >= 1

# if user guesses correctly, program ends with a congratulatory message.
# if user guesess incorrectly, program tells if number is higher or lower than their guess.
# collects a new guess from user each time. 1 trial is subtracted after each guess.
  if guess == random_number
    puts "YES! You got it right!"
    break
  elsif guess > random_number
    puts "Wrong. You have #{trials_left} trials left. Guess lower:"
    guess = gets.chomp.to_i
    trials_left -= 1
  elsif guess < random_number
    puts "Wrong. You have #{trials_left} trials left. Guess higher:"
    guess = gets.chomp.to_i
    trials_left -= 1
  end

end


# if run out of guesses, program exposes what the actual number was.
if trials_left < 1
  puts "Sorry, we're out of turns. The number was #{random_number}."
end












