num_to_guess = rand(1..10)
num_of_guesses = 3


loop do
  num_of_guesses -= 1

  puts "What is the number you'd like to guess?"
  user_guess = gets.chomp.to_i

  if user_guess == num_to_guess
    puts "Great that is right!"
    break
  else

    if num_of_guesses == 0
      puts "The number was #{num_to_guess}"
      break
    end

    hi_or_lo = (user_guess > num_to_guess) ? "lower" : "higher"
    puts "Sorry guess " + hi_or_lo + "."

  end
end

