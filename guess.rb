# generate a random number and prompt user to guess it

number = Random.new
num_rand = number.rand(1..10)

puts "Can you guess the random number between 1 and 10?"
guess = gets.chomp.to_i
guess_count = 0

while guess != num_rand && guess_count < 4
  if guess < 1 || guess > 10
    puts "ERROR- Your number is out of range. Guess again."
    guess = gets.chomp.to_i
  else
    guess_count =+ 1
    if guess < num_rand
      puts "You're wrong! The number is higher. Guess again!"
      guess = gets.chomp.to_i
    else guess > num_rand
      puts "You're wrong! The number is lower. Guess again!"
      guess = gets.chomp.to_i
    end

  end
end

if guess_count > 3
  puts "You guessed 3 times. The number is #{num_rand}."
end

if guess == num_rand
  puts "WOW! You guessed correct!"
end











