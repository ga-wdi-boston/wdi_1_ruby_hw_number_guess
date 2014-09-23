 x = rand(1..10) #generates random number
def guess_number(x)

counter = 0
correct = false

puts "What's your guess, huh?"


while counter < 3


  guess_1 = gets.chomp.to_i
if guess_1 < 1 || guess_1 > 10
  puts "Error: Number must be between 1 and 10."
  puts "Try again."
  guess_number(x)

end


  if counter == 2 && guess_1 != x
    puts "Sorry, the answer was #{x}."
    exit(0)


  elsif guess_1 > x
    puts "Uh, Oh! That's terrible, just terrible. It's too high!"
     puts "Guess again."
    counter += 1

  elsif guess_1 == x

      puts "Congratulations. You're a great guesser."
      exit(0)


elsif guess_1 < x
     puts "Oh, god. No! No,no,no! That guess was way too low."
     puts "Guess again."
    counter += 1

  end
end

end

guess_number(x)
