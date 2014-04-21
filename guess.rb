# Generates the random number and assigns it to variable number

random_number = rand(1..10)

puts "I am thinking of a number betweewn 1 and 10."
puts "Guess what it is:"

# User provides a guess and the number is assigned the variable guess_number
guess_number = gets.chomp
puts guess_number

# Response if user guesses correctly
if guess_number == random_number
  puts "Perfect!" + guess_number.to_s + " is correct!"
else
  puts "Try again: "
end
