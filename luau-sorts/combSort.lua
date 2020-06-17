function combSort(dataTable)
	local gap = #dataTable - 1
	local swapped = true

	while gap ~= 1 or swapped do
		gap = getNextGap(gap)

		swapped = false
		for i = 1, #dataTable - gap do
			if dataTable[i] > dataTable[i + gap] then
				dataTable[i], dataTable[i + gap] = dataTable[i + gap], dataTable[i]
				swapped = true
			end
		end
	end
end

function getNextGap(gap)
	gap = math.floor((gap * 10)/13)
	if gap < 1 then
		return 1
	end
	return gap
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
combSort(arr)
print("Sorted array is: ")
printList(arr)
