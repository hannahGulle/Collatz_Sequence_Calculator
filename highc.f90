! Hannah Gulle
! CSC 330 Final - Program computes the collatz sequence for every
! starting value within the user given range and determines the
! highest calculated value overall

program highc

integer :: miniVal
integer :: maxiVal
integer :: maxFound
integer :: start

! RETRIEVE THE MIN AND MAX RANGE VALUES FROM THE KEYBOARD
write(*,*) "Input the Maximum Value: "
read(*,*) miniVal

write(*,*) "Input the Minimum Value: "
read(*,*) maxiVal

! FOR EACH STARTING VALUE WITHIN THE USER INPUTTED RANGE,
! CALCULATE THE COLLATZ SEQUENCE AND DETERMINE THE MAX
! VALUE COMPUTED OVERALL
do i= miniVal, maxiVal, 1

        start = i
        
        do while ( start /= 1 )

                if( mod(start,2) == 0 ) then
                        start = start / 2
                else
                        start = (3*start)+1
                endif

                ! COMPARE CURR CALC AND MAX CALC
                if( start > maxFound ) then
                        maxFound = start
                endif

        enddo

enddo

write(*,*) "Max Calculated Value: ", maxFound

end program highc
