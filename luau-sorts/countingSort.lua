function countingSort(dataTable, maxVal)
	local output = {}
	local count = {}

	for i = 1, maxVal + 1 do
		count[i] = 0
	end
  for i = 1, #dataTable do
    output[i] = 0
  end

	for i,v in pairs(dataTable) do
		count[v + 1] = count[v + 1] + 1
	end

	for i = 1, maxVal do
		count[i + 1] = count[i + 1] + count[i]
	end

	for i = 1, #dataTable  do
		output[count[dataTable[i] + 1]] = dataTable[i]
		count[dataTable[i] + 1] = count[dataTable[i] + 1] - 1
	end

	return output
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

--maxVal is the highest value present in the set {arr[1],...,arr[n]}
--you can run through the table and find the maximum value, or you can
--manually input the highest amount possible in the table (it doesn't matter
-- whether or not it is actually present)

local maxVal = 50

arr = countingSort(arr, maxVal)
print("Sorted array is: ")
printList(arr)
