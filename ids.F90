! This file is part of Bottom RedOx Model (BROM, v.1.1).
! BROM is free software: you can redistribute it and/or modify it under
! the terms of the GNU General Public License as published by the Free
! Software Foundation (https://www.gnu.org/licenses/gpl.html).
! It is distributed in the hope that it will be useful, but WITHOUT ANY
! WARRANTY; without even the implied warranty of MERCHANTABILITY or
! FITNESS FOR A PARTICULAR PURPOSE. A copy of the license is provided in
! the COPYING file at the root of the BROM distribution.
!-----------------------------------------------------------------------
! Original author(s): Evgeniy Yakushev, Shamil Yakubov, 
!                     Elizaveta Protsenko, Phil Wallhead
!----------------------------------------------------------------------- 
    
    
    
    module ids
    
    use io_ascii, only: find_index
    use fabm_types, only: attribute_length
    
    implicit none
    
    !Indices of state variables that are needed in brom-transport and subroutines (i.e. boundary conditions description)
    integer :: id_O2, id_Mn2, id_Mn3, id_Mn4, id_H2S, id_Fe2, id_Fe3, id_FeS,   &
               id_MnS, id_DOML,id_DOMR, id_POML, id_POMR, id_NH4, id_NO2, id_NO3, id_S0, id_S2O3,  &
               id_SO4, id_DIC, id_Alk, id_pCO2, id_PO4, id_Si, id_Sipart, id_Phy, id_Het, &
               id_Baae, id_Bhae, id_Baan, id_Bhan, id_Hplus, id_CaCO3, id_FeS2, id_MnCO3, &
               id_Ni, id_NiS, id_Ni_biota, id_Ni_POM, id_Ni_DOM, id_Ni_Mn4, id_Ni_FeS, id_Ni_FeS2, &
               id_BaSO4, id_Ba, id_waste, id_CO2g
    
    integer :: id_mp_free, id_mp_biof, id_mp_het, id_mp_det
    
    ! AB
    integer :: id_POM, id_DOM, id_NUT, id_Oxy
    
    contains
    

!======================================================================================================================= 
    subroutine get_ids(par_name)
    
    !Input variables
    character(len=attribute_length),dimension(:)  :: par_name

	id_Phy = find_index(par_name, 'B_OXYDEP_Phy') 
	id_Het = find_index(par_name, 'B_OXYDEP_Het')       
!    id_Phy = find_index(par_name, 'B_BIO_Phy')        
!     id_Het = find_index(par_name, 'B_BIO_Het') 
	id_POM = find_index(par_name, 'B_OXYDEP_POM')
	id_DOM = find_index(par_name, 'B_OXYDEP_DOM')
	id_NUT = find_index(par_name, 'B_OXYDEP_NUT')
	id_Oxy = find_index(par_name, 'B_OXYDEP_Oxy')
	id_O2 = find_index(par_name, 'B_BIO_O2')
    id_DOML = find_index(par_name, 'B_BIO_DOML')         
    id_DOMR = find_index(par_name, 'B_BIO_DOMR')
    id_POML = find_index(par_name, 'B_BIO_POML')       
    id_POMR = find_index(par_name, 'B_BIO_POMR')         
    id_Baae = find_index(par_name, 'B_BACT_Baae')           
    id_Bhae = find_index(par_name, 'B_BACT_Bhae')          
    id_Baan = find_index(par_name, 'B_BACT_Baan')          
    id_Bhan = find_index(par_name, 'B_BACT_Bhan')    
    id_NO3 = find_index(par_name, 'B_NUT_NO3')             
    id_NO2 = find_index(par_name, 'B_NUT_NO2')            
    id_NH4 = find_index(par_name, 'B_NUT_NH4')         
    id_PO4 = find_index(par_name, 'B_NUT_PO4')      
    id_Si = find_index(par_name, 'B_NUT_Si')      
    id_Sipart = find_index(par_name, 'B_Si_Sipart')          
    id_Mn4 = find_index(par_name, 'B_Mn_Mn4')           
    id_Mn2 = find_index(par_name, 'B_Mn_Mn2')          
    id_Mn3 = find_index(par_name, 'B_Mn_Mn3')          
    id_MnS = find_index(par_name, 'B_Mn_MnS')
    id_MnCO3 = find_index(par_name, 'B_Mn_MnCO3')       
    id_Fe3 = find_index(par_name, 'B_Fe_Fe3')          
    id_Fe2 = find_index(par_name, 'B_Fe_Fe2')          
    id_FeS = find_index(par_name, 'B_Fe_FeS')          
    id_FeS2 = find_index(par_name, 'B_Fe_FeS2')
    id_SO4 = find_index(par_name, 'B_S_SO4')          
    id_S2O3 = find_index(par_name, 'B_S_S2O3')          
    id_S0 = find_index(par_name, 'B_S_S0')           
    id_H2S = find_index(par_name, 'B_S_H2S')         
    id_DIC = find_index(par_name, 'B_C_DIC')          
    id_Alk = find_index(par_name, 'B_C_Alk')  
    id_Hplus = find_index(par_name, 'B_pH_Hplus')          
    id_CaCO3 = find_index(par_name, 'B_Ca_CaCO3')          
    id_BaSO4 = find_index(par_name, 'B_Ba_BaSO4')
    id_Ba = find_index(par_name, 'B_Ba_Ba')
    id_Ni = find_index(par_name, 'B_Ni_Ni')
    id_NiS = find_index(par_name, 'B_Ni_NiS')
    id_Ni_biota = find_index(par_name, 'B_Ni_biota')
    !id_Ni_POM = find_index(par_name, 'B_Ni_POM')
    !id_Ni_DOM = find_index(par_name, 'B_Ni_DOM')
    id_Ni_Mn4 = find_index(par_name, 'B_Ni_Mn4')
    id_Ni_FeS = find_index(par_name, 'B_Ni_FeS')
    id_Ni_FeS2 = find_index(par_name, 'B_Ni_FeS2')
    id_CO2g = find_index(par_name, 'B_Bubble_CO2g')
    id_waste = find_index(par_name, 'B_INJECTION_waste')
    
    ! Microplastic    
    id_mp_free = find_index(par_name, 'B_BIOPLAST_MP_free')
    id_mp_biof = find_index(par_name, 'B_BIOPLAST_MP_biof')
    id_mp_het = find_index(par_name, 'B_BIOPLAST_MP_het')
    id_mp_det = find_index(par_name, 'B_BIOPLAST_MP_det')

    end subroutine get_ids
!======================================================================================================================= 
    
    
    end module ids
