# For homework 1

num_to_guess = Random.new.rand(0..10).to_i

print "Dear User: Please guess our random integer! ... "
guess = gets.chomp

def is_right? (gus, random_num)
  if gus.to_i == random_num
    true
  else
    false
  end
end

2.times do
  if is_right?(guess,num_to_guess)
    puts "Good guess!"
    break
  else
    print "Guess again maybe: "
    guess = gets.chomp
  end
end

puts num_to_guess
