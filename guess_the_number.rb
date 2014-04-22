randnum = 1 + rand(9) # fixed number generator BETWEEN 1-10
# intro and rules
puts "Welcome to Guess the Number!"
puts "To play the game, first guess a number between 1 & 10."
puts "You will only have three guesses, but I'll give you two hints."
print "Make your first guess: "
guess1 = gets.chomp #records the first response

#validation loop here
# defined a mehtod here, but had a problem with it...
#def validateguess(guessnumber)
#  while (guessnumber.to_i < 1 || guessnumber.to_i > 10)
#    puts "Your guess was not within range."
#    print "Please guess again: "
#    guessnumber = gets.chomp
#  end
#end
#validateguess(guess1)

# added a chunky but working validation to be pasted after each gets
  while (guess1.to_i < 1 || guess1.to_i > 10) do
    puts "Your guess was not within range."
    print "Please guess again: "
    guess1 = gets.chomp
  end

#artifact for proofing
#puts guess1
#puts randnum



# a conditional starting point that only has one chance
# win or lose you exit after your first guess... ip
if guess1.to_i == randnum # boolean evaluation
    puts "Luck is on your side!"
    exit # will kill the program if tripped.
  elsif guess1.to_i > randnum
    print "Guess lower:"
    guess2 = gets.chomp
      while (guess2.to_i < 1 || guess2.to_i > 10) do
        puts "Your guess was not within range."
        print "Please guess again: "
        guess2 = gets.chomp
      end
  else
    print "Guess higher:"
    guess2 = gets.chomp
      while (guess2.to_i < 1 || guess2.to_i > 10) do
        puts "Your guess was not within range."
        print "Please guess again: "
        guess2 = gets.chomp
      end
end
# cumbersome but effective round 2 conditional
if guess2.to_i == randnum
    puts "Second time is a charm!"
    exit
  elsif guess2.to_i > randnum
    print "Last guess.  Go lower:"
    guess3 = gets.chomp
      while (guess3.to_i < 1 || guess3.to_i > 10) do
        puts "Your guess was not within range."
        print "Please guess again: "
        guess3 = gets.chomp
      end
  else
    print "Last guess. Go higher:"
    guess3 = gets.chomp
      while (guess3.to_i < 1 || guess3.to_i > 10) do
        puts "Your guess was not within range."
        print "Please guess again: "
        guess3 = gets.chomp
      end
end
# cumbersome but effective round 3 conditional
if guess3.to_i == randnum
    puts "Took a while, but you did it!"
    exit
  else
    puts "You lose!  Don't go to the casino!"
    puts "Sorry.  The correct answer was #{randnum}"
    exit
end



