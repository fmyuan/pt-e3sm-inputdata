CDF       
      x         y         ni        nj        nv              title         -1D (unstructured) domain file for running ELM      Conventions       CF-1.0     note      �a 2d-grid coordinates system, ('y','x'), added, with 2d lon/lat variables.  With this, GridXID, GridYID, and GridID added for actual grids(nj,ni)  so that transform between 2d and 1d may be possible           x                   	long_name         longitude of x-axis    units         degrees_east   comment       .could be in unit of projected x such as meters           0   y                  	long_name         latitude of y-axis     units         degrees_north      comment       .could be in unit of projected y such as meters           P   lon                    	long_name         Olongitude of 2D land gridcell center (GCS_WGS_84), increasing from west to east    units         degrees_east      �  p   lat                    	long_name         Platitude of 2D land gridcell center (GCS_WGS_84), increasing from south to north   units         degrees_north         �  �   gridID                    	long_name         31d unique gridId in boxed range of coordinates y, x    
decription        [start from #0 at the lower left corner of the domain, covering all land and ocean gridcells       @  p   gridXID                   	long_name         'gridId x in boxed range of coordinate x    
decription        nstart from #0 at the lower left corner and from west to east of the domain, with gridID=gridXID+gridYID*len(y)        @  �   gridYID                   	long_name         'gridId y in boxed range of coordinate y    
decription        pstart from #0 at the lower left corner and from south to north of the domain, with gridID=gridXID+gridYID*len(y)      @  �   xc                    	long_name         !longitude of land gridcell center      units         degrees_east   bounds        xv     comment       +by GCS_WGS_84, increasing from west to east       �  0   yc                    	long_name          latitude of land gridcell center   units         degrees_north      comment       -by GCS_WGS_84, decreasing from north to south         �  �   xv                       	long_name         $longitude of land gridcell verticles   units         degrees_east   comment       kby GCS_WGS_84, increasing from west (-180) to east (180), vertices ordering anti-clock from left-low corner         0   yv                       	long_name         #latitude of land gridcell verticles    units         degrees_north      comment       `by GCS_WGS_84, decreasing from north to south, vertices ordering anti-clock from left-low corner        0   area                  	long_name         $area of grid cell in radians squared   coordinates       xc yc      units         radian2       �  0   area_km2                  	long_name         area of grid cell in km squared    coordinates       xc yc      units         km^2      �  �   mask                  	long_name         domain mask    note      unitless   coordinates       xc yc      comment       $0 value indicates cell is not active      @  0   frac                  	long_name         $fraction of grid cell that is active   coordinates       xc yc      note      unitless   filter1       =error if frac> 1.0+eps or frac < 0.0-eps; eps = 0.1000000E-11      filter2       Jlimit frac to [fminval,fmaxval]; fminval= 0.1000000E-02 fmaxval=  1.000000        �  p�b��z%'��b�\��@��b�
��Y��b���9s@Q%�ae�@Q&����@Q'0p(�@Q'����J�b��z%'��b�\��@��b�
��Y��b���9s�b��z%'��b�\��@��b�
��Y��b���9s�b��z%'��b�\��@��b�
��Y��b���9s�b��z%'��b�\��@��b�
��Y��b���9s@Q%�ae�@Q%�ae�@Q%�ae�@Q%�ae�@Q&����@Q&����@Q&����@Q&����@Q'0p(�@Q'0p(�@Q'0p(�@Q'0p(�@Q'����J@Q'����J@Q'����J@Q'����J                  	   
                                                                                                                                    �b��z%'��b�\��@��b�
��Y��b���9s�b��z%'��b�\��@��b�
��Y��b���9s�b��z%'��b�\��@��b�
��Y��b���9s�b��z%'��b�\��@��b�
��Y��b���9s@Q'����J@Q'����J@Q'����J@Q'����J@Q'0p(�@Q'0p(�@Q'0p(�@Q'0p(�@Q&����@Q&����@Q&����@Q&����@Q%�ae�@Q%�ae�@Q%�ae�@Q%�ae��b��ew
�b����47�b����47�b��ew
�b����47�b�3�/Mc�b�3�/Mc�b����47�b�3�/Mc�b���f��b���f��b�3�/Mc�b���f��b��
���b��
���b���f��b��ew
�b����47�b����47�b��ew
�b����47�b�3�/Mc�b�3�/Mc�b����47�b�3�/Mc�b���f��b���f��b�3�/Mc�b���f��b��
���b��
���b���f��b��ew
�b����47�b����47�b��ew
�b����47�b�3�/Mc�b�3�/Mc�b����47�b�3�/Mc�b���f��b���f��b�3�/Mc�b���f��b��
���b��
���b���f��b��ew
�b����47�b����47�b��ew
�b����47�b�3�/Mc�b�3�/Mc�b����47�b�3�/Mc�b���f��b���f��b�3�/Mc�b���f��b��
���b��
���b���f�@Q($;;��@Q($;;��@Q'����@Q'����@Q($;;��@Q($;;��@Q'����@Q'����@Q($;;��@Q($;;��@Q'����@Q'����@Q($;;��@Q($;;��@Q'����@Q'����@Q'����@Q'����@Q&�,w��@Q&�,w��@Q'����@Q'����@Q&�,w��@Q&�,w��@Q'����@Q'����@Q&�,w��@Q&�,w��@Q'����@Q'����@Q&�,w��@Q&�,w��@Q&�,w��@Q&�,w��@Q&<�W@Q&<�W@Q&�,w��@Q&�,w��@Q&<�W@Q&<�W@Q&�,w��@Q&�,w��@Q&<�W@Q&<�W@Q&�,w��@Q&�,w��@Q&<�W@Q&<�W@Q&<�W@Q&<�W@Q%��,(@Q%��,(@Q&<�W@Q&<�W@Q%��,(@Q%��,(@Q&<�W@Q&<�W@Q%��,(@Q%��,(@Q&<�W@Q&<�W@Q%��,(@Q%��,(>`4����?>`4����?>`4����?>`4����?>`4����?>`4����?>`4����?>`4����?>`4����?>`4����?>`4����?>`4����?>`4����?>`4����?>`4����?>`4����??ܕ�G���?ܕ�G���?ܕ�G���?ܕ�G���?ܙ�)�?ܙ�)�?ܙ�)�?ܙ�)�?ܜPVLm�?ܜPVLm�?ܜPVLm�?ܜPVLm�?ܟ��jU?ܟ��jU?ܟ��jU?ܟ��jU                                                ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      