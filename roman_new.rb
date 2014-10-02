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
		elsif remain < 10
			#here is where we have to do modern roman numeral shit
			if remain > 5
				singles = 5-(remain%5)
				romans.push('I'.*(singles) + 'X')
				remain = 0
			elsif remain == 5
				romans.push('V')
				remain = 0
			elsif remain == 4
				romans.push('IV')
				remain = 0
			elsif remain < 4
				romans.push('I'*remain)
				remain = 0
			end
		end
		
	end

	return romans.join
end

puts "Enter a number between 1 and 3000"

answer = roman_old(gets.chomp.to_i)

puts answer