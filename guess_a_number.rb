correct_num = rand(10)
puts "I'm thinking of a number...can you guess it?"
puts "Enter a guess"
guess = gets.chomp.to_i

if guess == correct_num
  puts "Congratualtions! You guessed the number correctly."
elsif guess < correct_num
  puts "Too low! Guess again."
elsif guess > correct_num
  puts "Too high! Guess gain."
else
  puts "Please enter a number."
end
