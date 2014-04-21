

random_number = rand(1..10)

print "Please guess a random number between 1 and 10: "

guess = gets.chomp.to_i
puts "Random number is #{random_number}"

if guess == random_number
  puts "You are correct!"
else
  puts "Doh! Better luck next time."
end

