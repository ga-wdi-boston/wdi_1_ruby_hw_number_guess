puts "I'm thinking of a number between one and ten. I'll give you three chances to guess it!"
guess = gets

random_number = Random.rand(1..10)

if random_number == guess.to_i
  puts "You guessed correct! The number is indeed #{guess}."
else
  puts "That wasn't it, but you'll get it next time. I believe in you."
end

puts "You guessed #{guess}, and the correct answer is #{random_number}."





