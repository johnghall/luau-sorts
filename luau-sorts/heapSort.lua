function heapSort(dataTable)
	local n = #dataTable

	for i = math.floor(n/2), 1, -1 do
		heapify(dataTable, n, i)
	end

	for i = n, 2, -1 do
		dataTable[i], dataTable[1] = dataTable[1], dataTable[i]
		heapify(dataTable, i-1, 1)
	end
end

function heapify(dataTable, n, i)
	local largest = i
	local l = 2 * i
	local r = 2 * i + 1

	if l <= n then
		if dataTable[largest] < dataTable[l] then
			largest = l
		end
	end

	if r <= n then
		if dataTable[largest] < dataTable[r] then
			largest = r
		end
	end

	if largest ~= i then
		dataTable[i], dataTable[largest] = dataTable[largest], dataTable[i]
		heapify(dataTable, n, largest)
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
heapSort(arr)
print("Sorted array is: ")
printList(arr)
