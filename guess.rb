puts "I'm thinking of a number between one and ten. I'll give you three chances to guess it!"
guess = gets

random_number = Random.rand(1..10)

wrong_answers = 0

if guess.to_i == random_number
  puts "You guessed correct! The number is indeed #{guess}."
else
  until wrong_answers == 3
    wrong_answers += 1
    case wrong_answers
    when 1
      puts "Incorrect. You have two guesses left."
    when 2
      puts
        "Incorrect. You have one guess left."
    else
      "You are out of guesses."
    end
  end
end
