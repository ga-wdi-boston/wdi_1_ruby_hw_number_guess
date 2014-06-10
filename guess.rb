my_number = rand(9) + 1

puts "I'm thinking of a number between 1 and 10. I'll give you 3 chances to guess what it is. What is your first guess?"

guess1 = gets.chomp

if guess1 == my_number
  puts "Genius! You got it!"
end

elsif guess1 > my_number && guess1 < 11
  puts "Try again. That guess was too high."

  guess2 = gets.chomp

  if guess2 > my_number && guess2 < 11
    puts "Try again. That guess was too high."
  elsif guess2 < my_number && guess2 > 0
    puts "Try again. That guess was too low."
  elsif guess2 < 1 || guess2 > 10
    puts "Woah! I asked for a number between 1 and 10. Don't worry, I won't count that guess against you. Guess again."

elsif guess1 < my_number && guess1 > 0
  puts "Try again. That guess was too low."

  guess2 = gets.chomp

  if guess2 > my_number && guess2 < 11
    puts "Try again. That guess was too high."
  elsif guess2 < my_number && guess2 > 0
    puts "Try again. That guess was too low."
  elsif guess2 < 1 || guess2 > 10
    puts "Woah! I asked for a number between 1 and 10. Don't worry, I won't count that guess against you. Guess again."

elsif guess1 < 1 || guess1 > 10
  puts "Woah! I asked for a number between 1 and 10. Don't worry, I won't count that guess against you. Guess again."
end

