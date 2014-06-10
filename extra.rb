play = true
while play = true

puts "Pick a maximum number"          # Asks user to pick the maximum number for the game
limit = gets.chomp.to_i               # maximum number
number = rand(1..limit)          # sets the number to be generated randomly between 1 and 10, inclusive
num_guesses = 10               # number of guesses. Set to 2 so once number of guesses reaches 0, program ends.

puts "I am thinking of a number between 1 and #{limit}"
puts "You have #{num_guesses} guesses. Can you guess what it is?"

loop do           # using loop method so program will run over again with each incorrect or invalid guess
  puts "Take a guess! "
  guess = gets.chomp.to_i         # takes input from user and turns it into an integer
  if guess > limit or guess < 0      # if guessed number is not within 1-10, return error message and not consume a guess attempt
    puts "Please pick a number between 1 and 10, inclusive"
  elsif num_guesses == 1 and guess != number        # once number of guesses goes down to 0 and correct number isn't achieved, return number. GAME OVER
    puts "Nope, it was #{number}"
    break
  elsif guess == number                 # if the correct number is guessed, returns congratulatory message and ends game
    puts "You got it!"
    break
  elsif guess > number                             # if guess is too high, returns hint to pick lower
      puts "No, lower"
      num_guesses -= 1
      puts "you have #{num_guesses} guesses left"       # returns number of guesses left after incorrect guess
  elsif guess < number                                # if guess is too low, returns hint to pick higher
      puts "No, higher"
      num_guesses -= 1
      puts "you have #{num_guesses} guesses left"        # returns number of guesses left after incorrect guess
  end
end

"Would you like to play again? (yes/no)"
answer = gets.chomp

if answer == "no"
  play = false
  break
end
 if answer == "yes"
  play = true
  break
end
