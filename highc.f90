! Hannah Gulle
! CSC 330 Final - Program computes the collatz sequence for every
! starting value within the user given range and determines the
! highest calculated value overall

program highc

integer :: miniVal      ! MINIMUM STARTING VALUE
integer :: maxiVal      ! MAXIMUM STARTING VALUE
integer :: maxFound     ! MAXIMUM CALCULATED VALUE
integer :: start        ! TEMPORY STARTING VALUE

! RECURSIVE COLLATZ RETRIEVAL METHOD INTERFACE
interface
subroutine getCollatz( start, maxFound )
        integer :: start        ! TEMPORARY STARTING VARIABLE
        integer :: maxfound     ! MAXIMUM CALCULATED VALUE
end subroutine getCollatz
end interface

! RETRIEVE THE MIN AND MAX RANGE VALUES FROM THE KEYBOARD
write(*,*) "Input the Maximum Value: "
read(*,*) miniVal

write(*,*) "Input the Minimum Value: "
read(*,*) maxiVal

! SET THE MAX CALC VARIABLE TO THE STARTING MIN VALUE
maxFound = miniVal

! FOR EACH STARTING VALUE WITHIN THE USER INPUTTED RANGE,
! CALCULATE THE COLLATZ SEQUENCE AND DETERMINE THE MAX
! VALUE COMPUTED OVERALL
do i= miniVal, maxiVal, 1

        start = i
        call getCollatz( start, maxFound )
enddo

! OUTPUT THE RESULTS
write(*,*) "Max Calculated Value: ", maxFound

end program highc


! RECURSIVELY CALCULATES THE COLLATZ SEQUENCE FOR A GIVEN
! STARTING VALUE WHILE ALSO DETERMINING THE MAXIMUM CALCULATED
! VALUE OVERALL
recursive subroutine getCollatz( start, maxFound )

        integer :: start        ! TEMPORARY STARTING VALUE
        integer :: maxFound     ! MAX CALC VALUE

        if( start /= 1 ) then

                if ( mod( start, 2 ) == 0 ) then
                        start = start / 2

                        ! COMPARE CURR CALC TO MAX CALC
                        if( start > maxFound ) then
                                maxFound = start
                        endif

                        call getCollatz( start, maxFound )
                else
                        start = (3*start)+1

                        ! COMPARE THE CURR CALC TO THE MAX CALC
                        if( start > maxFound ) then
                                maxFound = start
                        endif

                        call getCollatz( start, maxFound )
                endif
        end if

end subroutine getCollatz
