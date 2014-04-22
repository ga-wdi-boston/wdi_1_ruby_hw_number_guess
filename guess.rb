
#Program generates a random number and asks user to guess it
number_rand = rand(1..10).to_i
puts "Hi There! Guess a number between 1 and 10"
number_1 = gets.chomp.to_i

#If random number is guessed number, the program tells the user
if number_1 == number_rand 
	puts "Congratulations you guessed the number!"
#If random number is not the guessed number

elsif number_1 > number_rand
	puts "Sorry, that is not the number, but here's a hint aim lower"
else number_1 < number_rand
	puts "Sorry, that is not the number, but here's a hint aim higher"
# The program tells the user to guess again and to enter a new number
	puts "Guess again and enter a new number!"
end
	number_2 = gets.chomp.to_i

#if the 2nd guess is correct, the user is told

if  number_2 == number_rand
	puts "You got it!" 
#if the second guess is not correct, the user has one more try
elsif number_2 > number_rand
	puts "Sorry, you only have 3 guesses- this time aim lower"
else number_2 < number_rand
	puts "Sorry, you only have 3 guesses- this time aim higher"

end

	number_3 = gets.chomp.to_i




