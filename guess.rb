# Jake Austin
# WDI Boston
# homework 1
# June 9, 2014

puts "What is the upper bound for guessing: "
max_num = gets.chomp.to_i
correct_guess = rand(1..max_num)
num_chances = max_num / 10
puts "Can you guess the number? : "
user_guess = gets.chomp.to_i
#while(correct_guess != user_guess)
while(num_chances > 0)
  if user_guess == correct_guess
    puts "You did it!!"
    num_chances = -1
  else
    puts "Wrong, too bad! Try another guess -- #{num_chances.to_s} tries left: "
    user_guess = gets.chomp.to_i
    num_chances -= 1
  end
end

