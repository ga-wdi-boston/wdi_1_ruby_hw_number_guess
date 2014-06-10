number = rand(10) + 1
puts number

i = 0
while i < 3
  puts "I'm thinking of a number between 1 and 10, can you guess it?"
  guess = gets.chomp.to_i
  # this works but is cheating
  if guess == number
    puts "Yay!"
    i = 3
  elsif guess > number
    puts "Lower"
    # guess = gets.chomp.to_i
    i = i+1
  else
    puts "Higher"
    # guess = gets.chomp.to_i
    i = i+1
  end
end
