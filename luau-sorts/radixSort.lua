function radixSort(dataTable)
	local pass, maxstring = 0, 0

	local bucket={}
	for n = 1, #dataTable, 1 do
		bucket[n] = tostring(dataTable[n])
		local key_length = string.len(bucket[n])
		if key_length > maxstring then
			maxstring = key_length
		end
	end

	while pass <= maxstring do
		pass = pass + 1

		local queue = {}
		for n = 1, 10, 1 do
			queue[n] = {}
		end

		for n = 1, #bucket, 1 do

			local key_length = string.len(bucket[n])
			local key = bucket[n]

			local pool
			if key_length >= pass then
				pool = tonumber(string.sub(key, pass*-1, pass*-1))
			else
				pool = 0
			end
			table.insert(queue[pool + 1], key)
		end

		bucket={}
		for k, v in ipairs(queue) do
			for n = 1, #v do
				table.insert(bucket, v[n])
			end
		end
	end

	return bucket
end




--driver code to test the above
function printList(arr)
	for i, v in pairs(arr) do
		print(i, v)
	end
end

local arr = {12, 11, 13, 5, 6, 7, 22, 14, 6, 3, 31, 20, 1, 4, 27, 3}
print ("Given array is: ")
arr = radixSort(arr)
print("Sorted array is: ")
printList(arr)
