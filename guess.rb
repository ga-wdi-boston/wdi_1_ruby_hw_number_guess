# establish the target number
max_number = 10
max_guesses = 3

playagain = "Y"

begin

  i = 0
  winner = false
  magic_number = rand(max_number)

  begin
    # ask for a guess
    puts "Guess a number, any number"
    guess = gets.chomp.to_i

    if guess == magic_number
      puts "YOU'RE A WINNER! The number was #{magic_number} Congratulations!"
      i = max_guesses
      winner = true

    elsif guess > max_number
      puts "That's WAY too high! Guess again."

    elsif guess <= 0
      puts "Don't be so negative! Pick a positive integer."

    elsif guess > magic_number
      puts "That's a little too high"
      i += 1

    elsif guess < magic_number
      puts "That's a little too low"
      i += 1
    end

  end until i >= max_guesses

  if !winner
    puts "Sorry! The number was #{magic_number}."
  end

  puts "Do you want to play again? Type 'Y' for yes! Press any other key to exit."
  playagain = gets.chomp.upcase

end until playagain != "Y"


