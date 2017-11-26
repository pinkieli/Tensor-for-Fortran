       function ident_2(T)
        implicit none
        
        type(Tensor2), intent(in) :: T
        type(Tensor2) :: ident_2
        integer :: i
        
        ident_2%ab = 0.d0
        do i = 1,3
         ident_2%ab(i,i) = 1.d0
        enddo
        
       end function ident_2
       
       function ident_2s(T)
        implicit none
        
        type(Tensor2s), intent(in) :: T
        type(Tensor2s) :: ident_2s
        integer :: i
        
        ident_2s%a6 = 0.d0
        do i = 1,3
         ident_2s%a6(i) = 1.d0
        enddo
        
       end function ident_2s
       
       function ident_4(T)
        implicit none
        
        type(Tensor2), intent(in) :: T
        type(Tensor4) :: ident_4
        integer :: i,j,k,l
        
        ident_4%abcd = 0.d0
        forall(i=1:3,j=1:3,k=1:3,l=1:3) ident_4%abcd(i,j,k,l) = 
     *       1./2.*(T%ab(i,k)*T%ab(j,l)+T%ab(i,l)*T%ab(j,k))
        
       end function ident_4
       
       function ident_4s(T)
        implicit none
        
        type(Tensor2s), intent(in) :: T
        type(Tensor4s) :: ident_4s
        integer :: i,j
        
        ident_4s%a6b6 = 0.d0
        do i=1,3
         ident_4s%a6b6(i,i) = 1.d0
        enddo
        
       end function ident_4s