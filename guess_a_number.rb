#prompts user for max guessable number
puts "enter a maximum number to guess up to"
user_max_range = gets.chomp.to_i
correct_num = rand(user_max_range)
puts "I'm thinking of a number between 1 and #{user_max_range}...can you guess it?"

guess = nil
guesses_remaining = 3
while guess != correct_num && guesses_remaining > 0 do
  puts "Enter a guess"
  guess = gets.chomp.to_i
# subtracts a guess after each reasonable guess
  guesses_remaining = guesses_remaining -1
  if guess > user_max_range
# preserves number of remaining guesses for out-of-range guesses
    guesses_remaining = guesses_remaining + 1
    puts "Error! Guess is out of range."
  end
# conditional statement for guessed number
  if guess == correct_num
    puts "Congratualtions! You guessed the number correctly."
  elsif guess < correct_num
    puts "Too low! Guess again."
  elsif guess > correct_num
    puts "Too high! Guess gain."
  else
    puts "Please enter a number."
  end
# reveals correct number
  if guesses_remaining == 0
    puts "The correct number was #{correct_num}"
  end
end
