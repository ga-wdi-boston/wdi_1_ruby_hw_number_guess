## This Program will generate a random number and prompt the user to guess the number.
puts
puts "Welcome to Guess the Number Game!"

# Prompts for random number's maximum.
print "Enter a maximum number you want to guess: "
max_number = gets.chomp.to_i
# Generates random number
random_num = Random.rand(1...max_number)
# Computes number of guess
max_guess = (max_number*0.3).ceil

# This method prompts user to enter a number.
def input_number(max_number)
  print "Guess a number between 1-#{max_number}: "
  @guess_num = gets.chomp.to_i
end

# This method prompts user to enter a number between 1-max_number until they have a right number.
def check_number(max_number)
  while @guess_num > max_number || @guess_num == 0
    input_number
  end
end

# Evaluate the guess and prompt the user if their guess is higher or lower than the actual number.
i = 0
g = max_guess
while i < max_guess
  puts "You have #{g} guess(es)."
  input_number(max_number)
  check_number(max_number)
  if random_num == @guess_num
    puts "Congratulation! You guessed the right number!"
    exit
  elsif random_num < @guess_num
    puts "The number is lower than your guess"
    puts
  elsif random_num > @guess_num
    puts "The number is higher than your guess"
    puts
  end
  i += 1
  g -= 1
end

puts "The number was #{random_num}"
puts
