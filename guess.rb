
#Program generates a random number and asks user to guess it
number_rand = rand(1..10)
puts "Hi There! Guess a number between 1 and 10"
number_1 = gets.chomp

#If random number is guessed number, the program tells the user
if number_1 == number_rand 
	puts "Congratulations you guessed the number!"
#If random number is not the guessed number

elsif number_1 != number_rand
	puts "Sorry, that is not the number"
# The program tells the user to guess again and to enter a new number
	puts "Guess again and enter a new number!"
	number_2 = gets.chomp
end

#if the 2nd guess is correct, the user is told

if  number_2 == number_rand
	puts "You got it!"
#if the second guess is not correct, the user has one more try
elsif number_2 != number_rand
	puts "You only have three chances, guess one more time!"

	number_3 = gets.chomp
end	





