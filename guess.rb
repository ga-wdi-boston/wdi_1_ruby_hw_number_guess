answer = 1 + rand(9)
attempts = 1
puts 'Guess a number from 1 to 10: '.chomp
guess = gets.chomp.to_i

while attempts <= 3
  if guess < 1 || guess > 10
    puts 'That\'s out of range!'
    puts 'Guess a number from 1 to 10: '.chomp
    guess = gets.chomp.to_i
  elsif guess > answer
    puts 'Nope, try a smaller number: '.chomp
    guess = gets.chomp.to_i
    attempts += 1
  elsif guess < answer
    puts 'Nope, try a greater number: '.chomp
    guess = gets.chomp.to_i
    attempts += 1
  elsif guess == answer
    puts 'Congrats! You win'
    break
  end
  if attempts > 3
    puts 'You are out of tries! The right number was ' + answer.to_s + '.'
  end
end
