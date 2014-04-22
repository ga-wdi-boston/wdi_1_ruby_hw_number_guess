# Generates the random number and assigns it to variable number
random_number = rand(1..10)

# Used to test code
puts random_number


puts "I am thinking of a number betweewn 1 and 10."
puts "Guess what it is:"

# User provides a guess and the number is assigned the variable guess_number
guess_number = gets.chomp

 #Response to user's first guess
if guess_number.to_i > 10
  puts "ERROR. Try again:"
elsif guess_number.to_i > random_number
  puts "Try again. Think lower this time. Second guess:"
elsif guess_number.to_i < random_number
  puts "Try again. Think higher this time. Second guess:"
else
  puts "Perfect!" + guess_number.to_s + " is correct!"
end

# User provide second guess
guess_number_2 = gets.chomp

# Response to user's second guess
if guess_number_2.to_i > 10
  puts "ERROR. Try again:"
elsif  guess_number_2.to_i > random_number
  puts "You are almost there. Think lower this time. Second guess:"
elsif guess_number_2.to_i < random_number
  puts "You are almost there. Think higher this time. Second guess:"
else
  puts "Perfect!" + guess_number_2.to_s + " is correct!"
end

#User provides third guess
guess_number_3 = gets.chomp

# Repsonse to user's third guess
if guess_number_3.to_i > random_number
  puts "So sorry but the final answer is " + random_number.to_s + " . A for effort."
elsif guess_number_3.to_i < random_number
  puts "So sorry but the final answer is " + random_number.to_s + " . A for effort."
else
  puts "Perfect!" + guess_number_3.to_s + " is correct!"
end
