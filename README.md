# Purpose
This GitHub repository contains a useful programme to split files in the REGWEB domain. It splits a file containing all regional transport indicators into separate files for each indicator, thus respecting the structure expected by the Transport Information System.

# Requirements
In order to run the Programme, you will need an installation of R on your PC (version 3.3.1 or above). The programme only uses base R, and therefore does not require external libraries.

# Description of the contents of the programme
The programme downloaded contains the following elements:
Prefilling.R script: this is the file containing the R script which generates the prefilled SDMX-ML files that can be uploaded to the ESS-MH.
Parameters folder: this folder contains a single file, "params.csv", where the parameters necessary for your local configuration of the script can be set.
Input folder: this folder contains the Input CSV file that contains the information to be used to prefill the SDMX-ML file. The GitHub repository contains a sample input file.
Template folder: this folder contains the ESS-MH file template the R script will use as a basis for the generation of the SDMX-ML files. The GitHub repository contains a sample template file.
Output folder: this folder if the place where the R script will create the prefilled SDMX-ML files. The GitHub repository contains some sample output files.
Readme and License files: you can ignore these.



