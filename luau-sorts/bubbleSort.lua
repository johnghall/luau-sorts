function bubbleSort(dataTable)
	for i = 1, #dataTable do
		for j = 1, #dataTable-i do
			if dataTable[j] > dataTable[j + 1] then
				dataTable[j], dataTable[j + 1] = dataTable[j + 1], dataTable[j]
			end
		end
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
bubbleSort(arr)
print("Sorted array is: ")
printList(arr)
