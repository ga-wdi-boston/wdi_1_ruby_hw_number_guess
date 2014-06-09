# establish the target number
max_number = 10
magic_number = rand(max_number)
max_guesses = 3

# ask for a number
puts "Guess a number, any number"
guess = gets.chomp.to_i

i = 0

begin
  puts "Guess a number, any number"
  guess = gets.chomp.to_i

  if guess == magic_number
    puts "YOU'RE A WINNER!"
    i = max_guesses

  elsif guess > magic_number
    puts "That's a little too high"
    i += 1

  elsif guess < magic_number
    puts "That's a little too low"
    i += 1
  end
end until i >= max_guesses

