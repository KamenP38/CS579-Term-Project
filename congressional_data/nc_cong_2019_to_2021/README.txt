Congressional district boundaries for North Carolina from 11/15/19 to 12/31/21 (shapefile)

##Redistricting Data Hub (RDH) Retrieval Date
01/20/21

##Sources
Special thanks to Professor Justin Levitt, founder of All About Redistricting (https://redistricting.lls.edu/) who compiled current and previous legislative boundaries, currently hosted on the AAR website, and shared his sources with the RDH to support our data collection efforts.
The Congressional district boundaries for 11/15/19 to 12/31/21 were retrieved from https://www.ncleg.gov/Files/GIS/Plans_Main/Congress_2019/HB1029%203rd%20Edition%20-%20Shapefile.zip

##Processing
The Congressional district boundaries for North Carolina were retrieved with a python script. 
The shapefiles were unzipped and uploaded to python and renamed with RDH conventions and zipped into a folder with supporting geospatial files and this README. 
Processing was primarily completed using the pandas and geopandas libraries.

##Additional Notes
For more information on the data see the AAR page at: https://redistricting.lls.edu/state/north-carolina
Please direct questions related to processing this dataset to info@redistrictingdatahub.org