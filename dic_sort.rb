def dsort(list)
	return list if list.size <= 1
	swapped = true
		while swapped do
			swapped = false
			#now we need a for loop to go through
			0.upto(list.size-2) do |i| 
				if list[i].downcase > list[i+1].downcase
					list[i] = list[i+1]
					list[i+1] = list[i]
					swapped = true
				end
			end
		end

	return list
end

a = ['apple', 'Rhino', "Attack", "boll", "Ball" ]
p dsort(a)