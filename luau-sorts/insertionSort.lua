function insertSort(dataTable)
	for i,v in pairs(dataTable) do
		local key = dataTable[i]
		local j = i - 1
		while j > 0 and key < dataTable[j] do
			dataTable[j + 1] = dataTable[j]
			j = j - 1
		end
		dataTable[j+1] = key
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
insertSort(arr)
print("Sorted array is: ")
printList(arr)
