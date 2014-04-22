
random_number = rand(1..10)

puts "Please guess a random number between 1 and 10."
puts "You will have 3 chances."

guesses = 1

print "> "

guess = gets.chomp.to_i


def valid?(guess)
  if guess > 10 || guess < 1
    false
  else
    true
  end
end

def hint(guess, random_number)
  if guess < random_number
    puts "Try going a bit higher"
  elsif guess > random_number
    puts "Try going a bit lower"
  end
end

while guess != random_number and guesses < 3
  valid = valid?(guess)
  if valid == true
    guesses += 1
    hint(guess, random_number)
    puts "Guess again."
    print "> "
    guess = gets.chomp.to_i

  else
    puts "Oops. The number has to be between 1 and 10. We won't count that."
    puts "Guess again."
    print "> "
    guess = gets.chomp.to_i
  end
end

if guess == random_number
  puts "You are correct! Good job."
else
  puts "Better luck next time!"
  puts "Correct number was #{random_number}."
end




