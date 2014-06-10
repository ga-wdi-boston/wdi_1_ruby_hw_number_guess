# For homework 1
max_guess = 10
num_to_guess = Random.new.rand(0..max_guess).to_i

def is_right? (gus, random_num)
  if gus.to_i == random_num
    true
  else
    false
  end
end

print "Dear User: Please guess our random integer between 0 and #{max_guess} inclusively! ... "
wrong_guesses = 0
max_num_guesses = 3
count = 0

while count <= max_num_guesses
  guess = gets.chomp.to_i
  if is_right?(guess,num_to_guess)
    puts "Good guess! the number was: #{guess}"
    break
  elsif guess > max_guess || guess < 0
    print "Number out of range try again..."
  else
    wrong_guesses += 1
    count += 1
    if wrong_guesses == 3
      puts "Wrong!!!!! the correct number was: #{num_to_guess}"
      break
    end
    if guess > num_to_guess
      puts "try lower"
    else
      puts "try higher"
    end
    print "Guess again maybe: "
  end
end




