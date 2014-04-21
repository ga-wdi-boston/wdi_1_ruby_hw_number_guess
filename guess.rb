the_number = rand(10)+1
guessed = false
guesses_remaining = 3

puts the_number

puts "Welcome to Guess That Number!!"
puts "You will be given three tries to guess a random number between 1 and 10"
puts "Good luck!"

while !guessed && guesses_remaining > 0
  print "You have #{guesses_remaining}! Please enter your guess: "
  current_guess = gets
  if current_guess == the_number
    guesses_remaining -= 1
    puts "CONGRATS! You have guesses the number!"
    puts "The number was #{the_number}!"
    puts "It took you " + (3 - guesses_remaining).to_s + " to guess it!"
    guessed = true
  else
    guesses_remaining -= 1
    puts "Sorry! That is not the number. :("
  end
end





