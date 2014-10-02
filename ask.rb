def ask question

	while true
		puts question
		response = gets.chomp.downcase

		if response == 'yes'
			return true
			break
		elsif response == 'no'
			return false
			break
		else
			puts "Please answer yes or no"
		end
	end
end

ask "Did you eat breakfast today?"
ask "Are you going to finish this fucking book today?"