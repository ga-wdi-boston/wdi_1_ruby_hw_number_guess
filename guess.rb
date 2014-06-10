#Generates the random answer
answer = rand(1..10)

#initialises user_guess as != answer and counter
user_guess = 0
count = 0

puts "Please select a number between 1 and 10"

#While loop to run depending on critera of counter and as long as the user doesnt guess correctly
while user_guess != answer && count < 3
  user_guess = gets.chomp.to_i
  if user_guess >= 1 && user_guess <= 10
    if user_guess == answer
      puts "Congrats you got it!"
    elsif user_guess < answer
      puts "Incorrect - the answer is a higher number"
      count += 1
    else
      puts "Incorrect - the answer is a lower number"
      count += 1
    end

  else
    puts "Error - please select a number between 1 and 10"
  end

end

#count is greater than 3 and the user has not guessed correctly. Tell them the answer
puts "The answer is #{answer}"


