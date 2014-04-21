puts # Line break

puts ("----- Test your luck with a number guessing game! -----\n").center 80
print "\t\tPlease specify a maximum number to choose from: "
upper_limit = gets.chomp.to_i

puts  # Line break

while upper_limit != Integer && upper_limit <= 10
  print "\t\t\t***Please enter an integer over 10: "
  upper_limit = gets.chomp.to_i
end

puts  # Line break

max_guess = 3
max_guess = 5 if upper_limit.between?(11,50)
max_guess = 10 if upper_limit > 51

# Generate a number between 1 and 10
answer = rand(1..upper_limit)
guess_count = 0


# User is allowed 3 guesses
while guess_count < max_guess

  # Ask the user to provide a number between 1 and 10
  print "Please guess a number between 1 and #{upper_limit}: "
  user_guess = gets.chomp.to_i


  # Evaluate guess
  if user_guess == answer
    puts "Congratulations!  You're a lucky guesser!"
    exit

  elsif user_guess < answer && user_guess >= 1
    puts "You're a bit low, try again!"
    guess_count = guess_count + 1
    puts "Guesses remaining: #{max_guess - guess_count}"
    # Restart game if guesses < 3

  elsif user_guess > answer && user_guess <= upper_limit
    puts "You're a bit over, try again!"
    guess_count = guess_count + 1
    puts "Guesses remaining: #{max_guess - guess_count}"
    # Restart game if guesses < 3

  else
    puts "Please resubmit a number between 1 and #{upper_limit}."
    puts "Guesses remaining: #{max_guess - guess_count}"
  end

end


puts "Sorry, you're out of guesses.  You should have guessed #{answer}."
