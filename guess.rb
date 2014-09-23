# requirements: https://github.com/ga-wdi-boston/wdi_1_ruby_hw_number_guess

# initiate game
puts "Welcome to Guess The Number!"

min_number = 1

print "Pick a max number: "
max_number = gets.chomp.to_i # ask max number from user

computer_choice = Random.rand(min_number..max_number)

max_attempts = Math.sqrt(max_number).to_i # set max attempts based on max_number

puts "Computer picked a random number between #{min_number} and #{max_number} (inclusive).\nCan you guess it in #{max_attempts} attempts or less?"

current_attempt = 1


while current_attempt <= max_attempts do

  print "Attempt \##{current_attempt}. Pick a number: "
  user_choice = gets.chomp.to_i

  if user_choice > max_number || user_choice < min_number # invalid entry check doesn't charge an attempt
    puts "You didn't enter a valid choice.\nPlease enter a number between #{min_number} and #{max_number}"
  elsif computer_choice == user_choice # winning choice
    puts "Yes! You won in #{current_attempt} attempt(s)!"
    exit
  elsif computer_choice < user_choice
    puts "That's not it. The number you are looking for is SMALLER than #{user_choice}.\n"
    current_attempt += 1
  elsif computer_choice > user_choice
    puts "That's not it. The number you are looking for is LARGER than #{user_choice}.\n"
    current_attempt += 1
  end

  puts "Sorry... you lost.\nThe number you were looking for was #{computer_choice}.\nBetter luck next time." if current_attempt > max_attempts # Updates on this line inspired by @laurenfazah

end


