arr = [1,2,3,4,5]   # given an arbitrary array
   
final_idx = arr.length-1
for x in 0..(arr.length/2)
   temp = arr[x]
   arr[x] = arr[final_idx - x]
   arr[final_idx - x] = temp
end
puts x 