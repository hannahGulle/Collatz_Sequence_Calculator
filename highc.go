// Hannah Gulle
// CSC 330 Final - Computes the highest number calculated in a given Collatz
// sequence using non-recursive methods

package main

import (
	"fmt"
	)

func main(){

	// INSTANTIATE THE MIN AND MAX VARIABLES
	var minVal int = 0;
	var maxVal int = 0;

	// RETRIEVE THE MIN AND MAX FROM THE KEYBOARD
	fmt.Print("Input the Minimum Value: ")
	fmt.Scanln(&minVal);

	fmt.Print("Input the Maximum Value: ")
	fmt.Scanln(&maxVal);

	// MAX CALC VALUE STARTS AT LOWEST STARTING VALUE
	var MAX int = minVal;

	// FOR ALL STARTING VALUES WITHIN MIN AND MAX
	// FIND THE LARGEST CALCULATED VALUE
	for i := minVal; i <= maxVal; i++ {

		var curr int = i;
		for curr != 1 {

			if ( curr % 2 == 0 ){
				curr = curr / 2;
			}else{
				curr = (3*curr) + 1;
			}
			
			// COMPARE CURRENT CALC TO MAX CALC
			if ( curr > MAX ){
				MAX = curr;
			}
		}
	}
	
	// OUTPUT THE MAX CALC
	fmt.Print("Maximum Calculated Value: ")
	fmt.Println(MAX);
}
