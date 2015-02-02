def merge_sort(arr)
	return arr if arr.length < 2

	half = arr.length / 2
	left = arr.take(half)
	right = arr.drop(half)

	merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
	merged = []
	i, j = 0, 0

	#move through the array until it inserts all array elements
	
	until left.length == i && right.length == j
		if left.length == i
			merged << right[j]
			j += 1
		elsif right.length == j
			merged << left[i]
			i += 1
		elsif left[0] < right[0]
			merged << left[i]
			i += 1
		else
			merged << right[j]
			j += 1
		end
	end
	merged
end