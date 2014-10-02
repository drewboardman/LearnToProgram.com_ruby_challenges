#we want to take an existing array and scramble all of the elements

def shuffle array
	shuffled = []
	index_used = []
	done = array.size

	until shuffled.size == done
		i = rand(array.size)
		if index_used.include? i
			break
		else
			index_used.push(i)
			shuffled.shift(array[i])
		end
	end
	return shuffled
end

a = [1, 2, 3, 4, 5, 6, 7, 8]
p shuffle(a)