# generate a random number and prompt user to guess it

number = Random.new

num_rand = number.rand(1..10)

puts "Can you guess the random number between 1 and 10?"

# tell the user whether the guess was correct or not

# allow the user to guess again if they guess incorrect

# outputs an error and does not use up a guess when an out-of range number is entered

# gives a higher or lower hint on a n incorrect guess

# the program ends and reveals the random number after 3 incorrect guesses

