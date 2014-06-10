num_max = 0
while num_max < 5 || num_max > 1000 # have user select maximum number
  print("Please choose a maximum number between 5 and 1,000: ")
  num_max = gets.chomp.to_i
end

number = ((rand() * num_max) + 1).to_i # generate random number
guesses = (num_max / Math.sqrt(num_max)).to_i # scale guesses according to num_max
while guesses > 0
  print("Guess a random number between 1 and #{num_max}: ")
  guess = gets.chomp.to_i
  if guess > num_max || guess < 1 # ensure proper guess
    puts("Please guess a number within range.")
    next
  elsif guess > number
    puts("Guess lower") if guesses != 3
  elsif guess < number
    puts("Guess higher") if guesses != 3
  else
    puts("You got it!")
    exit # end program if user guesses correctly
  end
  guesses -= 1
  puts("You have #{guesses} guesses remaining")
end
puts("Sorry, you're out of guesses.  The answer was #{number}.")
