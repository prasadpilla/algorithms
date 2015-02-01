#assumes no duplicates
def quick_sort(arr)
	return arr if arr.length <= 1
	pivot = arr[0]
	div = 1 
	(1...arr.length).	each do |i|
		if pivot > arr[i]
			arr[i], arr[div] = arr[div], arr[i]
			div += 1
		end
	end
	quick_sort(arr[1...div]) + [pivot] + quick_sort(arr[div...arr.length])
end