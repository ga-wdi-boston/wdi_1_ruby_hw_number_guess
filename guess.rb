puts "I'm thinking of a number between one and ten. I'll give you three chances to guess it!"
guess = gets

random_number = Random.rand(1..10)

wrong_answers = 0

until random_number == guess.to_i
  puts "That wasn't it, but you'll get it next time. I believe in you."
  puts "You guessed #{guess}, and the correct answer is #{random_number}."

  puts "Guess again!"
  guess = gets

  puts "You guessed #{guess}, and the correct answer is #{random_number}."

  puts "Guess again!"
  guess = gets
end

puts "You guessed correct! The number is indeed #{guess}."





