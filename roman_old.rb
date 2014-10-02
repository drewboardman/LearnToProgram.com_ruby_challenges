def roman_old num
	remain = num
	romans = []

	while remain != 0

		if remain >= 1000
			multiplier = remain/1000
			remain = remain%1000
			romans.push('M'.*(multiplier))
		elsif remain >= 500
			multiplier = remain/500
			remain = remain%500
			romans.push('D'.*multiplier)
		elsif remain >= 100
			multiplier = remain/100
			remain = remain%100
			romans.push('C'.*multiplier)
		elsif remain >= 50
			multiplier = remain/50
			remain = remain%50
			romans.push('L'.*multiplier)
		elsif remain >= 10
			multiplier = remain/10
			remain = remain%10
			romans.push('X'.*multiplier)
		elsif remain >= 5
			multiplier = remain/5
			remain = remain%5
			romans.push('V'.*multiplier)
		elsif remain < 5
			#need code for the ones
			romans.push('I'.*remain)
			remain = 0
		end
		
	end

	return romans.join
end

puts "Enter a number between 1 and 3000"

answer = roman_old(gets.chomp.to_i)

puts answer