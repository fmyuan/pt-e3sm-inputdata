CDF       
      nj        ni        nv              Conventions       NCAR-CSM:CF-1.0    title         CCSM domain data:      user_comment      PStandard CCSM3.1/4.0 domain specification file created from CLM inputdata files:   source         user-defined      history       / ONE 0.1 deg x 0.1deg grid for NGEE-Arctic Site          area                   	long_name         $area of grid cell in radians squared   
coordinate        xc yc      units         radians2        h   frac                   	long_name         $fraction of grid cell that is active   
coordinate        xc yc      units         unitless   filter1       =error if frac> 1.0+eps or frac < 0.0-eps; eps = 0.1000000E-11      filter2       Jlimit frac to [fminval,fmaxval]; fminval= 0.1000000E-02 fmaxval=  1.000000          p   mask                   	long_name         land domain mask   
coordinate        xc yc      note      unitless   comment       70=ocean and 1=land, 0 indicates that cell is not active         x   xc                     	long_name         longitude of grid cell center      units         degrees_east   bounds        xv          |   xv                        	long_name         longitude of grid cell vertices    units         degrees_east         �   yc                     	long_name         latitude of grid cell center   units         degrees_north      bounds        yv          �   yv                        	long_name         latitude of grid cell vertices     units         degrees_north            �=���wց?�         @ik���-�@ij_��F@im�:)�z@im�:)�z@ij_��F@Qԣ�
=q@Q�p��
=@Q�p��
=@Q��
=p�@Q��
=p�