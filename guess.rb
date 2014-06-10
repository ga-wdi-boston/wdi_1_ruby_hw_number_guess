number = rand(10) + 1
puts number

i = 0
while i < 3
  puts "I'm thinking of a number between 1 and 10, can you guess it?"
  guess = gets.chomp.to_i
  # this works but feels like cheating
  if guess == number
    puts "Yay!"
    i = 3
  elsif guess > number
    puts "Lower"
    i = i+1
  else
    puts "Higher"
    i = i+1
  end
end
