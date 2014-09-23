puts "guess a number between 1 and 10"
guess_this_number = (rand() * 10).to_i
#puts guess_this_number #used to help test
player_guess = gets.to_i
guess_count = 1
while player_guess != guess_this_number && guess_count < 3
	if player_guess > guess_this_number
		puts "Your guess is too high"
	else
		puts "Your guess is too low"
	end
	if player_guess > 10
		puts "Hey your guess is above the range"
		guess_count = guess_count - 1
	elsif player_guess < 1
		puts "Hey your guess is below the range"
		guess_count = guess_count - 1
	end
	if guess_count < 0
		guess_count = 0 #You only get 3 guesses
	end
	#puts guess_count #Helped me check how guess count incremented
	player_guess = gets.to_i
	guess_count = guess_count + 1
end
if player_guess == guess_this_number
	puts "You guessed it! The number is"
	puts player_guess
else
	puts "Ha! You failed. The number is"
	puts guess_this_number
end