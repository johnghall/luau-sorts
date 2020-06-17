function quickSort(dataTable, low, high)
	if low < high then
		local partInd = partition(dataTable, low, high)

		quickSort(dataTable, low, partInd - 1)
		quickSort(dataTable, partInd + 1, high)
	end
end

function partition(dataTable, low, high)
	local i = low - 1
	local pivot = dataTable[high]

	for j = low, high do
		if dataTable[j] < pivot then
			i = i + 1
			dataTable[i], dataTable[j] = dataTable[j], dataTable[i]
		end
	end
	dataTable[i+1], dataTable[high] = dataTable[high], dataTable[i+1]
	return i + 1
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
quickSort(arr, 1, #arr)
print("Sorted array is: ")
printList(arr)
