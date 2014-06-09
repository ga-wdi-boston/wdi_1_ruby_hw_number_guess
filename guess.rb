# establish the target number
max_number = 10
max_guesses = 3

playagain = "Y"

begin
  # reset guess count
  i = 0
  winner = false

  # generate a magic number
  magic_number = rand(max_number)

  puts "Let's play!"
  begin
    # ask for a guess
    puts "Guess a number, any number (between 0 and #{max_number}, that is)"
    guess = gets.chomp.to_i

    if guess == magic_number
      # You're right!
      puts "YOU'RE A WINNER! The number was #{magic_number} Congratulations!"
      i = max_guesses
      winner = true

    # -- out of range options --
    elsif guess > max_number
      puts "That's WAY too high! Guess again."

    elsif guess <= 0
      puts "Don't be so negative! Pick a positive integer."

    # -- within range, just a little off! --
    elsif guess > magic_number
      puts "That's a little too high"
      i += 1

    elsif guess < magic_number
      puts "That's a little too low"
      i += 1
    end
  # stop when the player is out of guesses
  end until i >= max_guesses

  puts "GAME OVER"

  # reveal magic number!
  if !winner
    puts "Sorry! The number was #{magic_number}."
  end

  # Play again?
  puts "Do you want to play again? Type 'Y' for yes! Press any other key to exit."
  playagain = gets.chomp.upcase

end until playagain != "Y"


