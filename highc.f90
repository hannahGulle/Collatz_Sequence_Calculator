! Hannah Gulle
! CSC 330 Final - Program computes the collatz sequence for every
! starting value within the user given range and determines the
! highest calculated value overall

program highc

integer :: miniVal
integer :: maxiVal
integer :: maxFound
integer :: start

! RECURSIVE COLLATZ RETRIEVAL METHOD
interface
subroutine getCollatz( start, maxFound )
        integer :: start
        integer :: maxfound
end subroutine getCollatz
end interface

! RETRIEVE THE MIN AND MAX RANGE VALUES FROM THE KEYBOARD
write(*,*) "Input the Maximum Value: "
read(*,*) miniVal

write(*,*) "Input the Minimum Value: "
read(*,*) maxiVal

maxFound = miniVal

! FOR EACH STARTING VALUE WITHIN THE USER INPUTTED RANGE,
! CALCULATE THE COLLATZ SEQUENCE AND DETERMINE THE MAX
! VALUE COMPUTED OVERALL
do i= miniVal, maxiVal, 1

        start = i
        call getCollatz( start, maxFound )
enddo

write(*,*) "Max Calculated Value: ", maxFound

end program highc


! RECURSIVELY CALCULATES THE COLLATZ SEQUENCE FOR A GIVEN
! STARTING VALUE WHILE ALSO DETERMINING THE MAXIMUM CALCULATED
! VALUE OVERALL
recursive subroutine getCollatz( start, maxFound )

        integer :: start
        integer :: maxFound

        if( start /= 1 ) then

                if ( mod( start, 2 ) == 0 ) then
                        start = start / 2

                        if( start > maxFound ) then
                                maxFound = start
                        endif

                        call getCollatz( start, maxFound )
                else
                        start = (3*start)+1

                        if( start > maxFound ) then
                                maxFound = start
                        endif

                        call getCollatz( start, maxFound )
                endif
        end if


end subroutine getCollatz
