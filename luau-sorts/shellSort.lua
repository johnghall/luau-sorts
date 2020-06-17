function shellSort(dataTable)
	local gap = math.floor(#dataTable / 2)
	while gap > 0 do
		for i = gap, #dataTable do
			local temp = dataTable[i]
			local j = i
			while j > gap and dataTable[j-gap] > temp do
				dataTable[j] = dataTable[j - gap]
				j = j - gap
			end
			dataTable[j] = temp
		end
		gap = math.floor(gap/2)
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
shellSort(arr)
print("Sorted array is: ")
printList(arr)
