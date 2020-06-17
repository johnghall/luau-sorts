function gravitySort(dataTable)
	local max = dataTable[1]
	for i = 2, #dataTable do
		if dataTable[i] > max then
			max = dataTable[i]
		end
	end

	local beads = {}
	for i = 1, #dataTable do
		beads[i] = {}
		for j = 1, max do
			beads[i][j] = 0
		end
	end
	for i = 1, #dataTable do
		for j = 1, dataTable[i] do
			beads[i][j] = 1
		end
	end

	for j = 1, max do
		local sum = 0
		for i = 1, #dataTable do
			sum = sum + beads[i][j]
			beads[i][j] = 0
		end

		for i = #dataTable - sum + 1, #dataTable do
			beads[i][j] = 1
		end
	end

	for i = 1, #dataTable do
		for j = 1, max do
			if beads[i][j] == 1 then
				dataTable[i] = j
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
gravitySort(arr)
print("Sorted array is: ")
printList(arr)
