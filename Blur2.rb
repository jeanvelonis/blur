# 0100
# 1110
# 0101
# 0000

# This 2D array contains two sub-arrays.
biggerArray = [[0,0,0,0], [0,1,0,0], [0,0,0,1], [0,0,0,0]]
tempArray = biggerArray
currentRow = 0
currentColumn = 0

biggerArray.each { |finalRow|
   puts finalRow.join( )
}

# Loop over each row array.
tempArray.each_with_index do |smallerArray, biggerKey|

  # Loop over each cell in the row.
   smallerArray.each_with_index do |valueS, key|
#        # Check if the number equals 1
#        # if yes, get the key number.
#        # Replace:
#        #  Up   :  tempArray, upper row, same currentColumn.
#        #  Left :  tempArray, same row, currentColumn - 1.
#        #  Right:  tempArray, same row, currentColumn + 1.
#        #  Down :  tempArray, lower row, same currentColumn.
       if valueS == 1
          # Replace Up in the temporary array:
           innerArray =  tempArray[currentRow - 1]
           if !innerArray.nil?
               innerArray[currentColumn] = 1
               tempArray[currentRow - 1] = innerArray
           end

#           # Replace Left in the temporary array:
            innerArray =  tempArray[currentRow]
            if !innerArray.nil?
               if !innerArray[currentColumn - 1].nil?
                   innerArray[currentColumn - 1] = 1
                   tempArray[currentRow] = innerArray
               end
            end

          # Replace Right in the temporary array:
            innerArray =  tempArray[currentRow]
            if !innerArray.nil?
               if !innerArray[currentColumn + 1].nil?
                   innerArray[currentColumn + 1] = 1
                   tempArray[currentRow] = innerArray
               end
            end

          # Replace Down in the temporary array:
           innerArray =  tempArray[currentRow + 1]
           if !innerArray.nil?
               innerArray[currentColumn] = 1
               tempArray[currentRow + 1] = innerArray
           end
       end
       currentColumn = currentColumn + 1
   end
   currentColumn = 0
   currentRow = currentRow + 1

end

puts " "
tempArray.each { |finalRow|
   puts finalRow.join( )
}