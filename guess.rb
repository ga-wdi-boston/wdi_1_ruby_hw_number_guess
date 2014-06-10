def play_game
  puts 'This is a number guessing game. How high might the number get?'
  upper_bound = gets.chomp.to_i
  while upper_bound < 1 || upper_bound > 60
    puts "Let's make this easy. Pick a number between 1 and 60"
    upper_bound = gets.chomp.to_i
  end

  # Initialize variables
  random_number = rand(1..upper_bound)
  success = false
  msg = "Okay. Guess a number between 1 and #{upper_bound}:"

  # Loop three times
  counter = [(upper_bound / 3).to_i, 2].max
  while counter > 0
    # Output message prompt
    puts msg
    guess = gets.chomp.to_i

    # Evaluate user input
    begin
      if guess < 1 || guess > upper_bound
        # Raise exception for out of range condition
        raise 'Invalid argument exception'
      elsif guess != random_number
        param1 = (guess < random_number) ? 'higher' : 'lower'
        param2 = (counter - 1 > 1) ? 'tries' : 'try'
        msg = "Sorry but the number is #{param1} than that. You have #{counter - 1} #{param2} left. Guess again:"
      else
        msg = 'Congratulations! You guessed right!'
        success = true
        break
      end

      # Decrement the counter
      counter -= 1
    rescue
      # Report the range error but do not decrement the counter
      msg = "Oops, your guess must be a number between 1 and #{upper_bound}. Try again:"
    end
  end

  # Test if the use failed the loop
  if !success
    msg = "Sorry, but the real number was #{random_number}."
  end

  # Outout the result messge
  puts msg
end

# Run the game
prompt = 'Do you want to play a game? Y/N:'
puts prompt
while gets.chomp.match /[yY]+/
  play_game
  puts 'Wanna play again? Y/N:'
end
puts "That's okay."
