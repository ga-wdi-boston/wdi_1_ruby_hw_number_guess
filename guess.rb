my_number = rand(9) + 1

puts "I'm thinking of a number. What do you think it is?"
guess1 = gets.chomp

if guess1 == my_number
  puts "You got it!"
elsif guess1 > my_number
  puts "Try again. That guess was too high."
else guess1 < my_number
  puts "Try again. That guess was too low."
end

