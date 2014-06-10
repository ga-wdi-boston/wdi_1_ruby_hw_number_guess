# For homework 1

guess_num = Random.new.rand(0..10).to_i

print "Dear User: Please guess our random integer! ... "
guess = gets.chomp

if guess_num == guess.to_i
  puts "Good guess!"
else
  puts "Guess again maybe"
end

puts guess_num
