correct_num = rand(10)
puts "I'm thinking of a number between 1 and 10...can you guess it?"

guess = nil
guesses_remaining = 3
while guess != correct_num && guesses_remaining > 0 do
  puts "Enter a guess"
  guess = gets.chomp.to_i
  guesses_remaining = guesses_remaining -1
  if guess > 10
    guesses_remaining = guesses_remaining + 1
    puts "Error! Guess is out of range."
  end

  if guess == correct_num
    puts "Congratualtions! You guessed the number correctly."
  elsif guess < correct_num
    puts "Too low! Guess again."
  elsif guess > correct_num
    puts "Too high! Guess gain."
  else
    puts "Please enter a number."
  end

  if guesses_remaining == 0
    puts "The correct number was #{correct_num}"
  end
end
