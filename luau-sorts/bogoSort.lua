function bogoSort(dataTable)
	while isSorted(dataTable) == false do
		shuffle(dataTable)
	end
end

function isSorted(dataTable)
	for i = 2, #dataTable do
		if dataTable[i - 1] > dataTable[i] then
			return false
		end
	end
	return true
end

function shuffle(dataTable)
	for i = 1, #dataTable do
		local r = math.random(1, #dataTable)
		dataTable[i], dataTable[r] = dataTable[r], dataTable[i]
	end
end




--driver code to test the above
function printList(arr)
	for i, v in pairs(arr) do
		print(i, v)
	end
end

local arr = {12, 11, 13, 5, 6, 7, 22, 14}
print ("Given array is: ")
printList(arr)
bogoSort(arr)
print("Sorted array is: ")
printList(arr)
