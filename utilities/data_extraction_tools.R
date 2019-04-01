###############################################################################
#
# Functions to extract data from MIMIC-III via PostgreSQL.
#
# Written by Brandon Cummings, 2019 for SOCR. For more information, please see:
# Statistics Online Computational Resource (http://www.socr.umich.edu/)
#

###############################################################################
#
# OPEN.CONNECTION: a function to open a connection object to the PostgreSQL
# database via RPostgreSQL. Output is an open SQL connection object.
#

open.connection <- function() {
  library('RPostgreSQL')
  
  con <- dbConnect(dbDriver('PostgreSQL'),
                   dbname = 'mimic',
                   host = '127.0.0.1',
                   port = '5432',
                   user = 'postgres',
                   password = 'postgres')
  
  invisible(dbExecute(con, paste("SET search_path TO ",
                                 schema = 'mimiciii',
                                 sep=" ")))
  
  return (con)
}

###############################################################################
#
# GET.TABLE: a function to output a full SQL table. Use only with smaller
# tables such as D_DIAGNOSES_ICD.
#

get.table <- function(con, table.name) {
  return( 
    dbGetQuery(con, sprintf("SELECT * 
                             FROM %s", table.name))
  )
}

###############################################################################
#
# BUILD.COHORT: a function to extract subject and admission identifiers based
# on a list of ICD9 diagnoses codes.
#

build.cohort <- function(con, icd9_codes) {
  return( 
    dbGetQuery(con, sprintf("SELECT *
                             FROM DIAGNOSES_ICD
                             WHERE icd9_code IN ('%s')",
                             paste(as.character(icd9_codes), collapse="', '")))
  )
}
