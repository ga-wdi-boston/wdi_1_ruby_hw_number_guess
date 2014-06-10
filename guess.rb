# For homework 1

num_to_guess = Random.new.rand(0..10).to_i

def is_right? (gus, random_num)
  if gus.to_i == random_num
    true
  else
    false
  end
end

print "Dear User: Please guess our random integer! ... "
wrong_guesses = 0

3.times do
  guess = gets.chomp
  if is_right?(guess,num_to_guess)
    puts "Good guess! the number was: #{guess}"
    break
  else
    wrong_guesses += 1
    if wrong_guesses == 3
      puts "Wrong!!!!! the correct number was: #{num_to_guess}"
      break
    end
    print "Guess again maybe: "
  end
end




