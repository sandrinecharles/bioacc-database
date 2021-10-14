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

# Model and inference framework

The generic model and inference process (Bayesian framework) used in this database were developed in several publications: MOSAIC_bioacc user guide (), Ratier et al., 2021, Charles et al., (2021a and 2021b):

  User guide available at: http://lbbe-shiny.univ-lyon1.fr/mosaic-bioacc/data/user_guide.pdf

  Ratier, A., Lopes, C., Multari, G., Mazerolles, V., Carpentier, P., Charles, S. 2021. New perspectives on the calculation of bioaccumulation metrics for active substances in living organisms. Integrated Environmental Assessment and Management.

  Charles, S., Ratier, A., Siberchicot, A., Baudrot, V.,  Lopes, C. 2021a. Taking full advantage of modelling to better assess environmental risk due to xenobiotics-the all-in-one facility MOSAIC. Environmental Science and Pollution Research. https://doi.org/10.1007/s11356-021-15042-7

  Charles, S., Ratier, A., Lopes, C. 2021b. Generic Solving of One-compartment Toxicokinetic Models. Journal of Exploratory Research in Pharmacology. Published online: Sep 30, 2021. doi: 10.14218/JERP.2021.00024.