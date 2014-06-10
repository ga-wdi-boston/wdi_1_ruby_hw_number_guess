#This program creates a random number and gives the user three chances to guess it.

num_to_guess = rand(1..10)
num_of_guesses = 3

#makes an infinite loop which will break when the user either wins or loses.
loop do

  #Keeps asking the user for a new guess while s/he puts in invalid ones.
  begin
    puts "What is the number you'd like to guess? Between 1 and 10 please."
    user_guess = gets.chomp.to_i
    puts

    unless user_guess > 0 && user_guess <= 10
      puts "Invalid guess. Please make a guess between 1 and 10."
    end

  end while user_guess < 1 || user_guess > 10

  #Now that we have a valid guess we can decrement the number of guesses left.
  num_of_guesses -= 1

  if user_guess == num_to_guess
    puts "Great that is right!"
    break

#user has guessed incorrectly
  else
    if num_of_guesses == 0
      puts "Sorry. The number was #{num_to_guess}"
      break
    end

    #the string hi_or_lo is set to its proper value
    hi_or_lo = (user_guess > num_to_guess) ? "lower" : "higher"
    puts "Sorry guess " + hi_or_lo + "."
  end
end

