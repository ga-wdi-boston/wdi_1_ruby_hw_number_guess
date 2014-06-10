# Jake Austin
# WDI Boston
# homework 1
# June 9, 2014

correct_guess = rand(1..10)
puts "Can you guess the number? : "
user_guess = gets.chomp.to_i

while(correct_guess != user_guess)
  puts "Wrong, too bad! Try another guess:"
  user_guess = gets.chomp.to_i
end
puts "You did it!!"
