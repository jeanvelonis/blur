#0000
#0100
#0001
#0000



# This 2D array contains two sub-arrays.
biggerArray = [[0,0,0,0], [0,1,0,0], [0,0,0,1], [0,0,0,0]]

# Loop over each row array.
biggerArray.each_with_index do |smallerArray, biggerKey|

    # Loop over each cell in the row.
    smallerArray.each_with_index do |valueS, key| 
      #Check if the number equals 1
      # if yes, get the key number
      # Replace:
      # Up   : tempArray, upper row, same currentColumn. 
      # Left : tempArray, 
        print valueS
    end

    # End of row.
    puts  ""
end



