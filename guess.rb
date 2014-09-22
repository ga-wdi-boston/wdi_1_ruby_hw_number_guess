target_number = 1 + rand(9)
guesses = 1

def get_input
  puts "Guess a number between 1 and 10."
  guess = gets.chomp.to_i
  while guess < 1 || guess > 10
    puts "That's not in the right range! Try again."
    guess = gets.chomp.to_i
  end
  guess
end

guessed_number = get_input

begin
  if guessed_number < target_number
    puts "The number is higher than that."
    puts "Tries remaining: #{3 - guesses}"
    guessed_number = get_input
  elsif guessed_number > target_number
    puts "The number's lower than that."
    puts "Tries remaining: #{3 - guesses}"
    guessed_number = get_input
  else
    puts "That's the correct number!"
  end
  guesses += 1
  if guesses == 3
    puts "You're out of tries!"
  end
end until guessed_number == target_number || guesses == 3

puts "The number was #{target_number}."
puts "Game's over!"