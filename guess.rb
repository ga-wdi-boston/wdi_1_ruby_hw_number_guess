
guessed = false
current_guess = 0

puts "Welcome to Guess That Number!!"
puts "You will be given a certain number of tries to guess a random number."
puts "Good luck!"

print "Please enter a maximum number to guess up to: "

maximum_number = gets.to_i
guesses_remaining = (maximum_number * 0.3).to_i
max_guesses = guesses_remaining
the_number = rand(maximum_number)+1

puts "Based on the maximum number of #{maximum_number} you will have #{guesses_remaining} tries to guess the number."


while !guessed && guesses_remaining > 0
  print "You have #{guesses_remaining} guesses remaining! Please enter your guess: "
  current_guess = gets.to_i
  while current_guess > (maximum_number + 1) || current_guess < 1
    puts "You have entered an invalid number."
    print "Please enter a number 1-" + maximum_number.to_s + ": "
    current_guess = gets.to_i
  end

  if current_guess == the_number
    guesses_remaining -= 1
    puts "CONGRATS! You have guesses the number!"
    puts "The number was #{the_number}!"
    puts "It took you " + (max_guesses - guesses_remaining).to_s + " tries to guess it!"
    guessed = true
  else
    guesses_remaining -= 1
    puts "Sorry! That is not the number."
    if the_number < current_guess
      puts "The number is lower than " + current_guess.to_s
    else
      puts "The number is higher than " + current_guess.to_s
    end
    current_guess = 0
  end
end

if !guessed
  puts "I'm sorry, the number was #{the_number}!"
  puts "Better luck next time!"
end






