#####
###
###MAIN PROGRAMME
###
#####

###
#SET GLOBAL VARIABLES
###

path <- "U:/B5_SHARED_DISK/SDMX/Implementation/Projects/E3_REGWEB/R script for splitting/"
params.rel.path <- "Parameters/"
input.rel.path <- "Input/"
output.rel.path <- "Output/"
params.file <- "params.csv"
mapping.file <- "Mapping.csv"

###
#LOAD PARAMETER FILES
###

params <- read.csv(paste0(path, params.rel.path, params.file), header=FALSE, sep = ";", row.names = 1, stringsAsFactors = FALSE)

if(!("IndicatorColumn" %in% row.names(params))) stop("No row named IndicatorColumn in params file!")
indicator.column <- as.numeric(params["IndicatorColumn",1])

mapping <- read.csv(paste0(path, params.rel.path, mapping.file), header=TRUE, sep = ";")

if(!("INDICATOR" %in% colnames(mapping))) stop("No column named INDICATOR in mapping file!")
if(!("EDAMIS" %in% colnames(mapping))) stop("No column named EDAMIS in mapping file!")

###
#LOAD AND CYCLE THROUGH INPUT FILES
###

input.list <- list.files(paste0(path,input.rel.path), pattern = ".+(\\.csv)$")

wrong.names <- input.list[!grepl("^[A-Z]*_[A-Z]*_.{1}_.{2}_[0-9]{4}_[0-9]{4}_V[0-9]{4}\\.csv$", input.list)]

if (length(wrong.names)>0) stop(paste("The following input files do not respect the EDAMIS Dataset Naming Convention:", wrong.names))

for(element in input.list){
  
  input <- read.csv(paste0(path, input.rel.path, element), header=FALSE, sep = ";")
  
  year.pos <- gregexpr("_", element)[[1]][4]
  input.year <- substr(element, year.pos+1, year.pos+4)
  
  country.pos <- gregexpr("_", element)[[1]][3]
  input.country <- substr(element, country.pos+1, country.pos+2)
  
  version.pos <- gregexpr("_", element)[[1]][5]
  input.version <- substr(element, version.pos+1, version.pos+10)
  
  indicator.list <- input[!duplicated(input[, indicator.column]), indicator.column]
  
  for(indicator in indicator.list){
    
    edamis.name <- mapping$EDAMIS[which(mapping$INDICATOR == indicator)]
    output.file.name <- paste0(path, output.rel.path, "REGWEB_", edamis.name, "_A_", input.country, "_", input.year, "_", input.version, ".csv")
    
    write.table(input[input[,indicator.column] == indicator, -indicator.column], file = output.file.name, sep=";", row.names = FALSE, col.names = FALSE, na = "", quote = FALSE)
    
  }
  
}
