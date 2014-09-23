# Would love to have feedback on how to make the code more succinct but still readable.
# Also, would love feedback on ruby best practices
highest_value = 10

puts "Howdy!  Ready to play the number game?  Let's get started!!"
puts "\n Please tell me your name => "
user_name = gets.chomp

puts "\n\nThank you#{user_name.empty? ? '' : ' ' + user_name}!  Now enter the highest number you want in the guess range => "
highest_value = gets.chomp.to_i # TODO: verify this is an integer and valid for a range
guess_range = 1..highest_value
case highest_value
  when 0..10 then max_guesses = 3
  when 11..30 then max_guesses = 10
  when 31..100 then max_guesses = 15
  else max_guesses = 20
end
guesses_left = max_guesses
num_guesses = 0
puts "#{user_name.empty? ? '' : ' ' + user_name}, you will be allowed #{max_guesses} chances to guess a number between #{guess_range.first} and #{guess_range.last}."

guess_this_number = Random.rand(guess_range)
puts "Number to guess: #{guess_this_number}"

# display message to enter number with #responses remaining
begin
  puts "\n\nLets roll#{user_name.empty? ? '' : ' ' + user_name}!! Please enter a number between #{guess_range.first} and #{guess_range.last} =>"
  user_guess = gets.chomp.to_i

  # TODO: Only convert to integer if user_guess is a numeric
  # user_guess.to_i if user_guess.match(/^\d+$/)


  if !guess_range.include?(user_guess)
    puts "Ohhh - sorry#{user_name.empty? ? '' : ' ' + user_name}, the value you specified (#{user_guess}) is not between #{guess_range.first} and #{guess_range.last}."
  elsif user_guess == guess_this_number
    puts "\n\nCongratulations#{user_name.empty? ? '' : ' ' + user_name}!  You got the number in #{num_guesses} #{num_guesses  == 1 ? 'guess' : 'guesses'}!!"
  else
    higher = user_guess > guess_this_number
    guesses_left -= 1
    num_guesses = max_guesses - guesses_left
    puts "Sorry#{user_name.empty? ? '' : ' ' + user_name}, your number(#{user_guess}) was #{higher ? 'higher' : 'lower'} than the number."
    if guesses_left == 0
      puts "So sorry#{user_name.empty? ? '' : ' ' + user_name}, you've run out of guesses. The number we are trying to guess is #{guess_this_number}"
    else
      puts "Try again - you've got #{guesses_left} guesses left!"
    end
  end


  # Determine if it is time to exit the loop - still not quite working
  time_to_exit = (user_guess == guess_this_number) or (guesses_left <= 0)
  if time_to_exit
    puts "\n\n#{user_name}, do you want to play again?? (y or n)"
    if gets.chomp == 'y'
      guess_this_number = Random.rand(guess_range)
      guesses_left = 1
      time_to_exit = false
    end
  end

end until time_to_exit

puts "#{user_name.empty? ? '' : user_name + ' - '}Thank you for playing the Guess This Number game!!!"

