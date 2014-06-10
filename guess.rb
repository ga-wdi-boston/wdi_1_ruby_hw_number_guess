## This Program will generate a random number and prompt the user to guess the number.

# Generates random number
random_num = Random.rand(1...10)

# This method prompts user to enter a number.
def input_number
  print "Guess a number between 1-10: "
  @guess_num = gets.chomp.to_i
end

# This method prompts user to enter a number between 1-10 until they have a right number.
def check_number
  while @guess_num > 10
    input_number
  end
end

# Evaluate the guess and prompt the user if their guess is higher or lower than the actual number.
i = 0
while i < 3
  input_number
  check_number
  if random_num == @guess_num
    puts "Congratulation! You guessed the right number!"
    exit
  end
  if random_num < @guess_num
    puts "The numer is lower than your guess"
  elsif random_num > @guess_num
    puts "The number is higher than your guess"
  end
  i += 1
end

puts "The number was #{random_num}"
