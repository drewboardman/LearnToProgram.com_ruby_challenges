def ask_rec question

	puts question
	reply = gets.chomp.downcase

	if reply == 'yes'
		return true
	elsif reply == 'no'
		return false
	else
		puts "Please answer yes/no"
		ask_rec question
			
	end

end

ask_rec "Did you study today?"