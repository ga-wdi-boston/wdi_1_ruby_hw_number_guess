randnum = 1 + rand(10) # generates a random number 1-10
# intro and rules
puts "Welcome to Guess the Number!"
puts "To play the game, first guess a number between 1 & 10."
puts "You will only have three guesses, but I'll give you two hints."
print "Make your first guess: "
guess1 = gets.chomp #records the first response
#validation loop here
while (guess1.to_i < 1 || guess1.to_i > 10)
  puts "Your guess was not within range."
  print "Please guess again: "
  guess1 = gets.chomp
end
#temporary check-in to see if we're still running
#puts guess1
#puts randnum

# a conditional starting point that only has one chance
# win or lose you exit after your first guess... ip
if guess1.to_i == randnum
    puts "Luck is on your side!"
    exit
  elsif guess1.to_i > randnum
    print "Guess lower:"
    guess2 = gets.chomp
  else
    print "Guess higher:"
    guess2 = gets.chomp
end
# cumbersome but effective round 2 conditional
if guess2.to_i == randnum
    puts "Second time is a charm!"
    exit
  elsif guess2.to_i > randnum
    print "Last guess.  Go lower:"
    guess3 = gets.chomp
  else
    print "Last guess. Go higher:"
    guess3 = gets.chomp
end
# cumbersome but effective round 3 conditional
if guess3.to_i == randnum
    puts "Took a while, but you did it!"
  else
    puts "You lose!  Don't go to the casino!"
end

puts "Sorry.  The correct answer was #{randnum}"
exit

