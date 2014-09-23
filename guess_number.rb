#random number guessing game

puts "I'm thinking of a number between 1 and 10,
try and guess what it is"

attempts = 1
number = rand(1..10)
guess = gets.to_i
until attempts > 3 do
  if guess > 10
     puts "Error: remember I'm thinking of a number 1 - 10"
     attempts -= 1  #deduct one try for error
  elsif guess < 1
     puts "Error: remember I'm thinking of a number 1 - 10"
     attempts -= 1 #deduct one try for error
  elsif guess == number
    puts "You Got It!"
      break
  elsif guess < number
   puts "Too small, try again"
  elsif guess > number
    puts "Too big, try again"
  end
  guess = gets.to_i
  attempts += 1
  end

puts "I was thinking of #{number}" #string interpolate correct answer


