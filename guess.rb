# Jake Austin
# WDI Boston
# homework 1
# June 9, 2014

loop do
  puts "What is the upper bound for guessing: "
  max_num = gets.chomp.to_i
  correct_guess = rand(1..max_num)
  num_chances = 3 + max_num / 10
  puts "Can you guess the number? : "
  user_guess = gets.chomp.to_i

  while(num_chances > 0)
    if user_guess == correct_guess
      puts "You did it!!!"
      puts "Play Again? Y/N"
      choice = gets.chomp.upcase
      if choice == 'N'
        abort("Thanks for playing!")
      else
        break
      end
    else
      if user_guess < correct_guess
        hint = "higher..."
      else
        hint = "lower..."
      end

      if !(1..max_num).include?(user_guess)
        puts "Remember - 1 to #{max_num.to_s}, Try again:"
        user_guess = gets.chomp.to_i
      else
        puts "Wrong, too bad! Try again (hint: #{hint}) -- #{num_chances.to_s} tries left: "
        user_guess = gets.chomp.to_i
        num_chances -= 1
      end
      if num_chances == 0
        puts "The number was #{correct_guess.to_s}, better luck next time!"
        puts "Play Again? Y/N"
        choice = gets.chomp.upcase
        if choice == 'N'
          abort("Thanks for playing!")
        end
      end
    end
  end
end
