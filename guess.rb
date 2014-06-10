# generate a random number and prompt user to guess it

number = Random.new
num_rand = number.rand(1..10)

puts "Can you guess the random number between 1 and 10?"

guess = gets.chomp.to_i

# tell the user whether the guess was correct or not
guess_count = 0



if guess == num_rand
  puts "WOW! You got it!"
else
  puts "You're wrong! Guess again!"
  guess = gets.chomp.to_i
end
# allow the user to guess again if they guess incorrect
=begin else
# outputs an error and does not use up a guess when an out-of range number is entered
  if guess < 1 || guess > 10
    puts "Your guess is out of range. Please guess again."
    guess = gets.chomp
  else
    while guess_count < 3
    guess_count =+ 1
    puts "Please guess again."
    guess = gets.chomp
    end
=end







# gives a higher or lower hint on a n incorrect guess

# the program ends and reveals the random number after 3 incorrect guesses

