randnum = 1 + rand(10) # generates a random number 1-10
# intro and rules
puts "Welcome to Guess the Number!"
puts "To play the game, first guess a number between 1 & 10."
puts "You will only have three guesses, but I'll give you two hints."
puts
print "Make your first guess: "
guess1 = gets.chomp #records the first response

while (guess1.to_i < 1 || guess1.to_i > 10)
  puts "Your guess was not within range."
  print "Please guess again"
  guess1 = gets.chomp
end

puts guess1
puts randnum

