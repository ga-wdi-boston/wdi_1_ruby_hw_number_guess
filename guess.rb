puts "I'm thinking of a number between one and ten. I'll give you three chances to guess it!"
guess = gets

random_number = Random.rand(1..10)

wrong_answers = 0

until ((wrong_answers == 2) || (guess.to_i == random_number))
  wrong_answers += 1
  puts "Guess again!"
  guess = gets
end


