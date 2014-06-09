number = rand(1..10)
num_guesses = 3

puts "I am thinking of a number between 1 and 10"
puts "Can you guess what it is?"

loop do
  puts "Take a guess! "
  guess = gets.chomp.to_i
  if guess == number
    puts "YOU GUESSED IT!"
    break
  elsif guess > number
      puts "No, lower"
      num_guesses -= 1
  elsif guess < number
      puts "No, higher"
      num_guesses -= 1
  else
    if
      num_guesses = 0
      break
    end
  end
end
