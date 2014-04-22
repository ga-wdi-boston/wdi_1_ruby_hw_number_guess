answer = 1 + rand(9)
max_attempts = 3
attempts = 1
puts 'Guess a number from 1 to 10: '.chomp
guess = gets.chomp.to_i

while attempts < 3
  if guess != answer
    puts 'Nope, try again: '.chomp
    guess = gets.chomp.to_i
    attempts += 1
  elsif guess == answer
    puts 'Congrats! You win'
    break
  end
end

puts 'You are out of tries! The right number was ' + answer.to_s
