number = rand(1..10)
num_guesses = 2

puts "I am thinking of a number between 1 and 10"
puts "Can you guess what it is?"

loop do
  puts "Take a guess! "
  guess = gets.chomp.to_i
  if num_guesses == 0 and guess != number
    puts "Nope, it was #{number}"
    break
  elsif guess == number
    puts "You got it!"
    break
  elsif guess > number
      puts "No, lower"
      num_guesses -= 1
  elsif guess < number
      puts "No, higher"
      num_guesses -= 1
  end
end
