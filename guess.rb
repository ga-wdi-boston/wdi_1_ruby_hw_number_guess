num = rand(11)
num += 1 if num == 0
guess_countr = 0

puts "What number is Ruby thinking of, from 1 to 10?"
guess = gets.chomp

while guess_countr < 2
  if guess == num
    puts "You're right!"
  else
    puts "Nope, you're incorrect! Try again."
    guess = gets.chomp
    guess_countr += 1
  end
end

puts "Sorry, dude. The number was #{num}"
