my_number = rand(9) + 1

puts "I'm thinking of a number between 1 and 10. I'll give you 3 chances to guess what it is. What is your first guess?"
while guess1 < 1 || guess1 > 10
  guess1 = gets.chomp

  if guess1 == my_number
    puts "Genius! You got it!"

  elsif guess1 > my_number && guess1 < 11
    puts "Try again. That guess was too high."

    while guess2 < 1 || guess2 > 10 || guess2 = guess1
      guess2 = gets.chomp

      if guess2 == my_number
        puts "Genius! You got it!"

      elsif guess2 > my_number && guess2 < 11
        puts "Try again. That guess was too high."
      elsif guess2 < my_number && guess2 > 0
        puts "Try again. That guess was too low."

      #This section needs to loop back to the beginning of guess2
      if guess2 < 1 || guess2 > 10
        puts "Woah! I asked for a number between 1 and 10. Don't worry, I won't count that guess against you. Guess again."
      elsif guess2 = guess1
        puts "You already guessed that number. Don't worry, I won't hold it against you. Guess again."
   end

  elsif guess1 < my_number && guess1 > 0
  puts "Try again. That guess was too low."

    while guess2 < 1 || guess2 > 10 || guess2 = guess1
      guess2 = gets.chomp

      if guess2 == my_number
        puts "Genius! You got it!"

      elsif guess2 > my_number && guess2 < 11
        puts "Try again. That guess was too high."
      elsif guess2 < my_number && guess2 > 0
        puts "Try again. That guess was too low."

      #This section needs to loop back to the beginning of guess2
      elsif guess2 < 1 || guess2 > 10
        puts "Woah! I asked for a number between 1 and 10. Don't worry, I won't count that guess against you. Guess again."
      elsif guess2 = guess1
      puts "You already guessed that number. Don't worry, I won't hold it against you. Guess again."
  end

#This section needs to loop back to the beginning of guess1
  elsif guess1 < 1 || guess1 > 10
    puts "Woah! I asked for a number between 1 and 10. Don't worry, I won't count that guess against you. Guess again."
  end

