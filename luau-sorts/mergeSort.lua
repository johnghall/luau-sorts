function mergeSort(input, m)
	if #input > 1 then
		local mid = math.floor(#input / 2)
		local L, R = {}, {}
		for i = 1, mid do
			table.insert(L, input[i])
		end
		for i = mid + 1, #input do
			table.insert(R, input[i])
		end

		L = mergeSort(L)
		R = mergeSort(R)

		local i, j, k = 1, 1, 1
		while i <= #L and j <= #R do
			if L[i] < R[j] then
				input[k] = L[i]
				i = i + 1
			else
				input[k] = R[j]
				j = j + 1
			end
			k = k + 1
		end
		while i <= #L do
			input[k] = L[i]
			i = i + 1
			k = k + 1
		end
		while j <= #R do
			input[k] = R[j]
			j = j + 1
			k = k + 1
		end
	end
	return input
end




--driver code to test the above
function printList(arr)
	for i, v in pairs(arr) do
		print(i, v)
	end
end

local arr = {12, 11, 13, 5, 6, 7, 22, 14, 6, 3, 31, 20, 1, 4, 27, 3}
print ("Given array is: ")
printList(arr)
mergeSort(arr)
print("Sorted array is: ")
printList(arr)
