puts "This is a game where you guess the number I am thinking about"
puts " It is a number between 1 and 10, you have three chances!"
puts " "
puts "Are you ready 'yes/no' "
answer = gets.chomp.downcase

while true
  if answer == "yes"
    break
  elsif answer == "no"
    puts "How about now??"
    answer = gets.chomp.downcase
    redo
  else
    puts "Please enter 'Yes' or 'No'."
    answer = gets.chomp.downcase
    redo
  end
end


random = rand(1..10)
puts "Give me your first number"
input = gets.chomp.to_i


x = 3

  while true
    x -= 1
    if x == 0
      puts "You Got It Wrong My Friend!!!, the answer is " + random.to_s
      break
    end
    if input == random
      puts "Yeah!!! you got it, the number was " + random.to_s
    break
    elsif input >= 10 || input <= 0
      puts "I said between 1 and 10"
      input = gets.chomp.to_i
    redo
    else
      puts "One more try!"
      input = gets.chomp.to_i
    redo
    end
  end




















