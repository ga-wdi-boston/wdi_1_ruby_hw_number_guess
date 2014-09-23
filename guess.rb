target_number = 1 + rand(9)
guesses = 0

def get_input(guesses)
  puts "Guess a number between 1 and 10."
  puts "Tries remaining: #{3 - guesses}"
  guess = gets.chomp.to_i
  while guess < 1 || guess > 10
    puts "That's not in the right range! Try again."
    guess = gets.chomp.to_i
  end
  guess
end

while true do
  guessed_number = get_input(guesses)
  guesses += 1
  if guessed_number < target_number
    puts "The number is higher than that."
  elsif guessed_number > target_number
    puts "The number's lower than that."
  elsif guessed_number == target_number
    puts "That's the correct number!"
    break
  end
  if guesses == 3
    puts "You're out of tries!"
    break
  end
end

puts "The number was #{target_number}."
puts "Game's over!"