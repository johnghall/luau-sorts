function selectionSort(dataTable)
	for i = 1, #dataTable do
		local minIndex = i
		for j = i + 1, #dataTable do
			if dataTable[minIndex] > dataTable[j] then
				minIndex = j
			end
		end
		dataTable[minIndex], dataTable[i] = dataTable[i], dataTable[minIndex]
	end
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
selectionSort(arr)
print("Sorted array is: ")
printList(arr)
