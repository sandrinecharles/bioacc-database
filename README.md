# bioacc-database
This database contains a wide collection of raw data sets extracted from the scientific literature in support of TK modelling to be performed with the MOSAIC_bioacc web application (https://mosaic.univ-lyon1.fr/bioacc/).

All data sets are summarized by:
- the name of the file of the data set (directly downloadable)
- the organism tested (genus)
- the category of the organism (e.g. aquatic, terrestrial, etc.)
- the substance tested
- the time at the end of the accumulation phase (tacc)
- the exposure route tested and for which we have data (e.g. water, sediment, food, pore water)
- the total number of data in the dataset (number of replicate(s))
- the kinetic bioaccumulation factor median value with its 95% credible intervals
- the report in .pdf (directly downloadable)
- the reference or source of the data set
- possible comments added (e.g. lipid fraction, growth, biotransformation)

The file TK_database.Rmd is the main file to compile the database.
The file database_update.csv is the main file for the database in .csv format.
The file TK_database.html is the main file for the database in HTML format.
