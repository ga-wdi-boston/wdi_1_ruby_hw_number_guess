magic_number = rand(1..11)

puts "I'm thinking of a number, 1-10. I'll give you three tries to guess!"

tries = 0

while tries != 3
  puts "What do you guess?"
  guess = gets.chomp.to_i
  if guess ==  magic_number
    puts "How did you know?!"
    break
  elsif guess > 10 or guess < 0
    puts "That number is out of game range. Please pick another."
  elsif guess < magic_number
    tries += 1
    puts "Try higher."
  elsif guess > magic_number
    tries +=1
    puts "Try lower."
  end
end


if tries == 3
  puts "Sorry, you lost this round. The correct answer is:"
  puts magic_number
end





