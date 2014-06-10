def random_number
  (rand() * 10).ceil.to_i
end



  i = 0
  while i < 3 do
      puts "Guess the number"
      user_guessed_number = gets.chomp.to_i

      if user_guessed_number == random_number
          puts "You are correct!!!!"
          break
      elsif user_guessed_number < 6
          puts "Try Again, Guess higher"
        elsif user_guessed_number > 5
          puts " Try Again, Guess lower"
      elsif ( user_guessed_number < 0 || user_guessed_number > 10)
          puts "Out of range"
          break
          end
    i+=1
  end


puts "Random number: #{random_number}"
