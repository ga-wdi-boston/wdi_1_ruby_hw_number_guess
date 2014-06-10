num_to_guess = rand(1..10)
num_of_guesses = 3


loop do

  begin
    puts "What is the number you'd like to guess? Between 1 and 10 please."
    user_guess = gets.chomp.to_i
    unless user_guess > 0 && user_guess <= 10
      puts "Invalid guess. Please make a guess between 1 and 10."
    end
  end while user_guess < 1 || user_guess > 10


  num_of_guesses -= 1

  if user_guess == num_to_guess
    puts "Great that is right!"
    break
  else

    if num_of_guesses == 0
      puts "Sorry. The number was #{num_to_guess}"
      break
    end

    hi_or_lo = (user_guess > num_to_guess) ? "lower" : "higher"
    puts "Sorry guess " + hi_or_lo + "."

  end
end

