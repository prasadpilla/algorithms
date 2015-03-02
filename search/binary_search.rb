def binary_search(array, target)

	midpoint = array.length / 2

	if array.empty?
		-1 
	elsif array[midpoint] == target
		midpoint
	elsif array[midpoint] > target
		binary_search(array[0...midpoint], target)
	elsif array[midpoint] < target
		right = binary_search(array[(midpoint + 1)..-1], target)
		return right if right == -1
		right + midpoint + 1
	end
end