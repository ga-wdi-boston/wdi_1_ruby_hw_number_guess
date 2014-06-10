puts(rand(11))

puts "Hello. I am a random number generator and I would like you to guess my
next number. Please enter a number:"
user_number = gets.chomp

if user_number != rand(11)
    puts "I'm sorry, that is incorrect. Please guess again:"
    user_number = gets.chomp
end

puts "You are CORRECT! Thank you for playing!"
