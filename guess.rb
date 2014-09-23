#generates random number
actual_number = rand(10)

#this is the counter, which starts at 3 and goes down
count = 3

# uncomment line 8 to test
# puts actual_number

#prompt to user
puts "I'm thinking of a number from 1 to 10."

while count > 0

puts "Enter your guess:"

#get and save user input; convert to string
user_guess = gets.chomp.to_i

  if user_guess < 0 || user_guess > 10
      puts "Pick a number between 1 and 10"

    elsif user_guess == actual_number
      puts "Congrats! You got it!"
      break

    elsif user_guess < actual_number
      count = count - 1
      puts "Higher... You have #{count} more guesses"

    elsif user_guess > actual_number
      count = count - 1
      puts "Lower... You have #{count} more guesses"

   end

   if count == 0
    puts "Sorry! The correct number is #{actual_number}"
   end

end


