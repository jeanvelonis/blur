# This 2D array contains two sub-arrays.
image = Array[[0,0,0,0], [0,1,0,0], [0,0,0,0], [0,0,0,0]]

# Loop over each row array.
image.each do |x|

    # Loop over each cell in the row.
    x.each_with_index do |value, index| 
        print x[2-index]
        print value
    end

    # End of row.
    puts  ""
end
