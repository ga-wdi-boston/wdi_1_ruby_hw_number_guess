# Generates the random number and assigns it to variable number

random_number = rand(1..10)

puts "I am thinking of a number betweewn 1 and 10."
puts "Guess what it is:"

# User provides a guess and the number is assigned the variable guess_number
guess_number = gets.chomp

# Response if user guesses correctly
if guess_number == random_number
  puts "Perfect!" + guess_number.to_s + " is correct!"
elsif guess_number.to_i > random_number
  puts "Try again. Think smaller this time."
else  guess_number.to_i < random_number
  puts "Try again. Think larger this time."
end
