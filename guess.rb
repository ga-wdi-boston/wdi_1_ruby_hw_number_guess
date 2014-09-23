random_number = 1 + rand(10)
puts "Please guess a number between 1 and 10"
#
guess = gets.chomp.to_i
counter = 0
#this while loop will execute until the guess is  equal to the random number or until the counter is greater than 2 (which ensures the user has 3 guesses).
while guess != random_number and counter < 2
      #this if ensures that if user guesses out of range they dont loose a turn
      if guess > 10
        puts "error! out of range, go again"
        counter = counter
      #this elsif ensures that if they guess a number too high they will be told and a turn is taken
      elsif guess > random_number
        puts "youve guessed too high a number: try again"
        counter = counter + 1
      #this elsif ensures that if they guess a number too low they will to told and a turn is taken
      elsif guess < random_number
        puts "youve guessed too low: try again"
        counter = counter + 1
      end
  #asks user for another guess
  guess = gets.chomp.to_i
end
#this if else statement will congradulate the person for getting it right or tell them they didnt get it and what the number is
if guess == random_number
  puts "Yay youve got it!"
else
  puts "im sorry you didnt get it but the number was:"
  puts random_number
end

# if a number higher than the range is guesed on the third try it ends?



