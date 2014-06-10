random_number = Random.rand(1..10)

puts "I'm thinking of a number between one and ten. I'll give you three chances to guess it!"
guess = gets.to_i

wrong_answers = 0

if (1..10).include?(guess)
  until ((wrong_answers == 2) || (guess == random_number))
    wrong_answers += 1
    case
    when guess < random_number
      puts "Guess again! Hint: go higher."
    when guess > random_number
      puts "Guess again! Hint: go lower."
    end
    guess = gets.to_i
  end
else
   puts "Error! Your guess in not in the specified range."
   puts "Guess again!"
   guess = gets.to_i
end
if guess != random_number
  puts "You are out of guesses! The correct answer is #{random_number}"
else
  puts "You've guessed correctly!"
end



