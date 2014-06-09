# establish the target number
maximum = 10
magic_number = rand(maximum)

# ask for a number
puts "Guess a number, any number"
guess = gets.chomp.to_i

i = 0
if guess == magic_number
  puts "YOU'RE A WINNER!"
  i = 3
elsif guess > magic_number
  puts "That's a little too high"
  i += 1
elsif guess < magic_number
  puts "That's a little too low"
  i += 1
end
