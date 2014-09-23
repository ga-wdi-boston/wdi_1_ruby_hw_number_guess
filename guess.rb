require 'pry'

magic_number = rand (1..10)

puts "magic number: #{magic_number}"

puts "I'm thinking of a number between 1 and 10 (inclusive). You have three tries to guess my number."
puts "What's your first guess?"

user_guess = gets.chomp.to_i
counter = 1

    while counter>=1 && counter < 3

        if user_guess > magic_number && user_guess.between?(1,10) == true
          puts "Too high! Guess again: "
          user_guess = gets.chomp.to_i
          counter += 1

            elsif user_guess < magic_number && user_guess.between?(1,10) == true
              puts "Too low! Guess again: "
              user_guess = gets.chomp.to_i
              counter += 1

            elsif user_guess == magic_number && user_guess.between?(1,10) == true
              puts "You got it! Great job!\n"
              counter = 0
# binding.pry
            elsif user_guess != magic_number && user_guess.between?(1,10) == true
              puts "Sorry. You are out of tries. My number was #{magic_number}."

            elsif user_guess.between?(1,10) == false
              puts "Your guess is out of range. Please guess a number strictly between 1 and 10 (inclusive): "
              user_guess = gets.chomp.to_i
# binding.pry
        end

    end

# binding.pry

    if counter == 3 && user_guess == magic_number
      puts "You got it! Great job!"

        elsif counter == 3 && user_guess != magic_number
          puts "Sorry. You are out of tries. My number was #{magic_number}."

    end
