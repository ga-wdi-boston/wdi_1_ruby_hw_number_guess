number = rand(10) + 1
# puts number uncomment this line to troubleshoot

i = 0
while i < 3
  puts "I'm thinking of a number between 1 and 10, can you guess it?"
  guess = gets.chomp.to_i
  if guess == number
    puts "Yay! You got it!"
    i = 3 # this works but feels like cheating
  elsif guess > number
    puts "Your guess was too high!"
    i = i+1
  else
    puts "Your guess was too low!"
    i = i+1
  end
end
