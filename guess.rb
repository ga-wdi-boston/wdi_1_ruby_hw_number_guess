puts "********************************"
puts " The System thought of a number"
puts "      Try to GUESS IT!!!"
puts "     you have 3 attempts"
puts "********************************\n"

number = 1 + rand(10)
counter = 0
successful_guess = false

while counter < 3
  puts "What is your guess?"
  user_input = gets.chomp.to_i

  if user_input == number
    puts "Correct Guess!!!"
    successful_guess = true
    break
  elsif user_input < number
    puts "Your guess is low"
  elsif user_input > number
    puts "Your guess is high"
  end
  counter +=1
end

if successful_guess == true
  puts "\nYou guessed right!!!"
  puts ""
else
  puts "\nThis was your third attempt..."
  puts "Correct number is " + number.to_s
  puts ""
end
