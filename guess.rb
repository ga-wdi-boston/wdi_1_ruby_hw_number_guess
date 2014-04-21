

random_number = rand(1..10)

puts "Please guess a random number between 1 and 10."
puts "You will have 3 chances."
print "> "


guess = gets.chomp.to_i
puts "Random number is #{random_number}"
guesses = 1

while guess != random_number and guesses < 3
  guesses += 1
  puts "Guess again."
  print ">"
  guess = gets.chomp.to_i
end

if guess == random_number
  puts "You are correct!"
else
  puts "Doh! Better luck next time."
  puts "Correct number was #{random_number}."
end


