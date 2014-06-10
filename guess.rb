# For homework 1
# Asks for the max num to guess
print "What dear user would you like to be the max number you can guess? "
max_guess = gets.chomp.to_i
num_to_guess = Random.new.rand(0..max_guess).to_i

# Just wanted to add a method to make things prettier
def is_right? (gus, random_num)
  if gus.to_i == random_num
    true
  else
    false
  end
end

#Starts the game
print "Dear User: Please guess our random integer between 0 and #{max_guess} inclusively! ... "
wrong_guesses = 0
#just something I thought of for number of guesses
max_num_guesses = max_guess/5
count = 0

# The game goes on
while count <= max_num_guesses
  guess = gets.chomp.to_i
  #checks for a correct guess
  if is_right?(guess,num_to_guess)
    puts "Good guess! the number was: #{guess}"
    print "Would you like to play again? y/n "
    #checks for a yes and resets (Doesn't work right. Fell asleep before fixing)
    if gets.chomp.downcase == 'y'
      puts "generating a new number with same max"
      count = 0
      num_to_guess = Random.new.rand(0..max_guess).to_i
      wrong_guesses = 0
    else
      break
    end
  # checks to see if number is in range
  elsif guess > max_guess || guess < 0
    print "Number out of range try again..."
  else
    # changes the count of wrong guesses and count of guesses
    wrong_guesses += 1
    count += 1

    #gives them a hint to guess higher or lower
    if guess > num_to_guess && wrong_guesses != max_num_guesses
      puts "try lower"
    else
      puts "try higher"
    end

    # exits if they have run out of wrong guesses
    if wrong_guesses == max_num_guesses
      print "Wrong!!!!! the correct number was: #{num_to_guess} would you like to play again y/n? "
        #resets if yes
        if gets.chomp.downcase == 'y'
          puts "generating a new number with same max"
          count = 0
          num_to_guess = Random.new.rand(0..max_guess).to_i
          wrong_guesses = 0
        else
          break
        end
    end

    # starts the next turn
    print "Guess again: "
  end
end




