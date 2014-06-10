my_number = rand(9) + 1

puts "I'm thinking of a number between 1 and 10. I'll give you 3 chances to guess what it is. What is your first guess?"
guess1 = gets.chomp

if guess1 == my_number
  puts "You got it!"
elsif guess1 > my_number
  puts "Try again. That guess was too high."
elsif guess1 < my_number
  puts "Try again. That guess was too low."
elsif guess1 < 1 || guess1 > 10
  puts "Woah! I asked for a number between 1 and 10. Don't worry, I won't count that guess against you. Guess again."
end

