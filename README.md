# Purpose
This GitHub repository contains a useful programme to split files in the REGWEB domain. It splits a file containing all regional transport indicators into separate files for each indicator, thus respecting the structure expected by the Transport Information System.

# Requirements
In order to run the Programme, you will need an installation of R on your PC (version 3.3.1 or above). The programme only uses base R, and therefore does not require external libraries.

# Description of the contents of the programme
The programme downloaded contains the following elements:
* _Splitting_script.R script_: this is the file containing the R script which generates the prefilled SDMX-ML files that can be uploaded to the ESS-MH.
* _Parameters folder_: this folder contains a *params.csv*, where some parameters used by the script can be set, and a *Mapping.csv* file, which maps the indicator codes of the input file to the EDAMIS dataset names to be used in the output files.
* _Input folder_: this folder contains the input CSV file that contains all regional transport indicators. The GitHub repository contains a sample input file.
* _Output folder_: this folder if the place where the R script will generate the files split by regional transport indicator. The GitHub repository contains some sample output files.

# Configuring the programme to run correctly on your computer
Once you have downloaded and unzipped the contents of this GitHub repository on your own computer, you must tell the R script where you have unzipped the programme so that it knows where it can find the different input / output folders it expects.

To do this, open the *Splitting_script.R* script with any text editor. At the beginning of the script, you will find a variable called *path ← "....."* (see screenshot below). Replace the default value of path with the path to the working directory you have unzipped the programme in and save the file.


The *Parameters* folder



