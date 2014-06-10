num = rand(11)
num += 1 if num == 0
guess_countr = 0

puts "What number is Ruby thinking of, from 1 to 10?"
guess = gets.chomp

while guess_countr < 2
  if ((guess.to_i < 1) || (guess.to_i >10))
    puts "Please enter a number between 1 and 10."
    guess = gets.chomp
  elsif guess.to_i == num
    print "You're right!\n\n"
    exit
  else
    puts "Nope, you're incorrect!"
      if guess.to_i < num
        puts "Try again. Higher, this time."
      else
        puts "Try again. Lower, this time."
      end
    guess = gets.chomp
    guess_countr += 1
  end
end

if ((guess.to_i < 1) || (guess.to_i >10))
    puts "Please enter a number between 1 and 10."
    guess = gets.chomp
end
if guess.to_i == num
    print "You're right!\n\n"
else
   puts "Sorry, dude. The number was #{num}"
end

