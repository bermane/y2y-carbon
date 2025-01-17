# install wdpar package
# install.packages('wdpar')

# load libraries
library(sf)
library(wdpar)

# read WDPA_WDOECM shapefile
wdpa_wdoecm <- st_read('/Users/bermane/Team Braintree Dropbox/Ethan Berman/Python Projects/y2y-carbon/land_cover/protected_areas_WDPA_WDOECM.shp')

# clean WDPA data
wdpa_wdoecm_clean <- wdpa_clean(wdpa_wdoecm, geometry_precision = 10000)

# export to disk
st_write(wdpa_wdoecm_clean, '/Users/bermane/Team Braintree Dropbox/Ethan Berman/Python Projects/y2y-carbon/land_cover/protected_areas_WDPA_WDOECM_clean.shp')
