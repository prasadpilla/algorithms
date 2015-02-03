#k is the index of the sorted array that you want to return
def random_selection(arr, k)
	return arr.first if arr.length == 1

	pivot = arr[0]
	j = 1 #last bigger than pivot

	(1...arr.length).each do |i|
		if arr[i] < pivot
			arr[i], arr[j] = arr[j], arr[i]
			j += 1
		end
	end

	pivot_idx = arr[1...j].length

	if pivot_idx == k
		return pivot
	elsif k < pivot_idx
		random_selection(arr[1...j], k)
	elsif pivot_idx < k
		random_selection(arr[j...arr.length], k - pivot_idx - 1)
	end
end
