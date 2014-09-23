puts "Guess the Number"
answer = rand(10)
round = 3
puts "rounds left."
puts round


while round > 0

guess = gets
guess = guess.to_i
puts "-----------------------------"
  if guess > 10
    round = round + 1
    puts "pick a number lower than 10."
  end
  if guess < 1
    round = round + 1
    puts "pick a number above 1."
  end


  if guess != answer
  puts "wrong number, Guess again"
  round = round - 1
  puts "rounds left."
  puts round
    if
      guess > answer
      puts "your guess is too high."
    else
      guess < answer
      puts "your guess is too low."
    end
  else
    puts "you got it right after"
    puts round
    puts "rounds."
    round = 0
  end
end
puts "the answer was"
puts answer
