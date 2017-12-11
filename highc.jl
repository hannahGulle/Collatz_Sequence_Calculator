# Hannah Gulle
# CSC 330 Final - Program computes the highest calculated
# value between a given starting minimum and maximum when
# determining the collatz sequence.


# RETRIEVE THE MAX AND MIN STARTING VALUES FROM THE KEYBOARD
println("Input the Minimum Value: ")
minVal = readline()
minVal = parse(Int, minVal)

println("Input the Maximum Value: ")
maxVal = readline()
maxVal = parse(Int, maxVal)

# SET THE MAX CALC TO THE MINIMUM STARTING VALUE
maxFound = minVal

# FOR EACH STARTING VALUE IN THE GIVEN RANGE
# COMPUTE THE COLLATZ SEQUENCE AND FIND THE
# HIGHEST CALCULATED VALUE
for i= minVal:maxVal

	start = i
	while start != 1

		if start % 2 == 0
			start = start / 2
		else
			start = (3*start)+1
		end	

		# COMPARE THE CURRENT CALC TO THE MAX CALC
		if start > maxFound
			maxFound = start
		end
	end

end

# OUTPUT THE RESULT
print("Maximum Calculated Value: ")
println(maxFound)
