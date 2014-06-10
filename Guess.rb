number = rand(6)    #Generates random number 0-5
  guesses = 0       #Sets gueses at zero to start with

 puts "I'm thinking of a random number"
  puts "Can you guess it?"

  while guesses <= 2 #Ensures that the max number of guesses will be 3
  puts "What is your guess?"
  guess = gets.chomp.to_i    #Obtains guess, sets to interger
  guesses +=1            #At each turn/loop, adds value of 1 to guesses

    if guess > 6  #If the number of guesses exceeds 6, our upper bound, put an error
        puts "ERROR"
        guesses = 0 #Does not use up a guess when out-of-range number is entered
    end

  unless guess == number #Sets hints for guess
   if guess > number
              puts  "Lower"
              else
              puts  "Higher"
              end
  else #Alerts user if they have guessed correctly, ends program
    puts "You got it!"
    guesses = 3 #Ends program because 3 exceeds the loop requirement
  end

end #Reveals number and generates new value for number
puts "I was thinking of the number #{number}"
number = rand(6)
