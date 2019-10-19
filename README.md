# Purpose
This GitHub repository contains a useful programme to split files in the REGWEB domain. It splits a file containing all regional transport indicators into separate files for each indicator, thus respecting the structure expected by the Transport Information System.

# Requirements
In order to run the Programme, you will need an installation of R on your PC (version 3.3.1 or above). The programme only uses base R, and therefore does not require external libraries.

# Description of the contents of the programme
The programme downloaded contains the following elements:
* _Splitting_Script.R script_: this is the file containing the R script which generates the prefilled SDMX-ML files that can be uploaded to the ESS-MH.
* _Parameters folder_: this folder contains a *params.csv*, where some parameters used by the script can be set, and a *mapping.csv* file, which maps the indicator codes of the input file to the EDAMIS dataset names to be used in the output files.
* _Input folder_: this folder contains the input CSV file that contains all regional transport indicators. The GitHub repository contains a sample input file.
* _Output folder_: this folder if the place where the R script will generate the files split by regional transport indicator. The GitHub repository contains some sample output files.



