/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 29282
 |      NATIONAL SURVEY OF MIDLIFE DEVELOPMENT IN THE UNITED STATES
 |                (MIDUS II): BIOMARKER PROJECT, 2004-2009
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 29282-0001-statasetup.do)
 |
 **************************************************************************/

set mem 20m  /* Allocating 20 megabyte(s) of RAM for Stata SE to read the
                 data file into memory. */


set more off  /* This prevents the Stata output viewer from pausing the
                 process */

/****************************************************

Section 1: File Specifications
   This section assigns local macros to the necessary files.
   Please edit:
        "data-filename" ==> The name of data file downloaded from ICPSR
        "dictionary-filename" ==> The name of the dictionary file downloaded.
        "stata-datafile" ==> The name you wish to call your Stata data file.

   Note:  We assume that the raw data, dictionary, and setup (this do file) all
          reside in the same directory (or folder).  If that is not the case
          you will need to include paths as well as filenames in the macros.

********************************************************/

local raw_data "data-filename"
local dict "dictionary-filename"
local outfile "stata-datafile"

/********************************************************

Section 2: Infile Command

This section reads the raw data into Stata format.  If Section 1 was defined
properly, there should be no reason to modify this section.  These macros
should inflate automatically.

**********************************************************/

infile using `dict', using (`raw_data') clear


/*********************************************************

Section 3: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/


label data "National Survey of Midlife Development in the United States (MIDUS II): Biomarker Project, 2004-2009"

#delimit ;
label define SAMPLMAJ  1 "MAIN RDD" 2 "SIBLING" 3 "TWIN" 4 "CITY OVERSAMPLE"
                       13 "MILWAUKEE" 14 "BOSTON NEW" ;
label define B1PAGE_M2 98 "REFUSED" 99 "INAPP (NO M2 PARTICIPATION)" ;
label define B1PGENDER 1 "MALE" 2 "FEMALE" ;
label define B4ZSITE   1 "SITE 1 - UCLA" 2 "SITE 2 - UW"
                       3 "SITE 3 - GEORGETOWN" ;
label define B4ZCOMPM  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER" ;
label define B4ZRZONE  1 "EST-Eastern Standard Time"
                       2 "CST-Central Standard Time"
                       3 "MST-Mountain Standard Time"
                       4 "PST-Pacific Standard Time" ;
label define B4ZSZONE  1 "EST-Eastern Standard Time"
                       2 "CST-Central Standard Time"
                       4 "PST-Pacific Standard Time" ;
label define B4ZB1CLG  99 "INAPP" ;
label define B4Q1A     1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1B     1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1C     1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1D     1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1E     1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1F     1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1G     1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1H     1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1I     1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1J     1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1K     1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1L     1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1M     1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1N     1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1O     1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1P     1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1Q     1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1R     1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1S     1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1T     1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1U     1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1V     1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1W     1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1X     1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1Y     1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1Z     1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1AA    1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1BB    1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1CC    1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1DD    1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1EE    1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1FF    1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1GG    1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1HH    1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1II    1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1JJ    1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1KK    1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1LL    1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1MM    1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1NN    1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1OO    1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1PP    1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1QQ    1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1RR    1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1SS    1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1TT    1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1UU    1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1VV    1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1WW    1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1XX    1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1YY    1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1ZZ    1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1AAA   1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1BBB   1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1CCC   1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1DDD   1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1EEE   1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1FFF   1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1GGG   1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1HHH   1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1III   1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1JJJ   1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1KKK   1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q1LLL   1 "NOT AT ALL" 2 "A LITTLE BIT" 3 "MODERATELY"
                       4 "QUITE A BIT" 5 "EXTREMELY" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4QMA_D   98 "NOT CALCULATED (Due to missing data)" ;
label define B4QMA_A   98 "NOT CALCULATED (Due to missing data)" ;
label define B4QMA_LI  98 "NOT CALCULATED (Due to missing data)" ;
label define B4QMA_AA  98 "NOT CALCULATED (Due to missing data)" ;
label define B4QMA_PA  98 "NOT CALCULATED (Due to missing data)" ;
label define B4Q2      0 "WORST" 1 "1" 2 "2" 3 "3" 4 "4" 5 "5" 6 "6" 7 "7"
                       8 "8" 9 "9" 10 "BEST" 97 "DONT KNOW" 98 "MISSING"
                       99 "INAPP" ;
label define B4Q3A     1 "RARELY OR NONE OF THE TIME"
                       2 "SOME OR A LITTLE OF THE TIME" 3 "OCCASIONALLY"
                       4 "MOST OR ALL OF THE TIME" 7 "DONT KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4Q3B     1 "RARELY OR NONE OF THE TIME"
                       2 "SOME OR A LITTLE OF THE TIME" 3 "OCCASIONALLY"
                       4 "MOST OR ALL OF THE TIME" 7 "DONT KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4Q3C     1 "RARELY OR NONE OF THE TIME"
                       2 "SOME OR A LITTLE OF THE TIME" 3 "OCCASIONALLY"
                       4 "MOST OR ALL OF THE TIME" 7 "DONT KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4Q3D     1 "RARELY OR NONE OF THE TIME"
                       2 "SOME OR A LITTLE OF THE TIME" 3 "OCCASIONALLY"
                       4 "MOST OR ALL OF THE TIME" 7 "DONT KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4Q3E     1 "RARELY OR NONE OF THE TIME"
                       2 "SOME OR A LITTLE OF THE TIME" 3 "OCCASIONALLY"
                       4 "MOST OR ALL OF THE TIME" 7 "DONT KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4Q3F     1 "RARELY OR NONE OF THE TIME"
                       2 "SOME OR A LITTLE OF THE TIME" 3 "OCCASIONALLY"
                       4 "MOST OR ALL OF THE TIME" 7 "DONT KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4Q3G     1 "RARELY OR NONE OF THE TIME"
                       2 "SOME OR A LITTLE OF THE TIME" 3 "OCCASIONALLY"
                       4 "MOST OR ALL OF THE TIME" 7 "DONT KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4Q3H     1 "RARELY OR NONE OF THE TIME"
                       2 "SOME OR A LITTLE OF THE TIME" 3 "OCCASIONALLY"
                       4 "MOST OR ALL OF THE TIME" 7 "DONT KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4Q3I     1 "RARELY OR NONE OF THE TIME"
                       2 "SOME OR A LITTLE OF THE TIME" 3 "OCCASIONALLY"
                       4 "MOST OR ALL OF THE TIME" 7 "DONT KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4Q3J     1 "RARELY OR NONE OF THE TIME"
                       2 "SOME OR A LITTLE OF THE TIME" 3 "OCCASIONALLY"
                       4 "MOST OR ALL OF THE TIME" 7 "DONT KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4Q3K     1 "RARELY OR NONE OF THE TIME"
                       2 "SOME OR A LITTLE OF THE TIME" 3 "OCCASIONALLY"
                       4 "MOST OR ALL OF THE TIME" 7 "DONT KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4Q3L     1 "RARELY OR NONE OF THE TIME"
                       2 "SOME OR A LITTLE OF THE TIME" 3 "OCCASIONALLY"
                       4 "MOST OR ALL OF THE TIME" 7 "DONT KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4Q3M     1 "RARELY OR NONE OF THE TIME"
                       2 "SOME OR A LITTLE OF THE TIME" 3 "OCCASIONALLY"
                       4 "MOST OR ALL OF THE TIME" 7 "DONT KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4Q3N     1 "RARELY OR NONE OF THE TIME"
                       2 "SOME OR A LITTLE OF THE TIME" 3 "OCCASIONALLY"
                       4 "MOST OR ALL OF THE TIME" 7 "DONT KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4Q3O     1 "RARELY OR NONE OF THE TIME"
                       2 "SOME OR A LITTLE OF THE TIME" 3 "OCCASIONALLY"
                       4 "MOST OR ALL OF THE TIME" 7 "DONT KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4Q3P     1 "RARELY OR NONE OF THE TIME"
                       2 "SOME OR A LITTLE OF THE TIME" 3 "OCCASIONALLY"
                       4 "MOST OR ALL OF THE TIME" 7 "DONT KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4Q3Q     1 "RARELY OR NONE OF THE TIME"
                       2 "SOME OR A LITTLE OF THE TIME" 3 "OCCASIONALLY"
                       4 "MOST OR ALL OF THE TIME" 7 "DONT KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4Q3R     1 "RARELY OR NONE OF THE TIME"
                       2 "SOME OR A LITTLE OF THE TIME" 3 "OCCASIONALLY"
                       4 "MOST OR ALL OF THE TIME" 7 "DONT KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4Q3S     1 "RARELY OR NONE OF THE TIME"
                       2 "SOME OR A LITTLE OF THE TIME" 3 "OCCASIONALLY"
                       4 "MOST OR ALL OF THE TIME" 7 "DONT KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4Q3T     1 "RARELY OR NONE OF THE TIME"
                       2 "SOME OR A LITTLE OF THE TIME" 3 "OCCASIONALLY"
                       4 "MOST OR ALL OF THE TIME" 7 "DONT KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4QCESD   98 "NOT CALCULATED (Due to missing data)" ;
label define B4Q4A     1 "NEVER" 2 "ALMOST NEVER" 3 "SOMETIMES"
                       4 "FAIRLY OFTEN" 5 "VERY OFTEN" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q4B     1 "NEVER" 2 "ALMOST NEVER" 3 "SOMETIMES"
                       4 "FAIRLY OFTEN" 5 "VERY OFTEN" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q4C     1 "NEVER" 2 "ALMOST NEVER" 3 "SOMETIMES"
                       4 "FAIRLY OFTEN" 5 "VERY OFTEN" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q4D     1 "NEVER" 2 "ALMOST NEVER" 3 "SOMETIMES"
                       4 "FAIRLY OFTEN" 5 "VERY OFTEN" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q4E     1 "NEVER" 2 "ALMOST NEVER" 3 "SOMETIMES"
                       4 "FAIRLY OFTEN" 5 "VERY OFTEN" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q4F     1 "NEVER" 2 "ALMOST NEVER" 3 "SOMETIMES"
                       4 "FAIRLY OFTEN" 5 "VERY OFTEN" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q4G     1 "NEVER" 2 "ALMOST NEVER" 3 "SOMETIMES"
                       4 "FAIRLY OFTEN" 5 "VERY OFTEN" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q4H     1 "NEVER" 2 "ALMOST NEVER" 3 "SOMETIMES"
                       4 "FAIRLY OFTEN" 5 "VERY OFTEN" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q4I     1 "NEVER" 2 "ALMOST NEVER" 3 "SOMETIMES"
                       4 "FAIRLY OFTEN" 5 "VERY OFTEN" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q4J     1 "NEVER" 2 "ALMOST NEVER" 3 "SOMETIMES"
                       4 "FAIRLY OFTEN" 5 "VERY OFTEN" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4QPS_PS  98 "NOT CALCULATED (Due to missing data)" ;
label define B4Q5A     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q5B     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q5C     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q5D     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q5E     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q5F     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q5G     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q5H     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q5I     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q5J     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q5K     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q5L     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q5M     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q5N     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q5O     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q5P     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q5Q     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q5R     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q5S     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q5T     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4QAE_AI  98 "NOT CALCULATED (Due to missing data)" ;
label define B4QAE_AO  98 "NOT CALCULATED (Due to missing data)" ;
label define B4QAE_AC  98 "NOT CALCULATED (Due to missing data)" ;
label define B4Q5U     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q5V     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4QAE_AA  8 "NOT CALCULATED (Due to missing data)" ;
label define B4Q6A     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q6B     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q6C     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q6D     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q6E     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q6F     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q6G     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q6H     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q6I     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q6J     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q6K     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q6L     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q6M     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q6N     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q6O     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4QTA_AG  98 "NOT CALCULATED (Due to missing data)" ;
label define B4QTA_AT  98 "NOT CALCULATED (Due to missing data)" ;
label define B4QTA_AR  98 "NOT CALCULATED (Due to missing data)" ;
label define B4Q7A     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q7B     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q7C     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q7D     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q7E     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q7F     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q7G     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q7H     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q7I     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q7J     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q7K     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q7L     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q7M     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q7N     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q7O     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q7P     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q7Q     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q7R     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q7S     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q7T     1 "ALMOST NEVER" 2 "SOMETIMES" 3 "OFTEN"
                       4 "ALMOST ALWAYS" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4QTA_AX  98 "NOT CALCULATED (Due to missing data)" ;
label define B4Q8A     1 "NONE" 2 "MILD" 3 "MODERATE" 4 "SEVERE"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q8B     1 "NONE" 2 "MILD" 3 "MODERATE" 4 "SEVERE"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q8C     1 "NONE" 2 "MILD" 3 "MODERATE" 4 "SEVERE"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q8D     1 "NONE" 2 "MILD" 3 "MODERATE" 4 "SEVERE"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q8E     1 "NONE" 2 "MILD" 3 "MODERATE" 4 "SEVERE"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q8F     1 "NONE" 2 "MILD" 3 "MODERATE" 4 "SEVERE"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q8G     1 "NONE" 2 "MILD" 3 "MODERATE" 4 "SEVERE"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q8H     1 "NONE" 2 "MILD" 3 "MODERATE" 4 "SEVERE"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q8I     1 "NONE" 2 "MILD" 3 "MODERATE" 4 "SEVERE"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4QSA_SA  8 "NOT CALCULATED (Due to missing data)" ;
label define B4Q9A     1 "NEVER TRUE" 2 "RARELY TRUE" 3 "SOMETIMES TRUE"
                       4 "OFTEN TRUE" 5 "VERY OFTEN TRUE" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q9B     1 "NEVER TRUE" 2 "RARELY TRUE" 3 "SOMETIMES TRUE"
                       4 "OFTEN TRUE" 5 "VERY OFTEN TRUE" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q9C     1 "NEVER TRUE" 2 "RARELY TRUE" 3 "SOMETIMES TRUE"
                       4 "OFTEN TRUE" 5 "VERY OFTEN TRUE" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q9D     1 "NEVER TRUE" 2 "RARELY TRUE" 3 "SOMETIMES TRUE"
                       4 "OFTEN TRUE" 5 "VERY OFTEN TRUE" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q9E     1 "NEVER TRUE" 2 "RARELY TRUE" 3 "SOMETIMES TRUE"
                       4 "OFTEN TRUE" 5 "VERY OFTEN TRUE" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q9F     1 "NEVER TRUE" 2 "RARELY TRUE" 3 "SOMETIMES TRUE"
                       4 "OFTEN TRUE" 5 "VERY OFTEN TRUE" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q9G     1 "NEVER TRUE" 2 "RARELY TRUE" 3 "SOMETIMES TRUE"
                       4 "OFTEN TRUE" 5 "VERY OFTEN TRUE" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q9H     1 "NEVER TRUE" 2 "RARELY TRUE" 3 "SOMETIMES TRUE"
                       4 "OFTEN TRUE" 5 "VERY OFTEN TRUE" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q9I     1 "NEVER TRUE" 2 "RARELY TRUE" 3 "SOMETIMES TRUE"
                       4 "OFTEN TRUE" 5 "VERY OFTEN TRUE" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q9J     1 "NEVER TRUE" 2 "RARELY TRUE" 3 "SOMETIMES TRUE"
                       4 "OFTEN TRUE" 5 "VERY OFTEN TRUE" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q9K     1 "NEVER TRUE" 2 "RARELY TRUE" 3 "SOMETIMES TRUE"
                       4 "OFTEN TRUE" 5 "VERY OFTEN TRUE" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q9L     1 "NEVER TRUE" 2 "RARELY TRUE" 3 "SOMETIMES TRUE"
                       4 "OFTEN TRUE" 5 "VERY OFTEN TRUE" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q9M     1 "NEVER TRUE" 2 "RARELY TRUE" 3 "SOMETIMES TRUE"
                       4 "OFTEN TRUE" 5 "VERY OFTEN TRUE" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q9N     1 "NEVER TRUE" 2 "RARELY TRUE" 3 "SOMETIMES TRUE"
                       4 "OFTEN TRUE" 5 "VERY OFTEN TRUE" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q9O     1 "NEVER TRUE" 2 "RARELY TRUE" 3 "SOMETIMES TRUE"
                       4 "OFTEN TRUE" 5 "VERY OFTEN TRUE" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q9P     1 "NEVER TRUE" 2 "RARELY TRUE" 3 "SOMETIMES TRUE"
                       4 "OFTEN TRUE" 5 "VERY OFTEN TRUE" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q9Q     1 "NEVER TRUE" 2 "RARELY TRUE" 3 "SOMETIMES TRUE"
                       4 "OFTEN TRUE" 5 "VERY OFTEN TRUE" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q9R     1 "NEVER TRUE" 2 "RARELY TRUE" 3 "SOMETIMES TRUE"
                       4 "OFTEN TRUE" 5 "VERY OFTEN TRUE" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q9S     1 "NEVER TRUE" 2 "RARELY TRUE" 3 "SOMETIMES TRUE"
                       4 "OFTEN TRUE" 5 "VERY OFTEN TRUE" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q9T     1 "NEVER TRUE" 2 "RARELY TRUE" 3 "SOMETIMES TRUE"
                       4 "OFTEN TRUE" 5 "VERY OFTEN TRUE" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q9U     1 "NEVER TRUE" 2 "RARELY TRUE" 3 "SOMETIMES TRUE"
                       4 "OFTEN TRUE" 5 "VERY OFTEN TRUE" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q9V     1 "NEVER TRUE" 2 "RARELY TRUE" 3 "SOMETIMES TRUE"
                       4 "OFTEN TRUE" 5 "VERY OFTEN TRUE" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q9W     1 "NEVER TRUE" 2 "RARELY TRUE" 3 "SOMETIMES TRUE"
                       4 "OFTEN TRUE" 5 "VERY OFTEN TRUE" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q9X     1 "NEVER TRUE" 2 "RARELY TRUE" 3 "SOMETIMES TRUE"
                       4 "OFTEN TRUE" 5 "VERY OFTEN TRUE" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q9Y     1 "NEVER TRUE" 2 "RARELY TRUE" 3 "SOMETIMES TRUE"
                       4 "OFTEN TRUE" 5 "VERY OFTEN TRUE" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q9Z     1 "NEVER TRUE" 2 "RARELY TRUE" 3 "SOMETIMES TRUE"
                       4 "OFTEN TRUE" 5 "VERY OFTEN TRUE" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q9AA    1 "NEVER TRUE" 2 "RARELY TRUE" 3 "SOMETIMES TRUE"
                       4 "OFTEN TRUE" 5 "VERY OFTEN TRUE" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q9BB    1 "NEVER TRUE" 2 "RARELY TRUE" 3 "SOMETIMES TRUE"
                       4 "OFTEN TRUE" 5 "VERY OFTEN TRUE" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4QCT_EA  98 "NOT CALCULATED (Due to missing data)" ;
label define B4QCT_PA  98 "NOT CALCULATED (Due to missing data)" ;
label define B4QCT_SA  98 "NOT CALCULATED (Due to missing data)" ;
label define B4QCT_EN  98 "NOT CALCULATED (Due to missing data)" ;
label define B4QCT_PN  98 "NOT CALCULATED (Due to missing data)" ;
label define B4QCT_MD  8 "NOT CALCULATED (Due to missing data)" ;
label define B4Q10A1   1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10A2   1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10B1   1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10B2   1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10C1   1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10C2   1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10D1   1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10D2   1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10E1   1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10E2   1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10F1   1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10F2   1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10G1   1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10G2   1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10H1   1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10H2   1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10I1   1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10I2   1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10J1   1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10J2   1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10K1   1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10K2   1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10L1   1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10L2   1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10M1   1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10M2   1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10N1   1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10N2   1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10O1   1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10O2   1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10P1   1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10P2   1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10Q1   1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10Q2   1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10R1   1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10R2   1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10S1   1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10S2   1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10T1   1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10T2   1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10U1   1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10U2   1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10V1   1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10V2   1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10W1   1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10W2   1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10X1   1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10X2   1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10Y1   1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10Y2   1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10Z1   1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10Z2   1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10AA1  1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10AA2  1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10BB1  1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10BB2  1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10CC1  1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10CC2  1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10DD1  1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10DD2  1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10EE1  1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10EE2  1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10FF1  1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10FF2  1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10GG1  1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10GG2  1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10HH1  1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10HH2  1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10II1  1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10II2  1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10JJ1  1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10JJ2  1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10KK1  1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10KK2  1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10LL1  1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10LL2  1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10MM1  1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10MM2  1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10NN1  1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10NN2  1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10OO1  1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10OO2  1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10PP1  1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10PP2  1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10QQ1  1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10QQ2  1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10RR1  1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10RR2  1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10SS1  1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10SS2  1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10TT1  1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10TT2  1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10UU1  1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10UU2  1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10VV1  1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10VV2  1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q10WW1  1 "NEVER" 2 "1-6 TIMES" 3 "7+ TIMES" 7 "DONT KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4Q10WW2  1 "NEUTRAL OR UNPLEASANT" 2 "SOMEWHAT PLEASANT"
                       3 "VERY PLEASANT" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q11A    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q11B    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q11C    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q11D    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q11E    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q11F    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q11G    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q11H    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q11I    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q11J    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q11K    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q11L    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q11M    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q11N    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q11O    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q11P    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q11Q    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q11R    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q11S    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q11T    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q11U    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q11V    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q11W    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q11X    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q11Y    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q11Z    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q11AA   1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q11BB   1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q11CC   1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4QSC_ID  8 "NOT CALCULATED (Due to missing data)" ;
label define B4QSC_IT  8 "NOT CALCULATED (Due to missing data)" ;
label define B4QSO_PC  8 "NOT CALCULATED (Due to missing data)" ;
label define B4QSO_PF  8 "NOT CALCULATED (Due to missing data)" ;
label define B4QSO_PX  8 "NOT CALCULATED (Due to missing data)" ;
label define B4QSO_IW  8 "NOT CALCULATED (Due to missing data)" ;
label define B4QSO_GW  8 "NOT CALCULATED (Due to missing data)" ;
label define B4Q12A    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q12B    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q12C    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q12D    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q12E    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q12F    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q12G    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q12H    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q12I    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q12J    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q12K    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q12L    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q12M    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q12N    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q12O    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q12P    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q12Q    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q12R    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q12S    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q12T    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q12U    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4QRISC   8 "NOT CALCULATED (Due to missing data)" ;
label define B4QSYMP   8 "NOT CALCULATED (Due to missing data)" ;
label define B4QADJ    8 "NOT CALCULATED (Due to missing data)" ;
label define B4Q13A    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q13B    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q13C    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q13D    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q13E    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q13F    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q13G    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q13H    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q13H1   1 "0-5" 2 "6-10" 3 "11-20" 4 "21-50" 5 "51+"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q13I    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q13J    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q13K    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q13L    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q13M    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q13N    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q13O1   1 "YES" 2 "NO" 7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q13O    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q13P    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q13Q    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q13R    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q13S    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q13T    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q13U    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q13V    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q13W    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q13X    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q13Y    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q13Z    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4QSUGF   8 "NOT CALCULATED (Due to missing data)" ;
label define B4QSTGF   8 "NOT CALCULATED (Due to missing data)" ;
label define B4QSOGFD  8 "NOT CALCULATED (Due to missing data)" ;
label define B4QSUGFA  8 "NOT CALCULATED (Due to missing data)" ;
label define B4QSTGFA  8 "NOT CALCULATED (Due to missing data)" ;
label define B4QSOGFM  8 "NOT CALCULATED (Due to missing data)" ;
label define B4QSUGS   8 "NOT CALCULATED (Due to missing data)"
                       9 "NOT CALCULATED (Due to INAPP data)" ;
label define B4QSTGS   8 "NOT CALCULATED (Due to missing data)"
                       9 "NOT CALCULATED (Due to INAPP data)" ;
label define B4QSOLGS  8 "NOT CALCULATED (Due to missing data)"
                       9 "NOT CALCULATED (Due to INAPP data)" ;
label define B4Q14A    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q14B    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q14C    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q14D    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q14E    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q14F    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q14G    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q14H    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q14I    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q14J    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q14K    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q14L    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q14M    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q14N    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q14O    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q14P    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q14Q    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q14R    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q14S    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4QSC_SC  8 "NOT CALCULATED (Due to missing data)" ;
label define B4QSC_CC  8 "NOT CALCULATED (Due to missing data)" ;
label define B4QSC_EC  8 "NOT CALCULATED (Due to missing data)" ;
label define B4QSC_BC  8 "NOT CALCULATED (Due to missing data)" ;
label define B4Q15A    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q15B    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q15C    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q15D    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q15E    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q15F    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q15G    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4Q15H    1 "STRONGLY DISAGREE" 2 "DISAGREE"
                       3 "SLIGHTLY DISAGREE" 4 "NEUTRAL" 5 "SLIGHTLY AGREE"
                       6 "AGREE" 7 "STRONGLY AGREE" 97 "DONT KNOW"
                       98 "MISSING" 99 "INAPP" ;
label define B4QSW_SL  8 "NOT CALCULATED (Due to missing data)" ;
label define B4QSW_GR  8 "NOT CALCULATED (Due to missing data)" ;
label define B4Q16A    1 "NOT AT ALL IMPORTANT" 2 "SOMEWHAT IMPORTANT"
                       3 "VERY IMPORTANT" 4 "EXTREMELY IMPORTANT"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q16B    1 "NOT AT ALL IMPORTANT" 2 "SOMEWHAT IMPORTANT"
                       3 "VERY IMPORTANT" 4 "EXTREMELY IMPORTANT"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q16C    1 "NOT AT ALL IMPORTANT" 2 "SOMEWHAT IMPORTANT"
                       3 "VERY IMPORTANT" 4 "EXTREMELY IMPORTANT"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q16D    1 "NOT AT ALL IMPORTANT" 2 "SOMEWHAT IMPORTANT"
                       3 "VERY IMPORTANT" 4 "EXTREMELY IMPORTANT"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q16E    1 "NOT AT ALL IMPORTANT" 2 "SOMEWHAT IMPORTANT"
                       3 "VERY IMPORTANT" 4 "EXTREMELY IMPORTANT"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q16F    1 "NOT AT ALL IMPORTANT" 2 "SOMEWHAT IMPORTANT"
                       3 "VERY IMPORTANT" 4 "EXTREMELY IMPORTANT"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q16G    1 "NOT AT ALL IMPORTANT" 2 "SOMEWHAT IMPORTANT"
                       3 "VERY IMPORTANT" 4 "EXTREMELY IMPORTANT"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4Q16H    1 "NOT AT ALL IMPORTANT" 2 "SOMEWHAT IMPORTANT"
                       3 "VERY IMPORTANT" 4 "EXTREMELY IMPORTANT"
                       7 "DONT KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4QSW_JP  8 "NOT CALCULATED (Due to missing data)" ;
label define B4Q17A    6 "CODING PENDING" 98 "MISSING" ;
label define B4S1AMPM  1 "1=AM" 2 "2=PM" 7 "7=DONT KNOW" 8 "8=MISSING"
                       9 "9=INAPP" ;
label define B4S2      9997 "DONT KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4S3AMPM  1 "1=AM" 2 "2=PM" 7 "7=DONT KNOW" 8 "8=MISSING"
                       9 "9=INAPP" ;
label define B4S4      9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4S5      1 "1=VERY GOOD" 2 "2=FAIRLY GOOD" 3 "3=FAIRLY BAD"
                       4 "4=VERY BAD" 7 "7=DONT KNOW" 8 "8=MISSING"
                       9 "9=INAPP" ;
label define B4S6      1 "1=NO PROBLEM" 2 "2=SLIGHT PROBLEM" 3 "3=SOMEWHAT"
                       4 "4=VERY BIG" 7 "7=DONT KNOW" 8 "8=MISSING"
                       9 "9=INAPP" ;
label define B4S7      1 "1=NOT DURING PAST MONTH" 2 "2=LESS THAN 1X WEEK"
                       3 "3=1-2 X WEEK" 4 "4=3+ WEEK" 7 "7=DONT KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4S8      1 "1=NOT DURING PAST MONTH" 2 "2=LESS THAN 1X WEEK"
                       3 "3=1-2 X WEEK" 4 "4=3+ WEEK" 7 "7=DONT KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4S9      1 "1=NO BED PARTNER" 2 "2=OTHER ROOM" 3 "3=SAME ROOM"
                       4 "4=SAME BED" 7 "7=DONT KNOW" 8 "8=MISSING"
                       9 "9=INAPP" ;
label define B4S10A    1 "1=NOT DURING PAST MONTH" 2 "2=LESS THAN 1 X WEEK"
                       3 "3=1-2 X WEEK" 4 "4=3+ WEEK" 7 "7=DONT KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4S10B    1 "1=NOT DURING PAST MONTH" 2 "2=LESS THAN 1X WEEK"
                       3 "3=1-2 X WEEK" 4 "4=3+ WEEK" 7 "7=DONT KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4S10C    1 "1=NOT DURING PAST MONTH" 2 "2=LESS THAN 1 X WEEK"
                       3 "3=1-2 X WEEK" 4 "4=3+ WEEK" 7 "7=DONT KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4S10D    1 "1=NOT DURING PAST MONTH" 2 "2=LESS THAN 1 X WEEK"
                       3 "3=1-2 X WEEK" 4 "4=3+ WEEK" 7 "7=DONT KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4S10E    1 "1=NOT DURING PAST MONTH" 2 "2=LESS THAN 1 X WEEK"
                       3 "3=1-2 X WEEK" 4 "4=3+ WEEK" 7 "7=DONT KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4S11A    1 "1=NOT DURING PAST MONTH" 2 "2=LESS THAN 1 X WEEK"
                       3 "3=1-2 X WEEK" 4 "4=3+ WEEK" 7 "7=DONT KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4S11B    1 "1=NOT DURING PAST MONTH" 2 "2=LESS THAN 1 X WEEK"
                       3 "3=1-2 X WEEK" 4 "4=3+ WEEK" 7 "7=DONT KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4S11C    1 "1=NOT DURING PAST MONTH" 2 "2=LESS THAN 1 X WEEK"
                       3 "3=1-2 X WEEK" 4 "4=3+ WEEK" 7 "7=DONT KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4S11D    1 "1=NOT DURING PAST MONTH" 2 "2=LESS THAN 1 X WEEK"
                       3 "3=1-2 X WEEK" 4 "4=3+ WEEK" 7 "7=DONT KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4S11E    1 "1=NOT DURING PAST MONTH" 2 "2=LESS THAN 1 X WEEK"
                       3 "3=1-2 X WEEK" 4 "4=3+ WEEK" 7 "7=DONT KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4S11F    1 "1=NOT DURING PAST MONTH" 2 "2=LESS THAN 1 X WEEK"
                       3 "3=1-2 X WEEK" 4 "4=3+ WEEK" 7 "7=DONT KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4S11G    1 "1=NOT DURING PAST MONTH" 2 "2=LESS THAN 1 X WEEK"
                       3 "3=1-2 X WEEK" 4 "4=3+ WEEK" 7 "7=DONT KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4S11H    1 "1=NOT DURING PAST MONTH" 2 "2=LESS THAN 1 X WEEK"
                       3 "3=1-2 X WEEK" 4 "4=3+ WEEK" 7 "7=DONT KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4S11I    1 "1=NOT DURING PAST MONTH" 2 "2=LESS THAN 1 X WEEK"
                       3 "3=1-2 X WEEK" 4 "4=3+ WEEK" 7 "7=DONT KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4S11J    1 "1=NOT DURING PAST MONTH" 2 "2=LESS THAN 1 X WEEK"
                       3 "3=1-2 X WEEK" 4 "4=3+ WEEK" 7 "7=DONT KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4SSQ_GS  98 "NOT CALCULATED - Due to missing data" ;
label define B4SSQ_S1  8 "NOT CALCULATED - Due to missing data" ;
label define B4SSQ_S2  8 "NOT CALCULATED - Due to missing data" ;
label define B4SSQ_S3  8 "NOT CALCULATED - Due to missing data" ;
label define B4SSQ_S4  8 "NOT CALCULATED - Due to missing data" ;
label define B4SSQ_S5  8 "NOT CALCULATED - Due to missing data" ;
label define B4SSQ_S6  8 "NOT CALCULATED - Due to missing data" ;
label define B4SSQ_S7  8 "NOT CALCULATED - Due to missing data" ;
label define B4H1A     1 "YES" 2 "NO" 3 "BORDERLINE" 7 "UNSURE" 8 "MISSING"
                       9 "INAPP" ;
label define B4H1AD    1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" 9 "INAPP" ;
label define B4H1B     1 "YES" 2 "NO" 3 "BORDERLINE" 7 "UNSURE" 8 "MISSING"
                       9 "INAPP" ;
label define B4H1BD    1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" 9 "INAPP" ;
label define B4H1C     1 "YES" 2 "NO" 3 "BORDERLINE" 7 "UNSURE" 8 "MISSING"
                       9 "INAPP" ;
label define B4H1CD    1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" 9 "INAPP" ;
label define B4H1D     1 "YES" 2 "NO" 3 "BORDERLINE" 7 "UNSURE" 8 "MISSING"
                       9 "INAPP" ;
label define B4H1DD    1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" 9 "INAPP" ;
label define B4H1E     1 "YES" 2 "NO" 3 "BORDERLINE" 7 "UNSURE" 8 "MISSING"
                       9 "INAPP" ;
label define B4H1ED    1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" ;
label define B4H1F     1 "YES" 2 "NO" 3 "BORDERLINE" 7 "UNSURE" 8 "MISSING"
                       9 "INAPP" ;
label define B4H1FD    1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" 9 "INAPP" ;
label define B4H1G     1 "YES" 2 "NO" 3 "BORDERLINE" 7 "UNSURE" 8 "MISSING"
                       9 "INAPP" ;
label define B4H1GD    1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" 9 "INAPP" ;
label define B4H1H     1 "YES" 2 "NO" 3 "BORDERLINE" 7 "UNSURE" 8 "MISSING"
                       9 "INAPP" ;
label define B4H1HD    1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" 9 "INAPP" ;
label define B4H1I     1 "YES" 2 "NO" 3 "BORDERLINE" 7 "UNSURE" 8 "MISSING"
                       9 "INAPP" ;
label define B4H1ID    1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" 9 "INAPP" ;
label define B4H1J     1 "YES" 2 "NO" 3 "BORDERLINE" 7 "UNSURE" 8 "MISSING"
                       9 "INAPP" ;
label define B4H1JD    1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" 9 "INAPP" ;
label define B4H1K     1 "YES" 2 "NO" 3 "BORDERLINE" 7 "UNSURE" 8 "MISSING"
                       9 "INAPP" ;
label define B4H1KD    1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" 9 "INAPP" ;
label define B4H1L     1 "YES" 2 "NO" 3 "BORDERLINE" 7 "UNSURE" 8 "MISSING"
                       9 "INAPP" ;
label define B4H1LD    1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" 9 "INAPP" ;
label define B4H1M     1 "YES" 2 "NO" 3 "BORDERLINE" 7 "UNSURE" 8 "MISSING"
                       9 "INAPP" ;
label define B4H1MD    1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" 9 "INAPP" ;
label define B4H1N     1 "YES" 2 "NO" 3 "BORDERLINE" 7 "UNSURE" 8 "MISSING"
                       9 "INAPP" ;
label define B4H1ND    1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" 9 "INAPP" ;
label define B4H1O     1 "YES" 2 "NO" 3 "BORDERLINE" 7 "UNSURE" 8 "MISSING"
                       9 "INAPP" ;
label define B4H1OD    1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" 9 "INAPP" ;
label define B4H1P     1 "YES" 2 "NO" 3 "BORDERLINE" 7 "UNSURE" 8 "MISSING"
                       9 "INAPP" ;
label define B4H1PD    1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" 9 "INAPP" ;
label define B4H1Q     1 "YES" 2 "NO" 3 "BORDERLINE" 7 "UNSURE" 8 "MISSING"
                       9 "INAPP" ;
label define B4H1QD    1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" 9 "INAPP" ;
label define B4H1R     1 "YES" 2 "NO" 3 "BORDERLINE" 7 "UNSURE" 8 "MISSING"
                       9 "INAPP" ;
label define B4H1RD    1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" 9 "INAPP" ;
label define B4H1S     1 "YES" 2 "NO" 3 "BORDERLINE" 7 "UNSURE" 8 "MISSING"
                       9 "INAPP" ;
label define B4H1SD    1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" 9 "INAPP" ;
label define B4H1T     1 "YES" 2 "NO" 3 "BORDERLINE" 7 "UNSURE" 8 "MISSING"
                       9 "INAPP" ;
label define B4H1TD    1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" 9 "INAPP" ;
label define B4H1U     1 "YES" 2 "NO" 3 "BORDERLINE" 7 "UNSURE" 8 "MISSING"
                       9 "INAPP" ;
label define B4H1UD    1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" 9 "INAPP" ;
label define B4H1V     1 "YES" 2 "NO" 3 "BORDERLINE" 7 "UNSURE" 8 "MISSING"
                       9 "INAPP" ;
label define B4H1VD    1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" 9 "INAPP" ;
label define B4H1W     1 "YES" 2 "NO" 3 "BORDERLINE" 7 "UNSURE" 8 "MISSING"
                       9 "INAPP" ;
label define B4H1WD    1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" 9 "INAPP" ;
label define B4H1X     1 "YES" 2 "NO" 3 "BORDERLINE" 7 "UNSURE" 8 "MISSING"
                       9 "INAPP" ;
label define B4H1XD    1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" 9 "INAPP" ;
label define B4H1Y     1 "YES" 2 "NO" 3 "BORDERLINE" 7 "UNSURE" 8 "MISSING"
                       9 "INAPP" ;
label define B4H1YD    1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" 9 "INAPP" ;
label define B4HSYMN   0 "NONE" ;
label define B4HSYMX   1 "YES" 2 "NO" ;
label define B4H2      1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4H2AF    97 "DON'T KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4H2AY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H2BF    97 "DON'T KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4H2BY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H2CF    97 "DON'T KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4H2CY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H2DF    97 "DON'T KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4H2DY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H2EF    97 "DON'T KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4H2EY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H2FF    97 "DON'T KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4H2FY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H2GF    97 "DON'T KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4H2GY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H2HF    97 "DON'T KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4H2HY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H2IF    97 "DON'T KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4H2IY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H2JF    97 "DON'T KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4H2JY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H2KF    97 "DON'T KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4H2KY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H2LF    97 "DON'T KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4H2LY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H2MF    97 "DON'T KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4H2MY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H2NF    97 "DON'T KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4H2NY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4HBRKB   0 "NONE" 97 "DON'T KNOW" ;
label define B4H3      1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4H3AL    1 "OFFICE VISIT" 2 "OUTPATIENT CLINIC"
                       3 "INPATIENT(OVERNIGHT)" 7 "DON'T KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4H3AY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H3BL    1 "OFFICE VISIT" 2 "OUTPATIENT CLINIC"
                       3 "INPATIENT(OVERNIGHT)" 7 "DON'T KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4H3BY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H3CL    1 "OFFICE VISIT" 2 "OUTPATIENT CLINIC"
                       3 "INPATIENT(OVERNIGHT)" 7 "DON'T KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4H3CY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H3DL    1 "OFFICE VISIT" 2 "OUTPATIENT CLINIC"
                       3 "INPATIENT(OVERNIGHT)" 7 "DON'T KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4H3DY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H3EL    1 "OFFICE VISIT" 2 "OUTPATIENT CLINIC"
                       3 "INPATIENT(OVERNIGHT)" 7 "DON'T KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4H3EY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H3FL    1 "OFFICE VISIT" 2 "OUTPATIENT CLINIC"
                       3 "INPATIENT(OVERNIGHT)" 7 "DON'T KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4H3FY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H3GL    1 "OFFICE VISIT" 2 "OUTPATIENT CLINIC"
                       3 "INPATIENT(OVERNIGHT)" 7 "DON'T KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4H3GY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H3HL    1 "OFFICE VISIT" 2 "OUTPATIENT CLINIC"
                       3 "INPATIENT(OVERNIGHT)" 7 "DON'T KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4H3HY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H3IL    1 "OFFICE VISIT" 2 "OUTPATIENT CLINIC"
                       3 "INPATIENT(OVERNIGHT)" 7 "DON'T KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4H3IY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H3JL    1 "OFFICE VISIT" 2 "OUTPATIENT CLINIC"
                       3 "INPATIENT(OVERNIGHT)" 7 "DON'T KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4H3JY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4HSURG   0 "NONE" ;
label define B4H4      1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4H4AH    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4H4AY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H4BH    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4H4BY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H4CH    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4H4CY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4HHEAD   0 "NONE" ;
label define B4H5      1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4H5AH    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4H5AY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H5BH    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4H5BY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H5CH    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4H5CY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4HJNT    0 "NONE" ;
label define B4H6      1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4H6AH    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4H6AY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H6BH    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4H6BY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H6CH    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4H6CY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H6DH    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED" ;
label define B4H6DY    9996 "CHILDHOOD" 9997 "9997=UNSURE"
                       9998 "9998=REFUSED" ;
label define B4HMVA    0 "NONE" ;
label define B4H7      1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4H7AH    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4H7AY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H7BH    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4H7BY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4HAMPU   0 "NONE" ;
label define B4H8      1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4H8AH    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4H8AY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H8BH    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4H8BY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H8CH    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4H8CY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4H8DH    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4H8DY    9996 "CHILDHOOD" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4HOHLTH  0 "NONE" ;
label define B4H9      1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4H10     1 "1=ALL DIAGNOSED" 2 "2=SOME DX, SOME NOT DX"
                       3 "3=NO DX, SOME NOT DX" 4 "4=NONE" 7 "7=UNSURE"
                       8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H10A    1 "1=YES" 2 "2=NO" 3 "3=UNDIAGNOSED" 7 "7=UNSURE"
                       8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H10B    1 "1=YES" 2 "2=NO" 3 "3=UNDIAGNOSED" 7 "7=UNSURE"
                       8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H10C    1 "1=YES" 2 "2=NO" 3 "3=UNDIAGNOSED" 7 "7=UNSURE"
                       8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H10D    1 "1=YES" 2 "2=NO" 3 "3=UNDIAGNOSED" 7 "7=UNSURE"
                       8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H10E    1 "1=YES" 2 "2=NO" 3 "3=UNDIAGNOSED" 7 "7=UNSURE"
                       8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H10F    1 "1=YES" 2 "2=NO" 3 "3=UNDIAGNOSED" 7 "7=UNSURE"
                       8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H11A    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H11AI   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H11AA   996 "CHILDHOOD" 997 "UNSURE" 998 "MISSING" 999 "INAPP" ;
label define B4H11B    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H11BI   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H11BA   996 "CHILDHOOD" 997 "UNSURE" 998 "MISSING" 999 "INAPP" ;
label define B4H11C    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H11CI   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H11CA   996 "CHILDHOOD" 997 "UNSURE" 998 "MISSING" 999 "INAPP" ;
label define B4H11D    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H11DI   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H11DA   996 "CHILDHOOD" 997 "UNSURE" 998 "MISSING" 999 "INAPP" ;
label define B4H11E    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H12A    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H12AM   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER" 97 "UNSURE"
                       98 "MISSING" 99 "INAPP" ;
label define B4H12AY   9997 "9997=UNSURE" 9998 "9998=REFUSED"
                       9999 "9999=INAPP" ;
label define B4H12B    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H12BM   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER" 97 "UNSURE"
                       98 "MISSING" 99 "INAPP" ;
label define B4H12BY   9997 "9997=UNSURE" 9998 "9998=REFUSED"
                       9999 "9999=INAPP" ;
label define B4H12C    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H12CM   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER" 97 "UNSURE"
                       98 "MISSING" 99 "INAPP" ;
label define B4H12CY   9997 "9997=UNSURE" 9998 "9998=REFUSED"
                       9999 "9999=INAPP" ;
label define B4H13     1 "1=EVERY YEAR" 2 "2=ALMOST EVERY YEAR"
                       3 "3=EVERY COUPLE YEARS" 4 "4=RARELY"
                       5 "ONLY ONCE (REACTION)" 6 "6=NEVER ALLERGIC"
                       7 "7=NEVER" 8 "8=OTHER" 9 "9=ONLY ONCE, NO REACTION"
                       97 "97=UNSURE" 98 "98=REFUSED" 99 "99=INAPP" ;
label define B4H14     1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H14A    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15A    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15A1   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15A2   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15A3   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15A4   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15A5   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15A6   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15A7   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15B    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15B1   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15B2   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15B3   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15B4   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15B5   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15B6   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15B7   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15C    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15C1   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15C2   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15C3   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15C4   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15C5   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15C6   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15C7   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15D    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15D1   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15D2   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15D3   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15D4   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15D5   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15D6   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15D7   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15E    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15E1   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15E2   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15E3   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15E4   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15E5   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15E6   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15E7   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15F    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15F1   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15F2   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15F3   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15F4   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15F5   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15F6   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15F7   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15G    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15G1   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15G2   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15G3   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15G4   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15G5   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15G6   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15G7   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15H    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15H1   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15H2   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15H3   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15H4   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15H5   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15H6   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15H7   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15I    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15I1   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15I2   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15I3   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15I4   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15I5   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15I6   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15I7   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15J    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15J1   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15J2   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15J3   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15J4   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15J5   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15J6   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15J7   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15K    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15K1   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15K2   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15K3   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15K4   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15K5   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15K6   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15K7   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15L    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15L1   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15L2   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15L3   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15L4   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15L5   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15L6   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15L7   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15M    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15M1   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15M2   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15M3   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15M4   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15M5   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15M6   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15M7   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15N    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15N1   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15N2   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15N3   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15N4   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15N5   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15N6   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15N7   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15O    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15O1   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15O2   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15O3   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15O4   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15O5   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15O6   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15O7   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15P    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15P1   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15P2   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15P3   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15P4   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15P5   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15P6   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15P7   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15Q    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15Q1   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15Q2   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15Q3   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15Q4   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15Q5   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15Q6   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15Q7   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15R    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15R1   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15R2   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15R3   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15R4   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15R5   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15R6   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15R7   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15S    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15S1   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15S2   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15S3   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15S4   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15S5   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15S6   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15S7   1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H15OTH  97 "UNSURE" 98 "REFUSED" 99 "INAPP" ;
label define B4HFMHN   0 "NONE" ;
label define B4HFMHX   1 "YES" 2 "NO" 9 "INAPP" ;
label define B4H16     1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H17AF   9997 "UNSURE" 9998 "REFUSED" 9999 "INAPP" ;
label define B4H17AT   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       7 "7=UNSURE" 8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H17BF   9997 "UNSURE" 9998 "REFUSED" 9999 "INAPP" ;
label define B4H17BT   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       7 "7=UNSURE" 8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H17CF   9997 "UNSURE" 9998 "REFUSED" 9999 "INAPP" ;
label define B4H17CT   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       7 "7=UNSURE" 8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H18AF   9997 "UNSURE" 9998 "REFUSED" 9999 "INAPP" ;
label define B4H18AT   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       7 "7=UNSURE" 8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H18BF   9997 "UNSURE" 9998 "REFUSED" 9999 "INAPP" ;
label define B4H18BT   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       7 "7=UNSURE" 8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H18CF   9997 "UNSURE" 9998 "REFUSED" 9999 "INAPP" ;
label define B4H18CT   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       7 "7=UNSURE" 8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H19     1 "1=NONE" 2 "2=1-3 GLASSES/DAY" 3 "3=4-7 GLASSES/DAY"
                       4 "4=8 OR MORE GLASSES/DAY"
                       5 "5=OTHER LESS THAN 1X/DAY" 7 "7=UNSURE"
                       8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H20     1 "1=NONE" 2 "2=1-3 GLASSES/DAY" 3 "3=4-6 GLASSES/DAY"
                       4 "4=7 OR MORE GLASSES/DAY"
                       5 "5=OTHER LESS THAN ONCE/DAY" 7 "7=UNSURE"
                       8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H21     1 "1=NONE" 2 "2=1-2 SERVINGS/DAY"
                       3 "3=3-4 SERVINGS/DAY" 4 "4=5 OR MORE SERVINGS/DAY"
                       5 "5=OTHER LESS THAN ONCE/DAY" 7 "7=UNSURE"
                       8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H22     1 "1=NONE" 2 "2=1-2 SERVINGS/DAY"
                       3 "3=3-4 SERVINGS/DAY" 4 "4=5 OR MORE SERVINGS/DAY"
                       5 "5=OTHER LESS THAN ONCE/DAY" 7 "7=UNSURE"
                       8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H23A    1 "1=NEVER" 2 "2=LESS THAN ONCE/WEEK" 3 "3=1-2 X/WEEK"
                       4 "4=3-4 X/WEEK" 5 "5=5 OR MORE X/WEEK" 7 "7=UNSURE"
                       8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H23B    1 "1=NEVER" 2 "2=LESS THAN ONCE/WEEK" 3 "3=1-2 X/WEEK"
                       4 "4=3-4 X/WEEK" 5 "5=5 OR MORE X/WEEK" 7 "7=UNSURE"
                       8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H23C    1 "1=NEVER" 2 "2=LESS THAN ONCE/WEEK" 3 "3=1-2 X/WEEK"
                       4 "4=3-4 X/WEEK" 5 "5=5 OR MORE X/WEEK" 7 "7=UNSURE"
                       8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H23D    1 "1=NEVER" 2 "2=LESS THAN ONCE/WEEK" 3 "3=1-2 X/WEEK"
                       4 "4=3-4 X/WEEK" 5 "5=5 OR MORE X/WEEK" 7 "7=UNSURE"
                       8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H24     1 "1=NEVER" 2 "2=LESS THAN ONCE/WEEK" 3 "3=1-3 X/WEEK"
                       4 "4=4-6 X/WEEK" 5 "5=7 OR MORE X/WEEK" 7 "7=UNSURE"
                       8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H25     1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H25AS   1 "NOT SEASONAL" 2 "WINTER" 3 "SPRING" 4 "SUMMER"
                       5 "FALL" 6 "SPRING TO FALL" 7 "SPRING TO SUMMER"
                       8 "SUMMER TO FALL" 9 "FALL TO SPRING"
                       10 "SPRING & FALL" 97 "UNSURE" 98 "REFUSED" 99 "INAPP" ;
label define B4H25AFD  97 "97=UNSURE" 98 "98=REFUSED" 99 "99=INAPP" ;
label define B4H25AFW  97 "97=UNSURE" 98 "98=REFUSED" 99 "99=INAPP" ;
label define B4H25AM   9997 "9997=UNSURE" 9998 "9998=REFUSED"
                       9999 "9999=INAPP" ;
label define B4H25AI   1 "1=VIGOROUS" 2 "2=MODERATE" 3 "3=LIGHT" 7 "7=UNSURE"
                       8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H25BS   1 "NOT SEASONAL" 2 "WINTER" 3 "SPRING" 4 "SUMMER"
                       5 "FALL" 6 "SPRING TO FALL" 7 "SPRING TO SUMMER"
                       8 "SUMMER TO FALL" 9 "FALL TO SPRING"
                       10 "SPRING & FALL" 97 "UNSURE" 98 "REFUSED" 99 "INAPP" ;
label define B4H25BFD  97 "97=UNSURE" 98 "98=REFUSED" 99 "99=INAPP" ;
label define B4H25BFW  97 "97=UNSURE" 98 "98=REFUSED" 99 "99=INAPP" ;
label define B4H25BM   9997 "9997=UNSURE" 9998 "9998=REFUSED"
                       9999 "9999=INAPP" ;
label define B4H25BI   1 "1=VIGOROUS" 2 "2=MODERATE" 3 "3=LIGHT" 7 "7=UNSURE"
                       8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H25CS   1 "NOT SEASONAL" 2 "WINTER" 3 "SPRING" 4 "SUMMER"
                       5 "FALL" 6 "SPRING TO FALL" 7 "SPRING TO SUMMER"
                       8 "SUMMER TO FALL" 9 "FALL TO SPRING"
                       10 "SPRING & FALL" 97 "UNSURE" 98 "REFUSED" 99 "INAPP" ;
label define B4H25CFD  97 "97=UNSURE" 98 "98=REFUSED" 99 "99=INAPP" ;
label define B4H25CFW  97 "97=UNSURE" 98 "98=REFUSED" 99 "99=INAPP" ;
label define B4H25CM   9997 "9997=UNSURE" 9998 "9998=REFUSED"
                       9999 "9999=INAPP" ;
label define B4H25CI   1 "1=VIGOROUS" 2 "2=MODERATE" 3 "3=LIGHT" 7 "7=UNSURE"
                       8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H25DS   1 "NOT SEASONAL" 2 "WINTER" 3 "SPRING" 4 "SUMMER"
                       5 "FALL" 6 "SPRING TO FALL" 7 "SPRING TO SUMMER"
                       8 "SUMMER TO FALL" 9 "FALL TO SPRING"
                       10 "SPRING & FALL" 97 "UNSURE" 98 "REFUSED" 99 "INAPP" ;
label define B4H25DFD  97 "97=UNSURE" 98 "98=REFUSED" 99 "99=INAPP" ;
label define B4H25DFW  97 "97=UNSURE" 98 "98=REFUSED" 99 "99=INAPP" ;
label define B4H25DM   9997 "9997=UNSURE" 9998 "9998=REFUSED"
                       9999 "9999=INAPP" ;
label define B4H25DI   1 "1=VIGOROUS" 2 "2=MODERATE" 3 "3=LIGHT" 7 "7=UNSURE"
                       8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H25ES   1 "NOT SEASONAL" 2 "WINTER" 3 "SPRING" 4 "SUMMER"
                       5 "FALL" 6 "SPRING TO FALL" 7 "SPRING TO SUMMER"
                       8 "SUMMER TO FALL" 9 "FALL TO SPRING"
                       10 "SPRING & FALL" 97 "UNSURE" 98 "REFUSED" 99 "INAPP" ;
label define B4H25EFD  97 "97=UNSURE" 98 "98=REFUSED" 99 "99=INAPP" ;
label define B4H25EFW  97 "97=UNSURE" 98 "98=REFUSED" 99 "99=INAPP" ;
label define B4H25EM   9997 "9997=UNSURE" 9998 "9998=REFUSED"
                       9999 "9999=INAPP" ;
label define B4H25EI   1 "1=VIGOROUS" 2 "2=MODERATE" 3 "3=LIGHT" 7 "7=UNSURE"
                       8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H25FS   1 "NOT SEASONAL" 2 "WINTER" 3 "SPRING" 4 "SUMMER"
                       5 "FALL" 6 "SPRING TO FALL" 7 "SPRING TO SUMMER"
                       8 "SUMMER TO FALL" 9 "FALL TO SPRING"
                       10 "SPRING & FALL" 97 "UNSURE" 98 "REFUSED" 99 "INAPP" ;
label define B4H25FFD  97 "97=UNSURE" 98 "98=REFUSED" 99 "99=INAPP" ;
label define B4H25FFW  97 "97=UNSURE" 98 "98=REFUSED" 99 "99=INAPP" ;
label define B4H25FM   9997 "9997=UNSURE" 9998 "9998=REFUSED"
                       9999 "9999=INAPP" ;
label define B4H25FI   1 "1=VIGOROUS" 2 "2=MODERATE" 3 "3=LIGHT" 7 "7=UNSURE"
                       8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H25GS   1 "NOT SEASONAL" 2 "WINTER" 3 "SPRING" 4 "SUMMER"
                       5 "FALL" 6 "SPRING TO FALL" 7 "SPRING TO SUMMER"
                       8 "SUMMER TO FALL" 9 "FALL TO SPRING"
                       10 "SPRING & FALL" 97 "UNSURE" 98 "REFUSED" 99 "INAPP" ;
label define B4H25GFD  97 "97=UNSURE" 98 "98=REFUSED" 99 "99=INAPP" ;
label define B4H25GFW  97 "97=UNSURE" 98 "98=REFUSED" 99 "99=INAPP" ;
label define B4H25GM   9997 "9997=UNSURE" 9998 "9998=REFUSED"
                       9999 "9999=INAPP" ;
label define B4H25GI   1 "1=VIGOROUS" 2 "2=MODERATE" 3 "3=LIGHT" 7 "7=UNSURE"
                       8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H26     1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H26A    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H27     1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H28     97 "97=UNSURE" 98 "98=REFUSED" 99 "99=INAPP" ;
label define B4H29     1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H30     1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H31     1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H32     1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H33     1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=INAPP" ;
label define B4H34     1 "1=EVERYDAY" 2 "2=5 OR 6 DAYS/WK"
                       3 "3=3 OR 4 DAYS/WK" 4 "4=1 OR 2 DAYS/WK"
                       5 "5=LESS THAN ONE DAY/WK" 6 "6=NEVER DRINKS"
                       7 "7=UNSURE" 8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H35     1 "1=3 OR 4 DAYS/MO" 2 "2=1 OR 2 DAYS/MO"
                       3 "3=LESS THAN ONE DAY/MO" 4 "4=NEVER DRINKS"
                       7 "7=UNSURE" 8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H36     9997 "9997=UNSURE" 9998 "9998=REFUSED"
                       9999 "9999=INAPP" ;
label define B4H37     97 "97=UNSURE" 98 "98=REFUSED" 99 "99=INAPP" ;
label define B4H38     1 "1=EVERYDAY" 2 "2=5 OR 6 DAYS/WK"
                       3 "3=3 OR 4 DAYS/WK" 4 "4=1 OR 2 DAYS/WK"
                       5 "5=LESS THAN ONE DAY/WK" 6 "6=NEVER DRINKS"
                       7 "7=UNSURE" 8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H39     1 "1=3 OR 4 DAYS/MO" 2 "2=1 OR 2 DAYS/MO"
                       3 "3=LESS THAN ONE DAY/MO" 4 "4=NEVER DRINKS"
                       7 "7=UNSURE" 8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H40     9997 "9997=UNSURE" 9998 "9998=REFUSED"
                       9999 "9999=INAPP" ;
label define B4H41     97 "97=UNSURE" 98 "98=REFUSED" 99 "99=INAPP" ;
label define B4H42     9997 "9997=UNSURE" 9998 "9998=REFUSED"
                       9999 "9999=INAPP" ;
label define B4H43A    1 "1=NEVER" 2 "2=EVERY 6 MONTHS" 3 "3=ONCE A YEAR"
                       4 "4=OTHER" 7 "7=UNSURE" 8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H43BM   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER" 97 "UNSURE"
                       98 "MISSING" 99 "INAPP" ;
label define B4H43BY   9997 "9997=UNSURE" 9998 "9998=REFUSED"
                       9999 "9999=INAPP" ;
label define B4H44A    1 "1=NEVER" 2 "2=EVERY 6 MONTHS" 3 "3=ONCE A YEAR"
                       4 "4=OTHER" 7 "7=UNSURE" 8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H44CM   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER" 97 "UNSURE"
                       98 "MISSING" 99 "INAPP" ;
label define B4H44CY   9997 "9997=UNSURE" 9998 "9998=REFUSED"
                       9999 "9999=INAPP" ;
label define B4H44D    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H45A    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H45AM   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER" 97 "UNSURE"
                       98 "MISSING" 99 "INAPP" ;
label define B4H45AY   9997 "9997=UNSURE" 9998 "9998=REFUSED"
                       9999 "9999=INAPP" ;
label define B4H45B    1 "YES" 2 "NO" 3 "ASKED BUT DID NOT DO IT" 9 "9=INAPP" ;
label define B4H45BM   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER" 97 "UNSURE"
                       98 "MISSING" 99 "INAPP" ;
label define B4H45BY   9997 "9997=UNSURE" 9998 "9998=REFUSED"
                       9999 "9999=INAPP" ;
label define B4H45BRC  1 "NORMAL" 2 "ABNORMAL" 3 "UNKNOWN" 4 "NO RESULT YET"
                       5 "DID NOT DO THE TEST" 8 "MISSING" 9 "INAPP" ;
label define B4H45C    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H45CM   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER" 97 "UNSURE"
                       98 "MISSING" 99 "INAPP" ;
label define B4H45CY   9997 "9997=UNSURE" 9998 "9998=REFUSED"
                       9999 "9999=INAPP" ;
label define B4H45CRC  1 "NORMAL" 2 "ABNORMAL" 3 "UNKNOWN" 4 "NO RESULT YET"
                       8 "MISSING" 9 "INAPP" ;
label define B4H45D    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H45DM   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER" 97 "UNSURE"
                       98 "MISSING" 99 "INAPP" ;
label define B4H45DY   9997 "9997=UNSURE" 9998 "9998=REFUSED"
                       9999 "9999=INAPP" ;
label define B4H45DRC  1 "NORMAL" 2 "ABNORMAL" 3 "UNKNOWN" 4 "NO RESULT YET"
                       8 "MISSING" 9 "INAPP" ;
label define B4H45E    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H45F    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H45FM   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER" 97 "UNSURE"
                       98 "MISSING" 99 "INAPP" ;
label define B4H45FY   9997 "9997=UNSURE" 9998 "9998=REFUSED"
                       9999 "9999=INAPP" ;
label define B4H45FRC  1 "NORMAL" 2 "ABNORMAL" 3 "UNKNOWN" 4 "NO RESULT YET"
                       8 "MISSING" 9 "INAPP" ;
label define B4H45G    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H45GM   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER" 97 "UNSURE"
                       98 "MISSING" 99 "INAPP" ;
label define B4H45GY   9997 "9997=UNSURE" 9998 "9998=REFUSED"
                       9999 "9999=INAPP" ;
label define B4H45GRC  1 "NORMAL" 2 "ABNORMAL" 3 "UNKNOWN" 4 "NO RESULT YET"
                       8 "MISSING" 9 "INAPP" ;
label define B4H45H    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H45HM   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER" 97 "UNSURE"
                       98 "MISSING" 99 "INAPP" ;
label define B4H45HY   9997 "9997=UNSURE" 9998 "9998=REFUSED"
                       9999 "9999=INAPP" ;
label define B4H45HRC  1 "NORMAL" 2 "ABNORMAL" 3 "UNKNOWN" 4 "NO RESULT YET"
                       8 "MISSING" 9 "INAPP" ;
label define B4H46     1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H46C    1 "1=DAILY" 2 "2=WEEKLY" 3 "3=MONTHLY" 7 "7=UNSURE"
                       8 "8=REFUSED" 9 "9=INAPP" ;
label define B4H46D    9997 "UNSURE" 9998 "MISSING" 9999 "INAPP" ;
label define B4H47     1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H48     1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H48A    1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H49     1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H50     1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H54C    1 "YES" 2 "NO" ;
label define B4H54M    1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER" 97 "UNSURE"
                       98 "MISSING" 99 "INAPP" ;
label define B4H54Y    9998 "MISSING" 9999 "INAPP" ;
label define B4H55     1 "1=MARRIED" 2 "2=SEPARATED" 3 "3=DIVORCED"
                       4 "4=WIDOWED" 5 "5=NEVER MARRIED"
                       6 "6=LIVING W/ SOMEONE" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4HMARR   1 "1=MARRIED" 2 "2=SEPARATED" 3 "3=DIVORCED"
                       4 "4=WIDOWED" 5 "5=NEVER MARRIED"
                       6 "6=LIVING W/ SOMEONE" ;
label define B4H56     1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H56AG   1 "1=MALE" 2 "2=FEMALE" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H56AM   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER" 97 "UNSURE"
                       98 "MISSING" 99 "INAPP" ;
label define B4H56AY   9997 "9997=UNSURE" 9998 "9998=REFUSED"
                       9999 "9999=INAPP" ;
label define B4H56BG   1 "1=MALE" 2 "2=FEMALE" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H56BM   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER" 97 "UNSURE"
                       98 "MISSING" 99 "INAPP" ;
label define B4H56BY   9997 "9997=UNSURE" 9998 "9998=REFUSED"
                       9999 "9999=INAPP" ;
label define B4H56CG   1 "1=MALE" 2 "2=FEMALE" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H56CM   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER" 97 "UNSURE"
                       98 "MISSING" 99 "INAPP" ;
label define B4H56CY   9997 "9997=UNSURE" 9998 "9998=REFUSED"
                       9999 "9999=INAPP" ;
label define B4H56DG   1 "1=MALE" 2 "2=FEMALE" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H56DM   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER" 97 "UNSURE"
                       98 "MISSING" 99 "INAPP" ;
label define B4H56DY   9997 "9997=UNSURE" 9998 "9998=REFUSED"
                       9999 "9999=INAPP" ;
label define B4H56EG   1 "1=MALE" 2 "2=FEMALE" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H56EM   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER" 97 "UNSURE"
                       98 "MISSING" 99 "INAPP" ;
label define B4H56EY   9997 "9997=UNSURE" 9998 "9998=REFUSED"
                       9999 "9999=INAPP" ;
label define B4H57     1 "1=YES" 2 "2=NO" 7 "7=UNSURE" 8 "8=REFUSED"
                       9 "9=INAPP" ;
label define B4H57A1M  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER" 96 "ONGOING"
                       97 "UNSURE" 98 "MISSING" 99 "INAPP" ;
label define B4H57A1Y  9997 "9997=UNSURE" 9998 "9998=REFUSED"
                       9999 "9999=INAPP" ;
label define B4H57A2M  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER" 96 "ONGOING"
                       97 "UNSURE" 98 "MISSING" 99 "INAPP" ;
label define B4H57A2Y  9997 "9997=UNSURE" 9998 "9998=REFUSED"
                       9999 "9999=INAPP" ;
label define B4H57A3M  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER" 96 "ONGOING"
                       97 "UNSURE" 98 "MISSING" 99 "INAPP" ;
label define B4H57A3Y  9997 "9997=UNSURE" 9998 "9998=REFUSED"
                       9999 "9999=INAPP" ;
label define B4H57A4M  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER" 96 "ONGOING"
                       97 "UNSURE" 98 "MISSING" 99 "INAPP" ;
label define B4H57A4Y  9997 "9997=UNSURE" 9998 "9998=REFUSED"
                       9999 "9999=INAPP" ;
label define B4H57A5M  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER" 96 "ONGOING"
                       97 "UNSURE" 98 "MISSING" 99 "INAPP" ;
label define B4H57A5Y  9997 "9997=UNSURE" 9998 "9998=REFUSED"
                       9999 "9999=INAPP" ;
label define B4OAVL    1 "YES" 2 "NO" ;
label define B4O1      1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O1A1W   1 "1=HIP" 2 "2=LEG" 3 "3=ANKLE" 4 "4=FOOT" 5 "5=TOE"
                       6 "6=COLLARBONE" 7 "7=SHOULDER" 8 "8=WRIST" 9 "9=HAND"
                       10 "10=FINGER" 11 "11=BACK" 12 "12=RIB" 13 "13=ELBOW"
                       14 "14=NOSE" 15 "15=TAILBONE" 16 "16=MULTIPLE BONES"
                       98 "98=MISSING" 99 "99=INAPP" ;
label define B4O1A3    9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4O1B1W   1 "1=HIP" 2 "2=LEG" 3 "3=ANKLE" 4 "4=FOOT" 5 "5=TOE"
                       6 "6=COLLARBONE" 7 "7=SHOULDER" 8 "8=WRIST" 9 "9=HAND"
                       10 "10=FINGER" 11 "11=BACK" 12 "12=RIB" 13 "13=ELBOW"
                       14 "14=NOSE" 15 "15=TAILBONE" 16 "16=MULTIPLE BONES"
                       98 "98=MISSING" 99 "99=INAPP" ;
label define B4O1B3    9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4O1C1W   1 "1=HIP" 2 "2=LEG" 3 "3=ANKLE" 4 "4=FOOT" 5 "5=TOE"
                       6 "6=COLLARBONE" 7 "7=SHOULDER" 8 "8=WRIST" 9 "9=HAND"
                       10 "10=FINGER" 11 "11=BACK" 12 "12=RIB" 13 "13=ELBOW"
                       14 "14=NOSE" 15 "15=TAILBONE" 16 "16=MULTIPLE BONES"
                       98 "98=MISSING" 99 "99=INAPP" ;
label define B4O1C3    9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4O2      1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O2A1    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O2A2    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O2A3    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O2B1    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O2B2    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O2B3    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O2C1    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O2C2    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O2C3    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O3      997 "DON'T KNOW" 998 "MISSING" 999 "INAPP" ;
label define B4O3A     997 "DON'T KNOW" 998 "MISSING" 999 "INAPPLICABLE" ;
label define B4O4A     1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" 9 "INAPP" ;
label define B4O4B     1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" 9 "INAPP" ;
label define B4O5      1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O5A1AM  1 "1=FOSAMAX" 2 "2=ACTONEL" 3 "3=ZOMETA"
                       4 "4=MIACALCIN" 5 "5=EVISTA" 6 "6=FORTEO" 7 "7=BONIVA"
                       8 "8=CELEBREX" 9 "9=OTHER" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4O5A1B   9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4O5A1C   9996 "ONGOING" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4O5A1CO  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O5A2AM  1 "1=FOSAMAX" 2 "2=ACTONEL" 3 "3=ZOMETA"
                       4 "4=MIACALCIN" 5 "5=EVISTA" 6 "6=FORTEO" 7 "7=BONIVA"
                       8 "8=CELEBREX" 9 "9=OTHER" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4O5A2B   9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4O5A2C   9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4O5A2CO  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O5A3AM  1 "1=FOSAMAX" 2 "2=ACTONEL" 3 "3=ZOMETA"
                       4 "4=MIACALCIN" 5 "5=EVISTA" 6 "6=FORTEO" 7 "7=BONIVA"
                       8 "8=CELEBREX" 9 "9=OTHER" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4O5A3B   9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4O5A3C   9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4O5A3CO  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O6A1    1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" 9 "INAPP" ;
label define B4O6B1    1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" 9 "INAPP" ;
label define B4O6C1    1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" 9 "INAPP" ;
label define B4O6D1    1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" 9 "INAPP" ;
label define B4O6E1    1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" 9 "INAPP" ;
label define B4O6F1    1 "YES" 2 "NO" 7 "UNSURE" 8 "MISSING" 9 "INAPP" ;
label define B4O7      1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O8      9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4O9      9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4O10     9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4O11     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O12A    997 "DON'T KNOW" 998 "MISSING" 999 "INAPP" ;
label define B4O12B    997 "DON'T KNOW" 998 "MISSING" 999 "INAPP" ;
label define B4O12C    997 "DON'T KNOW" 998 "MISSING" 999 "INAPP" ;
label define B4O13     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O14A    9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4O14B    9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4O14C    9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4O14X    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O15     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O16     97 "DON'T KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4O16A    9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4O17     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O18     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O19     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O20Y    9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4O21     1 "YES" 2 "NO" 3 "PREGNANCY/BREAST FEEDING"
                       7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O21A1   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O21A2   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O21A3   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O21A4   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O21A5   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O22Y    9994 "NEVER IRREGULAR" 9995 "ALWAYS IRREGULAR"
                       9996 "SURGERY- NO IRREGULARITY" 9997 "DON'T KNOW"
                       9998 "MISSING" 9999 "INAPP" ;
label define B4O23X    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O23     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O24     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O25     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O25A    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O25B    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O25C    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O26     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O26A    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O26B    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O26C    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O26D    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O26E    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O26F    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4O27     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4DAVAIL  1 "YES" 2 "SPINE, NO HIP" 3 "NO SPINE,HIP"
                       4 "NO SPINE, NO HIP" 7 "DON'T KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4DNARSN  1 "SCHEDULING PROBLEM" 2 "TECHNICAL PROBLEM"
                       3 "SCAN NOT SCOREABLE" 4 "VISIT TERMINATED"
                       5 "R REFUSED" 9 "INAPP" ;
label define B4DSTYPE  1 "LUNAR" 2 "HOLOGIC" 7 "DON'T KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4DTRSID  0 "NO SCAN" 1 "RIGHT" 2 "LEFT" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4DFNSID  0 "NO SCAN" 1 "RIGHT" 2 "LEFT" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4DFTSID  0 "NO SCAN" 1 "RIGHT" 2 "LEFT" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4DRSIDE  0 "NO SCAN" 1 "RIGHT" 2 "LEFT" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4DLSMD   998 "MISSING" 999 "INAPP" ;
label define B4DLST    998 "MISSING" 999 "INAPP" ;
label define B4DLFNMD  998 "MISSING" 999 "INAPP" ;
label define B4DLTRMD  998 "MISSING" 999 "INAPP" ;
label define B4DLFTMD  998 "MISSING" 999 "INAPP" ;
label define B4DLFNT   998 "MISSING" 999 "INAPP" ;
label define B4DLFTT   998 "MISSING" 999 "INAPP" ;
label define B4DLRUMD  998 "MISSING" 999 "INAPP" ;
label define B4DLR3MD  998 "MISSING" 999 "INAPP" ;
label define B4DLR3T   998 "MISSING" 999 "INAPP" ;
label define B4DHSMD   998 "MISSING" 999 "INAPP" ;
label define B4DHST    998 "MISSING" 999 "INAPP" ;
label define B4DHFNMD  998 "MISSING" 999 "INAPP" ;
label define B4DHTRMD  998 "MISSING" 999 "INAPP" ;
label define B4DHFTMD  998 "MISSING" 999 "INAPP" ;
label define B4DHFNT   998 "MISSING" 999 "INAPP" ;
label define B4DHFTT   998 "MISSING" 999 "INAPP" ;
label define B4XPMD    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" ;
label define B4XOMD    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" ;
label define B4XAMD    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" ;
label define B4XPM     97 "97=DON'T KNOW'" 98 "98=MISSING" 99 "99=INAPP" ;
label define B4XPC1    99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XPDD1   99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XPDU1   1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XPR1    1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XPF1    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XPFU1   1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XPT1    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XPTU1   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XPDC1   99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XPC2    99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XPDD2   99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XPDU2   1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XPR2    1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XPF2    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XPFU2   1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XPT2    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XPTU2   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XPDC2   99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XPC3    99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XPDD3   99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XPDU3   1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XPR3    1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XPF3    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XPFU3   1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XPT3    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XPTU3   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XPDC3   99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XPC4    99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XPDD4   99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XPDU4   1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XPR4    1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XPF4    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XPFU4   1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XPT4    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XPTU4   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XPDC4   99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XPC5    99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XPDD5   99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XPDU5   1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XPR5    1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XPF5    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XPFU5   1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XPT5    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XPTU5   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XPDC5   99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XPC6    99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XPDD6   99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XPDU6   1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XPR6    1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XPF6    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XPFU6   1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XPT6    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XPTU6   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XPDC6   99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XPC7    99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XPDD7   99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XPDU7   1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XPR7    1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XPF7    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XPFU7   1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XPT7    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XPTU7   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XPDC7   99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XPC8    99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XPDD8   99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XPDU8   1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XPR8    1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XPF8    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XPFU8   1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XPT8    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XPTU8   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XPDC8   99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XPC9    99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XPDD9   99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XPDU9   1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XPR9    1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XPF9    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XPFU9   1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XPT9    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XPTU9   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XPDC9   99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XPC10   99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XPDD10  99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XPDU10  1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XPR10   1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XPF10   9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XPFU10  1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XPT10   9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XPTU10  1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XPDC10  99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XPC11   99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XPDD11  99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XPDU11  1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XPR11   1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XPF11   9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XPFU11  1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XPT11   9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XPTU11  1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XPDC11  99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XPC12   99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XPDD12  99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XPDU12  1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XPR12   1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XPF12   9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XPFU12  1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XPT12   9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XPTU12  1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XPDC12  99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XPC13   99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XPDD13  99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XPDU13  1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XPR13   1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XPF13   9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XPFU13  1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XPT13   9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XPTU13  1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XPDC13  99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XPC14   99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XPDD14  99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XPDU14  1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XPR14   1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XPF14   9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XPFU14  1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XPT14   9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XPTU14  1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XPDC14  99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XPC15   99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XPDD15  99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XPDU15  1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XPR15   1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XPF15   9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XPFU15  1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XPT15   9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XPTU15  1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XPDC15  99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XBPD    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4XBPC    7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4XCHD    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4XCHC    7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4XDPD    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4XDPC    7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4XCOD    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4XCOC    7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4XSHD    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4XSHC    7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4XOM     97 "97=DON'T KNOW'" 98 "98=MISSING" 99 "99=INAPP" ;
label define B4XOMV    1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=INAPP" ;
label define B4XOC1    99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XODD1   99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XODU1   1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XOR1    1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XOF1    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XOFU1   1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XOT1    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XOTU1   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XODC1   99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XOCS    1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=INAPP" ;
label define B4XOC2    99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XODD2   99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XODU2   1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XOR2    1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XOF2    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XOFU2   1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XOT2    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XOTU2   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XODC2   99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XOC3    99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XODD3   99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XODU3   1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XOR3    1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XOF3    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XOFU3   1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XOT3    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XOTU3   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XODC3   99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XOC4    99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XODD4   99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XODU4   1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XOR4    1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XOF4    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XOFU4   1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XOT4    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XOTU4   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XODC4   99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XOC5    99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XODD5   99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XODU5   1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XOR5    1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XOF5    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XOFU5   1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XOT5    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XOTU5   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XODC5   99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XOC6    99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XODD6   99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XODU6   1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XOR6    1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XOF6    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XOFU6   1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XOT6    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XOTU6   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XODC6   99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XOC7    99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XODD7   99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XODU7   1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XOR7    1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XOF7    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XOFU7   1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XOT7    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XOTU7   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XODC7   99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XOC8    99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XODD8   99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XODU8   1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XOR8    1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XOF8    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XOFU8   1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XOT8    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XOTU8   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XODC8   99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XOC9    99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XODD9   99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XODU9   1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XOR9    1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XOF9    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XOFU9   1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XOT9    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XOTU9   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XODC9   99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XOC10   99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XODD10  99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XODU10  1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XOR10   1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XOF10   9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XOFU10  1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XOT10   9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XOTU10  1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XODC10  99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XOC11   99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XODD11  99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XODU11  1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XOR11   1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XOF11   9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XOFU11  1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XOT11   9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XOTU11  1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XODC11  99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XOC12   99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XODD12  99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XODU12  1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XOR12   1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XOF12   9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XOFU12  1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XOT12   9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XOTU12  1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XODC12  99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XAM     97 "97=DON'T KNOW'" 98 "98=MISSING" 99 "99=INAPP" ;
label define B4XAC1    999997 "999997=DON'T KNOW" 999998 "999998=MISSING"
                       999999 "999999=INAPP" ;
label define B4XADD1   99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XADU1   1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XAR1    1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XAF1    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XAFU1   1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XAT1    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XATU1   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XADC1   99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XAC2    999997 "999997=DON'T KNOW" 999998 "999998=MISSING"
                       999999 "999999=INAPP" ;
label define B4XADD2   99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XADU2   1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XAR2    1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XAF2    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XAFU2   1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XAT2    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XATU2   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XADC2   99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XAC3    999997 "999997=DON'T KNOW" 999998 "999998=MISSING"
                       999999 "999999=INAPP" ;
label define B4XADD3   99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XADU3   1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XAR3    1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XAF3    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XAFU3   1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XAT3    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XATU3   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XADC3   99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XAC4    999997 "999997=DON'T KNOW" 999998 "999998=MISSING"
                       999999 "999999=INAPP" ;
label define B4XADD4   99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XADU4   1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XAR4    1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XAF4    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XAFU4   1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XAT4    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XATU4   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XADC4   99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XAC5    999997 "999997=DON'T KNOW" 999998 "999998=MISSING"
                       999999 "999999=INAPP" ;
label define B4XADD5   99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XADU5   1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XAR5    1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XAF5    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XAFU5   1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XAT5    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XATU5   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XADC5   99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XAC6    999997 "999997=DON'T KNOW" 999998 "999998=MISSING"
                       999999 "999999=INAPP" ;
label define B4XADD6   99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XADU6   1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XAR6    1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XAF6    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XAFU6   1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XAT6    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XATU6   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XADC6   99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XAC7    999997 "999997=DON'T KNOW" 999998 "999998=MISSING"
                       999999 "999999=INAPP" ;
label define B4XADD7   99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XADU7   1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XAR7    1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XAF7    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XAFU7   1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XAT7    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XATU7   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XADC7   99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XAC8    999997 "999997=DON'T KNOW" 999998 "999998=MISSING"
                       999999 "999999=INAPP" ;
label define B4XADD8   99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XADU8   1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XAR8    1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XAF8    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XAFU8   1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XAT8    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XATU8   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XADC8   99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XAC9    999997 "999997=DON'T KNOW" 999998 "999998=MISSING"
                       999999 "999999=INAPP" ;
label define B4XADD9   99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XADU9   1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XAR9    1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XAF9    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XAFU9   1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XAT9    9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XATU9   1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XADC9   99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XAC10   999997 "999997=DON'T KNOW" 999998 "999998=MISSING"
                       999999 "999999=INAPP" ;
label define B4XADD10  99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XADU10  1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XAR10   1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XAF10   9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XAFU10  1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XAT10   9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XATU10  1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XADC10  99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XAC11   999997 "999997=DON'T KNOW" 999998 "999998=MISSING"
                       999999 "999999=INAPP" ;
label define B4XADD11  99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XADU11  1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XAR11   1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XAF11   9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XAFU11  1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XAT11   9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XATU11  1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XADC11  99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XAC12   999997 "999997=DON'T KNOW" 999998 "999998=MISSING"
                       999999 "999999=INAPP" ;
label define B4XADD12  99999996 "99999996=MIXED DOSAGE"
                       99999997 "99999997=DON'T KNOW"
                       99999998 "99999998=MISSING" 99999999 "99999999=INAPP" ;
label define B4XADU12  1 "1=MG" 2 "2=GRAMS" 3 "3=MCG" 4 "4=IU" 5 "5=MEQ"
                       6 "6=CC/ML" 7 "7=TEASPOON" 8 "8=TABLET" 9 "9=CAPSULE"
                       10 "10=PUFF/SQUIRT" 11 "11=UNIT" 12 "12=TABLESPOON"
                       13 "13=% SOLUTION/CREAM" 14 "14=DROP" 15 "15=OTHER"
                       97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4XAR12   1 "1=ORAL (PO)" 2 "2=INHALED" 3 "3=TOPICAL"
                       4 "4=SUB Q/SUB C" 5 "5=INTRAMUSCULAR" 6 "6=SUBLINGUAL"
                       7 "7=OTHER" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4XAF12   9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XAFU12  1 "1=DAY" 2 "2=EVERY OTHER DAY" 3 "3=WEEK" 4 "4=MONTH"
                       5 "5=AS NEEDED (PRN)" 6 "6=OTHER" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4XAT12   9997 "9997=DON'T KNOW" 9998 "9998=MISSING"
                       9999 "9999=INAPP" ;
label define B4XATU12  1 "1=DAY" 2 "2=WEEK" 3 "3=MONTH" 4 "4=YEAR"
                       5 "5=OTHER" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4XADC12  99997 "99997=DON'T KNOW" 99998 "99998=MISSING"
                       99999 "99999=INAPP" ;
label define B4XM      1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=INAPP" ;
label define B4XMM     97 "97=DON'T KNOW'" 98 "98=MISSING" 99 "99=INAPP" ;
label define B4XMC1    99999997 "DON'T KNOW" 99999998 "MISSING"
                       99999999 "INAPP" ;
label define B4XMC2    99999997 "DON'T KNOW" 99999998 "MISSING"
                       99999999 "INAPP" ;
label define B4XMC3    99999997 "DON'T KNOW" 99999998 "MISSING"
                       99999999 "INAPP" ;
label define B4XMC4    99999997 "DON'T KNOW" 99999998 "MISSING"
                       99999999 "INAPP" ;
label define B4XMC5    99999997 "DON'T KNOW" 99999998 "MISSING"
                       99999999 "INAPP" ;
label define B4XMC6    99999997 "DON'T KNOW" 99999998 "MISSING"
                       99999999 "INAPP" ;
label define B4XMC7    99999997 "DON'T KNOW" 99999998 "MISSING"
                       99999999 "INAPP" ;
label define B4XMC8    99999997 "DON'T KNOW" 99999998 "MISSING"
                       99999999 "INAPP" ;
label define B4XXM     1 "NO ADDITIONAL MEDS" 2 "ADDITIONAL RX MEDS"
                       3 "ADDITIONAL OTC MEDS" 4 "ADDITIONAL ALT MEDS"
                       5 "ADDITIONAL OTC & ALT MEDS" 6 "ADDITIONAL ALLERGY" ;
label define B4PWHRF   1 "LT 4 STDS" 2 "GE 4 STDS" 8 "MISSING" ;
label define B4P1A     999997 "DONT KNOW" 999998 "MISSING" 999999 "INAPP" ;
label define B4P1B     99997 "DONT KNOW" 99998 "MISSING" 99999 "INAPP" ;
label define B4PBMI    999997 "DONT KNOW" 999998 "MISSING" 999999 "INAPP" ;
label define B4P1C     9997 "DONT KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4P1D     997 "DONT KNOW" 998 "MISSING" 999 "INAPP" ;
label define B4P1E     97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4P1F1S   997 "DONT KNOW" 998 "MISSING" 999 "INAPP" ;
label define B4P1F1D   997 "DONT KNOW" 998 "MISSING" 999 "INAPP" ;
label define B4P1F2S   997 "DONT KNOW" 998 "MISSING" 999 "INAPP" ;
label define B4P1F2D   997 "DONT KNOW" 998 "MISSING" 999 "INAPP" ;
label define B4P1F3S   997 "DONT KNOW" 998 "MISSING" 999 "INAPP" ;
label define B4P1F3D   997 "DONT KNOW" 998 "MISSING" 999 "INAPP" ;
label define B4P1GS    997 "DONT KNOW" 998 "MISSING" 999 "INAPP" ;
label define B4P1GD    997 "DONT KNOW" 998 "MISSING" 999 "INAPP" ;
label define B4P1GS23  997 "DONT KNOW" 998 "MISSING" 999 "INAPP" ;
label define B4P1GD23  997 "DONT KNOW" 998 "MISSING" 999 "INAPP" ;
label define B4P2A     999997 "DONT KNOW" 999998 "MISSING" 999999 "INAPP" ;
label define B4P2B     999997 "DONT KNOW" 999998 "MISSING" 999999 "INAPP" ;
label define B4P2C     999997 "DONT KNOW" 999998 "MISSING" 999999 "INAPP" ;
label define B4P2D     999997 "DONT KNOW" 999998 "MISSING" 999999 "INAPP" ;
label define B4PWHR    999997 "DONT KNOW" 999998 "MISSING" 999999 "INAPP" ;
label define B4P3A     1 "1=RIGHT" 2 "2=LEFT" 3 "3=AMBIDEXTROUS"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4P3A1    1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=INAPP" ;
label define B4P3A2R1  97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4P3A2R2  97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4P3A2R3  97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4P3A2L1  97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4P3A2L2  97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4P3A2L3  97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4P3B1    1 "1=YES, BOTH" 2 "2=RIGHT ONLY" 3 "3=LEFT ONLY"
                       4 "4=NO,NEITHER" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=INAPP" ;
label define B4P3B2R   997 "DONT KNOW" 998 "MISSING" 999 "INAPP" ;
label define B4P3B2L   997 "DONT KNOW" 998 "MISSING" 999 "INAPP" ;
label define B4P3B3R   1 "BLIND/VISION IMPAIRED" 2 "SURGICALLY CORRECTED"
                       3 "ARTIFICIAL LENS/EYE" 4 "WOULDNT REMOVE CONTACTS"
                       8 "MISSING" 9 "INAPP" ;
label define B4P3B4    1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=INAPP" ;
label define B4P3B4A   1 "GLASSES/CONTACTS" 2 "BIFOCALS" 3 "TRIFOCALS"
                       4 "PROGRESSIVE LENS" 5 "READING" 6 "DISTANCE"
                       7 "OTHERS" 97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4P3B5R   997 "DONT KNOW" 998 "MISSING" 999 "INAPP" ;
label define B4P3B5L   997 "DONT KNOW" 998 "MISSING" 999 "INAPP" ;
label define B4P3B6    1 "1=AVAILABLE" 2 "2=NOT AVAILABLE" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4P3C1    1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=INAPP" ;
label define B4P3C2    997 "DONT KNOW" 998 "MISSING" 999 "INAPP" ;
label define B4P3C3    1 "1=STANDING" 2 "2=SITTING" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=INAPP" ;
label define B4P3D     1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=INAPP" ;
label define B4P3E     1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=INAPP" ;
label define B4P3F     1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=INAPP" ;
label define B4P3G     1 "1=WALKER" 2 "2=CRUTCHES" 3 "3=CANE" 4 "4=OTHER"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4P3H1R   1 "UNSTEADY/FALL RISK" 2 "PAIN" 3 "LEGALLY BLIND"
                       8 "MISSING" 9 "INAPP" ;
label define B4P3H2    97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4P3H3    97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4P3I1    1 "1=Yes" 2 "2=No" 7 "7=Dont know" 8 "8=Missing"
                       9 "9=N/A" ;
label define B4P3I2    97 "DONT KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4P3I3R   1 "BACK PROBLEM" 2 "KNEE PROBLEM" 3 "HIP PROBLEM"
                       4 "GENERAL PAIN" 5 "NOT PHYSICALLY ABLE" 8 "MISSING"
                       9 "INAPP" ;
label define B4PMD     1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P4B     1 "1=RELAXED" 2 "2=AVERAGE" 3 "3=NERVOUS"
                       4 "4=DEPRESSED MOOD" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P5A1    1 "1=NORMAL" 2 "2=DECREASED" 3 "3=MIN-FRONTAL BALDING"
                       4 "4=MOD-FRONTAL BALDING" 5 "5=TOTAL-FRONTAL BALDING"
                       6 "6=PATCHY ALOPECIA" 7 "7=WIG" 8 "8=TOTAL BALDNESS"
                       97 "97=DON'T KNOW" 98 "98=MISSING" 99 "99=IN APP" ;
label define B4P5A2    1 "1=AVERAGE" 2 "2=THINNER" 3 "3=THICKER"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=IN APP" ;
label define B4P5A3    1 "1=BROWN" 2 "2=BLOND" 3 "3=RED" 4 "4=GREY"
                       5 "5=DYED" 6 "6=BLACK" 7 "7=OTHER" 97 "97=DONT KNOW"
                       98 "98=MISSING" 99 "99=INAPP" ;
label define B4P5A4    1 "1=NONE" 2 "2=<25%" 3 "3=25%" 4 "4=50%" 5 "5=75%"
                       6 "6=100%" 7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4P5B     1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P5B1    1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P5B2    1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P5B3    1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P5B4    1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P5B5    1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P5B6    1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P5B7    1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P5B8    1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P5B9    1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P5B10   1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P5B11   1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P5B12   1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P5B13   1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=INAPP" ;
label define B4P5B14   1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=INAPP" ;
label define B4P5B15   1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=INAPP" ;
label define B4P5B16   1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=INAPP" ;
label define B4P5B17   1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P6A1    1 "1=NORMAL" 2 "2=R, DECREASED" 3 "3=L, DECREASED"
                       4 "4=BOTH, DECREASED" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P6A2    1 "1=NORMAL" 2 "2=R, DECREASED" 3 "3=L, DECREASED"
                       4 "4=BOTH, DECREASED" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P6B     1 "1=NORMAL" 2 "2=R, DECREASED" 3 "3=L, DECREASED"
                       4 "4=BOTH, DECREASED" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P6C     1 "1=NONE" 2 "2=RIGHT EAR" 3 "3=LEFT EAR"
                       4 "4=BOTH EARS" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P6D1    1 "1=NO CREASE" 2 "2=RIGHT CREASE" 3 "3=LEFT CREASE"
                       4 "4=BOTH CREASE" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P6D2    1 "1=NONE" 2 "2=RIGHT ONLY" 3 "3=LEFT ONLY" 4 "4=BOTH"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=IN APP" ;
label define B4P6D3    1 "1=NONE" 2 "2=RIGHT ONLY" 3 "3=LEFT ONLY" 4 "4=BOTH"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=IN APP" ;
label define B4P6D4    1 "1=NONE" 2 "2=RIGHT ONLY" 3 "3=LEFT ONLY" 4 "4=BOTH"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=IN APP" ;
label define B4P6E1    1 "1=BOTH NORMAL" 2 "2=RT NORMAL" 3 "3=LT NORMAL"
                       4 "4=BOTH ABNORMAL" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P6E2    1 "1=NONE" 2 "2=RIGHT ONLY" 3 "3=LEFT ONLY" 4 "4=BOTH"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=IN APP" ;
label define B4P6E3    1 "1=NONE" 2 "2=RIGHT ONLY" 3 "3=LEFT ONLY" 4 "4=BOTH"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=IN APP" ;
label define B4P6E4    1 "1=NONE" 2 "2=RIGHT ONLY" 3 "3=LEFT ONLY" 4 "4=BOTH"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=IN APP" ;
label define B4P6E4R   1 "1=0%" 2 "2=25%" 3 "3=50%" 4 "4=75%" 5 "5=100%"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4P6E4L   1 "1=0%" 2 "2=25%" 3 "3=50%" 4 "4=75%" 5 "5=100%"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4P6F1    1 "1=AVERAGE" 2 "2=RIGHT ABNORMAL" 3 "3=LEFT ABNORMAL"
                       4 "4=BOTH ABNORMAL" 5 "5=RIGHT NOT VISIBLE"
                       6 "6=LEFT NOT VISIBLE" 7 "7=BOTH NOT VISIBLE"
                       97 "97=DON'T KNOW" 98 "98=MISSING" 99 "9=IN APP" ;
label define B4P6F2    1 "1=NONE" 2 "2=RIGHT ONLY" 3 "3=LEFT ONLY" 4 "4=BOTH"
                       5 "5=RIGHT NOT VISIBLE" 6 "6=LEFT NOT VISIBLE"
                       7 "7=BOTH NOT VISIBLE" 97 "97=DON'T KNOW"
                       98 "98=MISSING" 99 "9=IN APP" ;
label define B4P6F3    1 "1=NONE" 2 "2=RIGHT ONLY" 3 "3=LEFT ONLY" 4 "4=BOTH"
                       5 "5=RIGHT NOT VISIBLE" 6 "6=LEFT NOT VISIBLE"
                       7 "7=BOTH NOT VISIBLE" 97 "97=DON'T KNOW"
                       98 "98=MISSING" 99 "99=IN APP" ;
label define B4P6F4    1 "1=NONE" 2 "2=RIGHT ONLY" 3 "3=LEFT ONLY" 4 "4=BOTH"
                       5 "5=RIGHT NOT VISIBLE" 6 "6=LEFT NOT VISIBLE"
                       7 "7=BOTH NOT VISIBLE" 97 "97=DON'T KNOW"
                       98 "98=MISSING" 99 "99=IN APP" ;
label define B4P6F5    1 "1=NONE" 2 "2=RIGHT ONLY" 3 "3=LEFT ONLY" 4 "4=BOTH"
                       5 "5=RIGHT NOT VISIBLE" 6 "6=LEFT NOT VISIBLE"
                       7 "7=BOTH NOT VISIBLE" 97 "97=DON'T KNOW"
                       98 "98=MISSING" 99 "9=IN APP" ;
label define B4P7A     1 "1=NORMAL" 2 "2=ABNORMAL" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=IN APP" ;
label define B4P7A1R   1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P7A1L   1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P7A2R   1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P7A2L   1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P8A     97 "DON'T KNOW" 98 "MISSING" 99 "IN APP" ;
label define B4P8B1    1 "1=NONE" 2 "2=10%" 3 "3=25%" 4 "4=50%" 5 "5=75%"
                       6 "6=100%" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4P8B2    1 "1=NONE" 2 "2=10%" 3 "3=25%" 4 "4=50%" 5 "5=75%"
                       6 "6=100%" 97 "97=DON'T KNOW" 98 "98=MISSING"
                       99 "99=INAPP" ;
label define B4P8B3    1 "1=EXCELLENT" 2 "2=MODERATE MALALIGNMENT"
                       3 "3=EXTENSIVE MALALIGNMENT" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=IN APP" ;
label define B4P8B4    1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P8B5    1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P8B6    1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P8B7    1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P8C1AD  1 "1=YES, ADULT" 2 "2=NO, YOUNGER THAN 18"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4P8C1A   97 "97=DON'T KNOW" 98 "98=MISSING" 99 "99=INAPP" ;
label define B4P8C1HO  1 "1=DECAY/ABSCESS" 2 "2=GUM DISEASE" 3 "3=TRAUMA"
                       4 "4=BONE LOSS (BECAME LOOSE)"
                       5 "5=WISDOM TEETH EXTRACTION" 6 "6=CROWDING"
                       7 "7=CRACKED" 8 "8=OTHER" 97 "97=DON'T KNOW"
                       98 "98=MISSING" 99 "99=INAPP" ;
label define B4P8C2AD  1 "1=YES, ADULT" 2 "2=NO, YOUNGER THAN 18"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=INAPP" ;
label define B4P8C2A   97 "97=DON'T KNOW" 98 "98=MISSING" 99 "99=INAPP" ;
label define B4P8C2HO  1 "1=DECAY/ABSCESS" 2 "2=GUM DISEASE" 3 "3=TRAUMA"
                       4 "4=BONE LOSS (BECAME LOOSE)"
                       5 "5=WISDOM TEETH EXTRACTION" 6 "6=CROWDING"
                       7 "7=CRACKED" 8 "8=OTHER" 97 "97=DON'T KNOW"
                       98 "98=MISSING" 99 "99=INAPP" ;
label define B4P8D     1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P9A     1 "1=FULL" 2 "2=RESTRICTED" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=IN APP" ;
label define B4P9A1    1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P9A2    1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P9A3    1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P9A4    1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P9B     1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P9C     1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P9D     1 "1=AVERAGE" 2 "2=ABNORMAL" 3 "3=REMOVED"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=IN APP" ;
label define B4P9D1    1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P9D2    1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P9D3    1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P9D3N   97 "97=DON'T KNOW" 98 "98=MISSING" 99 "99=IN APP" ;
label define B4P9D3S   997 "997=DON'T KNOW" 998 "998=MISSING" 999 "999=INAPP" ;
label define B4P10A1   1 "1=NONE" 2 "2=RIGHT" 3 "3=LEFT" 4 "4=BOTH"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=IN APP" ;
label define B4P10A2   1 "1=REGULAR" 2 "2=IRREGULAR"
                       3 "3=REGULARLY IRREGULAR" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=IN APP" ;
label define B4P10A3   1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P10A4   1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P10B1   1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P10B2   7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=IN APP" ;
label define B4P10B2A  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P10B2B  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P10B3   7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=IN APP" ;
label define B4P10C    1 "1=NORMAL" 2 "2=THRILL" 3 "3=BISFERENS"
                       4 "4=ALTERNANS" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=INAPP" ;
label define B4P10C1R  0 "0-NOT DETECTABLE" 1 "1-DECREASED" 2 "2-NORMAL"
                       3 "3-INCREASED" 4 "4-GREATLY INCREASED"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=IN APP" ;
label define B4P10C1L  0 "0-NOT DETECTABLE" 1 "1-DECREASED" 2 "2-NORMAL"
                       3 "3-INCREASED" 4 "4-GREATLY INCREASED"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=IN APP" ;
label define B4P10C2R  0 "0-NOT DETECTABLE" 1 "1-DECREASED" 2 "2-NORMAL"
                       3 "3-INCREASED" 4 "4-GREATLY INCREASED"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=IN APP" ;
label define B4P10C2L  0 "0-NOT DETECTABLE" 1 "1-DECREASED" 2 "2-NORMAL"
                       3 "3-INCREASED" 4 "4-GREATLY INCREASED"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=IN APP" ;
label define B4P10C3R  0 "0-NOT DETECTABLE" 1 "1-DECREASED" 2 "2-NORMAL"
                       3 "3-INCREASED" 4 "4-GREATLY INCREASED"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=IN APP" ;
label define B4P10C3L  0 "0-NOT DETECTABLE" 1 "1-DECREASED" 2 "2-NORMAL"
                       3 "3-INCREASED" 4 "4-GREATLY INCREASED"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=IN APP" ;
label define B4P10C4R  0 "0-NOT DETECTABLE" 1 "1-DECREASED" 2 "2-NORMAL"
                       3 "3-INCREASED" 4 "4-GREATLY INCREASED"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=IN APP" ;
label define B4P10C4L  0 "0-NOT DETECTABLE" 1 "1-DECREASED" 2 "2-NORMAL"
                       3 "3-INCREASED" 4 "4-GREATLY INCREASED"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=IN APP" ;
label define B4P10C5R  0 "0-NOT DETECTABLE" 1 "1-DECREASED" 2 "2-NORMAL"
                       3 "3-INCREASED" 4 "4-GREATLY INCREASED"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=IN APP" ;
label define B4P10C5L  0 "0-NOT DETECTABLE" 1 "1-DECREASED" 2 "2-NORMAL"
                       3 "3-INCREASED" 4 "4-GREATLY INCREASED"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=IN APP" ;
label define B4P10C6R  0 "0-NOT DETECTABLE" 1 "1-DECREASED" 2 "2-NORMAL"
                       3 "3-INCREASED" 4 "4-GREATLY INCREASED"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=IN APP" ;
label define B4P10C6L  0 "0-NOT DETECTABLE" 1 "1-DECREASED" 2 "2-NORMAL"
                       3 "3-INCREASED" 4 "4-GREATLY INCREASED"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=IN APP" ;
label define B4P10C7R  0 "0-NOT DETECTABLE" 1 "1-DECREASED" 2 "2-NORMAL"
                       3 "3-INCREASED" 4 "4-GREATLY INCREASED"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=IN APP" ;
label define B4P10C7L  0 "0-NOT DETECTABLE" 1 "1-DECREASED" 2 "2-NORMAL"
                       3 "3-INCREASED" 4 "4-GREATLY INCREASED"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=IN APP" ;
label define B4P11A1   1 "1=AVERAGE" 2 "2=ABNORMAL" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=IN APP" ;
label define B4P11B    1 "1=NORMAL" 2 "2=SLOW" 3 "3=RAPID-DEEP"
                       4 "4=RAPID-SHALLOW" 5 "5=CHEYNE-STOKES"
                       6 "6=INCREASED BREATH" 7 "7=DECREASED BREATH"
                       8 "8=RALES, WHEEZES, FRICTION RUBS" 97 "97=DON'T KNOW"
                       98 "98=MISSING" 99 "99=IN APP" ;
label define B4P11B1   1 "1=NO" 2 "2=COARSE" 3 "3=FINE" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=IN APP" ;
label define B4P11B1A  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P11B1B  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P11B1C  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P11B1D  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P11B2   1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P11B2A  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P11B2B  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P11B2C  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P11B2D  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P11B3   1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12A    1 "1=NORMAL" 2 "2=TREMOR" 3 "3=ATROPHY"
                       4 "4=FASCICULATION" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12B    1 "1=NORMAL" 2 "2=CONTOUR" 3 "3=MOTION"
                       4 "4=PAIN WITH MOTION" 5 "5=TENDERNESS" 6 "6=KYPHOSIS"
                       7 "7=SCOLIOSIS" 8 "8=KYPHOSCOLIOSIS"
                       97 "97=DON'T KNOW" 98 "98=MISSING" 99 "99=IN APP" ;
label define B4P12C    1 "1=NORMAL" 2 "2=ABNORMAL" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=IN APP" ;
label define B4P12C1   1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C1A  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C1B  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C1C  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C1D  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C1E  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C1F  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C2   1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C2A  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C2B  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C2C  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C2D  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C2E  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C2F  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C3   1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C3A  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C3B  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C3C  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C3D  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C3E  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C3F  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C4   1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C4A  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C4B  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C4C  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C4D  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C4E  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C4F  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C5   1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C5A  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C5B  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C5C  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C5D  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C5E  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C5F  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C6   1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12C7   1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12D    97 "97=DON'T KNOW" 98 "98=MISSING" 99 "99=IN APP" ;
label define B4P12E1   1 "1=NORMAL" 2 "2=ABNORMAL" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=IN APP" ;
label define B4P12E2   1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12E3   1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12E4   1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P12E5   1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13     1 "1=RIGHT" 2 "2=LEFT" 3 "3=AMBIDEXTROUS"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=IN APP" ;
label define B4P13A1   1 "1=NORMAL" 2 "2=RIGHT UNABLE" 3 "3=LEFT UNABLE"
                       4 "4=BOTH UNABLE" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13A2   1 "1=NORMAL" 2 "2=RIGHT UNABLE" 3 "3=LEFT UNABLE"
                       4 "4=BOTH UNABLE" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13A3   1 "1=NORMAL" 2 "2=RIGHT UNABLE" 3 "3=LEFT UNABLE"
                       4 "4=BOTH UNABLE" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13A4   1 "1=NORMAL" 2 "2=RIGHT UNABLE" 3 "3=LEFT UNABLE"
                       4 "4=BOTH UNABLE" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13B1   1 "1=NORMAL" 2 "2=ABNORMAL" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=IN APP" ;
label define B4P13B1A  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13B1B  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13B1C  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13B1D  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13B2   1 "1=NORMAL" 2 "2=ABNORMAL" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=IN APP" ;
label define B4P13B2A  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13B2B  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13B2C  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13B2D  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13B3   1 "1=NORMAL" 2 "2=ABNORMAL" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=IN APP" ;
label define B4P13B3A  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13B3B  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13B3C  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13B3D  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13B4   1 "1=NORMAL" 2 "2=ABNORMAL" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=IN APP" ;
label define B4P13B4A  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13B4B  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13B4C  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13B4D  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13B5   1 "1=NORMAL" 2 "2=ABNORMAL" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=IN APP" ;
label define B4P13B5A  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13B5B  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13B5C  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13B5D  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13C1R  0 "0-NOT DETECTABLE" 1 "1-DECREASED" 2 "2-NORMAL"
                       3 "3-INCREASED" 4 "4-GREATLY INCREASED" 5 "5-CLONUS"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=IN APP" ;
label define B4P13C1L  0 "0-NOT DETECTABLE" 1 "1-DECREASED" 2 "2-NORMAL"
                       3 "3-INCREASED" 4 "4-GREATLY INCREASED" 5 "5-CLONUS"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=IN APP" ;
label define B4P13C2R  0 "0-NOT DETECTABLE" 1 "1-DECREASED" 2 "2-NORMAL"
                       3 "3-INCREASED" 4 "4-GREATLY INCREASED" 5 "5-CLONUS"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=IN APP" ;
label define B4P13C2L  0 "0-NOT DETECTABLE" 1 "1-DECREASED" 2 "2-NORMAL"
                       3 "3-INCREASED" 4 "4-GREATLY INCREASED" 5 "5-CLONUS"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=IN APP" ;
label define B4P13C3R  0 "0-NOT DETECTABLE" 1 "1-DECREASED" 2 "2-NORMAL"
                       3 "3-INCREASED" 4 "4-GREATLY INCREASED" 5 "5-CLONUS"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=IN APP" ;
label define B4P13C3L  0 "0-NOT DETECTABLE" 1 "1-DECREASED" 2 "2-NORMAL"
                       3 "3-INCREASED" 4 "4-GREATLY INCREASED" 5 "5-CLONUS"
                       7 "7=DON'T KNOW" 8 "8=MISSING" 9 "9=IN APP" ;
label define B4P13C4A  1 "NORMAL" 2 "DORSIFLEXION" 3 "WITHDRAWAL"
                       4 "NO RESPONSE" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4P13D1   1 "1=NORMAL" 2 "2=ABNORMAL" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=IN APP" ;
label define B4P13D1A  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13D1B  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13D1C  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13D1D  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13D2   1 "1=NORMAL" 2 "2=ABNORMAL" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=IN APP" ;
label define B4P13D2A  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13D2B  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13D2C  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13D2D  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13D3   1 "1=NORMAL" 2 "2=ABNORMAL" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=IN APP" ;
label define B4P13D3A  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13D3B  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13D3C  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13D3D  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13D4   1 "1=NORMAL" 2 "2=ABNORMAL" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=IN APP" ;
label define B4P13D4A  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13D4B  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13D4C  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13D4D  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13D5   1 "1=NORMAL" 2 "2=ABNORMAL" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=IN APP" ;
label define B4P13D5A  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13D5B  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13D5C  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13D5D  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13E1   1 "1=NORMAL" 2 "2=ABNORMAL" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=IN APP" ;
label define B4P13E1A  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13E1B  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13E1C  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13E1D  1 "1=YES" 2 "2=NO" 7 "7=DON'T KNOW" 8 "8=MISSING"
                       9 "9=IN APP" ;
label define B4P13E2   1 "1=NORMAL" 2 "2=ABNORMAL" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=IN APP" ;
label define B4P13E3   1 "1=NORMAL" 2 "2=ABNORMAL" 7 "7=DON'T KNOW"
                       8 "8=MISSING" 9 "9=IN APP" ;
label define B4ZBLOOD  1 "NO SAMPLE" 2 "PARTIAL" 3 "COMPLETE" 4 "OTHER" ;
label define B4BHA1C   997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define B4BCHOL   997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define B4BTRIGL  9997 "DONT KNOW" 9998 "REFUSED/MISSING" 9999 "INAPP" ;
label define B4BHDL    997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define B4BLDL    997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define B4BRTHDL  9997 "DONT KNOW" 9998 "REFUSED/MISSING" 9999 "INAPP" ;
label define B4BDHEAS  9997 "DONT KNOW" 9998 "REFUSED/MISSING" 9999 "INAPP" ;
label define B4BDHEA   9997 "DONT KNOW" 9998 "REFUSED/MISSING" 9999 "INAPP" ;
label define B4BSCREA  997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define B4BIL6    99997 "DONT KNOW" 99998 "REFUSED/MISSING"
                       99999 "INAPP" ;
label define B4BSIL6R  99997 "DONT KNOW" 99998 "REFUSED/MISSING"
                       99999 "INAPP" ;
label define B4BFGN    997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define B4BCRP    99997 "DONT KNOW" 99998 "REFUSED/MISSING"
                       99999 "INAPP" ;
label define B4BSESEL  99997 "DONT KNOW" 99998 "REFUSED/MISSING"
                       99999 "INAPP" ;
label define B4BSICAM  999997 "DONT KNOW" 999998 "REFUSED/MISSING"
                       999999 "INAPP" ;
label define B4BATBC   9997 "DONT KNOW" 9998 "REFUSED/MISSING" 9999 "INAPP" ;
label define B4B13CBC  9997 "DONT KNOW" 9998 "REFUSED/MISSING" 9999 "INAPP" ;
label define B4BAC     99997 "DONT KNOW" 99998 "REFUSED/MISSING"
                       99999 "INAPP" ;
label define B4BBCX    9997 "DONT KNOW" 9998 "REFUSED/MISSING" 9999 "INAPP" ;
label define B4BLUT    99997 "DONT KNOW" 99998 "REFUSED/MISSING"
                       99999 "INAPP" ;
label define B4BZX     9997 "DONT KNOW" 9998 "REFUSED/MISSING" 9999 "INAPP" ;
label define B4BLYC    9997 "DONT KNOW" 9998 "REFUSED/MISSING" 9999 "INAPP" ;
label define B4BRET    99997 "DONT KNOW" 99998 "REFUSED/MISSING"
                       99999 "INAPP" ;
label define B4BATOC   999997 "DONT KNOW" 999998 "REFUSED/MISSING"
                       999999 "INAPP" ;
label define B4BGTOC   99997 "DONT KNOW" 99998 "REFUSED/MISSING"
                       99999 "INAPP" ;
label define B4BP1NP   999997 "DONT KNOW" 999998 "REFUSED/MISSING"
                       999999 "INAPP" ;
label define B4BSBAP   999997 "DONT KNOW" 999998 "REFUSED/MISSING"
                       999999 "INAPP" ;
label define B4BSNTX   999997 "DONT KNOW" 999998 "REFUSED/MISSING"
                       999999 "INAPP" ;
label define B4BGLUC   997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define B4BINSLN  997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define B4BIGF1   997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define B4BHOMAIR 997 "DON'T KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define B4ZURINE  1 "NO SAMPLE" 2 "PARTIAL" 3 "COMPLETE" 4 "OTHER" ;
label define B4BUPROB  1 "YES" 2 "NO" 9 "INAPP" ;
label define B4BUVDYN  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4BUVDN   97 "DON'T KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4BURVOL  9997 "DON'T KNOW" 9998 "REFUSED/MISSING" 9999 "INAPP" ;
label define B4BCORTL  997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define B4BCORTO  997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define B4BUCREA  997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define B4BCLCRE  99997 "DONT KNOW" 99998 "REFUSED/MISSING"
                       99999 "INAPP" ;
label define B4BCOCRE  997 "DONT KNOW" 998 "REFUSED/MISSING" 999 "INAPP" ;
label define B4BNOREP  9997 "DON'T KNOW" 9998 "REFUSED/MISSING" 9999 "INAPP" ;
label define B4BEPIN   9997 "DON'T KNOW" 9998 "REFUSED/MISSING" 9999 "INAPP" ;
label define B4BDOPA   99997 "DONT KNOW" 99998 "REFUSED/MISSING"
                       99999 "INAPP" ;
label define B4BNE12   9999997 "DONT KNOW" 9999998 "REFUSED/MISSING"
                       9999999 "INAPP" ;
label define B4BEPI12  9999997 "DONT KNOW" 9999998 "REFUSED/MISSING"
                       9999999 "INAPP" ;
label define B4BDOP12  99999997 "DONT KNOW" 99999998 "REFUSED/MISSING"
                       99999999 "INAPP" ;
label define B4BNOCRE  9999997 "DONT KNOW" 9999998 "REFUSED/MISSING"
                       9999999 "INAPP" ;
label define B4BEPCRE  9999997 "DONT KNOW" 9999998 "REFUSED/MISSING"
                       9999999 "INAPP" ;
label define B4BDOCRE  99999997 "DONT KNOW" 99999998 "REFUSED/MISSING"
                       99999999 "INAPP" ;
label define B4BNECL   9997 "DON'T KNOW" 9998 "REFUSED/MISSING" 9999 "INAPP" ;
label define B4BSUCRE  99997 "DONT KNOW" 99998 "REFUSED/MISSING"
                       99999 "INAPP" ;
label define B4BGFR    9999997 "DONT KNOW" 9999998 "REFUSED/MISSING"
                       9999999 "INAPP" ;
label define B4ZSALIV  1 "NO SAMPLE" 2 "PARTIAL" 3 "COMPLETE" 4 "OTHER" ;
label define B4BSCL11  99997 "DONT KNOW" 99998 "REFUSED/MISSING"
                       99999 "INAPP" ;
label define B4BSCL21  99997 "DONT KNOW" 99998 "REFUSED/MISSING"
                       99999 "INAPP" ;
label define B4BSCL31  99997 "DONT KNOW" 99998 "REFUSED/MISSING"
                       99999 "INAPP" ;
label define B4BSCL41  99997 "DONT KNOW" 99998 "REFUSED/MISSING"
                       99999 "INAPP" ;
label define B4BSDUP   1 "YES" 2 "NO" ;
label define B4BSCL12  99998 "MISSING" 99999 "INAPP" ;
label define B4BSCL22  99998 "MISSING" 99999 "INAPP" ;
label define B4BSCL32  99998 "MISSING" 99999 "INAPP" ;
label define B4BSCL42  99998 "MISSING" 99999 "INAPP" ;
label define B4BSCL1A  99997 "DONT KNOW" 99998 "REFUSED/MISSING"
                       99999 "INAPP" ;
label define B4BSCL2A  99997 "DONT KNOW" 99998 "REFUSED/MISSING"
                       99999 "INAPP" ;
label define B4BSCL3A  99997 "DONT KNOW" 99998 "REFUSED/MISSING"
                       99999 "INAPP" ;
label define B4BSCL4A  99997 "DONT KNOW" 99998 "REFUSED/MISSING"
                       99999 "INAPP" ;
label define B4BSCL14  99997 "DONT KNOW" 99998 "REFUSED/MISSING"
                       99999 "INAPP" ;
label define B4AWAVL   1 "DIARY AND WATCH" 2 "DIARY ONLY" 3 "WATCH ONLY"
                       4 "NEITHER DIARY OR WATCH" 9 "NEVER BEEN ASKED" ;
label define B4AWIMPU  1 "YES" 2 "NO" 9 "INAPP" ;
label define B4AWMARK  1 "YES" 2 "NO" 9 "INAPP" ;
label define B4AWDAYS  9 "INAPP" ;
label define B4AWPART  1 "YES" 2 "NO" 9 "INAPP" ;
label define B4AWIDIO  1 "YES" 2 "NO" 9 "INAPP" ;
label define B4AWTMZN  1 "YES" 2 "NO" 9 "INAPP" ;
label define B4AWLAG   99 "INAPP" ;
label define B4AWBGNM  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER" 99 "INAPP" ;
label define B4AWENDM  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER" 99 "INAPP" ;
label define B4AD11    1 "MOST ALERT" 2 "2" 3 "3" 4 "4" 5 "NOT ALERT AT ALL"
                       7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD12    9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4AD13    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD13S   9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4AD14    9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4AD15    9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4AD16    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD16M   1 "PAIN RELIEVER" 2 "ANTI-INFECTIVE" 3 "DECONGESTANT"
                       4 "COUGH/COLD MED" 5 "ANTIHISTAMINE" 6 "ANTACID"
                       7 "CATHARTIC/LAXATIVE" 8 "ANTIDEPRESSANT"
                       9 "SLEEPING AID" 10 "SUPPLEMENT/ALT MED" 11 "OTHER"
                       97 "DON'T KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4AD17    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD17M   1 "PRESCRIBED SLEEP AID" 2 "OTC SLEEP AID"
                       3 "OTC PAIN MED" 4 "ALT SLEEP AID" 5 "OTHER"
                       7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD18A   1 "AM" 2 "PM" 6 "DID NOT SLEEP" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4AD19    9996 "DID NOT SLEEP" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4AD110   1 "VERY EASY" 2 "2" 3 "3" 4 "4" 5 "VERY DIFFICULT"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD111   96 "UP ALL NIGHT" 97 "DON'T KNOW" 98 "MISSING"
                       99 "INAPP" ;
label define B4AD112   1 "YES" 2 "NO" 6 "DID NOT SLEEP" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4AD113   1 "YES" 2 "NO" 6 "DID NOT SLEEP" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4AD114   96 "DID NOT SLEEP" 97 "DON'T KNOW" 98 "MISSING"
                       99 "INAPP" ;
label define B4AD115A  1 "AM" 2 "PM" 6 "DID NOT WAKE UP" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4AD116A  1 "AM" 2 "PM" 6 "DID NOT GET OUT OF BED"
                       7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD117   1 "VERY DEEPLY" 2 "2" 3 "3" 4 "4" 5 "VERY LIGHTLY"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD118   1 "WELL RESTED" 2 "2" 3 "3" 4 "4" 5 "POORLY RESTED"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD119   1 "VERY ALERT" 2 "2" 3 "3" 4 "4" 5 "NOT ALERT AT ALL"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD120   1 "VERY GOOD" 2 "2" 3 "3" 4 "4" 5 "VERY POOR"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD21    1 "MOST ALERT" 2 "2" 3 "3" 4 "4" 5 "NOT ALERT AT ALL"
                       7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD22    9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4AD23    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD23S   9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4AD24    9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4AD25    9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4AD26    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD26M   1 "PAIN RELIEVER" 2 "ANTI-INFECTIVE" 3 "DECONGESTANT"
                       4 "COUGH/COLD MED" 5 "ANTIHISTAMINE" 6 "ANTACID"
                       7 "CATHARTIC/LAXATIVE" 8 "ANTIDEPRESSANT"
                       9 "SLEEPING AID" 10 "SUPPLEMENT/ALT MED" 11 "OTHER"
                       97 "DON'T KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4AD27    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD27M   1 "PRESCRIBED SLEEP AID" 2 "OTC SLEEP AID"
                       3 "OTC PAIN MED" 4 "ALT SLEEP AID" 5 "OTHER"
                       7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD28A   1 "AM" 2 "PM" 6 "DID NOT SLEEP" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4AD29    9996 "DID NOT SLEEP" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4AD210   1 "VERY EASY" 2 "2" 3 "3" 4 "4" 5 "VERY DIFFICULT"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD211   96 "UP ALL NIGHT" 97 "DON'T KNOW" 98 "MISSING"
                       99 "INAPP" ;
label define B4AD212   1 "YES" 2 "NO" 6 "DID NOT SLEEP" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4AD213   1 "YES" 2 "NO" 6 "DID NOT SLEEP" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4AD214   96 "DID NOT SLEEP" 97 "DON'T KNOW" 98 "MISSING"
                       99 "INAPP" ;
label define B4AD215A  1 "AM" 2 "PM" 6 "DID NOT WAKE UP" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4AD216A  1 "AM" 2 "PM" 6 "DID NOT GET OUT OF BED"
                       7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD217   1 "VERY DEEPLY" 2 "2" 3 "3" 4 "4" 5 "VERY LIGHTLY"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD218   1 "WELL RESTED" 2 "2" 3 "3" 4 "4" 5 "POORLY RESTED"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD219   1 "VERY ALERT" 2 "2" 3 "3" 4 "4" 5 "NOT ALERT AT ALL"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD220   1 "VERY GOOD" 2 "2" 3 "3" 4 "4" 5 "VERY POOR"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD31    1 "MOST ALERT" 2 "2" 3 "3" 4 "4" 5 "NOT ALERT AT ALL"
                       7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD32    9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4AD33    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD33S   9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4AD34    9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4AD35    9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4AD36    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD36M   1 "PAIN RELIEVER" 2 "ANTI-INFECTIVE" 3 "DECONGESTANT"
                       4 "COUGH/COLD MED" 5 "ANTIHISTAMINE" 6 "ANTACID"
                       7 "CATHARTIC/LAXATIVE" 8 "ANTIDEPRESSANT"
                       9 "SLEEPING AID" 10 "SUPPLEMENT/ALT MED" 11 "OTHER"
                       97 "DON'T KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4AD37    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD37M   1 "PRESCRIBED SLEEP AID" 2 "OTC SLEEP AID"
                       3 "OTC PAIN MED" 4 "ALT SLEEP AID" 5 "OTHER"
                       7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD38A   1 "AM" 2 "PM" 6 "DID NOT SLEEP" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4AD39    9996 "DID NOT SLEEP" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4AD310   1 "VERY EASY" 2 "2" 3 "3" 4 "4" 5 "VERY DIFFICULT"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD311   96 "UP ALL NIGHT" 97 "DON'T KNOW" 98 "MISSING"
                       99 "INAPP" ;
label define B4AD312   1 "YES" 2 "NO" 6 "DID NOT SLEEP" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4AD313   1 "YES" 2 "NO" 6 "DID NOT SLEEP" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4AD314   96 "DID NOT SLEEP" 97 "DON'T KNOW" 98 "MISSING"
                       99 "INAPP" ;
label define B4AD315A  1 "AM" 2 "PM" 6 "DID NOT WAKE UP" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4AD316A  1 "AM" 2 "PM" 6 "DID NOT GET OUT OF BED"
                       7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD317   1 "VERY DEEPLY" 2 "2" 3 "3" 4 "4" 5 "VERY LIGHTLY"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD318   1 "WELL RESTED" 2 "2" 3 "3" 4 "4" 5 "POORLY RESTED"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD319   1 "VERY ALERT" 2 "2" 3 "3" 4 "4" 5 "NOT ALERT AT ALL"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD320   1 "VERY GOOD" 2 "2" 3 "3" 4 "4" 5 "VERY POOR"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD41    1 "MOST ALERT" 2 "2" 3 "3" 4 "4" 5 "NOT ALERT AT ALL"
                       7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD42    9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4AD43    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD43S   9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4AD44    9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4AD45    9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4AD46    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD46M   1 "PAIN RELIEVER" 2 "ANTI-INFECTIVE" 3 "DECONGESTANT"
                       4 "COUGH/COLD MED" 5 "ANTIHISTAMINE" 6 "ANTACID"
                       7 "CATHARTIC/LAXATIVE" 8 "ANTIDEPRESSANT"
                       9 "SLEEPING AID" 10 "SUPPLEMENT/ALT MED" 11 "OTHER"
                       97 "DON'T KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4AD47    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD47M   1 "PRESCRIBED SLEEP AID" 2 "OTC SLEEP AID"
                       3 "OTC PAIN MED" 4 "ALT SLEEP AID" 5 "OTHER"
                       7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD48A   1 "AM" 2 "PM" 6 "DID NOT SLEEP" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4AD49    9996 "DID NOT SLEEP" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4AD410   1 "VERY EASY" 2 "2" 3 "3" 4 "4" 5 "VERY DIFFICULT"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD411   96 "UP ALL NIGHT" 97 "DON'T KNOW" 98 "MISSING"
                       99 "INAPP" ;
label define B4AD412   1 "YES" 2 "NO" 6 "DID NOT SLEEP" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4AD413   1 "YES" 2 "NO" 6 "DID NOT SLEEP" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4AD414   96 "DID NOT SLEEP" 97 "DON'T KNOW" 98 "MISSING"
                       99 "INAPP" ;
label define B4AD415A  1 "AM" 2 "PM" 6 "DID NOT WAKE UP" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4AD416A  1 "AM" 2 "PM" 6 "DID NOT GET OUT OF BED"
                       7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD417   1 "VERY DEEPLY" 2 "2" 3 "3" 4 "4" 5 "VERY LIGHTLY"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD418   1 "WELL RESTED" 2 "2" 3 "3" 4 "4" 5 "POORLY RESTED"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD419   1 "VERY ALERT" 2 "2" 3 "3" 4 "4" 5 "NOT ALERT AT ALL"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD420   1 "VERY GOOD" 2 "2" 3 "3" 4 "4" 5 "VERY POOR"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD51    1 "MOST ALERT" 2 "2" 3 "3" 4 "4" 5 "NOT ALERT AT ALL"
                       7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD52    9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4AD53    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD53S   9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4AD54    9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4AD55    9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4AD56    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD56M   1 "PAIN RELIEVER" 2 "ANTI-INFECTIVE" 3 "DECONGESTANT"
                       4 "COUGH/COLD MED" 5 "ANTIHISTAMINE" 6 "ANTACID"
                       7 "CATHARTIC/LAXATIVE" 8 "ANTIDEPRESSANT"
                       9 "SLEEPING AID" 10 "SUPPLEMENT/ALT MED" 11 "OTHER"
                       97 "DON'T KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4AD57    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD57M   1 "PRESCRIBED SLEEP AID" 2 "OTC SLEEP AID"
                       3 "OTC PAIN MED" 4 "ALT SLEEP AID" 5 "OTHER"
                       7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD58A   1 "AM" 2 "PM" 6 "DID NOT SLEEP" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4AD59    9996 "DID NOT SLEEP" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4AD510   1 "VERY EASY" 2 "2" 3 "3" 4 "4" 5 "VERY DIFFICULT"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD511   96 "UP ALL NIGHT" 97 "DON'T KNOW" 98 "MISSING"
                       99 "INAPP" ;
label define B4AD512   1 "YES" 2 "NO" 6 "DID NOT SLEEP" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4AD513   1 "YES" 2 "NO" 6 "DID NOT SLEEP" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4AD514   96 "DID NOT SLEEP" 97 "DON'T KNOW" 98 "MISSING"
                       99 "INAPP" ;
label define B4AD515A  1 "AM" 2 "PM" 6 "DID NOT WAKE UP" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4AD516A  1 "AM" 2 "PM" 6 "DID NOT GET OUT OF BED"
                       7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD517   1 "VERY DEEPLY" 2 "2" 3 "3" 4 "4" 5 "VERY LIGHTLY"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD518   1 "WELL RESTED" 2 "2" 3 "3" 4 "4" 5 "POORLY RESTED"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD519   1 "VERY ALERT" 2 "2" 3 "3" 4 "4" 5 "NOT ALERT AT ALL"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD520   1 "VERY GOOD" 2 "2" 3 "3" 4 "4" 5 "VERY POOR"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD61    1 "MOST ALERT" 2 "2" 3 "3" 4 "4" 5 "NOT ALERT AT ALL"
                       7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD62    9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4AD63    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD63S   9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4AD64    9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4AD65    9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4AD66    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD66M   1 "PAIN RELIEVER" 2 "ANTI-INFECTIVE" 3 "DECONGESTANT"
                       4 "COUGH/COLD MED" 5 "ANTIHISTAMINE" 6 "ANTACID"
                       7 "CATHARTIC/LAXATIVE" 8 "ANTIDEPRESSANT"
                       9 "SLEEPING AID" 10 "SUPPLEMENT/ALT MED" 11 "OTHER"
                       97 "DON'T KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4AD67    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD67M   1 "PRESCRIBED SLEEP AID" 2 "OTC SLEEP AID"
                       3 "OTC PAIN MED" 4 "ALT SLEEP AID" 5 "OTHER"
                       7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD68A   1 "AM" 2 "PM" 6 "DID NOT SLEEP" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4AD69    9996 "DID NOT SLEEP" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4AD610   1 "VERY EASY" 2 "2" 3 "3" 4 "4" 5 "VERY DIFFICULT"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD611   96 "UP ALL NIGHT" 97 "DON'T KNOW" 98 "MISSING"
                       99 "INAPP" ;
label define B4AD612   1 "YES" 2 "NO" 6 "DID NOT SLEEP" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4AD613   1 "YES" 2 "NO" 6 "DID NOT SLEEP" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4AD614   96 "DID NOT SLEEP" 97 "DON'T KNOW" 98 "MISSING"
                       99 "INAPP" ;
label define B4AD615A  1 "AM" 2 "PM" 6 "DID NOT WAKE UP" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4AD616A  1 "AM" 2 "PM" 6 "DID NOT GET OUT OF BED"
                       7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD617   1 "VERY DEEPLY" 2 "2" 3 "3" 4 "4" 5 "VERY LIGHTLY"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD618   1 "WELL RESTED" 2 "2" 3 "3" 4 "4" 5 "POORLY RESTED"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD619   1 "VERY ALERT" 2 "2" 3 "3" 4 "4" 5 "NOT ALERT AT ALL"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD620   1 "VERY GOOD" 2 "2" 3 "3" 4 "4" 5 "VERY POOR"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD71    1 "MOST ALERT" 2 "2" 3 "3" 4 "4" 5 "NOT ALERT AT ALL"
                       7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD72    9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4AD73    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD73S   9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4AD74    9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4AD75    9997 "DON'T KNOW" 9998 "MISSING" 9999 "INAPP" ;
label define B4AD76    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD76M   1 "PAIN RELIEVER" 2 "ANTI-INFECTIVE" 3 "DECONGESTANT"
                       4 "COUGH/COLD MED" 5 "ANTIHISTAMINE" 6 "ANTACID"
                       7 "CATHARTIC/LAXATIVE" 8 "ANTIDEPRESSANT"
                       9 "SLEEPING AID" 10 "SUPPLEMENT/ALT MED" 11 "OTHER"
                       97 "DON'T KNOW" 98 "MISSING" 99 "INAPP" ;
label define B4AD77    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD77M   1 "PRESCRIBED SLEEP AID" 2 "OTC SLEEP AID"
                       3 "OTC PAIN MED" 4 "ALT SLEEP AID" 5 "OTHER"
                       7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD78A   1 "AM" 2 "PM" 6 "DID NOT SLEEP" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4AD79    9996 "DID NOT SLEEP" 9997 "DON'T KNOW" 9998 "MISSING"
                       9999 "INAPP" ;
label define B4AD710   1 "VERY EASY" 2 "2" 3 "3" 4 "4" 5 "VERY DIFFICULT"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD711   96 "UP ALL NIGHT" 97 "DON'T KNOW" 98 "MISSING"
                       99 "INAPP" ;
label define B4AD712   1 "YES" 2 "NO" 6 "DID NOT SLEEP" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4AD713   1 "YES" 2 "NO" 6 "DID NOT SLEEP" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4AD714   96 "DID NOT SLEEP" 97 "DON'T KNOW" 98 "MISSING"
                       99 "INAPP" ;
label define B4AD715A  1 "AM" 2 "PM" 6 "DID NOT WAKE UP" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4AD716A  1 "AM" 2 "PM" 6 "DID NOT GET OUT OF BED"
                       7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD717   1 "VERY DEEPLY" 2 "2" 3 "3" 4 "4" 5 "VERY LIGHTLY"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD718   1 "WELL RESTED" 2 "2" 3 "3" 4 "4" 5 "POORLY RESTED"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD719   1 "VERY ALERT" 2 "2" 3 "3" 4 "4" 5 "NOT ALERT AT ALL"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4AD720   1 "VERY GOOD" 2 "2" 3 "3" 4 "4" 5 "VERY POOR"
                       6 "DID NOT SLEEP" 7 "DON'T KNOW" 8 "MISSING" 9 "INAPP" ;
label define B4WR1TAC  999998 "MISSING" 999999 "INAPP" ;
label define B4WR1ACM  998 "MISSING" 999 "INAPP" ;
label define B4WR1MAC  9998 "MISSING" 9999 "INAPP" ;
label define B4WR1IAC  98 "MISSING" 99 "INAPP" ;
label define B4WR1SW   98 "MISSING" 99 "INAPP" ;
label define B4WR1WT   998 "MISSING" 999 "INAPP" ;
label define B4WR1PW   998 "MISSING" 999 "INAPP" ;
label define B4WR1WB   998 "MISSING" 999 "INAPP" ;
label define B4WR1AWB  998 "MISSING" 999 "INAPP" ;
label define B4WR1SLT  9998 "MISSING" 9999 "INAPP" ;
label define B4WR1PSL  998 "MISSING" 999 "INAPP" ;
label define B4WR1SLB  998 "MISSING" 999 "INAPP" ;
label define B4WR1ASB  998 "MISSING" 999 "INAPP" ;
label define B4WS1TAC  999998 "MISSING" 999999 "INAPP" ;
label define B4WS1ACM  998 "MISSING" 999 "INAPP" ;
label define B4WS1MAC  9998 "MISSING" 9999 "INAPP" ;
label define B4WS1IAC  98 "MISSING" 99 "INAPP" ;
label define B4WS1ISW  98 "MISSING" 99 "INAPP" ;
label define B4WS1OL   998 "MISSING" 999 "INAPP" ;
label define B4WS1SNT  998 "MISSING" 999 "INAPP" ;
label define B4WS1EFF  998 "MISSING" 999 "INAPP" ;
label define B4WS1WSO  998 "MISSING" 999 "INAPP" ;
label define B4WS1WT   998 "MISSING" 999 "INAPP" ;
label define B4WS1PW   98 "MISSING" 99 "INAPP" ;
label define B4WS1WB   998 "MISSING" 999 "INAPP" ;
label define B4WS1AWB  98 "MISSING" 99 "INAPP" ;
label define B4WS1SLT  9998 "MISSING" 9999 "INAPP" ;
label define B4WS1PSL  998 "MISSING" 999 "INAPP" ;
label define B4WS1SLB  998 "MISSING" 999 "INAPP" ;
label define B4WS1ASB  998 "MISSING" 999 "INAPP" ;
label define B4WA1TAC  9999998 "MISSING" 9999999 "INAPP" ;
label define B4WA1ACM  9998 "MISSING" 9999 "INAPP" ;
label define B4WA1MAC  9998 "MISSING" 9999 "INAPP" ;
label define B4WA1IAC  8 "MISSING" 9 "INAPP" ;
label define B4WA1ISW  8 "MISSING" 9 "INAPP" ;
label define B4WA1WT   9998 "MISSING" 9999 "INAPP" ;
label define B4WA1PW   998 "MISSING" 999 "INAPP" ;
label define B4WA1WB   998 "MISSING" 999 "INAPP" ;
label define B4WA1AWB  998 "MISSING" 999 "INAPP" ;
label define B4WA1SLT  998 "MISSING" 999 "INAPP" ;
label define B4WA1PSL  98 "MISSING" 99 "INAPP" ;
label define B4WA1SLB  998 "MISSING" 999 "INAPP" ;
label define B4WA1ASB  98 "MISSING" 99 "INAPP" ;
label define B4WR2TAC  999998 "MISSING" 999999 "INAPP" ;
label define B4WR2ACM  998 "MISSING" 999 "INAPP" ;
label define B4WR2MAC  9998 "MISSING" 9999 "INAPP" ;
label define B4WR2IAC  98 "MISSING" 99 "INAPP" ;
label define B4WR2SW   98 "MISSING" 99 "INAPP" ;
label define B4WR2WT   998 "MISSING" 999 "INAPP" ;
label define B4WR2PW   998 "MISSING" 999 "INAPP" ;
label define B4WR2WB   998 "MISSING" 999 "INAPP" ;
label define B4WR2AWB  998 "MISSING" 999 "INAPP" ;
label define B4WR2SLT  9998 "MISSING" 9999 "INAPP" ;
label define B4WR2PSL  998 "MISSING" 999 "INAPP" ;
label define B4WR2SLB  998 "MISSING" 999 "INAPP" ;
label define B4WR2ASB  998 "MISSING" 999 "INAPP" ;
label define B4WS2TAC  999998 "MISSING" 999999 "INAPP" ;
label define B4WS2ACM  998 "MISSING" 999 "INAPP" ;
label define B4WS2MAC  9998 "MISSING" 9999 "INAPP" ;
label define B4WS2IAC  98 "MISSING" 99 "INAPP" ;
label define B4WS2ISW  98 "MISSING" 99 "INAPP" ;
label define B4WS2OL   998 "MISSING" 999 "INAPP" ;
label define B4WS2SNT  998 "MISSING" 999 "INAPP" ;
label define B4WS2EFF  998 "MISSING" 999 "INAPP" ;
label define B4WS2WSO  998 "MISSING" 999 "INAPP" ;
label define B4WS2WT   998 "MISSING" 999 "INAPP" ;
label define B4WS2PW   98 "MISSING" 99 "INAPP" ;
label define B4WS2WB   998 "MISSING" 999 "INAPP" ;
label define B4WS2AWB  98 "MISSING" 99 "INAPP" ;
label define B4WS2SLT  9998 "MISSING" 9999 "INAPP" ;
label define B4WS2PSL  998 "MISSING" 999 "INAPP" ;
label define B4WS2SLB  998 "MISSING" 999 "INAPP" ;
label define B4WS2ASB  998 "MISSING" 999 "INAPP" ;
label define B4WA2TAC  9999998 "MISSING" 9999999 "INAPP" ;
label define B4WA2ACM  9998 "MISSING" 9999 "INAPP" ;
label define B4WA2MAC  9998 "MISSING" 9999 "INAPP" ;
label define B4WA2IAC  8 "MISSING" 9 "INAPP" ;
label define B4WA2ISW  8 "MISSING" 9 "INAPP" ;
label define B4WA2WT   9998 "MISSING" 9999 "INAPP" ;
label define B4WA2PW   998 "MISSING" 999 "INAPP" ;
label define B4WA2WB   998 "MISSING" 999 "INAPP" ;
label define B4WA2AWB  998 "MISSING" 999 "INAPP" ;
label define B4WA2SLT  998 "MISSING" 999 "INAPP" ;
label define B4WA2PSL  98 "MISSING" 99 "INAPP" ;
label define B4WA2SLB  998 "MISSING" 999 "INAPP" ;
label define B4WA2ASB  98 "MISSING" 99 "INAPP" ;
label define B4WR3TAC  999998 "MISSING" 999999 "INAPP" ;
label define B4WR3ACM  998 "MISSING" 999 "INAPP" ;
label define B4WR3MAC  9998 "MISSING" 9999 "INAPP" ;
label define B4WR3IAC  98 "MISSING" 99 "INAPP" ;
label define B4WR3SW   98 "MISSING" 99 "INAPP" ;
label define B4WR3WT   998 "MISSING" 999 "INAPP" ;
label define B4WR3PW   998 "MISSING" 999 "INAPP" ;
label define B4WR3WB   998 "MISSING" 999 "INAPP" ;
label define B4WR3AWB  998 "MISSING" 999 "INAPP" ;
label define B4WR3SLT  9998 "MISSING" 9999 "INAPP" ;
label define B4WR3PSL  998 "MISSING" 999 "INAPP" ;
label define B4WR3SLB  998 "MISSING" 999 "INAPP" ;
label define B4WR3ASB  998 "MISSING" 999 "INAPP" ;
label define B4WS3TAC  999998 "MISSING" 999999 "INAPP" ;
label define B4WS3ACM  998 "MISSING" 999 "INAPP" ;
label define B4WS3MAC  9998 "MISSING" 9999 "INAPP" ;
label define B4WS3IAC  98 "MISSING" 99 "INAPP" ;
label define B4WS3ISW  98 "MISSING" 99 "INAPP" ;
label define B4WS3OL   998 "MISSING" 999 "INAPP" ;
label define B4WS3SNT  998 "MISSING" 999 "INAPP" ;
label define B4WS3EFF  998 "MISSING" 999 "INAPP" ;
label define B4WS3WSO  998 "MISSING" 999 "INAPP" ;
label define B4WS3WT   998 "MISSING" 999 "INAPP" ;
label define B4WS3PW   98 "MISSING" 99 "INAPP" ;
label define B4WS3WB   998 "MISSING" 999 "INAPP" ;
label define B4WS3AWB  98 "MISSING" 99 "INAPP" ;
label define B4WS3SLT  9998 "MISSING" 9999 "INAPP" ;
label define B4WS3PSL  998 "MISSING" 999 "INAPP" ;
label define B4WS3SLB  998 "MISSING" 999 "INAPP" ;
label define B4WS3ASB  998 "MISSING" 999 "INAPP" ;
label define B4WA3TAC  9999998 "MISSING" 9999999 "INAPP" ;
label define B4WA3ACM  9998 "MISSING" 9999 "INAPP" ;
label define B4WA3MAC  9998 "MISSING" 9999 "INAPP" ;
label define B4WA3IAC  8 "MISSING" 9 "INAPP" ;
label define B4WA3ISW  8 "MISSING" 9 "INAPP" ;
label define B4WA3WT   9998 "MISSING" 9999 "INAPP" ;
label define B4WA3PW   998 "MISSING" 999 "INAPP" ;
label define B4WA3WB   998 "MISSING" 999 "INAPP" ;
label define B4WA3AWB  998 "MISSING" 999 "INAPP" ;
label define B4WA3SLT  998 "MISSING" 999 "INAPP" ;
label define B4WA3PSL  98 "MISSING" 99 "INAPP" ;
label define B4WA3SLB  998 "MISSING" 999 "INAPP" ;
label define B4WA3ASB  98 "MISSING" 99 "INAPP" ;
label define B4WR4TAC  999998 "MISSING" 999999 "INAPP" ;
label define B4WR4ACM  998 "MISSING" 999 "INAPP" ;
label define B4WR4MAC  9998 "MISSING" 9999 "INAPP" ;
label define B4WR4IAC  98 "MISSING" 99 "INAPP" ;
label define B4WR4SW   98 "MISSING" 99 "INAPP" ;
label define B4WR4WT   998 "MISSING" 999 "INAPP" ;
label define B4WR4PW   998 "MISSING" 999 "INAPP" ;
label define B4WR4WB   998 "MISSING" 999 "INAPP" ;
label define B4WR4AWB  998 "MISSING" 999 "INAPP" ;
label define B4WR4SLT  9998 "MISSING" 9999 "INAPP" ;
label define B4WR4PSL  998 "MISSING" 999 "INAPP" ;
label define B4WR4SLB  998 "MISSING" 999 "INAPP" ;
label define B4WR4ASB  998 "MISSING" 999 "INAPP" ;
label define B4WS4TAC  999998 "MISSING" 999999 "INAPP" ;
label define B4WS4ACM  998 "MISSING" 999 "INAPP" ;
label define B4WS4MAC  9998 "MISSING" 9999 "INAPP" ;
label define B4WS4IAC  98 "MISSING" 99 "INAPP" ;
label define B4WS4ISW  98 "MISSING" 99 "INAPP" ;
label define B4WS4OL   998 "MISSING" 999 "INAPP" ;
label define B4WS4SNT  998 "MISSING" 999 "INAPP" ;
label define B4WS4EFF  998 "MISSING" 999 "INAPP" ;
label define B4WS4WSO  998 "MISSING" 999 "INAPP" ;
label define B4WS4WT   998 "MISSING" 999 "INAPP" ;
label define B4WS4PW   98 "MISSING" 99 "INAPP" ;
label define B4WS4WB   998 "MISSING" 999 "INAPP" ;
label define B4WS4AWB  98 "MISSING" 99 "INAPP" ;
label define B4WS4SLT  9998 "MISSING" 9999 "INAPP" ;
label define B4WS4PSL  998 "MISSING" 999 "INAPP" ;
label define B4WS4SLB  998 "MISSING" 999 "INAPP" ;
label define B4WS4ASB  998 "MISSING" 999 "INAPP" ;
label define B4WA4TAC  9999998 "MISSING" 9999999 "INAPP" ;
label define B4WA4ACM  9998 "MISSING" 9999 "INAPP" ;
label define B4WA4MAC  9998 "MISSING" 9999 "INAPP" ;
label define B4WA4IAC  8 "MISSING" 9 "INAPP" ;
label define B4WA4ISW  8 "MISSING" 9 "INAPP" ;
label define B4WA4WT   9998 "MISSING" 9999 "INAPP" ;
label define B4WA4PW   998 "MISSING" 999 "INAPP" ;
label define B4WA4WB   998 "MISSING" 999 "INAPP" ;
label define B4WA4AWB  998 "MISSING" 999 "INAPP" ;
label define B4WA4SLT  998 "MISSING" 999 "INAPP" ;
label define B4WA4PSL  98 "MISSING" 99 "INAPP" ;
label define B4WA4SLB  998 "MISSING" 999 "INAPP" ;
label define B4WA4ASB  98 "MISSING" 99 "INAPP" ;
label define B4WR5TAC  999998 "MISSING" 999999 "INAPP" ;
label define B4WR5ACM  998 "MISSING" 999 "INAPP" ;
label define B4WR5MAC  9998 "MISSING" 9999 "INAPP" ;
label define B4WR5IAC  98 "MISSING" 99 "INAPP" ;
label define B4WR5SW   98 "MISSING" 99 "INAPP" ;
label define B4WR5WT   998 "MISSING" 999 "INAPP" ;
label define B4WR5PW   998 "MISSING" 999 "INAPP" ;
label define B4WR5WB   998 "MISSING" 999 "INAPP" ;
label define B4WR5AWB  998 "MISSING" 999 "INAPP" ;
label define B4WR5SLT  9998 "MISSING" 9999 "INAPP" ;
label define B4WR5PSL  998 "MISSING" 999 "INAPP" ;
label define B4WR5SLB  998 "MISSING" 999 "INAPP" ;
label define B4WR5ASB  998 "MISSING" 999 "INAPP" ;
label define B4WS5TAC  999998 "MISSING" 999999 "INAPP" ;
label define B4WS5ACM  998 "MISSING" 999 "INAPP" ;
label define B4WS5MAC  9998 "MISSING" 9999 "INAPP" ;
label define B4WS5IAC  98 "MISSING" 99 "INAPP" ;
label define B4WS5ISW  98 "MISSING" 99 "INAPP" ;
label define B4WS5OL   998 "MISSING" 999 "INAPP" ;
label define B4WS5SNT  998 "MISSING" 999 "INAPP" ;
label define B4WS5EFF  998 "MISSING" 999 "INAPP" ;
label define B4WS5WSO  998 "MISSING" 999 "INAPP" ;
label define B4WS5WT   998 "MISSING" 999 "INAPP" ;
label define B4WS5PW   98 "MISSING" 99 "INAPP" ;
label define B4WS5WB   998 "MISSING" 999 "INAPP" ;
label define B4WS5AWB  98 "MISSING" 99 "INAPP" ;
label define B4WS5SLT  9998 "MISSING" 9999 "INAPP" ;
label define B4WS5PSL  998 "MISSING" 999 "INAPP" ;
label define B4WS5SLB  998 "MISSING" 999 "INAPP" ;
label define B4WS5ASB  998 "MISSING" 999 "INAPP" ;
label define B4WA5TAC  9999998 "MISSING" 9999999 "INAPP" ;
label define B4WA5ACM  9998 "MISSING" 9999 "INAPP" ;
label define B4WA5MAC  9998 "MISSING" 9999 "INAPP" ;
label define B4WA5IAC  8 "MISSING" 9 "INAPP" ;
label define B4WA5ISW  8 "MISSING" 9 "INAPP" ;
label define B4WA5WT   9998 "MISSING" 9999 "INAPP" ;
label define B4WA5PW   998 "MISSING" 999 "INAPP" ;
label define B4WA5WB   998 "MISSING" 999 "INAPP" ;
label define B4WA5AWB  998 "MISSING" 999 "INAPP" ;
label define B4WA5SLT  998 "MISSING" 999 "INAPP" ;
label define B4WA5PSL  98 "MISSING" 99 "INAPP" ;
label define B4WA5SLB  998 "MISSING" 999 "INAPP" ;
label define B4WA5ASB  98 "MISSING" 99 "INAPP" ;
label define B4WR6TAC  999998 "MISSING" 999999 "INAPP" ;
label define B4WR6ACM  998 "MISSING" 999 "INAPP" ;
label define B4WR6MAC  9998 "MISSING" 9999 "INAPP" ;
label define B4WR6IAC  98 "MISSING" 99 "INAPP" ;
label define B4WR6SW   98 "MISSING" 99 "INAPP" ;
label define B4WR6WT   998 "MISSING" 999 "INAPP" ;
label define B4WR6PW   998 "MISSING" 999 "INAPP" ;
label define B4WR6WB   998 "MISSING" 999 "INAPP" ;
label define B4WR6AWB  998 "MISSING" 999 "INAPP" ;
label define B4WR6SLT  9998 "MISSING" 9999 "INAPP" ;
label define B4WR6PSL  998 "MISSING" 999 "INAPP" ;
label define B4WR6SLB  998 "MISSING" 999 "INAPP" ;
label define B4WR6ASB  998 "MISSING" 999 "INAPP" ;
label define B4WS6TAC  999998 "MISSING" 999999 "INAPP" ;
label define B4WS6ACM  998 "MISSING" 999 "INAPP" ;
label define B4WS6MAC  9998 "MISSING" 9999 "INAPP" ;
label define B4WS6IAC  98 "MISSING" 99 "INAPP" ;
label define B4WS6ISW  98 "MISSING" 99 "INAPP" ;
label define B4WS6OL   998 "MISSING" 999 "INAPP" ;
label define B4WS6SNT  998 "MISSING" 999 "INAPP" ;
label define B4WS6EFF  998 "MISSING" 999 "INAPP" ;
label define B4WS6WSO  998 "MISSING" 999 "INAPP" ;
label define B4WS6WT   998 "MISSING" 999 "INAPP" ;
label define B4WS6PW   98 "MISSING" 99 "INAPP" ;
label define B4WS6WB   998 "MISSING" 999 "INAPP" ;
label define B4WS6AWB  98 "MISSING" 99 "INAPP" ;
label define B4WS6SLT  9998 "MISSING" 9999 "INAPP" ;
label define B4WS6PSL  998 "MISSING" 999 "INAPP" ;
label define B4WS6SLB  998 "MISSING" 999 "INAPP" ;
label define B4WS6ASB  998 "MISSING" 999 "INAPP" ;
label define B4WA6TAC  9999998 "MISSING" 9999999 "INAPP" ;
label define B4WA6ACM  9998 "MISSING" 9999 "INAPP" ;
label define B4WA6MAC  9998 "MISSING" 9999 "INAPP" ;
label define B4WA6IAC  8 "MISSING" 9 "INAPP" ;
label define B4WA6ISW  8 "MISSING" 9 "INAPP" ;
label define B4WA6WT   9998 "MISSING" 9999 "INAPP" ;
label define B4WA6PW   998 "MISSING" 999 "INAPP" ;
label define B4WA6WB   998 "MISSING" 999 "INAPP" ;
label define B4WA6AWB  998 "MISSING" 999 "INAPP" ;
label define B4WA6SLT  998 "MISSING" 999 "INAPP" ;
label define B4WA6PSL  98 "MISSING" 99 "INAPP" ;
label define B4WA6SLB  998 "MISSING" 999 "INAPP" ;
label define B4WA6ASB  98 "MISSING" 99 "INAPP" ;
label define B4WR7TAC  999998 "MISSING" 999999 "INAPP" ;
label define B4WR7ACM  998 "MISSING" 999 "INAPP" ;
label define B4WR7MAC  9998 "MISSING" 9999 "INAPP" ;
label define B4WR7IAC  98 "MISSING" 99 "INAPP" ;
label define B4WR7SW   98 "MISSING" 99 "INAPP" ;
label define B4WR7WT   998 "MISSING" 999 "INAPP" ;
label define B4WR7PW   998 "MISSING" 999 "INAPP" ;
label define B4WR7WB   998 "MISSING" 999 "INAPP" ;
label define B4WR7AWB  998 "MISSING" 999 "INAPP" ;
label define B4WR7SLT  9998 "MISSING" 9999 "INAPP" ;
label define B4WR7PSL  998 "MISSING" 999 "INAPP" ;
label define B4WR7SLB  998 "MISSING" 999 "INAPP" ;
label define B4WR7ASB  998 "MISSING" 999 "INAPP" ;
label define B4WS7TAC  999998 "MISSING" 999999 "INAPP" ;
label define B4WS7ACM  998 "MISSING" 999 "INAPP" ;
label define B4WS7MAC  9998 "MISSING" 9999 "INAPP" ;
label define B4WS7IAC  98 "MISSING" 99 "INAPP" ;
label define B4WS7ISW  98 "MISSING" 99 "INAPP" ;
label define B4WS7OL   998 "MISSING" 999 "INAPP" ;
label define B4WS7SNT  998 "MISSING" 999 "INAPP" ;
label define B4WS7EFF  998 "MISSING" 999 "INAPP" ;
label define B4WS7WSO  998 "MISSING" 999 "INAPP" ;
label define B4WS7WT   998 "MISSING" 999 "INAPP" ;
label define B4WS7PW   98 "MISSING" 99 "INAPP" ;
label define B4WS7WB   998 "MISSING" 999 "INAPP" ;
label define B4WS7AWB  98 "MISSING" 99 "INAPP" ;
label define B4WS7SLT  9998 "MISSING" 9999 "INAPP" ;
label define B4WS7PSL  998 "MISSING" 999 "INAPP" ;
label define B4WS7SLB  998 "MISSING" 999 "INAPP" ;
label define B4WS7ASB  998 "MISSING" 999 "INAPP" ;
label define B4VHAWR   1 "STRONGLY LEFT HAND" 2 "LEFT HAND"
                       3 "EITHER HAND OR BOTH HANDS" 4 "RIGHT HAND"
                       5 "STRONGLY RIGHT HAND" 7 "DONT KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4VHADW   1 "STRONGLY LEFT HAND" 2 "LEFT HAND"
                       3 "EITHER HAND OR BOTH HANDS" 4 "RIGHT HAND"
                       5 "STRONGLY RIGHT HAND" 7 "DONT KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4VHATH   1 "STRONGLY LEFT HAND" 2 "LEFT HAND"
                       3 "EITHER HAND OR BOTH HANDS" 4 "RIGHT HAND"
                       5 "STRONGLY RIGHT HAND" 7 "DONT KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4VHASC   1 "STRONGLY LEFT HAND" 2 "LEFT HAND"
                       3 "EITHER HAND OR BOTH HANDS" 4 "RIGHT HAND"
                       5 "STRONGLY RIGHT HAND" 7 "DONT KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4VHATO   1 "STRONGLY LEFT HAND" 2 "LEFT HAND"
                       3 "EITHER HAND OR BOTH HANDS" 4 "RIGHT HAND"
                       5 "STRONGLY RIGHT HAND" 7 "DONT KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4VHAKN   1 "STRONGLY LEFT HAND" 2 "LEFT HAND"
                       3 "EITHER HAND OR BOTH HANDS" 4 "RIGHT HAND"
                       5 "STRONGLY RIGHT HAND" 7 "DONT KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4VHASP   1 "STRONGLY LEFT HAND" 2 "LEFT HAND"
                       3 "EITHER HAND OR BOTH HANDS" 4 "RIGHT HAND"
                       5 "STRONGLY RIGHT HAND" 7 "DONT KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4VHABR   1 "STRONGLY LEFT HAND" 2 "LEFT HAND"
                       3 "EITHER HAND OR BOTH HANDS" 4 "RIGHT HAND"
                       5 "STRONGLY RIGHT HAND" 7 "DONT KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4VHASM   1 "STRONGLY LEFT HAND" 2 "LEFT HAND"
                       3 "EITHER HAND OR BOTH HANDS" 4 "RIGHT HAND"
                       5 "STRONGLY RIGHT HAND" 7 "DONT KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4VHAOB   1 "STRONGLY LEFT HAND" 2 "LEFT HAND"
                       3 "EITHER HAND OR BOTH HANDS" 4 "RIGHT HAND"
                       5 "STRONGLY RIGHT HAND" 7 "DONT KNOW" 8 "MISSING"
                       9 "INAPP" ;
label define B4VHAKI   1 "STRONGLY LEFT FOOT" 2 "LEFT FOOT" 3 "EITHER FOOT"
                       4 "RIGHT FOOT" 5 "STRONGLY RIGHT FOOT" ;
label define B4VHAOE   1 "STRONGLY LEFT EYE" 2 "LEFT EYE" 3 "EITHER EYE"
                       4 "RIGHT EYE" 5 "STRONGLY RIGHT EYE" ;
label define B4VHALT   998 "MISSING" 999 "INAPP" ;
label define B4VHART   998 "MISSING" 999 "INAPP" ;
label define B4VHALQ   998 "MISSING" 999 "INAPP" ;
label define B4VHADZ   0 "LQ=0, L & R HANDS EQUAL" 98 "MISSING" 99 "INAPP" ;
label define B4VHADR   98 "MISSING" 99 "INAPP" ;
label define B4VHADL   98 "MISSING" 99 "INAPP" ;
label define B4VATEH   9999 "INAPP" ;
label define B4VCAFH   9999 "INAPP" ;
label define B4VCIGH   9999 "INAPP" ;
label define B4VCLB    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B4VCLBT   1 "RED-GREEN" 2 "BLUE-GREEN" 3 "OTHER" 7 "DON'T KNOW"
                       8 "MISSING" 9 "INAPP" ;
label define B4VCIRC   1 "YES" 2 "NO" 8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B4VLC     1 "UPPER RIGHT & UPPER LEFT"
                       2 "UPPER RIGHT & LOWER LEFT" 3 "OTHER"
                       8 "REFUSED/MISSING" 9 "INAPPLICABLE" ;
label define B4VSRB1   1 "NOT STRESSED AT ALL" 10 "EXTREMELY STRESSED"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B4VCS1    1 "MATH" 2 "STROOP" 3 "PASAT" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B4VSRCS1  1 "NOT STRESSED AT ALL" 10 "EXTREMELY STRESSED"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B4VSRR1   1 "NOT STRESSED AT ALL" 10 "EXTREMELY STRESSED"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B4VCS2    1 "MATH" 2 "STROOP" 3 "PASAT" 8 "REFUSED/MISSING"
                       9 "INAPPLICABLE" ;
label define B4VSRCS2  1 "NOT STRESSED AT ALL" 10 "EXTREMELY STRESSED"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B4VSRR2   1 "NOT STRESSED AT ALL" 10 "EXTREMELY STRESSED"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B4VSRU1   1 "NOT STRESSED AT ALL" 10 "EXTREMELY STRESSED"
                       98 "REFUSED/MISSING" 99 "INAPPLICABLE" ;
label define B4VSTS1   998 "MISSING" ;
label define B4VS1S2   998 "MISSING" ;
label define B4VS2S3   998 "MISSING" ;
label define B4VS3S4   998 "MISSING" ;
label define B4ZPPHYS  1 "NO" 2 "BASELINE ONLY" 3 "S1 PASAT" 4 "S1 STROOP"
                       5 "S2 PASAT" 6 "S2 STROOP" 7 "COMPLETE" 8 "OTHER"
                       9 "S1 MATH" 10 "S2 MATH" ;
label define B4ZPHYSD  1 "NONE" 2 "NO BP" 3 "NO RESIRATION" 4 "NO ECG"
                       5 "ALL" 6 "OTHER" ;
label define B4VTERM   1 "YES TERMINATED" 2 "NOT TERMINATED"
                       3 "SESSION NOT RUN" ;
label define B4VPACEM  0 "NO PACEMAKER" 1 "HAS PACEMAKER" ;
label define B4VPPSS   1 "COMPLETE" 2 "INCOMPLETE: PHYS" 3 "INCOMPLETE: TECH"
                       4 "NOT RUN" ;
label define B4VPPSR   1 "PP SUCCESSFUL" 2 "HI/LO BP" 3 "PHYS DISCOMFORT"
                       4 "PHYS INCOMPETENCE" 5 "MED CONDITION"
                       6 "EQUIP: ECG/OTHER" 7 "EQUIP: FINOMETER"
                       8 "EQUIP: OTHER" 9 "OTHER" ;
label define B4VBEQ    1 "EXCELLENT" 2 "GOOD" 3 "SCOREABLE" 4 "UNSCOREABLE"
                       5 "NO DATA" ;
label define B4VBEQR   1 "CLEAN/CLEAR SIGNAL" 2 "NOISY BASELINE"
                       3 "ABERRANT BEATS" 4 "BAD INTERVALS" 5 "NO DATA"
                       6 "OTHER" ;
label define B4VMEQ    1 "EXCELLENT" 2 "GOOD" 3 "SCOREABLE" 4 "UNSCOREABLE"
                       5 "NO DATA" ;
label define B4VMEQR   1 "CLEAN/CLEAR SIGNAL" 2 "NOISY BASELINE"
                       3 "ABERRANT BEATS" 4 "BAD INTERVALS" 5 "NO DATA"
                       6 "OTHER" ;
label define B4VPEQ    1 "EXCELLENT" 2 "GOOD" 3 "SCOREABLE" 4 "UNSCOREABLE"
                       5 "NO DATA" ;
label define B4VPEQR   1 "CLEAN/CLEAR SIGNAL" 2 "NOISY BASELINE"
                       3 "ABERRANT BEATS" 4 "BAD INTERVALS" 5 "NO DATA"
                       6 "OTHER" ;
label define B4VSEQ    1 "EXCELLENT" 2 "GOOD" 3 "SCOREABLE" 4 "UNSCOREABLE"
                       5 "NO DATA" ;
label define B4VSEQR   1 "CLEAN/CLEAR SIGNAL" 2 "NOISY BASELINE"
                       3 "ABERRANT BEATS" 4 "BAD INTERVALS" 5 "NO DATA"
                       6 "OTHER" ;
label define B4VR1EQ   1 "EXCELLENT" 2 "GOOD" 3 "SCOREABLE" 4 "UNSCOREABLE"
                       5 "NO DATA" ;
label define B4VR1EQR  1 "CLEAN/CLEAR SIGNAL" 2 "NOISY BASELINE"
                       3 "ABERRANT BEATS" 4 "BAD INTERVALS" 5 "NO DATA"
                       6 "OTHER" ;
label define B4VR2EQ   1 "EXCELLENT" 2 "GOOD" 3 "SCOREABLE" 4 "UNSCOREABLE"
                       5 "NO DATA" ;
label define B4VR2EQR  1 "CLEAN/CLEAR SIGNAL" 2 "NOISY BASELINE"
                       3 "ABERRANT BEATS" 4 "BAD INTERVALS" 5 "NO DATA"
                       6 "OTHER" ;
label define B4VUEQ    1 "EXCELLENT" 2 "GOOD" 3 "SCOREABLE" 4 "UNSCOREABLE"
                       5 "NO DATA" ;
label define B4VUEQR   1 "CLEAN/CLEAR SIGNAL" 2 "NOISY BASELINE"
                       3 "ABERRANT BEATS" 4 "BAD INTERVALS" 5 "NO DATA"
                       6 "OTHER" ;
label define B4VB1DU   9998 "MISSING" 9999 "INAPP" ;
label define B4VB1BEG  99998 "MISSING" 99999 "INAPP" ;
label define B4VB1END  99998 "MISSING" 99999 "INAPP" ;
label define B4VB1MAX  99998 "MISSING" 99999 "INAPP" ;
label define B4VB1NU   9998 "MISSING" 9999 "INAPP" ;
label define B4VB1HR   99998 "MISSING" 99999 "INAPP" ;
label define B4VB1SD   99998 "MISSING" 99999 "INAPP" ;
label define B4VB1LSD  99998 "MISSING" 99999 "INAPP" ;
label define B4VB1RM   99998 "MISSING" 99999 "INAPP" ;
label define B4VB1LRM  99998 "MISSING" 99999 "INAPP" ;
label define B4VB1LF   99998 "MISSING" 99999 "INAPP" ;
label define B4VB1LLF  99998 "MISSING" 99999 "INAPP" ;
label define B4VB1HF   99998 "MISSING" 99999 "INAPP" ;
label define B4VB1LHF  99998 "MISSING" 99999 "INAPP" ;
label define B4VB2DU   9998 "MISSING" 9999 "INAPP" ;
label define B4VB2BEG  99998 "MISSING" 99999 "INAPP" ;
label define B4VB2END  99998 "MISSING" 99999 "INAPP" ;
label define B4VB2MAX  99998 "MISSING" 99999 "INAPP" ;
label define B4VB2NU   9998 "MISSING" 9999 "INAPP" ;
label define B4VB2HR   99998 "MISSING" 99999 "INAPP" ;
label define B4VB2SD   99998 "MISSING" 99999 "INAPP" ;
label define B4VB2LSD  99998 "MISSING" 99999 "INAPP" ;
label define B4VB2RM   99998 "MISSING" 99999 "INAPP" ;
label define B4VB2LRM  99998 "MISSING" 99999 "INAPP" ;
label define B4VB2LF   99998 "MISSING" 99999 "INAPP" ;
label define B4VB2LLF  99998 "MISSING" 99999 "INAPP" ;
label define B4VB2HF   99998 "MISSING" 99999 "INAPP" ;
label define B4VB2LHF  99998 "MISSING" 99999 "INAPP" ;
label define B4VM1DU   9998 "MISSING" 9999 "INAPP" ;
label define B4VM1BEG  99998 "MISSING" 99999 "INAPP" ;
label define B4VM1END  99998 "MISSING" 99999 "INAPP" ;
label define B4VM1MAX  99998 "MISSING" 99999 "INAPP" ;
label define B4VM1NU   9998 "MISSING" 9999 "INAPP" ;
label define B4VM1HR   99998 "MISSING" 99999 "INAPP" ;
label define B4VM1SD   99998 "MISSING" 99999 "INAPP" ;
label define B4VM1LSD  99998 "MISSING" 99999 "INAPP" ;
label define B4VM1RM   99998 "MISSING" 99999 "INAPP" ;
label define B4VM1LRM  99998 "MISSING" 99999 "INAPP" ;
label define B4VM1LF   99998 "MISSING" 99999 "INAPP" ;
label define B4VM1LLF  99998 "MISSING" 99999 "INAPP" ;
label define B4VM1HF   99998 "MISSING" 99999 "INAPP" ;
label define B4VM1LHF  99998 "MISSING" 99999 "INAPP" ;
label define B4VP1DU   9998 "MISSING" 9999 "INAPP" ;
label define B4VP1BEG  99998 "MISSING" 99999 "INAPP" ;
label define B4VP1END  99998 "MISSING" 99999 "INAPP" ;
label define B4VP1MAX  99998 "MISSING" 99999 "INAPP" ;
label define B4VP1NU   9998 "MISSING" 9999 "INAPP" ;
label define B4VP1HR   99998 "MISSING" 99999 "INAPP" ;
label define B4VP1SD   99998 "MISSING" 99999 "INAPP" ;
label define B4VP1LSD  99998 "MISSING" 99999 "INAPP" ;
label define B4VP1RM   99998 "MISSING" 99999 "INAPP" ;
label define B4VP1LRM  99998 "MISSING" 99999 "INAPP" ;
label define B4VP1LF   99998 "MISSING" 99999 "INAPP" ;
label define B4VP1LLF  99998 "MISSING" 99999 "INAPP" ;
label define B4VP1HF   99998 "MISSING" 99999 "INAPP" ;
label define B4VP1LHF  99998 "MISSING" 99999 "INAPP" ;
label define B4VP2DU   9998 "MISSING" 9999 "INAPP" ;
label define B4VP2BEG  99998 "MISSING" 99999 "INAPP" ;
label define B4VP2END  99998 "MISSING" 99999 "INAPP" ;
label define B4VP2MAX  99998 "MISSING" 99999 "INAPP" ;
label define B4VP2NU   9998 "MISSING" 9999 "INAPP" ;
label define B4VP2HR   99998 "MISSING" 99999 "INAPP" ;
label define B4VP2SD   99998 "MISSING" 99999 "INAPP" ;
label define B4VP2LSD  99998 "MISSING" 99999 "INAPP" ;
label define B4VP2RM   99998 "MISSING" 99999 "INAPP" ;
label define B4VP2LRM  99998 "MISSING" 99999 "INAPP" ;
label define B4VP2LF   99998 "MISSING" 99999 "INAPP" ;
label define B4VP2LLF  99998 "MISSING" 99999 "INAPP" ;
label define B4VP2HF   99998 "MISSING" 99999 "INAPP" ;
label define B4VP2LHF  99998 "MISSING" 99999 "INAPP" ;
label define B4VR1DU   9998 "MISSING" 9999 "INAPP" ;
label define B4VR1BEG  99998 "MISSING" 99999 "INAPP" ;
label define B4VR1END  99998 "MISSING" 99999 "INAPP" ;
label define B4VR1MAX  99998 "MISSING" 99999 "INAPP" ;
label define B4VR1NU   9998 "MISSING" 9999 "INAPP" ;
label define B4VR1HR   99998 "MISSING" 99999 "INAPP" ;
label define B4VR1SD   99998 "MISSING" 99999 "INAPP" ;
label define B4VR1LSD  99998 "MISSING" 99999 "INAPP" ;
label define B4VR1RM   99998 "MISSING" 99999 "INAPP" ;
label define B4VR1LRM  99998 "MISSING" 99999 "INAPP" ;
label define B4VR1LF   99998 "MISSING" 99999 "INAPP" ;
label define B4VR1LLF  99998 "MISSING" 99999 "INAPP" ;
label define B4VR1HF   99998 "MISSING" 99999 "INAPP" ;
label define B4VR1LHF  99998 "MISSING" 99999 "INAPP" ;
label define B4VR2DU   9998 "MISSING" 9999 "INAPP" ;
label define B4VR2BEG  99998 "MISSING" 99999 "INAPP" ;
label define B4VR2END  99998 "MISSING" 99999 "INAPP" ;
label define B4VR2MAX  99998 "MISSING" 99999 "INAPP" ;
label define B4VR2NU   9998 "MISSING" 9999 "INAPP" ;
label define B4VR2HR   99998 "MISSING" 99999 "INAPP" ;
label define B4VR2SD   99998 "MISSING" 99999 "INAPP" ;
label define B4VR2LSD  99998 "MISSING" 99999 "INAPP" ;
label define B4VR2RM   99998 "MISSING" 99999 "INAPP" ;
label define B4VR2LRM  99998 "MISSING" 99999 "INAPP" ;
label define B4VR2LF   99998 "MISSING" 99999 "INAPP" ;
label define B4VR2LLF  99998 "MISSING" 99999 "INAPP" ;
label define B4VR2HF   99998 "MISSING" 99999 "INAPP" ;
label define B4VR2LHF  99998 "MISSING" 99999 "INAPP" ;
label define B4VS1DU   9998 "MISSING" 9999 "INAPP" ;
label define B4VS1BEG  99998 "MISSING" 99999 "INAPP" ;
label define B4VS1END  99998 "MISSING" 99999 "INAPP" ;
label define B4VS1MAX  99998 "MISSING" 99999 "INAPP" ;
label define B4VS1NU   9998 "MISSING" 9999 "INAPP" ;
label define B4VS1HR   99998 "MISSING" 99999 "INAPP" ;
label define B4VS1SD   99998 "MISSING" 99999 "INAPP" ;
label define B4VS1LSD  99998 "MISSING" 99999 "INAPP" ;
label define B4VS1RM   99998 "MISSING" 99999 "INAPP" ;
label define B4VS1LRM  99998 "MISSING" 99999 "INAPP" ;
label define B4VS1LF   99998 "MISSING" 99999 "INAPP" ;
label define B4VS1LLF  99998 "MISSING" 99999 "INAPP" ;
label define B4VS1HF   99998 "MISSING" 99999 "INAPP" ;
label define B4VS1LHF  99998 "MISSING" 99999 "INAPP" ;
label define B4VS2DU   9998 "MISSING" 9999 "INAPP" ;
label define B4VS2BEG  99998 "MISSING" 99999 "INAPP" ;
label define B4VS2END  99998 "MISSING" 99999 "INAPP" ;
label define B4VS2MAX  99998 "MISSING" 99999 "INAPP" ;
label define B4VS2NU   9998 "MISSING" 9999 "INAPP" ;
label define B4VS2HR   99998 "MISSING" 99999 "INAPP" ;
label define B4VS2SD   99998 "MISSING" 99999 "INAPP" ;
label define B4VS2LSD  99998 "MISSING" 99999 "INAPP" ;
label define B4VS2RM   99998 "MISSING" 99999 "INAPP" ;
label define B4VS2LRM  99998 "MISSING" 99999 "INAPP" ;
label define B4VS2LF   99998 "MISSING" 99999 "INAPP" ;
label define B4VS2LLF  99998 "MISSING" 99999 "INAPP" ;
label define B4VS2HF   99998 "MISSING" 99999 "INAPP" ;
label define B4VS2LHF  99998 "MISSING" 99999 "INAPP" ;
label define B4VU1DU   9998 "MISSING" 9999 "INAPP" ;
label define B4VU1BEG  99998 "MISSING" 99999 "INAPP" ;
label define B4VU1END  99998 "MISSING" 99999 "INAPP" ;
label define B4VU1MAX  99998 "MISSING" 99999 "INAPP" ;
label define B4VU1NU   9998 "MISSING" 9999 "INAPP" ;
label define B4VU1HR   99998 "MISSING" 99999 "INAPP" ;
label define B4VU1SD   99998 "MISSING" 99999 "INAPP" ;
label define B4VU1LSD  99998 "MISSING" 99999 "INAPP" ;
label define B4VU1RM   99998 "MISSING" 99999 "INAPP" ;
label define B4VU1LRM  99998 "MISSING" 99999 "INAPP" ;
label define B4VU1LF   99998 "MISSING" 99999 "INAPP" ;
label define B4VU1LLF  99998 "MISSING" 99999 "INAPP" ;
label define B4VU1HF   99998 "MISSING" 99999 "INAPP" ;
label define B4VU1LHF  99998 "MISSING" 99999 "INAPP" ;


#delimit cr


/***************************************************************************

 Section 4: Missing Values

 This section will replace numeric missing values (i.e., -9) with generic
 system missing ".".  By default the code in this section is commented out.
 Users wishing to apply the generic missing values should remove the comment
 at the beginning and end of this section.  Note that Stata allows you to
 specify up to 27 unique missing value codes.

****************************************************************/

/*
replace B1PAGE_M2 = . if (B1PAGE_M2 == 98 | B1PAGE_M2 == 99)
replace B1PGENDER = . if (B1PGENDER == 8)
replace B4ZB1CLG = . if (B4ZB1CLG == 99)
replace B4Q1A = . if (B4Q1A == 7 | B4Q1A == 8 | B4Q1A == 9)
replace B4Q1B = . if (B4Q1B == 7 | B4Q1B == 8 | B4Q1B == 9)
replace B4Q1C = . if (B4Q1C == 7 | B4Q1C == 8 | B4Q1C == 9)
replace B4Q1D = . if (B4Q1D == 7 | B4Q1D == 8 | B4Q1D == 9)
replace B4Q1E = . if (B4Q1E == 7 | B4Q1E == 8 | B4Q1E == 9)
replace B4Q1F = . if (B4Q1F == 7 | B4Q1F == 8 | B4Q1F == 9)
replace B4Q1G = . if (B4Q1G == 7 | B4Q1G == 8 | B4Q1G == 9)
replace B4Q1H = . if (B4Q1H == 7 | B4Q1H == 8 | B4Q1H == 9)
replace B4Q1I = . if (B4Q1I == 7 | B4Q1I == 8 | B4Q1I == 9)
replace B4Q1J = . if (B4Q1J == 7 | B4Q1J == 8 | B4Q1J == 9)
replace B4Q1K = . if (B4Q1K == 7 | B4Q1K == 8 | B4Q1K == 9)
replace B4Q1L = . if (B4Q1L == 7 | B4Q1L == 8 | B4Q1L == 9)
replace B4Q1M = . if (B4Q1M == 7 | B4Q1M == 8 | B4Q1M == 9)
replace B4Q1N = . if (B4Q1N == 7 | B4Q1N == 8 | B4Q1N == 9)
replace B4Q1O = . if (B4Q1O == 7 | B4Q1O == 8 | B4Q1O == 9)
replace B4Q1P = . if (B4Q1P == 7 | B4Q1P == 8 | B4Q1P == 9)
replace B4Q1Q = . if (B4Q1Q == 7 | B4Q1Q == 8 | B4Q1Q == 9)
replace B4Q1R = . if (B4Q1R == 7 | B4Q1R == 8 | B4Q1R == 9)
replace B4Q1S = . if (B4Q1S == 7 | B4Q1S == 8 | B4Q1S == 9)
replace B4Q1T = . if (B4Q1T == 7 | B4Q1T == 8 | B4Q1T == 9)
replace B4Q1U = . if (B4Q1U == 7 | B4Q1U == 8 | B4Q1U == 9)
replace B4Q1V = . if (B4Q1V == 7 | B4Q1V == 8 | B4Q1V == 9)
replace B4Q1W = . if (B4Q1W == 7 | B4Q1W == 8 | B4Q1W == 9)
replace B4Q1X = . if (B4Q1X == 7 | B4Q1X == 8 | B4Q1X == 9)
replace B4Q1Y = . if (B4Q1Y == 7 | B4Q1Y == 8 | B4Q1Y == 9)
replace B4Q1Z = . if (B4Q1Z == 7 | B4Q1Z == 8 | B4Q1Z == 9)
replace B4Q1AA = . if (B4Q1AA == 7 | B4Q1AA == 8 | B4Q1AA == 9)
replace B4Q1BB = . if (B4Q1BB == 7 | B4Q1BB == 8 | B4Q1BB == 9)
replace B4Q1CC = . if (B4Q1CC == 7 | B4Q1CC == 8 | B4Q1CC == 9)
replace B4Q1DD = . if (B4Q1DD == 7 | B4Q1DD == 8 | B4Q1DD == 9)
replace B4Q1EE = . if (B4Q1EE == 7 | B4Q1EE == 8 | B4Q1EE == 9)
replace B4Q1FF = . if (B4Q1FF == 7 | B4Q1FF == 8 | B4Q1FF == 9)
replace B4Q1GG = . if (B4Q1GG == 7 | B4Q1GG == 8 | B4Q1GG == 9)
replace B4Q1HH = . if (B4Q1HH == 7 | B4Q1HH == 8 | B4Q1HH == 9)
replace B4Q1II = . if (B4Q1II == 7 | B4Q1II == 8 | B4Q1II == 9)
replace B4Q1JJ = . if (B4Q1JJ == 7 | B4Q1JJ == 8 | B4Q1JJ == 9)
replace B4Q1KK = . if (B4Q1KK == 7 | B4Q1KK == 8 | B4Q1KK == 9)
replace B4Q1LL = . if (B4Q1LL == 7 | B4Q1LL == 8 | B4Q1LL == 9)
replace B4Q1MM = . if (B4Q1MM == 7 | B4Q1MM == 8 | B4Q1MM == 9)
replace B4Q1NN = . if (B4Q1NN == 7 | B4Q1NN == 8 | B4Q1NN == 9)
replace B4Q1OO = . if (B4Q1OO == 7 | B4Q1OO == 8 | B4Q1OO == 9)
replace B4Q1PP = . if (B4Q1PP == 7 | B4Q1PP == 8 | B4Q1PP == 9)
replace B4Q1QQ = . if (B4Q1QQ == 7 | B4Q1QQ == 8 | B4Q1QQ == 9)
replace B4Q1RR = . if (B4Q1RR == 7 | B4Q1RR == 8 | B4Q1RR == 9)
replace B4Q1SS = . if (B4Q1SS == 7 | B4Q1SS == 8 | B4Q1SS == 9)
replace B4Q1TT = . if (B4Q1TT == 7 | B4Q1TT == 8 | B4Q1TT == 9)
replace B4Q1UU = . if (B4Q1UU == 7 | B4Q1UU == 8 | B4Q1UU == 9)
replace B4Q1VV = . if (B4Q1VV == 7 | B4Q1VV == 8 | B4Q1VV == 9)
replace B4Q1WW = . if (B4Q1WW == 7 | B4Q1WW == 8 | B4Q1WW == 9)
replace B4Q1XX = . if (B4Q1XX == 7 | B4Q1XX == 8 | B4Q1XX == 9)
replace B4Q1YY = . if (B4Q1YY == 7 | B4Q1YY == 8 | B4Q1YY == 9)
replace B4Q1ZZ = . if (B4Q1ZZ == 7 | B4Q1ZZ == 8 | B4Q1ZZ == 9)
replace B4Q1AAA = . if (B4Q1AAA == 7 | B4Q1AAA == 8 | B4Q1AAA == 9)
replace B4Q1BBB = . if (B4Q1BBB == 7 | B4Q1BBB == 8 | B4Q1BBB == 9)
replace B4Q1CCC = . if (B4Q1CCC == 7 | B4Q1CCC == 8 | B4Q1CCC == 9)
replace B4Q1DDD = . if (B4Q1DDD == 7 | B4Q1DDD == 8 | B4Q1DDD == 9)
replace B4Q1EEE = . if (B4Q1EEE == 7 | B4Q1EEE == 8 | B4Q1EEE == 9)
replace B4Q1FFF = . if (B4Q1FFF == 7 | B4Q1FFF == 8 | B4Q1FFF == 9)
replace B4Q1GGG = . if (B4Q1GGG == 7 | B4Q1GGG == 8 | B4Q1GGG == 9)
replace B4Q1HHH = . if (B4Q1HHH == 7 | B4Q1HHH == 8 | B4Q1HHH == 9)
replace B4Q1III = . if (B4Q1III == 7 | B4Q1III == 8 | B4Q1III == 9)
replace B4Q1JJJ = . if (B4Q1JJJ == 7 | B4Q1JJJ == 8 | B4Q1JJJ == 9)
replace B4Q1KKK = . if (B4Q1KKK == 7 | B4Q1KKK == 8 | B4Q1KKK == 9)
replace B4Q1LLL = . if (B4Q1LLL == 7 | B4Q1LLL == 8 | B4Q1LLL == 9)
replace B4QMA_D = . if (B4QMA_D == 98.0)
replace B4QMA_A = . if (B4QMA_A == 98.0)
replace B4QMA_LI = . if (B4QMA_LI == 98.0)
replace B4QMA_AA = . if (B4QMA_AA == 98.0)
replace B4QMA_PA = . if (B4QMA_PA == 98.0)
replace B4Q2 = . if (B4Q2 == 97 | B4Q2 == 98 | B4Q2 == 99)
replace B4Q3A = . if (B4Q3A == 7 | B4Q3A == 8 | B4Q3A == 9)
replace B4Q3B = . if (B4Q3B == 7 | B4Q3B == 8 | B4Q3B == 9)
replace B4Q3C = . if (B4Q3C == 7 | B4Q3C == 8 | B4Q3C == 9)
replace B4Q3D = . if (B4Q3D == 7 | B4Q3D == 8 | B4Q3D == 9)
replace B4Q3E = . if (B4Q3E == 7 | B4Q3E == 8 | B4Q3E == 9)
replace B4Q3F = . if (B4Q3F == 7 | B4Q3F == 8 | B4Q3F == 9)
replace B4Q3G = . if (B4Q3G == 7 | B4Q3G == 8 | B4Q3G == 9)
replace B4Q3H = . if (B4Q3H == 7 | B4Q3H == 8 | B4Q3H == 9)
replace B4Q3I = . if (B4Q3I == 7 | B4Q3I == 8 | B4Q3I == 9)
replace B4Q3J = . if (B4Q3J == 7 | B4Q3J == 8 | B4Q3J == 9)
replace B4Q3K = . if (B4Q3K == 7 | B4Q3K == 8 | B4Q3K == 9)
replace B4Q3L = . if (B4Q3L == 7 | B4Q3L == 8 | B4Q3L == 9)
replace B4Q3M = . if (B4Q3M == 7 | B4Q3M == 8 | B4Q3M == 9)
replace B4Q3N = . if (B4Q3N == 7 | B4Q3N == 8 | B4Q3N == 9)
replace B4Q3O = . if (B4Q3O == 7 | B4Q3O == 8 | B4Q3O == 9)
replace B4Q3P = . if (B4Q3P == 7 | B4Q3P == 8 | B4Q3P == 9)
replace B4Q3Q = . if (B4Q3Q == 7 | B4Q3Q == 8 | B4Q3Q == 9)
replace B4Q3R = . if (B4Q3R == 7 | B4Q3R == 8 | B4Q3R == 9)
replace B4Q3S = . if (B4Q3S == 7 | B4Q3S == 8 | B4Q3S == 9)
replace B4Q3T = . if (B4Q3T == 7 | B4Q3T == 8 | B4Q3T == 9)
replace B4QCESD = . if (B4QCESD == 98.0)
replace B4Q4A = . if (B4Q4A == 7 | B4Q4A == 8 | B4Q4A == 9)
replace B4Q4B = . if (B4Q4B == 7 | B4Q4B == 8 | B4Q4B == 9)
replace B4Q4C = . if (B4Q4C == 7 | B4Q4C == 8 | B4Q4C == 9)
replace B4Q4D = . if (B4Q4D == 7 | B4Q4D == 8 | B4Q4D == 9)
replace B4Q4E = . if (B4Q4E == 7 | B4Q4E == 8 | B4Q4E == 9)
replace B4Q4F = . if (B4Q4F == 7 | B4Q4F == 8 | B4Q4F == 9)
replace B4Q4G = . if (B4Q4G == 7 | B4Q4G == 8 | B4Q4G == 9)
replace B4Q4H = . if (B4Q4H == 7 | B4Q4H == 8 | B4Q4H == 9)
replace B4Q4I = . if (B4Q4I == 7 | B4Q4I == 8 | B4Q4I == 9)
replace B4Q4J = . if (B4Q4J == 7 | B4Q4J == 8 | B4Q4J == 9)
replace B4QPS_PS = . if (B4QPS_PS == 98.0)
replace B4Q5A = . if (B4Q5A == 7 | B4Q5A == 8 | B4Q5A == 9)
replace B4Q5B = . if (B4Q5B == 7 | B4Q5B == 8 | B4Q5B == 9)
replace B4Q5C = . if (B4Q5C == 7 | B4Q5C == 8 | B4Q5C == 9)
replace B4Q5D = . if (B4Q5D == 7 | B4Q5D == 8 | B4Q5D == 9)
replace B4Q5E = . if (B4Q5E == 7 | B4Q5E == 8 | B4Q5E == 9)
replace B4Q5F = . if (B4Q5F == 7 | B4Q5F == 8 | B4Q5F == 9)
replace B4Q5G = . if (B4Q5G == 7 | B4Q5G == 8 | B4Q5G == 9)
replace B4Q5H = . if (B4Q5H == 7 | B4Q5H == 8 | B4Q5H == 9)
replace B4Q5I = . if (B4Q5I == 7 | B4Q5I == 8 | B4Q5I == 9)
replace B4Q5J = . if (B4Q5J == 7 | B4Q5J == 8 | B4Q5J == 9)
replace B4Q5K = . if (B4Q5K == 7 | B4Q5K == 8 | B4Q5K == 9)
replace B4Q5L = . if (B4Q5L == 7 | B4Q5L == 8 | B4Q5L == 9)
replace B4Q5M = . if (B4Q5M == 7 | B4Q5M == 8 | B4Q5M == 9)
replace B4Q5N = . if (B4Q5N == 7 | B4Q5N == 8 | B4Q5N == 9)
replace B4Q5O = . if (B4Q5O == 7 | B4Q5O == 8 | B4Q5O == 9)
replace B4Q5P = . if (B4Q5P == 7 | B4Q5P == 8 | B4Q5P == 9)
replace B4Q5Q = . if (B4Q5Q == 7 | B4Q5Q == 8 | B4Q5Q == 9)
replace B4Q5R = . if (B4Q5R == 7 | B4Q5R == 8 | B4Q5R == 9)
replace B4Q5S = . if (B4Q5S == 7 | B4Q5S == 8 | B4Q5S == 9)
replace B4Q5T = . if (B4Q5T == 7 | B4Q5T == 8 | B4Q5T == 9)
replace B4QAE_AI = . if (B4QAE_AI == 98.0)
replace B4QAE_AO = . if (B4QAE_AO == 98.0)
replace B4QAE_AC = . if (B4QAE_AC == 98.0)
replace B4Q5U = . if (B4Q5U == 7 | B4Q5U == 8 | B4Q5U == 9)
replace B4Q5V = . if (B4Q5V == 7 | B4Q5V == 8 | B4Q5V == 9)
replace B4QAE_AA = . if (B4QAE_AA == 8.0)
replace B4Q6A = . if (B4Q6A == 7 | B4Q6A == 8 | B4Q6A == 9)
replace B4Q6B = . if (B4Q6B == 7 | B4Q6B == 8 | B4Q6B == 9)
replace B4Q6C = . if (B4Q6C == 7 | B4Q6C == 8 | B4Q6C == 9)
replace B4Q6D = . if (B4Q6D == 7 | B4Q6D == 8 | B4Q6D == 9)
replace B4Q6E = . if (B4Q6E == 7 | B4Q6E == 8 | B4Q6E == 9)
replace B4Q6F = . if (B4Q6F == 7 | B4Q6F == 8 | B4Q6F == 9)
replace B4Q6G = . if (B4Q6G == 7 | B4Q6G == 8 | B4Q6G == 9)
replace B4Q6H = . if (B4Q6H == 7 | B4Q6H == 8 | B4Q6H == 9)
replace B4Q6I = . if (B4Q6I == 7 | B4Q6I == 8 | B4Q6I == 9)
replace B4Q6J = . if (B4Q6J == 7 | B4Q6J == 8 | B4Q6J == 9)
replace B4Q6K = . if (B4Q6K == 7 | B4Q6K == 8 | B4Q6K == 9)
replace B4Q6L = . if (B4Q6L == 7 | B4Q6L == 8 | B4Q6L == 9)
replace B4Q6M = . if (B4Q6M == 7 | B4Q6M == 8 | B4Q6M == 9)
replace B4Q6N = . if (B4Q6N == 7 | B4Q6N == 8 | B4Q6N == 9)
replace B4Q6O = . if (B4Q6O == 7 | B4Q6O == 8 | B4Q6O == 9)
replace B4QTA_AG = . if (B4QTA_AG == 98.0)
replace B4QTA_AT = . if (B4QTA_AT == 98.0)
replace B4QTA_AR = . if (B4QTA_AR == 98.0)
replace B4Q7A = . if (B4Q7A == 7 | B4Q7A == 8 | B4Q7A == 9)
replace B4Q7B = . if (B4Q7B == 7 | B4Q7B == 8 | B4Q7B == 9)
replace B4Q7C = . if (B4Q7C == 7 | B4Q7C == 8 | B4Q7C == 9)
replace B4Q7D = . if (B4Q7D == 7 | B4Q7D == 8 | B4Q7D == 9)
replace B4Q7E = . if (B4Q7E == 7 | B4Q7E == 8 | B4Q7E == 9)
replace B4Q7F = . if (B4Q7F == 7 | B4Q7F == 8 | B4Q7F == 9)
replace B4Q7G = . if (B4Q7G == 7 | B4Q7G == 8 | B4Q7G == 9)
replace B4Q7H = . if (B4Q7H == 7 | B4Q7H == 8 | B4Q7H == 9)
replace B4Q7I = . if (B4Q7I == 7 | B4Q7I == 8 | B4Q7I == 9)
replace B4Q7J = . if (B4Q7J == 7 | B4Q7J == 8 | B4Q7J == 9)
replace B4Q7K = . if (B4Q7K == 7 | B4Q7K == 8 | B4Q7K == 9)
replace B4Q7L = . if (B4Q7L == 7 | B4Q7L == 8 | B4Q7L == 9)
replace B4Q7M = . if (B4Q7M == 7 | B4Q7M == 8 | B4Q7M == 9)
replace B4Q7N = . if (B4Q7N == 7 | B4Q7N == 8 | B4Q7N == 9)
replace B4Q7O = . if (B4Q7O == 7 | B4Q7O == 8 | B4Q7O == 9)
replace B4Q7P = . if (B4Q7P == 7 | B4Q7P == 8 | B4Q7P == 9)
replace B4Q7Q = . if (B4Q7Q == 7 | B4Q7Q == 8 | B4Q7Q == 9)
replace B4Q7R = . if (B4Q7R == 7 | B4Q7R == 8 | B4Q7R == 9)
replace B4Q7S = . if (B4Q7S == 7 | B4Q7S == 8 | B4Q7S == 9)
replace B4Q7T = . if (B4Q7T == 7 | B4Q7T == 8 | B4Q7T == 9)
replace B4QTA_AX = . if (B4QTA_AX == 98.0)
replace B4Q8A = . if (B4Q8A == 7 | B4Q8A == 8 | B4Q8A == 9)
replace B4Q8B = . if (B4Q8B == 7 | B4Q8B == 8 | B4Q8B == 9)
replace B4Q8C = . if (B4Q8C == 7 | B4Q8C == 8 | B4Q8C == 9)
replace B4Q8D = . if (B4Q8D == 7 | B4Q8D == 8 | B4Q8D == 9)
replace B4Q8E = . if (B4Q8E == 7 | B4Q8E == 8 | B4Q8E == 9)
replace B4Q8F = . if (B4Q8F == 7 | B4Q8F == 8 | B4Q8F == 9)
replace B4Q8G = . if (B4Q8G == 7 | B4Q8G == 8 | B4Q8G == 9)
replace B4Q8H = . if (B4Q8H == 7 | B4Q8H == 8 | B4Q8H == 9)
replace B4Q8I = . if (B4Q8I == 7 | B4Q8I == 8 | B4Q8I == 9)
replace B4QSA_SA = . if (B4QSA_SA == 8.0)
replace B4Q9A = . if (B4Q9A == 7 | B4Q9A == 8 | B4Q9A == 9)
replace B4Q9B = . if (B4Q9B == 7 | B4Q9B == 8 | B4Q9B == 9)
replace B4Q9C = . if (B4Q9C == 7 | B4Q9C == 8 | B4Q9C == 9)
replace B4Q9D = . if (B4Q9D == 7 | B4Q9D == 8 | B4Q9D == 9)
replace B4Q9E = . if (B4Q9E == 7 | B4Q9E == 8 | B4Q9E == 9)
replace B4Q9F = . if (B4Q9F == 7 | B4Q9F == 8 | B4Q9F == 9)
replace B4Q9G = . if (B4Q9G == 7 | B4Q9G == 8 | B4Q9G == 9)
replace B4Q9H = . if (B4Q9H == 7 | B4Q9H == 8 | B4Q9H == 9)
replace B4Q9I = . if (B4Q9I == 7 | B4Q9I == 8 | B4Q9I == 9)
replace B4Q9J = . if (B4Q9J == 7 | B4Q9J == 8 | B4Q9J == 9)
replace B4Q9K = . if (B4Q9K == 7 | B4Q9K == 8 | B4Q9K == 9)
replace B4Q9L = . if (B4Q9L == 7 | B4Q9L == 8 | B4Q9L == 9)
replace B4Q9M = . if (B4Q9M == 7 | B4Q9M == 8 | B4Q9M == 9)
replace B4Q9N = . if (B4Q9N == 7 | B4Q9N == 8 | B4Q9N == 9)
replace B4Q9O = . if (B4Q9O == 7 | B4Q9O == 8 | B4Q9O == 9)
replace B4Q9P = . if (B4Q9P == 7 | B4Q9P == 8 | B4Q9P == 9)
replace B4Q9Q = . if (B4Q9Q == 7 | B4Q9Q == 8 | B4Q9Q == 9)
replace B4Q9R = . if (B4Q9R == 7 | B4Q9R == 8 | B4Q9R == 9)
replace B4Q9S = . if (B4Q9S == 7 | B4Q9S == 8 | B4Q9S == 9)
replace B4Q9T = . if (B4Q9T == 7 | B4Q9T == 8 | B4Q9T == 9)
replace B4Q9U = . if (B4Q9U == 7 | B4Q9U == 8 | B4Q9U == 9)
replace B4Q9V = . if (B4Q9V == 7 | B4Q9V == 8 | B4Q9V == 9)
replace B4Q9W = . if (B4Q9W == 7 | B4Q9W == 8 | B4Q9W == 9)
replace B4Q9X = . if (B4Q9X == 7 | B4Q9X == 8 | B4Q9X == 9)
replace B4Q9Y = . if (B4Q9Y == 7 | B4Q9Y == 8 | B4Q9Y == 9)
replace B4Q9Z = . if (B4Q9Z == 7 | B4Q9Z == 8 | B4Q9Z == 9)
replace B4Q9AA = . if (B4Q9AA == 7 | B4Q9AA == 8 | B4Q9AA == 9)
replace B4Q9BB = . if (B4Q9BB == 7 | B4Q9BB == 8 | B4Q9BB == 9)
replace B4QCT_EA = . if (B4QCT_EA == 98.0)
replace B4QCT_PA = . if (B4QCT_PA == 98.0)
replace B4QCT_SA = . if (B4QCT_SA == 98.0)
replace B4QCT_EN = . if (B4QCT_EN == 98.0)
replace B4QCT_PN = . if (B4QCT_PN == 98.0)
replace B4QCT_MD = . if (B4QCT_MD == 8.0)
replace B4Q10A1 = . if (B4Q10A1 == 7 | B4Q10A1 == 8 | B4Q10A1 == 9)
replace B4Q10A2 = . if (B4Q10A2 == 7 | B4Q10A2 == 8 | B4Q10A2 == 9)
replace B4Q10B1 = . if (B4Q10B1 == 7 | B4Q10B1 == 8 | B4Q10B1 == 9)
replace B4Q10B2 = . if (B4Q10B2 == 7 | B4Q10B2 == 8 | B4Q10B2 == 9)
replace B4Q10C1 = . if (B4Q10C1 == 7 | B4Q10C1 == 8 | B4Q10C1 == 9)
replace B4Q10C2 = . if (B4Q10C2 == 7 | B4Q10C2 == 8 | B4Q10C2 == 9)
replace B4Q10D1 = . if (B4Q10D1 == 7 | B4Q10D1 == 8 | B4Q10D1 == 9)
replace B4Q10D2 = . if (B4Q10D2 == 7 | B4Q10D2 == 8 | B4Q10D2 == 9)
replace B4Q10E1 = . if (B4Q10E1 == 7 | B4Q10E1 == 8 | B4Q10E1 == 9)
replace B4Q10E2 = . if (B4Q10E2 == 7 | B4Q10E2 == 8 | B4Q10E2 == 9)
replace B4Q10F1 = . if (B4Q10F1 == 7 | B4Q10F1 == 8 | B4Q10F1 == 9)
replace B4Q10F2 = . if (B4Q10F2 == 7 | B4Q10F2 == 8 | B4Q10F2 == 9)
replace B4Q10G1 = . if (B4Q10G1 == 7 | B4Q10G1 == 8 | B4Q10G1 == 9)
replace B4Q10G2 = . if (B4Q10G2 == 7 | B4Q10G2 == 8 | B4Q10G2 == 9)
replace B4Q10H1 = . if (B4Q10H1 == 7 | B4Q10H1 == 8 | B4Q10H1 == 9)
replace B4Q10H2 = . if (B4Q10H2 == 7 | B4Q10H2 == 8 | B4Q10H2 == 9)
replace B4Q10I1 = . if (B4Q10I1 == 7 | B4Q10I1 == 8 | B4Q10I1 == 9)
replace B4Q10I2 = . if (B4Q10I2 == 7 | B4Q10I2 == 8 | B4Q10I2 == 9)
replace B4Q10J1 = . if (B4Q10J1 == 7 | B4Q10J1 == 8 | B4Q10J1 == 9)
replace B4Q10J2 = . if (B4Q10J2 == 7 | B4Q10J2 == 8 | B4Q10J2 == 9)
replace B4Q10K1 = . if (B4Q10K1 == 7 | B4Q10K1 == 8 | B4Q10K1 == 9)
replace B4Q10K2 = . if (B4Q10K2 == 7 | B4Q10K2 == 8 | B4Q10K2 == 9)
replace B4Q10L1 = . if (B4Q10L1 == 7 | B4Q10L1 == 8 | B4Q10L1 == 9)
replace B4Q10L2 = . if (B4Q10L2 == 7 | B4Q10L2 == 8 | B4Q10L2 == 9)
replace B4Q10M1 = . if (B4Q10M1 == 7 | B4Q10M1 == 8 | B4Q10M1 == 9)
replace B4Q10M2 = . if (B4Q10M2 == 7 | B4Q10M2 == 8 | B4Q10M2 == 9)
replace B4Q10N1 = . if (B4Q10N1 == 7 | B4Q10N1 == 8 | B4Q10N1 == 9)
replace B4Q10N2 = . if (B4Q10N2 == 7 | B4Q10N2 == 8 | B4Q10N2 == 9)
replace B4Q10O1 = . if (B4Q10O1 == 7 | B4Q10O1 == 8 | B4Q10O1 == 9)
replace B4Q10O2 = . if (B4Q10O2 == 7 | B4Q10O2 == 8 | B4Q10O2 == 9)
replace B4Q10P1 = . if (B4Q10P1 == 7 | B4Q10P1 == 8 | B4Q10P1 == 9)
replace B4Q10P2 = . if (B4Q10P2 == 7 | B4Q10P2 == 8 | B4Q10P2 == 9)
replace B4Q10Q1 = . if (B4Q10Q1 == 7 | B4Q10Q1 == 8 | B4Q10Q1 == 9)
replace B4Q10Q2 = . if (B4Q10Q2 == 7 | B4Q10Q2 == 8 | B4Q10Q2 == 9)
replace B4Q10R1 = . if (B4Q10R1 == 7 | B4Q10R1 == 8 | B4Q10R1 == 9)
replace B4Q10R2 = . if (B4Q10R2 == 7 | B4Q10R2 == 8 | B4Q10R2 == 9)
replace B4Q10S1 = . if (B4Q10S1 == 7 | B4Q10S1 == 8 | B4Q10S1 == 9)
replace B4Q10S2 = . if (B4Q10S2 == 7 | B4Q10S2 == 8 | B4Q10S2 == 9)
replace B4Q10T1 = . if (B4Q10T1 == 7 | B4Q10T1 == 8 | B4Q10T1 == 9)
replace B4Q10T2 = . if (B4Q10T2 == 7 | B4Q10T2 == 8 | B4Q10T2 == 9)
replace B4Q10U1 = . if (B4Q10U1 == 7 | B4Q10U1 == 8 | B4Q10U1 == 9)
replace B4Q10U2 = . if (B4Q10U2 == 7 | B4Q10U2 == 8 | B4Q10U2 == 9)
replace B4Q10V1 = . if (B4Q10V1 == 7 | B4Q10V1 == 8 | B4Q10V1 == 9)
replace B4Q10V2 = . if (B4Q10V2 == 7 | B4Q10V2 == 8 | B4Q10V2 == 9)
replace B4Q10W1 = . if (B4Q10W1 == 7 | B4Q10W1 == 8 | B4Q10W1 == 9)
replace B4Q10W2 = . if (B4Q10W2 == 7 | B4Q10W2 == 8 | B4Q10W2 == 9)
replace B4Q10X1 = . if (B4Q10X1 == 7 | B4Q10X1 == 8 | B4Q10X1 == 9)
replace B4Q10X2 = . if (B4Q10X2 == 7 | B4Q10X2 == 8 | B4Q10X2 == 9)
replace B4Q10Y1 = . if (B4Q10Y1 == 7 | B4Q10Y1 == 8 | B4Q10Y1 == 9)
replace B4Q10Y2 = . if (B4Q10Y2 == 7 | B4Q10Y2 == 8 | B4Q10Y2 == 9)
replace B4Q10Z1 = . if (B4Q10Z1 == 7 | B4Q10Z1 == 8 | B4Q10Z1 == 9)
replace B4Q10Z2 = . if (B4Q10Z2 == 7 | B4Q10Z2 == 8 | B4Q10Z2 == 9)
replace B4Q10AA1 = . if (B4Q10AA1 == 7 | B4Q10AA1 == 8 | B4Q10AA1 == 9)
replace B4Q10AA2 = . if (B4Q10AA2 == 7 | B4Q10AA2 == 8 | B4Q10AA2 == 9)
replace B4Q10BB1 = . if (B4Q10BB1 == 7 | B4Q10BB1 == 8 | B4Q10BB1 == 9)
replace B4Q10BB2 = . if (B4Q10BB2 == 7 | B4Q10BB2 == 8 | B4Q10BB2 == 9)
replace B4Q10CC1 = . if (B4Q10CC1 == 7 | B4Q10CC1 == 8 | B4Q10CC1 == 9)
replace B4Q10CC2 = . if (B4Q10CC2 == 7 | B4Q10CC2 == 8 | B4Q10CC2 == 9)
replace B4Q10DD1 = . if (B4Q10DD1 == 7 | B4Q10DD1 == 8 | B4Q10DD1 == 9)
replace B4Q10DD2 = . if (B4Q10DD2 == 7 | B4Q10DD2 == 8 | B4Q10DD2 == 9)
replace B4Q10EE1 = . if (B4Q10EE1 == 7 | B4Q10EE1 == 8 | B4Q10EE1 == 9)
replace B4Q10EE2 = . if (B4Q10EE2 == 7 | B4Q10EE2 == 8 | B4Q10EE2 == 9)
replace B4Q10FF1 = . if (B4Q10FF1 == 7 | B4Q10FF1 == 8 | B4Q10FF1 == 9)
replace B4Q10FF2 = . if (B4Q10FF2 == 7 | B4Q10FF2 == 8 | B4Q10FF2 == 9)
replace B4Q10GG1 = . if (B4Q10GG1 == 7 | B4Q10GG1 == 8 | B4Q10GG1 == 9)
replace B4Q10GG2 = . if (B4Q10GG2 == 7 | B4Q10GG2 == 8 | B4Q10GG2 == 9)
replace B4Q10HH1 = . if (B4Q10HH1 == 7 | B4Q10HH1 == 8 | B4Q10HH1 == 9)
replace B4Q10HH2 = . if (B4Q10HH2 == 7 | B4Q10HH2 == 8 | B4Q10HH2 == 9)
replace B4Q10II1 = . if (B4Q10II1 == 7 | B4Q10II1 == 8 | B4Q10II1 == 9)
replace B4Q10II2 = . if (B4Q10II2 == 7 | B4Q10II2 == 8 | B4Q10II2 == 9)
replace B4Q10JJ1 = . if (B4Q10JJ1 == 7 | B4Q10JJ1 == 8 | B4Q10JJ1 == 9)
replace B4Q10JJ2 = . if (B4Q10JJ2 == 7 | B4Q10JJ2 == 8 | B4Q10JJ2 == 9)
replace B4Q10KK1 = . if (B4Q10KK1 == 7 | B4Q10KK1 == 8 | B4Q10KK1 == 9)
replace B4Q10KK2 = . if (B4Q10KK2 == 7 | B4Q10KK2 == 8 | B4Q10KK2 == 9)
replace B4Q10LL1 = . if (B4Q10LL1 == 7 | B4Q10LL1 == 8 | B4Q10LL1 == 9)
replace B4Q10LL2 = . if (B4Q10LL2 == 7 | B4Q10LL2 == 8 | B4Q10LL2 == 9)
replace B4Q10MM1 = . if (B4Q10MM1 == 7 | B4Q10MM1 == 8 | B4Q10MM1 == 9)
replace B4Q10MM2 = . if (B4Q10MM2 == 7 | B4Q10MM2 == 8 | B4Q10MM2 == 9)
replace B4Q10NN1 = . if (B4Q10NN1 == 7 | B4Q10NN1 == 8 | B4Q10NN1 == 9)
replace B4Q10NN2 = . if (B4Q10NN2 == 7 | B4Q10NN2 == 8 | B4Q10NN2 == 9)
replace B4Q10OO1 = . if (B4Q10OO1 == 7 | B4Q10OO1 == 8 | B4Q10OO1 == 9)
replace B4Q10OO2 = . if (B4Q10OO2 == 7 | B4Q10OO2 == 8 | B4Q10OO2 == 9)
replace B4Q10PP1 = . if (B4Q10PP1 == 7 | B4Q10PP1 == 8 | B4Q10PP1 == 9)
replace B4Q10PP2 = . if (B4Q10PP2 == 7 | B4Q10PP2 == 8 | B4Q10PP2 == 9)
replace B4Q10QQ1 = . if (B4Q10QQ1 == 7 | B4Q10QQ1 == 8 | B4Q10QQ1 == 9)
replace B4Q10QQ2 = . if (B4Q10QQ2 == 7 | B4Q10QQ2 == 8 | B4Q10QQ2 == 9)
replace B4Q10RR1 = . if (B4Q10RR1 == 7 | B4Q10RR1 == 8 | B4Q10RR1 == 9)
replace B4Q10RR2 = . if (B4Q10RR2 == 7 | B4Q10RR2 == 8 | B4Q10RR2 == 9)
replace B4Q10SS1 = . if (B4Q10SS1 == 7 | B4Q10SS1 == 8 | B4Q10SS1 == 9)
replace B4Q10SS2 = . if (B4Q10SS2 == 7 | B4Q10SS2 == 8 | B4Q10SS2 == 9)
replace B4Q10TT1 = . if (B4Q10TT1 == 7 | B4Q10TT1 == 8 | B4Q10TT1 == 9)
replace B4Q10TT2 = . if (B4Q10TT2 == 7 | B4Q10TT2 == 8 | B4Q10TT2 == 9)
replace B4Q10UU1 = . if (B4Q10UU1 == 7 | B4Q10UU1 == 8 | B4Q10UU1 == 9)
replace B4Q10UU2 = . if (B4Q10UU2 == 7 | B4Q10UU2 == 8 | B4Q10UU2 == 9)
replace B4Q10VV1 = . if (B4Q10VV1 == 7 | B4Q10VV1 == 8 | B4Q10VV1 == 9)
replace B4Q10VV2 = . if (B4Q10VV2 == 7 | B4Q10VV2 == 8 | B4Q10VV2 == 9)
replace B4Q10WW1 = . if (B4Q10WW1 == 7 | B4Q10WW1 == 8 | B4Q10WW1 == 9)
replace B4Q10WW2 = . if (B4Q10WW2 == 7 | B4Q10WW2 == 8 | B4Q10WW2 == 9)
replace B4Q11A = . if (B4Q11A == 97 | B4Q11A == 98 | B4Q11A == 99)
replace B4Q11B = . if (B4Q11B == 97 | B4Q11B == 98 | B4Q11B == 99)
replace B4Q11C = . if (B4Q11C == 97 | B4Q11C == 98 | B4Q11C == 99)
replace B4Q11D = . if (B4Q11D == 97 | B4Q11D == 98 | B4Q11D == 99)
replace B4Q11E = . if (B4Q11E == 97 | B4Q11E == 98 | B4Q11E == 99)
replace B4Q11F = . if (B4Q11F == 97 | B4Q11F == 98 | B4Q11F == 99)
replace B4Q11G = . if (B4Q11G == 97 | B4Q11G == 98 | B4Q11G == 99)
replace B4Q11H = . if (B4Q11H == 97 | B4Q11H == 98 | B4Q11H == 99)
replace B4Q11I = . if (B4Q11I == 97 | B4Q11I == 98 | B4Q11I == 99)
replace B4Q11J = . if (B4Q11J == 97 | B4Q11J == 98 | B4Q11J == 99)
replace B4Q11K = . if (B4Q11K == 97 | B4Q11K == 98 | B4Q11K == 99)
replace B4Q11L = . if (B4Q11L == 97 | B4Q11L == 98 | B4Q11L == 99)
replace B4Q11M = . if (B4Q11M == 97 | B4Q11M == 98 | B4Q11M == 99)
replace B4Q11N = . if (B4Q11N == 97 | B4Q11N == 98 | B4Q11N == 99)
replace B4Q11O = . if (B4Q11O == 97 | B4Q11O == 98 | B4Q11O == 99)
replace B4Q11P = . if (B4Q11P == 97 | B4Q11P == 98 | B4Q11P == 99)
replace B4Q11Q = . if (B4Q11Q == 97 | B4Q11Q == 98 | B4Q11Q == 99)
replace B4Q11R = . if (B4Q11R == 97 | B4Q11R == 98 | B4Q11R == 99)
replace B4Q11S = . if (B4Q11S == 97 | B4Q11S == 98 | B4Q11S == 99)
replace B4Q11T = . if (B4Q11T == 97 | B4Q11T == 98 | B4Q11T == 99)
replace B4Q11U = . if (B4Q11U == 97 | B4Q11U == 98 | B4Q11U == 99)
replace B4Q11V = . if (B4Q11V == 97 | B4Q11V == 98 | B4Q11V == 99)
replace B4Q11W = . if (B4Q11W == 97 | B4Q11W == 98 | B4Q11W == 99)
replace B4Q11X = . if (B4Q11X == 97 | B4Q11X == 98 | B4Q11X == 99)
replace B4Q11Y = . if (B4Q11Y == 97 | B4Q11Y == 98 | B4Q11Y == 99)
replace B4Q11Z = . if (B4Q11Z == 97 | B4Q11Z == 98 | B4Q11Z == 99)
replace B4Q11AA = . if (B4Q11AA == 97 | B4Q11AA == 98 | B4Q11AA == 99)
replace B4Q11BB = . if (B4Q11BB == 97 | B4Q11BB == 98 | B4Q11BB == 99)
replace B4Q11CC = . if (B4Q11CC == 97 | B4Q11CC == 98 | B4Q11CC == 99)
replace B4QSC_ID = . if (B4QSC_ID == 8.0)
replace B4QSC_IT = . if (B4QSC_IT == 8.0)
replace B4QSO_PC = . if (B4QSO_PC == 8.0)
replace B4QSO_PF = . if (B4QSO_PF == 8.0)
replace B4QSO_PX = . if (B4QSO_PX == 8.0)
replace B4QSO_IW = . if (B4QSO_IW == 8.0)
replace B4QSO_GW = . if (B4QSO_GW == 8.0)
replace B4Q12A = . if (B4Q12A == 97 | B4Q12A == 98 | B4Q12A == 99)
replace B4Q12B = . if (B4Q12B == 97 | B4Q12B == 98 | B4Q12B == 99)
replace B4Q12C = . if (B4Q12C == 97 | B4Q12C == 98 | B4Q12C == 99)
replace B4Q12D = . if (B4Q12D == 97 | B4Q12D == 98 | B4Q12D == 99)
replace B4Q12E = . if (B4Q12E == 97 | B4Q12E == 98 | B4Q12E == 99)
replace B4Q12F = . if (B4Q12F == 97 | B4Q12F == 98 | B4Q12F == 99)
replace B4Q12G = . if (B4Q12G == 97 | B4Q12G == 98 | B4Q12G == 99)
replace B4Q12H = . if (B4Q12H == 97 | B4Q12H == 98 | B4Q12H == 99)
replace B4Q12I = . if (B4Q12I == 97 | B4Q12I == 98 | B4Q12I == 99)
replace B4Q12J = . if (B4Q12J == 97 | B4Q12J == 98 | B4Q12J == 99)
replace B4Q12K = . if (B4Q12K == 97 | B4Q12K == 98 | B4Q12K == 99)
replace B4Q12L = . if (B4Q12L == 97 | B4Q12L == 98 | B4Q12L == 99)
replace B4Q12M = . if (B4Q12M == 97 | B4Q12M == 98 | B4Q12M == 99)
replace B4Q12N = . if (B4Q12N == 97 | B4Q12N == 98 | B4Q12N == 99)
replace B4Q12O = . if (B4Q12O == 97 | B4Q12O == 98 | B4Q12O == 99)
replace B4Q12P = . if (B4Q12P == 97 | B4Q12P == 98 | B4Q12P == 99)
replace B4Q12Q = . if (B4Q12Q == 97 | B4Q12Q == 98 | B4Q12Q == 99)
replace B4Q12R = . if (B4Q12R == 97 | B4Q12R == 98 | B4Q12R == 99)
replace B4Q12S = . if (B4Q12S == 97 | B4Q12S == 98 | B4Q12S == 99)
replace B4Q12T = . if (B4Q12T == 97 | B4Q12T == 98 | B4Q12T == 99)
replace B4Q12U = . if (B4Q12U == 97 | B4Q12U == 98 | B4Q12U == 99)
replace B4QRISC = . if (B4QRISC == 8.0)
replace B4QSYMP = . if (B4QSYMP == 8.0)
replace B4QADJ = . if (B4QADJ == 8.0)
replace B4Q13A = . if (B4Q13A == 7 | B4Q13A == 8 | B4Q13A == 9)
replace B4Q13B = . if (B4Q13B == 7 | B4Q13B == 8 | B4Q13B == 9)
replace B4Q13C = . if (B4Q13C == 7 | B4Q13C == 8 | B4Q13C == 9)
replace B4Q13D = . if (B4Q13D == 7 | B4Q13D == 8 | B4Q13D == 9)
replace B4Q13E = . if (B4Q13E == 7 | B4Q13E == 8 | B4Q13E == 9)
replace B4Q13F = . if (B4Q13F == 7 | B4Q13F == 8 | B4Q13F == 9)
replace B4Q13G = . if (B4Q13G == 7 | B4Q13G == 8 | B4Q13G == 9)
replace B4Q13H = . if (B4Q13H == 7 | B4Q13H == 8 | B4Q13H == 9)
replace B4Q13H1 = . if (B4Q13H1 == 7 | B4Q13H1 == 8 | B4Q13H1 == 9)
replace B4Q13I = . if (B4Q13I == 7 | B4Q13I == 8 | B4Q13I == 9)
replace B4Q13J = . if (B4Q13J == 7 | B4Q13J == 8 | B4Q13J == 9)
replace B4Q13K = . if (B4Q13K == 7 | B4Q13K == 8 | B4Q13K == 9)
replace B4Q13L = . if (B4Q13L == 7 | B4Q13L == 8 | B4Q13L == 9)
replace B4Q13M = . if (B4Q13M == 7 | B4Q13M == 8 | B4Q13M == 9)
replace B4Q13N = . if (B4Q13N == 7 | B4Q13N == 8 | B4Q13N == 9)
replace B4Q13O1 = . if (B4Q13O1 == 7 | B4Q13O1 == 8 | B4Q13O1 == 9)
replace B4Q13O = . if (B4Q13O == 7 | B4Q13O == 8 | B4Q13O == 9)
replace B4Q13P = . if (B4Q13P == 7 | B4Q13P == 8 | B4Q13P == 9)
replace B4Q13Q = . if (B4Q13Q == 7 | B4Q13Q == 8 | B4Q13Q == 9)
replace B4Q13R = . if (B4Q13R == 7 | B4Q13R == 8 | B4Q13R == 9)
replace B4Q13S = . if (B4Q13S == 7 | B4Q13S == 8 | B4Q13S == 9)
replace B4Q13T = . if (B4Q13T == 7 | B4Q13T == 8 | B4Q13T == 9)
replace B4Q13U = . if (B4Q13U == 7 | B4Q13U == 8 | B4Q13U == 9)
replace B4Q13V = . if (B4Q13V == 7 | B4Q13V == 8 | B4Q13V == 9)
replace B4Q13W = . if (B4Q13W == 7 | B4Q13W == 8 | B4Q13W == 9)
replace B4Q13X = . if (B4Q13X == 7 | B4Q13X == 8 | B4Q13X == 9)
replace B4Q13Y = . if (B4Q13Y == 7 | B4Q13Y == 8 | B4Q13Y == 9)
replace B4Q13Z = . if (B4Q13Z == 7 | B4Q13Z == 8 | B4Q13Z == 9)
replace B4QSUGF = . if (B4QSUGF == 8.00)
replace B4QSTGF = . if (B4QSTGF == 8.00)
replace B4QSOGFD = . if (B4QSOGFD == 8.00)
replace B4QSUGFA = . if (B4QSUGFA == 8.00)
replace B4QSTGFA = . if (B4QSTGFA == 8.00)
replace B4QSOGFM = . if (B4QSOGFM == 8.00)
replace B4QSUGS = . if (B4QSUGS == 8.00 | B4QSUGS == 9.00)
replace B4QSTGS = . if (B4QSTGS == 8.00 | B4QSTGS == 9.00)
replace B4QSOLGS = . if (B4QSOLGS == 8.00 | B4QSOLGS == 9.00)
replace B4Q14A = . if (B4Q14A == 97 | B4Q14A == 98 | B4Q14A == 99)
replace B4Q14B = . if (B4Q14B == 97 | B4Q14B == 98 | B4Q14B == 99)
replace B4Q14C = . if (B4Q14C == 97 | B4Q14C == 98 | B4Q14C == 99)
replace B4Q14D = . if (B4Q14D == 97 | B4Q14D == 98 | B4Q14D == 99)
replace B4Q14E = . if (B4Q14E == 97 | B4Q14E == 98 | B4Q14E == 99)
replace B4Q14F = . if (B4Q14F == 97 | B4Q14F == 98 | B4Q14F == 99)
replace B4Q14G = . if (B4Q14G == 97 | B4Q14G == 98 | B4Q14G == 99)
replace B4Q14H = . if (B4Q14H == 97 | B4Q14H == 98 | B4Q14H == 99)
replace B4Q14I = . if (B4Q14I == 97 | B4Q14I == 98 | B4Q14I == 99)
replace B4Q14J = . if (B4Q14J == 97 | B4Q14J == 98 | B4Q14J == 99)
replace B4Q14K = . if (B4Q14K == 97 | B4Q14K == 98 | B4Q14K == 99)
replace B4Q14L = . if (B4Q14L == 97 | B4Q14L == 98 | B4Q14L == 99)
replace B4Q14M = . if (B4Q14M == 97 | B4Q14M == 98 | B4Q14M == 99)
replace B4Q14N = . if (B4Q14N == 97 | B4Q14N == 98 | B4Q14N == 99)
replace B4Q14O = . if (B4Q14O == 97 | B4Q14O == 98 | B4Q14O == 99)
replace B4Q14P = . if (B4Q14P == 97 | B4Q14P == 98 | B4Q14P == 99)
replace B4Q14Q = . if (B4Q14Q == 97 | B4Q14Q == 98 | B4Q14Q == 99)
replace B4Q14R = . if (B4Q14R == 97 | B4Q14R == 98 | B4Q14R == 99)
replace B4Q14S = . if (B4Q14S == 97 | B4Q14S == 98 | B4Q14S == 99)
replace B4QSC_SC = . if (B4QSC_SC == 8.0)
replace B4QSC_CC = . if (B4QSC_CC == 8.0)
replace B4QSC_EC = . if (B4QSC_EC == 8.0)
replace B4QSC_BC = . if (B4QSC_BC == 8.0)
replace B4Q15A = . if (B4Q15A == 97 | B4Q15A == 98 | B4Q15A == 99)
replace B4Q15B = . if (B4Q15B == 97 | B4Q15B == 98 | B4Q15B == 99)
replace B4Q15C = . if (B4Q15C == 97 | B4Q15C == 98 | B4Q15C == 99)
replace B4Q15D = . if (B4Q15D == 97 | B4Q15D == 98 | B4Q15D == 99)
replace B4Q15E = . if (B4Q15E == 97 | B4Q15E == 98 | B4Q15E == 99)
replace B4Q15F = . if (B4Q15F == 97 | B4Q15F == 98 | B4Q15F == 99)
replace B4Q15G = . if (B4Q15G == 97 | B4Q15G == 98 | B4Q15G == 99)
replace B4Q15H = . if (B4Q15H == 97 | B4Q15H == 98 | B4Q15H == 99)
replace B4QSW_SL = . if (B4QSW_SL == 8.0)
replace B4QSW_GR = . if (B4QSW_GR == 8.0)
replace B4Q16A = . if (B4Q16A == 7 | B4Q16A == 8 | B4Q16A == 9)
replace B4Q16B = . if (B4Q16B == 7 | B4Q16B == 8 | B4Q16B == 9)
replace B4Q16C = . if (B4Q16C == 7 | B4Q16C == 8 | B4Q16C == 9)
replace B4Q16D = . if (B4Q16D == 7 | B4Q16D == 8 | B4Q16D == 9)
replace B4Q16E = . if (B4Q16E == 7 | B4Q16E == 8 | B4Q16E == 9)
replace B4Q16F = . if (B4Q16F == 7 | B4Q16F == 8 | B4Q16F == 9)
replace B4Q16G = . if (B4Q16G == 7 | B4Q16G == 8 | B4Q16G == 9)
replace B4Q16H = . if (B4Q16H == 7 | B4Q16H == 8 | B4Q16H == 9)
replace B4QSW_JP = . if (B4QSW_JP == 8.0)
replace B4Q17A = . if (B4Q17A == 98)
replace B4S1 = "" if (B4S1 == "349200.0" | B4S1 == "352800.0" | B4S1 == "356400.0")
replace B4S1AMPM = . if (B4S1AMPM == 7 | B4S1AMPM == 8 | B4S1AMPM == 9)
replace B4S2 = . if (B4S2 == 9997.0 | B4S2 == 9998.0 | B4S2 == 9999.0)
replace B4S3 = "" if (B4S3 == "349200.0" | B4S3 == "352800.0" | B4S3 == "356400.0")
replace B4S3AMPM = . if (B4S3AMPM == 7 | B4S3AMPM == 8 | B4S3AMPM == 9)
replace B4S4 = . if (B4S4 == 9997.0 | B4S4 == 9998.0 | B4S4 == 9999.0)
replace B4S5 = . if (B4S5 == 7 | B4S5 == 8 | B4S5 == 9)
replace B4S6 = . if (B4S6 == 7 | B4S6 == 8 | B4S6 == 9)
replace B4S7 = . if (B4S7 == 7 | B4S7 == 8 | B4S7 == 9)
replace B4S8 = . if (B4S8 == 7 | B4S8 == 8 | B4S8 == 9)
replace B4S9 = . if (B4S9 == 7 | B4S9 == 8 | B4S9 == 9)
replace B4S10A = . if (B4S10A == 7 | B4S10A == 8 | B4S10A == 9)
replace B4S10B = . if (B4S10B == 7 | B4S10B == 8 | B4S10B == 9)
replace B4S10C = . if (B4S10C == 7 | B4S10C == 8 | B4S10C == 9)
replace B4S10D = . if (B4S10D == 7 | B4S10D == 8 | B4S10D == 9)
replace B4S10E = . if (B4S10E == 7 | B4S10E == 8 | B4S10E == 9)
replace B4S11A = . if (B4S11A == 7 | B4S11A == 8 | B4S11A == 9)
replace B4S11B = . if (B4S11B == 7 | B4S11B == 8 | B4S11B == 9)
replace B4S11C = . if (B4S11C == 7 | B4S11C == 8 | B4S11C == 9)
replace B4S11D = . if (B4S11D == 7 | B4S11D == 8 | B4S11D == 9)
replace B4S11E = . if (B4S11E == 7 | B4S11E == 8 | B4S11E == 9)
replace B4S11F = . if (B4S11F == 7 | B4S11F == 8 | B4S11F == 9)
replace B4S11G = . if (B4S11G == 7 | B4S11G == 8 | B4S11G == 9)
replace B4S11H = . if (B4S11H == 7 | B4S11H == 8 | B4S11H == 9)
replace B4S11I = . if (B4S11I == 7 | B4S11I == 8 | B4S11I == 9)
replace B4S11J = . if (B4S11J == 7 | B4S11J == 8 | B4S11J == 9)
replace B4SSQ_GS = . if (B4SSQ_GS == 98)
replace B4SSQ_S1 = . if (B4SSQ_S1 == 8)
replace B4SSQ_S2 = . if (B4SSQ_S2 == 8)
replace B4SSQ_S3 = . if (B4SSQ_S3 == 8)
replace B4SSQ_S4 = . if (B4SSQ_S4 == 8)
replace B4SSQ_S5 = . if (B4SSQ_S5 == 8)
replace B4SSQ_S6 = . if (B4SSQ_S6 == 8)
replace B4SSQ_S7 = . if (B4SSQ_S7 == 8)
replace B4H1A = . if (B4H1A == 7 | B4H1A == 8 | B4H1A == 9)
replace B4H1AD = . if (B4H1AD == 7 | B4H1AD == 8 | B4H1AD == 9)
replace B4H1B = . if (B4H1B == 7 | B4H1B == 8 | B4H1B == 9)
replace B4H1BD = . if (B4H1BD == 7 | B4H1BD == 8 | B4H1BD == 9)
replace B4H1C = . if (B4H1C == 7 | B4H1C == 8 | B4H1C == 9)
replace B4H1CD = . if (B4H1CD == 7 | B4H1CD == 8 | B4H1CD == 9)
replace B4H1D = . if (B4H1D == 7 | B4H1D == 8 | B4H1D == 9)
replace B4H1DD = . if (B4H1DD == 7 | B4H1DD == 8 | B4H1DD == 9)
replace B4H1E = . if (B4H1E == 7 | B4H1E == 8 | B4H1E == 9)
replace B4H1ED = . if (B4H1ED == 7 | B4H1ED == 8)
replace B4H1F = . if (B4H1F == 7 | B4H1F == 8 | B4H1F == 9)
replace B4H1FD = . if (B4H1FD == 7 | B4H1FD == 8 | B4H1FD == 9)
replace B4H1G = . if (B4H1G == 7 | B4H1G == 8 | B4H1G == 9)
replace B4H1GD = . if (B4H1GD == 7 | B4H1GD == 8 | B4H1GD == 9)
replace B4H1H = . if (B4H1H == 7 | B4H1H == 8 | B4H1H == 9)
replace B4H1HD = . if (B4H1HD == 7 | B4H1HD == 8 | B4H1HD == 9)
replace B4H1I = . if (B4H1I == 7 | B4H1I == 8 | B4H1I == 9)
replace B4H1ID = . if (B4H1ID == 7 | B4H1ID == 8 | B4H1ID == 9)
replace B4H1J = . if (B4H1J == 7 | B4H1J == 8 | B4H1J == 9)
replace B4H1JD = . if (B4H1JD == 7 | B4H1JD == 8 | B4H1JD == 9)
replace B4H1K = . if (B4H1K == 7 | B4H1K == 8 | B4H1K == 9)
replace B4H1KD = . if (B4H1KD == 7 | B4H1KD == 8 | B4H1KD == 9)
replace B4H1L = . if (B4H1L == 7 | B4H1L == 8 | B4H1L == 9)
replace B4H1LD = . if (B4H1LD == 7 | B4H1LD == 8 | B4H1LD == 9)
replace B4H1M = . if (B4H1M == 7 | B4H1M == 8 | B4H1M == 9)
replace B4H1MD = . if (B4H1MD == 7 | B4H1MD == 8 | B4H1MD == 9)
replace B4H1N = . if (B4H1N == 7 | B4H1N == 8 | B4H1N == 9)
replace B4H1ND = . if (B4H1ND == 7 | B4H1ND == 8 | B4H1ND == 9)
replace B4H1O = . if (B4H1O == 7 | B4H1O == 8 | B4H1O == 9)
replace B4H1OD = . if (B4H1OD == 7 | B4H1OD == 8 | B4H1OD == 9)
replace B4H1P = . if (B4H1P == 7 | B4H1P == 8 | B4H1P == 9)
replace B4H1PD = . if (B4H1PD == 7 | B4H1PD == 8 | B4H1PD == 9)
replace B4H1Q = . if (B4H1Q == 7 | B4H1Q == 8 | B4H1Q == 9)
replace B4H1QD = . if (B4H1QD == 7 | B4H1QD == 8 | B4H1QD == 9)
replace B4H1R = . if (B4H1R == 7 | B4H1R == 8 | B4H1R == 9)
replace B4H1RD = . if (B4H1RD == 7 | B4H1RD == 8 | B4H1RD == 9)
replace B4H1S = . if (B4H1S == 7 | B4H1S == 8 | B4H1S == 9)
replace B4H1SD = . if (B4H1SD == 7 | B4H1SD == 8 | B4H1SD == 9)
replace B4H1T = . if (B4H1T == 7 | B4H1T == 8 | B4H1T == 9)
replace B4H1TD = . if (B4H1TD == 7 | B4H1TD == 8 | B4H1TD == 9)
replace B4H1U = . if (B4H1U == 7 | B4H1U == 8 | B4H1U == 9)
replace B4H1UD = . if (B4H1UD == 7 | B4H1UD == 8 | B4H1UD == 9)
replace B4H1V = . if (B4H1V == 7 | B4H1V == 8 | B4H1V == 9)
replace B4H1VD = . if (B4H1VD == 7 | B4H1VD == 8 | B4H1VD == 9)
replace B4H1W = . if (B4H1W == 7 | B4H1W == 8 | B4H1W == 9)
replace B4H1WD = . if (B4H1WD == 7 | B4H1WD == 8 | B4H1WD == 9)
replace B4H1X = . if (B4H1X == 7 | B4H1X == 8 | B4H1X == 9)
replace B4H1XD = . if (B4H1XD == 7 | B4H1XD == 8 | B4H1XD == 9)
replace B4H1Y = . if (B4H1Y == 7 | B4H1Y == 8 | B4H1Y == 9)
replace B4H1YD = . if (B4H1YD == 7 | B4H1YD == 8 | B4H1YD == 9)
replace B4H2 = . if (B4H2 == 7 | B4H2 == 8 | B4H2 == 9)
replace B4H2AF = . if (B4H2AF == 97 | B4H2AF == 98 | B4H2AF == 99)
replace B4H2AY = . if (B4H2AY == 9997 | B4H2AY == 9998 | B4H2AY == 9999)
replace B4H2BF = . if (B4H2BF == 97 | B4H2BF == 98 | B4H2BF == 99)
replace B4H2BY = . if (B4H2BY == 9997 | B4H2BY == 9998 | B4H2BY == 9999)
replace B4H2CF = . if (B4H2CF == 97 | B4H2CF == 98 | B4H2CF == 99)
replace B4H2CY = . if (B4H2CY == 9997 | B4H2CY == 9998 | B4H2CY == 9999)
replace B4H2DF = . if (B4H2DF == 97 | B4H2DF == 98 | B4H2DF == 99)
replace B4H2DY = . if (B4H2DY == 9997 | B4H2DY == 9998 | B4H2DY == 9999)
replace B4H2EF = . if (B4H2EF == 97 | B4H2EF == 98 | B4H2EF == 99)
replace B4H2EY = . if (B4H2EY == 9997 | B4H2EY == 9998 | B4H2EY == 9999)
replace B4H2FF = . if (B4H2FF == 97 | B4H2FF == 98 | B4H2FF == 99)
replace B4H2FY = . if (B4H2FY == 9997 | B4H2FY == 9998 | B4H2FY == 9999)
replace B4H2GF = . if (B4H2GF == 97 | B4H2GF == 98 | B4H2GF == 99)
replace B4H2GY = . if (B4H2GY == 9997 | B4H2GY == 9998 | B4H2GY == 9999)
replace B4H2HF = . if (B4H2HF == 97 | B4H2HF == 98 | B4H2HF == 99)
replace B4H2HY = . if (B4H2HY == 9997 | B4H2HY == 9998 | B4H2HY == 9999)
replace B4H2IF = . if (B4H2IF == 97 | B4H2IF == 98 | B4H2IF == 99)
replace B4H2IY = . if (B4H2IY == 9997 | B4H2IY == 9998 | B4H2IY == 9999)
replace B4H2JF = . if (B4H2JF == 97 | B4H2JF == 98 | B4H2JF == 99)
replace B4H2JY = . if (B4H2JY == 9997 | B4H2JY == 9998 | B4H2JY == 9999)
replace B4H2KF = . if (B4H2KF == 97 | B4H2KF == 98 | B4H2KF == 99)
replace B4H2KY = . if (B4H2KY == 9997 | B4H2KY == 9998 | B4H2KY == 9999)
replace B4H2LF = . if (B4H2LF == 97 | B4H2LF == 98 | B4H2LF == 99)
replace B4H2LY = . if (B4H2LY == 9997 | B4H2LY == 9998 | B4H2LY == 9999)
replace B4H2MF = . if (B4H2MF == 97 | B4H2MF == 98 | B4H2MF == 99)
replace B4H2MY = . if (B4H2MY == 9997 | B4H2MY == 9998 | B4H2MY == 9999)
replace B4H2NF = . if (B4H2NF == 97 | B4H2NF == 98 | B4H2NF == 99)
replace B4H2NY = . if (B4H2NY == 9997 | B4H2NY == 9998 | B4H2NY == 9999)
replace B4HBRKB = . if (B4HBRKB == 97)
replace B4H3 = . if (B4H3 == 7 | B4H3 == 8 | B4H3 == 9)
replace B4H3AL = . if (B4H3AL == 7 | B4H3AL == 8 | B4H3AL == 9)
replace B4H3AY = . if (B4H3AY == 9997 | B4H3AY == 9998 | B4H3AY == 9999)
replace B4H3BL = . if (B4H3BL == 7 | B4H3BL == 8 | B4H3BL == 9)
replace B4H3BY = . if (B4H3BY == 9997 | B4H3BY == 9998 | B4H3BY == 9999)
replace B4H3CL = . if (B4H3CL == 7 | B4H3CL == 8 | B4H3CL == 9)
replace B4H3CY = . if (B4H3CY == 9997 | B4H3CY == 9998 | B4H3CY == 9999)
replace B4H3DL = . if (B4H3DL == 7 | B4H3DL == 8 | B4H3DL == 9)
replace B4H3DY = . if (B4H3DY == 9997 | B4H3DY == 9998 | B4H3DY == 9999)
replace B4H3EL = . if (B4H3EL == 7 | B4H3EL == 8 | B4H3EL == 9)
replace B4H3EY = . if (B4H3EY == 9997 | B4H3EY == 9998 | B4H3EY == 9999)
replace B4H3FL = . if (B4H3FL == 7 | B4H3FL == 8 | B4H3FL == 9)
replace B4H3FY = . if (B4H3FY == 9997 | B4H3FY == 9998 | B4H3FY == 9999)
replace B4H3GL = . if (B4H3GL == 7 | B4H3GL == 8 | B4H3GL == 9)
replace B4H3GY = . if (B4H3GY == 9997 | B4H3GY == 9998 | B4H3GY == 9999)
replace B4H3HL = . if (B4H3HL == 7 | B4H3HL == 8 | B4H3HL == 9)
replace B4H3HY = . if (B4H3HY == 9997 | B4H3HY == 9998 | B4H3HY == 9999)
replace B4H3IL = . if (B4H3IL == 7 | B4H3IL == 8 | B4H3IL == 9)
replace B4H3IY = . if (B4H3IY == 9997 | B4H3IY == 9998 | B4H3IY == 9999)
replace B4H3JL = . if (B4H3JL == 7 | B4H3JL == 8 | B4H3JL == 9)
replace B4H3JY = . if (B4H3JY == 9997 | B4H3JY == 9998 | B4H3JY == 9999)
replace B4H4 = . if (B4H4 == 7 | B4H4 == 8 | B4H4 == 9)
replace B4H4AH = . if (B4H4AH == 7 | B4H4AH == 8 | B4H4AH == 9)
replace B4H4AY = . if (B4H4AY == 9997 | B4H4AY == 9998 | B4H4AY == 9999)
replace B4H4BH = . if (B4H4BH == 7 | B4H4BH == 8 | B4H4BH == 9)
replace B4H4BY = . if (B4H4BY == 9997 | B4H4BY == 9998 | B4H4BY == 9999)
replace B4H4CH = . if (B4H4CH == 7 | B4H4CH == 8 | B4H4CH == 9)
replace B4H4CY = . if (B4H4CY == 9997 | B4H4CY == 9998 | B4H4CY == 9999)
replace B4H5 = . if (B4H5 == 7 | B4H5 == 8 | B4H5 == 9)
replace B4H5AH = . if (B4H5AH == 7 | B4H5AH == 8 | B4H5AH == 9)
replace B4H5AY = . if (B4H5AY == 9997 | B4H5AY == 9998 | B4H5AY == 9999)
replace B4H5BH = . if (B4H5BH == 7 | B4H5BH == 8 | B4H5BH == 9)
replace B4H5BY = . if (B4H5BY == 9997 | B4H5BY == 9998 | B4H5BY == 9999)
replace B4H5CH = . if (B4H5CH == 7 | B4H5CH == 8 | B4H5CH == 9)
replace B4H5CY = . if (B4H5CY == 9997 | B4H5CY == 9998 | B4H5CY == 9999)
replace B4H6 = . if (B4H6 == 7 | B4H6 == 8 | B4H6 == 9)
replace B4H6AH = . if (B4H6AH == 7 | B4H6AH == 8 | B4H6AH == 9)
replace B4H6AY = . if (B4H6AY == 9997 | B4H6AY == 9998 | B4H6AY == 9999)
replace B4H6BH = . if (B4H6BH == 7 | B4H6BH == 8 | B4H6BH == 9)
replace B4H6BY = . if (B4H6BY == 9997 | B4H6BY == 9998 | B4H6BY == 9999)
replace B4H6CH = . if (B4H6CH == 7 | B4H6CH == 8 | B4H6CH == 9)
replace B4H6CY = . if (B4H6CY == 9997 | B4H6CY == 9998 | B4H6CY == 9999)
replace B4H6DH = . if (B4H6DH == 7 | B4H6DH == 8)
replace B4H6DY = . if (B4H6DY == 9997 | B4H6DY == 9998 | B4H6DY == 9999)
replace B4H7 = . if (B4H7 == 7 | B4H7 == 8 | B4H7 == 9)
replace B4H7AH = . if (B4H7AH == 7 | B4H7AH == 8 | B4H7AH == 9)
replace B4H7AY = . if (B4H7AY == 9997 | B4H7AY == 9998 | B4H7AY == 9999)
replace B4H7BH = . if (B4H7BH == 7 | B4H7BH == 8 | B4H7BH == 9)
replace B4H7BY = . if (B4H7BY == 9997 | B4H7BY == 9998 | B4H7BY == 9999)
replace B4H8 = . if (B4H8 == 7 | B4H8 == 8 | B4H8 == 9)
replace B4H8AH = . if (B4H8AH == 7 | B4H8AH == 8 | B4H8AH == 9)
replace B4H8AY = . if (B4H8AY == 9997 | B4H8AY == 9998 | B4H8AY == 9999)
replace B4H8BH = . if (B4H8BH == 7 | B4H8BH == 8 | B4H8BH == 9)
replace B4H8BY = . if (B4H8BY == 9997 | B4H8BY == 9998 | B4H8BY == 9999)
replace B4H8CH = . if (B4H8CH == 7 | B4H8CH == 8 | B4H8CH == 9)
replace B4H8CY = . if (B4H8CY == 9997 | B4H8CY == 9998 | B4H8CY == 9999)
replace B4H8DH = . if (B4H8DH == 7 | B4H8DH == 8 | B4H8DH == 9)
replace B4H8DY = . if (B4H8DY == 9997 | B4H8DY == 9998 | B4H8DY == 9999)
replace B4H9 = . if (B4H9 == 7 | B4H9 == 8 | B4H9 == 9)
replace B4H10 = . if (B4H10 == 7 | B4H10 == 8 | B4H10 == 9)
replace B4H10A = . if (B4H10A == 7 | B4H10A == 8 | B4H10A == 9)
replace B4H10B = . if (B4H10B == 7 | B4H10B == 8 | B4H10B == 9)
replace B4H10C = . if (B4H10C == 7 | B4H10C == 8 | B4H10C == 9)
replace B4H10D = . if (B4H10D == 7 | B4H10D == 8 | B4H10D == 9)
replace B4H10E = . if (B4H10E == 7 | B4H10E == 8 | B4H10E == 9)
replace B4H10F = . if (B4H10F == 7 | B4H10F == 8 | B4H10F == 9)
replace B4H11A = . if (B4H11A == 7 | B4H11A == 8 | B4H11A == 9)
replace B4H11AI = . if (B4H11AI == 7 | B4H11AI == 8 | B4H11AI == 9)
replace B4H11AA = . if (B4H11AA == 997.0 | B4H11AA == 998.0 | B4H11AA == 999.0)
replace B4H11B = . if (B4H11B == 7 | B4H11B == 8 | B4H11B == 9)
replace B4H11BI = . if (B4H11BI == 7 | B4H11BI == 8 | B4H11BI == 9)
replace B4H11BA = . if (B4H11BA == 997.0 | B4H11BA == 998.0 | B4H11BA == 999.0)
replace B4H11C = . if (B4H11C == 7 | B4H11C == 8 | B4H11C == 9)
replace B4H11CI = . if (B4H11CI == 7 | B4H11CI == 8 | B4H11CI == 9)
replace B4H11CA = . if (B4H11CA == 997.0 | B4H11CA == 998.0 | B4H11CA == 999.0)
replace B4H11D = . if (B4H11D == 7 | B4H11D == 8 | B4H11D == 9)
replace B4H11DI = . if (B4H11DI == 7 | B4H11DI == 8 | B4H11DI == 9)
replace B4H11DA = . if (B4H11DA == 997.0 | B4H11DA == 998.0 | B4H11DA == 999.0)
replace B4H11E = . if (B4H11E == 7 | B4H11E == 8 | B4H11E == 9)
replace B4H12A = . if (B4H12A == 7 | B4H12A == 8 | B4H12A == 9)
replace B4H12AM = . if (B4H12AM == 97 | B4H12AM == 98 | B4H12AM == 99)
replace B4H12AY = . if (B4H12AY == 9997 | B4H12AY == 9998 | B4H12AY == 9999)
replace B4H12B = . if (B4H12B == 7 | B4H12B == 8 | B4H12B == 9)
replace B4H12BM = . if (B4H12BM == 97 | B4H12BM == 98 | B4H12BM == 99)
replace B4H12BY = . if (B4H12BY == 9997 | B4H12BY == 9998 | B4H12BY == 9999)
replace B4H12C = . if (B4H12C == 7 | B4H12C == 8 | B4H12C == 9)
replace B4H12CM = . if (B4H12CM == 97 | B4H12CM == 98 | B4H12CM == 99)
replace B4H12CY = . if (B4H12CY == 9997 | B4H12CY == 9998 | B4H12CY == 9999)
replace B4H13 = . if (B4H13 == 97 | B4H13 == 98 | B4H13 == 99)
replace B4H14 = . if (B4H14 == 7 | B4H14 == 8 | B4H14 == 9)
replace B4H14A = . if (B4H14A == 7 | B4H14A == 8 | B4H14A == 9)
replace B4H15A = . if (B4H15A == 7 | B4H15A == 8 | B4H15A == 9)
replace B4H15A1 = . if (B4H15A1 == 7 | B4H15A1 == 8 | B4H15A1 == 9)
replace B4H15A2 = . if (B4H15A2 == 7 | B4H15A2 == 8 | B4H15A2 == 9)
replace B4H15A3 = . if (B4H15A3 == 7 | B4H15A3 == 8 | B4H15A3 == 9)
replace B4H15A4 = . if (B4H15A4 == 7 | B4H15A4 == 8 | B4H15A4 == 9)
replace B4H15A5 = . if (B4H15A5 == 7 | B4H15A5 == 8 | B4H15A5 == 9)
replace B4H15A6 = . if (B4H15A6 == 7 | B4H15A6 == 8 | B4H15A6 == 9)
replace B4H15A7 = . if (B4H15A7 == 7 | B4H15A7 == 8 | B4H15A7 == 9)
replace B4H15B = . if (B4H15B == 7 | B4H15B == 8 | B4H15B == 9)
replace B4H15B1 = . if (B4H15B1 == 7 | B4H15B1 == 8 | B4H15B1 == 9)
replace B4H15B2 = . if (B4H15B2 == 7 | B4H15B2 == 8 | B4H15B2 == 9)
replace B4H15B3 = . if (B4H15B3 == 7 | B4H15B3 == 8 | B4H15B3 == 9)
replace B4H15B4 = . if (B4H15B4 == 7 | B4H15B4 == 8 | B4H15B4 == 9)
replace B4H15B5 = . if (B4H15B5 == 7 | B4H15B5 == 8 | B4H15B5 == 9)
replace B4H15B6 = . if (B4H15B6 == 7 | B4H15B6 == 8 | B4H15B6 == 9)
replace B4H15B7 = . if (B4H15B7 == 7 | B4H15B7 == 8 | B4H15B7 == 9)
replace B4H15C = . if (B4H15C == 7 | B4H15C == 8 | B4H15C == 9)
replace B4H15C1 = . if (B4H15C1 == 7 | B4H15C1 == 8 | B4H15C1 == 9)
replace B4H15C2 = . if (B4H15C2 == 7 | B4H15C2 == 8 | B4H15C2 == 9)
replace B4H15C3 = . if (B4H15C3 == 7 | B4H15C3 == 8 | B4H15C3 == 9)
replace B4H15C4 = . if (B4H15C4 == 7 | B4H15C4 == 8 | B4H15C4 == 9)
replace B4H15C5 = . if (B4H15C5 == 7 | B4H15C5 == 8 | B4H15C5 == 9)
replace B4H15C6 = . if (B4H15C6 == 7 | B4H15C6 == 8 | B4H15C6 == 9)
replace B4H15C7 = . if (B4H15C7 == 7 | B4H15C7 == 8 | B4H15C7 == 9)
replace B4H15D = . if (B4H15D == 7 | B4H15D == 8 | B4H15D == 9)
replace B4H15D1 = . if (B4H15D1 == 7 | B4H15D1 == 8 | B4H15D1 == 9)
replace B4H15D2 = . if (B4H15D2 == 7 | B4H15D2 == 8 | B4H15D2 == 9)
replace B4H15D3 = . if (B4H15D3 == 7 | B4H15D3 == 8 | B4H15D3 == 9)
replace B4H15D4 = . if (B4H15D4 == 7 | B4H15D4 == 8 | B4H15D4 == 9)
replace B4H15D5 = . if (B4H15D5 == 7 | B4H15D5 == 8 | B4H15D5 == 9)
replace B4H15D6 = . if (B4H15D6 == 7 | B4H15D6 == 8 | B4H15D6 == 9)
replace B4H15D7 = . if (B4H15D7 == 7 | B4H15D7 == 8 | B4H15D7 == 9)
replace B4H15E = . if (B4H15E == 7 | B4H15E == 8 | B4H15E == 9)
replace B4H15E1 = . if (B4H15E1 == 7 | B4H15E1 == 8 | B4H15E1 == 9)
replace B4H15E2 = . if (B4H15E2 == 7 | B4H15E2 == 8 | B4H15E2 == 9)
replace B4H15E3 = . if (B4H15E3 == 7 | B4H15E3 == 8 | B4H15E3 == 9)
replace B4H15E4 = . if (B4H15E4 == 7 | B4H15E4 == 8 | B4H15E4 == 9)
replace B4H15E5 = . if (B4H15E5 == 7 | B4H15E5 == 8 | B4H15E5 == 9)
replace B4H15E6 = . if (B4H15E6 == 7 | B4H15E6 == 8 | B4H15E6 == 9)
replace B4H15E7 = . if (B4H15E7 == 7 | B4H15E7 == 8 | B4H15E7 == 9)
replace B4H15F = . if (B4H15F == 7 | B4H15F == 8 | B4H15F == 9)
replace B4H15F1 = . if (B4H15F1 == 7 | B4H15F1 == 8 | B4H15F1 == 9)
replace B4H15F2 = . if (B4H15F2 == 7 | B4H15F2 == 8 | B4H15F2 == 9)
replace B4H15F3 = . if (B4H15F3 == 7 | B4H15F3 == 8 | B4H15F3 == 9)
replace B4H15F4 = . if (B4H15F4 == 7 | B4H15F4 == 8 | B4H15F4 == 9)
replace B4H15F5 = . if (B4H15F5 == 7 | B4H15F5 == 8 | B4H15F5 == 9)
replace B4H15F6 = . if (B4H15F6 == 7 | B4H15F6 == 8 | B4H15F6 == 9)
replace B4H15F7 = . if (B4H15F7 == 7 | B4H15F7 == 8 | B4H15F7 == 9)
replace B4H15G = . if (B4H15G == 7 | B4H15G == 8 | B4H15G == 9)
replace B4H15G1 = . if (B4H15G1 == 7 | B4H15G1 == 8 | B4H15G1 == 9)
replace B4H15G2 = . if (B4H15G2 == 7 | B4H15G2 == 8 | B4H15G2 == 9)
replace B4H15G3 = . if (B4H15G3 == 7 | B4H15G3 == 8 | B4H15G3 == 9)
replace B4H15G4 = . if (B4H15G4 == 7 | B4H15G4 == 8 | B4H15G4 == 9)
replace B4H15G5 = . if (B4H15G5 == 7 | B4H15G5 == 8 | B4H15G5 == 9)
replace B4H15G6 = . if (B4H15G6 == 7 | B4H15G6 == 8 | B4H15G6 == 9)
replace B4H15G7 = . if (B4H15G7 == 7 | B4H15G7 == 8 | B4H15G7 == 9)
replace B4H15H = . if (B4H15H == 7 | B4H15H == 8 | B4H15H == 9)
replace B4H15H1 = . if (B4H15H1 == 7 | B4H15H1 == 8 | B4H15H1 == 9)
replace B4H15H2 = . if (B4H15H2 == 7 | B4H15H2 == 8 | B4H15H2 == 9)
replace B4H15H3 = . if (B4H15H3 == 7 | B4H15H3 == 8 | B4H15H3 == 9)
replace B4H15H4 = . if (B4H15H4 == 7 | B4H15H4 == 8 | B4H15H4 == 9)
replace B4H15H5 = . if (B4H15H5 == 7 | B4H15H5 == 8 | B4H15H5 == 9)
replace B4H15H6 = . if (B4H15H6 == 7 | B4H15H6 == 8 | B4H15H6 == 9)
replace B4H15H7 = . if (B4H15H7 == 7 | B4H15H7 == 8 | B4H15H7 == 9)
replace B4H15I = . if (B4H15I == 7 | B4H15I == 8 | B4H15I == 9)
replace B4H15I1 = . if (B4H15I1 == 7 | B4H15I1 == 8 | B4H15I1 == 9)
replace B4H15I2 = . if (B4H15I2 == 7 | B4H15I2 == 8 | B4H15I2 == 9)
replace B4H15I3 = . if (B4H15I3 == 7 | B4H15I3 == 8 | B4H15I3 == 9)
replace B4H15I4 = . if (B4H15I4 == 7 | B4H15I4 == 8 | B4H15I4 == 9)
replace B4H15I5 = . if (B4H15I5 == 7 | B4H15I5 == 8 | B4H15I5 == 9)
replace B4H15I6 = . if (B4H15I6 == 7 | B4H15I6 == 8 | B4H15I6 == 9)
replace B4H15I7 = . if (B4H15I7 == 7 | B4H15I7 == 8 | B4H15I7 == 9)
replace B4H15J = . if (B4H15J == 7 | B4H15J == 8 | B4H15J == 9)
replace B4H15J1 = . if (B4H15J1 == 7 | B4H15J1 == 8 | B4H15J1 == 9)
replace B4H15J2 = . if (B4H15J2 == 7 | B4H15J2 == 8 | B4H15J2 == 9)
replace B4H15J3 = . if (B4H15J3 == 7 | B4H15J3 == 8 | B4H15J3 == 9)
replace B4H15J4 = . if (B4H15J4 == 7 | B4H15J4 == 8 | B4H15J4 == 9)
replace B4H15J5 = . if (B4H15J5 == 7 | B4H15J5 == 8 | B4H15J5 == 9)
replace B4H15J6 = . if (B4H15J6 == 7 | B4H15J6 == 8 | B4H15J6 == 9)
replace B4H15J7 = . if (B4H15J7 == 7 | B4H15J7 == 8 | B4H15J7 == 9)
replace B4H15K = . if (B4H15K == 7 | B4H15K == 8 | B4H15K == 9)
replace B4H15K1 = . if (B4H15K1 == 7 | B4H15K1 == 8 | B4H15K1 == 9)
replace B4H15K2 = . if (B4H15K2 == 7 | B4H15K2 == 8 | B4H15K2 == 9)
replace B4H15K3 = . if (B4H15K3 == 7 | B4H15K3 == 8 | B4H15K3 == 9)
replace B4H15K4 = . if (B4H15K4 == 7 | B4H15K4 == 8 | B4H15K4 == 9)
replace B4H15K5 = . if (B4H15K5 == 7 | B4H15K5 == 8 | B4H15K5 == 9)
replace B4H15K6 = . if (B4H15K6 == 7 | B4H15K6 == 8 | B4H15K6 == 9)
replace B4H15K7 = . if (B4H15K7 == 7 | B4H15K7 == 8 | B4H15K7 == 9)
replace B4H15L = . if (B4H15L == 7 | B4H15L == 8 | B4H15L == 9)
replace B4H15L1 = . if (B4H15L1 == 7 | B4H15L1 == 8 | B4H15L1 == 9)
replace B4H15L2 = . if (B4H15L2 == 7 | B4H15L2 == 8 | B4H15L2 == 9)
replace B4H15L3 = . if (B4H15L3 == 7 | B4H15L3 == 8 | B4H15L3 == 9)
replace B4H15L4 = . if (B4H15L4 == 7 | B4H15L4 == 8 | B4H15L4 == 9)
replace B4H15L5 = . if (B4H15L5 == 7 | B4H15L5 == 8 | B4H15L5 == 9)
replace B4H15L6 = . if (B4H15L6 == 7 | B4H15L6 == 8 | B4H15L6 == 9)
replace B4H15L7 = . if (B4H15L7 == 7 | B4H15L7 == 8 | B4H15L7 == 9)
replace B4H15M = . if (B4H15M == 7 | B4H15M == 8 | B4H15M == 9)
replace B4H15M1 = . if (B4H15M1 == 7 | B4H15M1 == 8 | B4H15M1 == 9)
replace B4H15M2 = . if (B4H15M2 == 7 | B4H15M2 == 8 | B4H15M2 == 9)
replace B4H15M3 = . if (B4H15M3 == 7 | B4H15M3 == 8 | B4H15M3 == 9)
replace B4H15M4 = . if (B4H15M4 == 7 | B4H15M4 == 8 | B4H15M4 == 9)
replace B4H15M5 = . if (B4H15M5 == 7 | B4H15M5 == 8 | B4H15M5 == 9)
replace B4H15M6 = . if (B4H15M6 == 7 | B4H15M6 == 8 | B4H15M6 == 9)
replace B4H15M7 = . if (B4H15M7 == 7 | B4H15M7 == 8 | B4H15M7 == 9)
replace B4H15N = . if (B4H15N == 7 | B4H15N == 8 | B4H15N == 9)
replace B4H15N1 = . if (B4H15N1 == 7 | B4H15N1 == 8 | B4H15N1 == 9)
replace B4H15N2 = . if (B4H15N2 == 7 | B4H15N2 == 8 | B4H15N2 == 9)
replace B4H15N3 = . if (B4H15N3 == 7 | B4H15N3 == 8 | B4H15N3 == 9)
replace B4H15N4 = . if (B4H15N4 == 7 | B4H15N4 == 8 | B4H15N4 == 9)
replace B4H15N5 = . if (B4H15N5 == 7 | B4H15N5 == 8 | B4H15N5 == 9)
replace B4H15N6 = . if (B4H15N6 == 7 | B4H15N6 == 8 | B4H15N6 == 9)
replace B4H15N7 = . if (B4H15N7 == 7 | B4H15N7 == 8 | B4H15N7 == 9)
replace B4H15O = . if (B4H15O == 7 | B4H15O == 8 | B4H15O == 9)
replace B4H15O1 = . if (B4H15O1 == 7 | B4H15O1 == 8 | B4H15O1 == 9)
replace B4H15O2 = . if (B4H15O2 == 7 | B4H15O2 == 8 | B4H15O2 == 9)
replace B4H15O3 = . if (B4H15O3 == 7 | B4H15O3 == 8 | B4H15O3 == 9)
replace B4H15O4 = . if (B4H15O4 == 7 | B4H15O4 == 8 | B4H15O4 == 9)
replace B4H15O5 = . if (B4H15O5 == 7 | B4H15O5 == 8 | B4H15O5 == 9)
replace B4H15O6 = . if (B4H15O6 == 7 | B4H15O6 == 8 | B4H15O6 == 9)
replace B4H15O7 = . if (B4H15O7 == 7 | B4H15O7 == 8 | B4H15O7 == 9)
replace B4H15P = . if (B4H15P == 7 | B4H15P == 8 | B4H15P == 9)
replace B4H15P1 = . if (B4H15P1 == 7 | B4H15P1 == 8 | B4H15P1 == 9)
replace B4H15P2 = . if (B4H15P2 == 7 | B4H15P2 == 8 | B4H15P2 == 9)
replace B4H15P3 = . if (B4H15P3 == 7 | B4H15P3 == 8 | B4H15P3 == 9)
replace B4H15P4 = . if (B4H15P4 == 7 | B4H15P4 == 8 | B4H15P4 == 9)
replace B4H15P5 = . if (B4H15P5 == 7 | B4H15P5 == 8 | B4H15P5 == 9)
replace B4H15P6 = . if (B4H15P6 == 7 | B4H15P6 == 8 | B4H15P6 == 9)
replace B4H15P7 = . if (B4H15P7 == 7 | B4H15P7 == 8 | B4H15P7 == 9)
replace B4H15Q = . if (B4H15Q == 7 | B4H15Q == 8 | B4H15Q == 9)
replace B4H15Q1 = . if (B4H15Q1 == 7 | B4H15Q1 == 8 | B4H15Q1 == 9)
replace B4H15Q2 = . if (B4H15Q2 == 7 | B4H15Q2 == 8 | B4H15Q2 == 9)
replace B4H15Q3 = . if (B4H15Q3 == 7 | B4H15Q3 == 8 | B4H15Q3 == 9)
replace B4H15Q4 = . if (B4H15Q4 == 7 | B4H15Q4 == 8 | B4H15Q4 == 9)
replace B4H15Q5 = . if (B4H15Q5 == 7 | B4H15Q5 == 8 | B4H15Q5 == 9)
replace B4H15Q6 = . if (B4H15Q6 == 7 | B4H15Q6 == 8 | B4H15Q6 == 9)
replace B4H15Q7 = . if (B4H15Q7 == 7 | B4H15Q7 == 8 | B4H15Q7 == 9)
replace B4H15R = . if (B4H15R == 7 | B4H15R == 8 | B4H15R == 9)
replace B4H15R1 = . if (B4H15R1 == 7 | B4H15R1 == 8 | B4H15R1 == 9)
replace B4H15R2 = . if (B4H15R2 == 7 | B4H15R2 == 8 | B4H15R2 == 9)
replace B4H15R3 = . if (B4H15R3 == 7 | B4H15R3 == 8 | B4H15R3 == 9)
replace B4H15R4 = . if (B4H15R4 == 7 | B4H15R4 == 8 | B4H15R4 == 9)
replace B4H15R5 = . if (B4H15R5 == 7 | B4H15R5 == 8 | B4H15R5 == 9)
replace B4H15R6 = . if (B4H15R6 == 7 | B4H15R6 == 8 | B4H15R6 == 9)
replace B4H15R7 = . if (B4H15R7 == 7 | B4H15R7 == 8 | B4H15R7 == 9)
replace B4H15S = . if (B4H15S == 7 | B4H15S == 8 | B4H15S == 9)
replace B4H15S1 = . if (B4H15S1 == 7 | B4H15S1 == 8 | B4H15S1 == 9)
replace B4H15S2 = . if (B4H15S2 == 7 | B4H15S2 == 8 | B4H15S2 == 9)
replace B4H15S3 = . if (B4H15S3 == 7 | B4H15S3 == 8 | B4H15S3 == 9)
replace B4H15S4 = . if (B4H15S4 == 7 | B4H15S4 == 8 | B4H15S4 == 9)
replace B4H15S5 = . if (B4H15S5 == 7 | B4H15S5 == 8 | B4H15S5 == 9)
replace B4H15S6 = . if (B4H15S6 == 7 | B4H15S6 == 8 | B4H15S6 == 9)
replace B4H15S7 = . if (B4H15S7 == 7 | B4H15S7 == 8 | B4H15S7 == 9)
replace B4H15OTH = . if (B4H15OTH == 97 | B4H15OTH == 98 | B4H15OTH == 99)
replace B4HFMHN = . if (B4HFMHN == 99)
replace B4HFMHX = . if (B4HFMHX == 9)
replace B4H16 = . if (B4H16 == 7 | B4H16 == 8 | B4H16 == 9)
replace B4H17AF = . if (B4H17AF == 9997.0 | B4H17AF == 9998.0 | B4H17AF == 9999.0)
replace B4H17AT = . if (B4H17AT == 7 | B4H17AT == 8 | B4H17AT == 9)
replace B4H17BF = . if (B4H17BF == 9997.0 | B4H17BF == 9998.0 | B4H17BF == 9999.0)
replace B4H17BT = . if (B4H17BT == 7 | B4H17BT == 8 | B4H17BT == 9)
replace B4H17CF = . if (B4H17CF == 9997.0 | B4H17CF == 9998.0 | B4H17CF == 9999.0)
replace B4H17CT = . if (B4H17CT == 7 | B4H17CT == 8 | B4H17CT == 9)
replace B4H18AF = . if (B4H18AF == 9997.0 | B4H18AF == 9998.0 | B4H18AF == 9999.0)
replace B4H18AT = . if (B4H18AT == 7 | B4H18AT == 8 | B4H18AT == 9)
replace B4H18BF = . if (B4H18BF == 9997.0 | B4H18BF == 9998.0 | B4H18BF == 9999.0)
replace B4H18BT = . if (B4H18BT == 7 | B4H18BT == 8 | B4H18BT == 9)
replace B4H18CF = . if (B4H18CF == 9997.0 | B4H18CF == 9998.0 | B4H18CF == 9999.0)
replace B4H18CT = . if (B4H18CT == 7 | B4H18CT == 8 | B4H18CT == 9)
replace B4H19 = . if (B4H19 == 7 | B4H19 == 8 | B4H19 == 9)
replace B4H20 = . if (B4H20 == 7 | B4H20 == 8 | B4H20 == 9)
replace B4H21 = . if (B4H21 == 7 | B4H21 == 8 | B4H21 == 9)
replace B4H22 = . if (B4H22 == 7 | B4H22 == 8 | B4H22 == 9)
replace B4H23A = . if (B4H23A == 7 | B4H23A == 8 | B4H23A == 9)
replace B4H23B = . if (B4H23B == 7 | B4H23B == 8 | B4H23B == 9)
replace B4H23C = . if (B4H23C == 7 | B4H23C == 8 | B4H23C == 9)
replace B4H23D = . if (B4H23D == 7 | B4H23D == 8 | B4H23D == 9)
replace B4H24 = . if (B4H24 == 7 | B4H24 == 8 | B4H24 == 9)
replace B4H25 = . if (B4H25 == 7 | B4H25 == 8 | B4H25 == 9)
replace B4H25AS = . if (B4H25AS == 97 | B4H25AS == 98 | B4H25AS == 99)
replace B4H25AFD = . if (B4H25AFD == 97 | B4H25AFD == 98 | B4H25AFD == 99)
replace B4H25AFW = . if (B4H25AFW == 97 | B4H25AFW == 98 | B4H25AFW == 99)
replace B4H25AM = . if (B4H25AM == 9997.0 | B4H25AM == 9998.0 | B4H25AM == 9999.0)
replace B4H25AI = . if (B4H25AI == 7 | B4H25AI == 8 | B4H25AI == 9)
replace B4H25BS = . if (B4H25BS == 97 | B4H25BS == 98 | B4H25BS == 99)
replace B4H25BFD = . if (B4H25BFD == 97 | B4H25BFD == 98 | B4H25BFD == 99)
replace B4H25BFW = . if (B4H25BFW == 97 | B4H25BFW == 98 | B4H25BFW == 99)
replace B4H25BM = . if (B4H25BM == 9997.0 | B4H25BM == 9998.0 | B4H25BM == 9999.0)
replace B4H25BI = . if (B4H25BI == 7 | B4H25BI == 8 | B4H25BI == 9)
replace B4H25CS = . if (B4H25CS == 97 | B4H25CS == 98 | B4H25CS == 99)
replace B4H25CFD = . if (B4H25CFD == 97 | B4H25CFD == 98 | B4H25CFD == 99)
replace B4H25CFW = . if (B4H25CFW == 97 | B4H25CFW == 98 | B4H25CFW == 99)
replace B4H25CM = . if (B4H25CM == 9997.0 | B4H25CM == 9998.0 | B4H25CM == 9999.0)
replace B4H25CI = . if (B4H25CI == 7 | B4H25CI == 8 | B4H25CI == 9)
replace B4H25DS = . if (B4H25DS == 97 | B4H25DS == 98 | B4H25DS == 99)
replace B4H25DFD = . if (B4H25DFD == 97 | B4H25DFD == 98 | B4H25DFD == 99)
replace B4H25DFW = . if (B4H25DFW == 97 | B4H25DFW == 98 | B4H25DFW == 99)
replace B4H25DM = . if (B4H25DM == 9997.0 | B4H25DM == 9998.0 | B4H25DM == 9999.0)
replace B4H25DI = . if (B4H25DI == 7 | B4H25DI == 8 | B4H25DI == 9)
replace B4H25ES = . if (B4H25ES == 97 | B4H25ES == 98 | B4H25ES == 99)
replace B4H25EFD = . if (B4H25EFD == 97 | B4H25EFD == 98 | B4H25EFD == 99)
replace B4H25EFW = . if (B4H25EFW == 97 | B4H25EFW == 98 | B4H25EFW == 99)
replace B4H25EM = . if (B4H25EM == 9997.0 | B4H25EM == 9998.0 | B4H25EM == 9999.0)
replace B4H25EI = . if (B4H25EI == 7 | B4H25EI == 8 | B4H25EI == 9)
replace B4H25FS = . if (B4H25FS == 97 | B4H25FS == 98 | B4H25FS == 99)
replace B4H25FFD = . if (B4H25FFD == 97 | B4H25FFD == 98 | B4H25FFD == 99)
replace B4H25FFW = . if (B4H25FFW == 97 | B4H25FFW == 98 | B4H25FFW == 99)
replace B4H25FM = . if (B4H25FM == 9997.0 | B4H25FM == 9998.0 | B4H25FM == 9999.0)
replace B4H25FI = . if (B4H25FI == 7 | B4H25FI == 8 | B4H25FI == 9)
replace B4H25GS = . if (B4H25GS == 97 | B4H25GS == 98 | B4H25GS == 99)
replace B4H25GFD = . if (B4H25GFD == 97 | B4H25GFD == 98 | B4H25GFD == 99)
replace B4H25GFW = . if (B4H25GFW == 97 | B4H25GFW == 98 | B4H25GFW == 99)
replace B4H25GM = . if (B4H25GM == 9997.0 | B4H25GM == 9998.0 | B4H25GM == 9999.0)
replace B4H25GI = . if (B4H25GI == 7 | B4H25GI == 8 | B4H25GI == 9)
replace B4H26 = . if (B4H26 == 7 | B4H26 == 8 | B4H26 == 9)
replace B4H26A = . if (B4H26A == 7 | B4H26A == 8 | B4H26A == 9)
replace B4H27 = . if (B4H27 == 7 | B4H27 == 8 | B4H27 == 9)
replace B4H28 = . if (B4H28 == 97 | B4H28 == 98 | B4H28 == 99)
replace B4H29 = . if (B4H29 == 7 | B4H29 == 8 | B4H29 == 9)
replace B4H30 = . if (B4H30 == 7 | B4H30 == 8 | B4H30 == 9)
replace B4H31 = . if (B4H31 == 7 | B4H31 == 8 | B4H31 == 9)
replace B4H32 = . if (B4H32 == 7 | B4H32 == 8 | B4H32 == 9)
replace B4H33 = . if (B4H33 == 7 | B4H33 == 8 | B4H33 == 9)
replace B4H34 = . if (B4H34 == 7 | B4H34 == 8 | B4H34 == 9)
replace B4H35 = . if (B4H35 == 7 | B4H35 == 8 | B4H35 == 9)
replace B4H36 = . if (B4H36 == 9997.0 | B4H36 == 9998.0 | B4H36 == 9999.0)
replace B4H37 = . if (B4H37 == 97 | B4H37 == 98 | B4H37 == 99)
replace B4H38 = . if (B4H38 == 7 | B4H38 == 8 | B4H38 == 9)
replace B4H39 = . if (B4H39 == 7 | B4H39 == 8 | B4H39 == 9)
replace B4H40 = . if (B4H40 == 9997.0 | B4H40 == 9998.0 | B4H40 == 9999.0)
replace B4H41 = . if (B4H41 == 97 | B4H41 == 98 | B4H41 == 99)
replace B4H42 = . if (B4H42 == 9997.0 | B4H42 == 9998.0 | B4H42 == 9999.0)
replace B4H43A = . if (B4H43A == 7 | B4H43A == 8 | B4H43A == 9)
replace B4H43BM = . if (B4H43BM == 97 | B4H43BM == 98 | B4H43BM == 99)
replace B4H43BY = . if (B4H43BY == 9997 | B4H43BY == 9998 | B4H43BY == 9999)
replace B4H44A = . if (B4H44A == 7 | B4H44A == 8 | B4H44A == 9)
replace B4H44CM = . if (B4H44CM == 97 | B4H44CM == 98 | B4H44CM == 99)
replace B4H44CY = . if (B4H44CY == 9997 | B4H44CY == 9998 | B4H44CY == 9999)
replace B4H44D = . if (B4H44D == 7 | B4H44D == 8 | B4H44D == 9)
replace B4H45A = . if (B4H45A == 7 | B4H45A == 8 | B4H45A == 9)
replace B4H45AM = . if (B4H45AM == 97 | B4H45AM == 98 | B4H45AM == 99)
replace B4H45AY = . if (B4H45AY == 9997 | B4H45AY == 9998 | B4H45AY == 9999)
replace B4H45B = . if (B4H45B == 7 | B4H45B == 8 | B4H45B == 9)
replace B4H45BM = . if (B4H45BM == 97 | B4H45BM == 98 | B4H45BM == 99)
replace B4H45BY = . if (B4H45BY == 9997 | B4H45BY == 9998 | B4H45BY == 9999)
replace B4H45BRC = . if (B4H45BRC == 8 | B4H45BRC == 9)
replace B4H45C = . if (B4H45C == 7 | B4H45C == 8 | B4H45C == 9)
replace B4H45CM = . if (B4H45CM == 97 | B4H45CM == 98 | B4H45CM == 99)
replace B4H45CY = . if (B4H45CY == 9997 | B4H45CY == 9998 | B4H45CY == 9999)
replace B4H45CRC = . if (B4H45CRC == 8 | B4H45CRC == 9)
replace B4H45D = . if (B4H45D == 7 | B4H45D == 8 | B4H45D == 9)
replace B4H45DM = . if (B4H45DM == 97 | B4H45DM == 98 | B4H45DM == 99)
replace B4H45DY = . if (B4H45DY == 9997 | B4H45DY == 9998 | B4H45DY == 9999)
replace B4H45DRC = . if (B4H45DRC == 8 | B4H45DRC == 9)
replace B4H45E = . if (B4H45E == 7 | B4H45E == 8 | B4H45E == 9)
replace B4H45F = . if (B4H45F == 7 | B4H45F == 8 | B4H45F == 9)
replace B4H45FM = . if (B4H45FM == 97 | B4H45FM == 98 | B4H45FM == 99)
replace B4H45FY = . if (B4H45FY == 9997 | B4H45FY == 9998 | B4H45FY == 9999)
replace B4H45FRC = . if (B4H45FRC == 8 | B4H45FRC == 9)
replace B4H45G = . if (B4H45G == 7 | B4H45G == 8 | B4H45G == 9)
replace B4H45GM = . if (B4H45GM == 97 | B4H45GM == 98 | B4H45GM == 99)
replace B4H45GY = . if (B4H45GY == 9997 | B4H45GY == 9998 | B4H45GY == 9999)
replace B4H45GRC = . if (B4H45GRC == 8 | B4H45GRC == 9)
replace B4H45H = . if (B4H45H == 7 | B4H45H == 8 | B4H45H == 9)
replace B4H45HM = . if (B4H45HM == 97 | B4H45HM == 98 | B4H45HM == 99)
replace B4H45HY = . if (B4H45HY == 9997 | B4H45HY == 9998 | B4H45HY == 9999)
replace B4H45HRC = . if (B4H45HRC == 8 | B4H45HRC == 9)
replace B4H46 = . if (B4H46 == 7 | B4H46 == 8 | B4H46 == 9)
replace B4H46C = . if (B4H46C == 7 | B4H46C == 8 | B4H46C == 9)
replace B4H46D = . if (B4H46D == 9997.00 | B4H46D == 9998.00 | B4H46D == 9999.00)
replace B4H47 = . if (B4H47 == 7 | B4H47 == 8 | B4H47 == 9)
replace B4H48 = . if (B4H48 == 7 | B4H48 == 8 | B4H48 == 9)
replace B4H48A = . if (B4H48A == 7 | B4H48A == 8 | B4H48A == 9)
replace B4H49 = . if (B4H49 == 7 | B4H49 == 8 | B4H49 == 9)
replace B4H50 = . if (B4H50 == 7 | B4H50 == 8 | B4H50 == 9)
replace B4H54M = . if (B4H54M == 97 | B4H54M == 98 | B4H54M == 99)
replace B4H54Y = . if (B4H54Y == 9998 | B4H54Y == 9999)
replace B4H55 = . if (B4H55 == 7 | B4H55 == 8 | B4H55 == 9)
replace B4H56 = . if (B4H56 == 7 | B4H56 == 8 | B4H56 == 9)
replace B4H56AG = . if (B4H56AG == 7 | B4H56AG == 8 | B4H56AG == 9)
replace B4H56AM = . if (B4H56AM == 97 | B4H56AM == 98 | B4H56AM == 99)
replace B4H56AY = . if (B4H56AY == 9997 | B4H56AY == 9998 | B4H56AY == 9999)
replace B4H56BG = . if (B4H56BG == 7 | B4H56BG == 8 | B4H56BG == 9)
replace B4H56BM = . if (B4H56BM == 97 | B4H56BM == 98 | B4H56BM == 99)
replace B4H56BY = . if (B4H56BY == 9997 | B4H56BY == 9998 | B4H56BY == 9999)
replace B4H56CG = . if (B4H56CG == 7 | B4H56CG == 8 | B4H56CG == 9)
replace B4H56CM = . if (B4H56CM == 97 | B4H56CM == 98 | B4H56CM == 99)
replace B4H56CY = . if (B4H56CY == 9997 | B4H56CY == 9998 | B4H56CY == 9999)
replace B4H56DG = . if (B4H56DG == 7 | B4H56DG == 8 | B4H56DG == 9)
replace B4H56DM = . if (B4H56DM == 97 | B4H56DM == 98 | B4H56DM == 99)
replace B4H56DY = . if (B4H56DY == 9997 | B4H56DY == 9998 | B4H56DY == 9999)
replace B4H56EG = . if (B4H56EG == 7 | B4H56EG == 8 | B4H56EG == 9)
replace B4H56EM = . if (B4H56EM == 97 | B4H56EM == 98 | B4H56EM == 99)
replace B4H56EY = . if (B4H56EY == 9997 | B4H56EY == 9998 | B4H56EY == 9999)
replace B4H57 = . if (B4H57 == 7 | B4H57 == 8 | B4H57 == 9)
replace B4H57A1M = . if (B4H57A1M == 97 | B4H57A1M == 98 | B4H57A1M == 99)
replace B4H57A1Y = . if (B4H57A1Y == 9997 | B4H57A1Y == 9998 | B4H57A1Y == 9999)
replace B4H57A2M = . if (B4H57A2M == 97 | B4H57A2M == 98 | B4H57A2M == 99)
replace B4H57A2Y = . if (B4H57A2Y == 9997 | B4H57A2Y == 9998 | B4H57A2Y == 9999)
replace B4H57A3M = . if (B4H57A3M == 97 | B4H57A3M == 98 | B4H57A3M == 99)
replace B4H57A3Y = . if (B4H57A3Y == 9997 | B4H57A3Y == 9998 | B4H57A3Y == 9999)
replace B4H57A4M = . if (B4H57A4M == 97 | B4H57A4M == 98 | B4H57A4M == 99)
replace B4H57A4Y = . if (B4H57A4Y == 9997 | B4H57A4Y == 9998 | B4H57A4Y == 9999)
replace B4H57A5M = . if (B4H57A5M == 97 | B4H57A5M == 98 | B4H57A5M == 99)
replace B4H57A5Y = . if (B4H57A5Y == 9997 | B4H57A5Y == 9998 | B4H57A5Y == 9999)
replace B4O1 = . if (B4O1 == 7 | B4O1 == 8 | B4O1 == 9)
replace B4O1A1W = . if (B4O1A1W == 98 | B4O1A1W == 99)
replace B4O1A3 = . if (B4O1A3 == 9997 | B4O1A3 == 9998 | B4O1A3 == 9999)
replace B4O1B1W = . if (B4O1B1W == 98 | B4O1B1W == 99)
replace B4O1B3 = . if (B4O1B3 == 9997 | B4O1B3 == 9998 | B4O1B3 == 9999)
replace B4O1C1W = . if (B4O1C1W == 98 | B4O1C1W == 99)
replace B4O1C3 = . if (B4O1C3 == 9997 | B4O1C3 == 9998 | B4O1C3 == 9999)
replace B4O2 = . if (B4O2 == 7 | B4O2 == 8 | B4O2 == 9)
replace B4O2A1 = . if (B4O2A1 == 7 | B4O2A1 == 8 | B4O2A1 == 9)
replace B4O2A2 = . if (B4O2A2 == 7 | B4O2A2 == 8 | B4O2A2 == 9)
replace B4O2A3 = . if (B4O2A3 == 7 | B4O2A3 == 8 | B4O2A3 == 9)
replace B4O2B1 = . if (B4O2B1 == 7 | B4O2B1 == 8 | B4O2B1 == 9)
replace B4O2B2 = . if (B4O2B2 == 7 | B4O2B2 == 8 | B4O2B2 == 9)
replace B4O2B3 = . if (B4O2B3 == 7 | B4O2B3 == 8 | B4O2B3 == 9)
replace B4O2C1 = . if (B4O2C1 == 7 | B4O2C1 == 8 | B4O2C1 == 9)
replace B4O2C2 = . if (B4O2C2 == 7 | B4O2C2 == 8 | B4O2C2 == 9)
replace B4O2C3 = . if (B4O2C3 == 7 | B4O2C3 == 8 | B4O2C3 == 9)
replace B4O3 = . if (B4O3 == 997 | B4O3 == 998 | B4O3 == 999)
replace B4O3A = . if (B4O3A == 997 | B4O3A == 998 | B4O3A == 999)
replace B4O4A = . if (B4O4A == 7 | B4O4A == 8 | B4O4A == 9)
replace B4O4B = . if (B4O4B == 7 | B4O4B == 8 | B4O4B == 9)
replace B4O5 = . if (B4O5 == 7 | B4O5 == 8 | B4O5 == 9)
replace B4O5A1AM = . if (B4O5A1AM == 98 | B4O5A1AM == 99)
replace B4O5A1B = . if (B4O5A1B == 9997 | B4O5A1B == 9998 | B4O5A1B == 9999)
replace B4O5A1C = . if (B4O5A1C == 9997 | B4O5A1C == 9998 | B4O5A1C == 9999)
replace B4O5A1CO = . if (B4O5A1CO == 7 | B4O5A1CO == 8 | B4O5A1CO == 9)
replace B4O5A2AM = . if (B4O5A2AM == 98 | B4O5A2AM == 99)
replace B4O5A2B = . if (B4O5A2B == 9997 | B4O5A2B == 9998 | B4O5A2B == 9999)
replace B4O5A2C = . if (B4O5A2C == 9997 | B4O5A2C == 9998 | B4O5A2C == 9999)
replace B4O5A2CO = . if (B4O5A2CO == 7 | B4O5A2CO == 8 | B4O5A2CO == 9)
replace B4O5A3AM = . if (B4O5A3AM == 98 | B4O5A3AM == 99)
replace B4O5A3B = . if (B4O5A3B == 9997 | B4O5A3B == 9998 | B4O5A3B == 9999)
replace B4O5A3C = . if (B4O5A3C == 9997 | B4O5A3C == 9998 | B4O5A3C == 9999)
replace B4O5A3CO = . if (B4O5A3CO == 7 | B4O5A3CO == 8 | B4O5A3CO == 9)
replace B4O6A1 = . if (B4O6A1 == 7 | B4O6A1 == 8 | B4O6A1 == 9)
replace B4O6B1 = . if (B4O6B1 == 7 | B4O6B1 == 8 | B4O6B1 == 9)
replace B4O6C1 = . if (B4O6C1 == 7 | B4O6C1 == 8 | B4O6C1 == 9)
replace B4O6D1 = . if (B4O6D1 == 7 | B4O6D1 == 8 | B4O6D1 == 9)
replace B4O6E1 = . if (B4O6E1 == 7 | B4O6E1 == 8 | B4O6E1 == 9)
replace B4O6F1 = . if (B4O6F1 == 7 | B4O6F1 == 8 | B4O6F1 == 9)
replace B4O7 = . if (B4O7 == 7 | B4O7 == 8 | B4O7 == 9)
replace B4O8 = . if (B4O8 == 9997.0 | B4O8 == 9998.0 | B4O8 == 9999.0)
replace B4O9 = . if (B4O9 == 9997.0 | B4O9 == 9998.0 | B4O9 == 9999.0)
replace B4O10 = . if (B4O10 == 9997.00 | B4O10 == 9998.00 | B4O10 == 9999.00)
replace B4O11 = . if (B4O11 == 7 | B4O11 == 8 | B4O11 == 9)
replace B4O12A = . if (B4O12A == 997.0 | B4O12A == 998.0 | B4O12A == 999.0)
replace B4O12B = . if (B4O12B == 997.0 | B4O12B == 998.0 | B4O12B == 999.0)
replace B4O12C = . if (B4O12C == 997.0 | B4O12C == 998.0 | B4O12C == 999.0)
replace B4O13 = . if (B4O13 == 7 | B4O13 == 8 | B4O13 == 9)
replace B4O14A = . if (B4O14A == 9997.0 | B4O14A == 9998.0 | B4O14A == 9999.0)
replace B4O14B = . if (B4O14B == 9997.0 | B4O14B == 9998.0 | B4O14B == 9999.0)
replace B4O14C = . if (B4O14C == 9997.0 | B4O14C == 9998.0 | B4O14C == 9999.0)
replace B4O14X = . if (B4O14X == 7 | B4O14X == 8 | B4O14X == 9)
replace B4O15 = . if (B4O15 == 7 | B4O15 == 8 | B4O15 == 9)
replace B4O16 = . if (B4O16 == 97 | B4O16 == 98 | B4O16 == 99)
replace B4O16A = . if (B4O16A == 9997.00 | B4O16A == 9998.00 | B4O16A == 9999.00)
replace B4O17 = . if (B4O17 == 7 | B4O17 == 8 | B4O17 == 9)
replace B4O18 = . if (B4O18 == 7 | B4O18 == 8 | B4O18 == 9)
replace B4O19 = . if (B4O19 == 7 | B4O19 == 8 | B4O19 == 9)
replace B4O20Y = . if (B4O20Y == 9997.00 | B4O20Y == 9998.00 | B4O20Y == 9999.00)
replace B4O21 = . if (B4O21 == 7 | B4O21 == 8 | B4O21 == 9)
replace B4O21A1 = . if (B4O21A1 == 7 | B4O21A1 == 8 | B4O21A1 == 9)
replace B4O21A2 = . if (B4O21A2 == 7 | B4O21A2 == 8 | B4O21A2 == 9)
replace B4O21A3 = . if (B4O21A3 == 7 | B4O21A3 == 8 | B4O21A3 == 9)
replace B4O21A4 = . if (B4O21A4 == 7 | B4O21A4 == 8 | B4O21A4 == 9)
replace B4O21A5 = . if (B4O21A5 == 7 | B4O21A5 == 8 | B4O21A5 == 9)
replace B4O22Y = . if (B4O22Y == 9997.00 | B4O22Y == 9998.00 | B4O22Y == 9999.00)
replace B4O23X = . if (B4O23X == 7 | B4O23X == 8 | B4O23X == 9)
replace B4O23 = . if (B4O23 == 7 | B4O23 == 8 | B4O23 == 9)
replace B4O24 = . if (B4O24 == 7 | B4O24 == 8 | B4O24 == 9)
replace B4O25 = . if (B4O25 == 7 | B4O25 == 8 | B4O25 == 9)
replace B4O25A = . if (B4O25A == 7 | B4O25A == 8 | B4O25A == 9)
replace B4O25B = . if (B4O25B == 7 | B4O25B == 8 | B4O25B == 9)
replace B4O25C = . if (B4O25C == 7 | B4O25C == 8 | B4O25C == 9)
replace B4O26 = . if (B4O26 == 7 | B4O26 == 8 | B4O26 == 9)
replace B4O26A = . if (B4O26A == 7 | B4O26A == 8 | B4O26A == 9)
replace B4O26B = . if (B4O26B == 7 | B4O26B == 8 | B4O26B == 9)
replace B4O26C = . if (B4O26C == 7 | B4O26C == 8 | B4O26C == 9)
replace B4O26D = . if (B4O26D == 7 | B4O26D == 8 | B4O26D == 9)
replace B4O26E = . if (B4O26E == 7 | B4O26E == 8 | B4O26E == 9)
replace B4O26F = . if (B4O26F == 7 | B4O26F == 8 | B4O26F == 9)
replace B4O27 = . if (B4O27 == 7 | B4O27 == 8 | B4O27 == 9)
replace B4DAVAIL = . if (B4DAVAIL == 7 | B4DAVAIL == 8 | B4DAVAIL == 9)
replace B4DNARSN = . if (B4DNARSN == 9)
replace B4DSTYPE = . if (B4DSTYPE == 7 | B4DSTYPE == 8 | B4DSTYPE == 9)
replace B4DTRSID = . if (B4DTRSID == 7 | B4DTRSID == 8 | B4DTRSID == 9)
replace B4DFNSID = . if (B4DFNSID == 7 | B4DFNSID == 8 | B4DFNSID == 9)
replace B4DFTSID = . if (B4DFTSID == 7 | B4DFTSID == 8 | B4DFTSID == 9)
replace B4DRSIDE = . if (B4DRSIDE == 7 | B4DRSIDE == 8 | B4DRSIDE == 9)
replace B4DLSMD = . if (B4DLSMD == 998.000 | B4DLSMD == 999.000)
replace B4DLST = . if (B4DLST == 998.00 | B4DLST == 999.00)
replace B4DLFNMD = . if (B4DLFNMD == 998.000 | B4DLFNMD == 999.000)
replace B4DLTRMD = . if (B4DLTRMD == 998.000 | B4DLTRMD == 999.000)
replace B4DLFTMD = . if (B4DLFTMD == 998.000 | B4DLFTMD == 999.000)
replace B4DLFNT = . if (B4DLFNT == 998.00 | B4DLFNT == 999.00)
replace B4DLFTT = . if (B4DLFTT == 998.00 | B4DLFTT == 999.00)
replace B4DLRUMD = . if (B4DLRUMD == 998.000 | B4DLRUMD == 999.000)
replace B4DLR3MD = . if (B4DLR3MD == 998.000 | B4DLR3MD == 999.000)
replace B4DLR3T = . if (B4DLR3T == 998.00 | B4DLR3T == 999.00)
replace B4DHSMD = . if (B4DHSMD == 998.000 | B4DHSMD == 999.000)
replace B4DHST = . if (B4DHST == 998.00 | B4DHST == 999.00)
replace B4DHFNMD = . if (B4DHFNMD == 998.000 | B4DHFNMD == 999.000)
replace B4DHTRMD = . if (B4DHTRMD == 998.000 | B4DHTRMD == 999.000)
replace B4DHFTMD = . if (B4DHFTMD == 998.000 | B4DHFTMD == 999.000)
replace B4DHFNT = . if (B4DHFNT == 998.00 | B4DHFNT == 999.00)
replace B4DHFTT = . if (B4DHFTT == 998.00 | B4DHFTT == 999.00)
replace B4XPMD = . if (B4XPMD == 7 | B4XPMD == 8)
replace B4XOMD = . if (B4XOMD == 7 | B4XOMD == 8)
replace B4XAMD = . if (B4XAMD == 7 | B4XAMD == 8)
replace B4XPM = . if (B4XPM == 97 | B4XPM == 98 | B4XPM == 99)
replace B4XPC1 = . if (B4XPC1 == 99999997 | B4XPC1 == 99999998 | B4XPC1 == 99999999)
replace B4XPDD1 = . if (B4XPDD1 == 99999997.0 | B4XPDD1 == 99999998.0 | B4XPDD1 == 99999999.0)
replace B4XPDU1 = . if (B4XPDU1 == 97 | B4XPDU1 == 98 | B4XPDU1 == 99)
replace B4XPR1 = . if (B4XPR1 == 97 | B4XPR1 == 98 | B4XPR1 == 99)
replace B4XPF1 = . if (B4XPF1 == 9997.0 | B4XPF1 == 9998.0 | B4XPF1 == 9999.0)
replace B4XPFU1 = . if (B4XPFU1 == 7 | B4XPFU1 == 8 | B4XPFU1 == 9)
replace B4XPT1 = . if (B4XPT1 == 9997.0 | B4XPT1 == 9998.0 | B4XPT1 == 9999.0)
replace B4XPTU1 = . if (B4XPTU1 == 7 | B4XPTU1 == 8 | B4XPTU1 == 9)
replace B4XPDC1 = . if (B4XPDC1 == 99997 | B4XPDC1 == 99998 | B4XPDC1 == 99999)
replace B4XPC2 = . if (B4XPC2 == 99999997 | B4XPC2 == 99999998 | B4XPC2 == 99999999)
replace B4XPDD2 = . if (B4XPDD2 == 99999997.0 | B4XPDD2 == 99999998.0 | B4XPDD2 == 99999999.0)
replace B4XPDU2 = . if (B4XPDU2 == 97 | B4XPDU2 == 98 | B4XPDU2 == 99)
replace B4XPR2 = . if (B4XPR2 == 97 | B4XPR2 == 98 | B4XPR2 == 99)
replace B4XPF2 = . if (B4XPF2 == 9997.0 | B4XPF2 == 9998.0 | B4XPF2 == 9999.0)
replace B4XPFU2 = . if (B4XPFU2 == 7 | B4XPFU2 == 8 | B4XPFU2 == 9)
replace B4XPT2 = . if (B4XPT2 == 9997.0 | B4XPT2 == 9998.0 | B4XPT2 == 9999.0)
replace B4XPTU2 = . if (B4XPTU2 == 7 | B4XPTU2 == 8 | B4XPTU2 == 9)
replace B4XPDC2 = . if (B4XPDC2 == 99997 | B4XPDC2 == 99998 | B4XPDC2 == 99999)
replace B4XPC3 = . if (B4XPC3 == 99999997 | B4XPC3 == 99999998 | B4XPC3 == 99999999)
replace B4XPDD3 = . if (B4XPDD3 == 99999997.0 | B4XPDD3 == 99999998.0 | B4XPDD3 == 99999999.0)
replace B4XPDU3 = . if (B4XPDU3 == 97 | B4XPDU3 == 98 | B4XPDU3 == 99)
replace B4XPR3 = . if (B4XPR3 == 97 | B4XPR3 == 98 | B4XPR3 == 99)
replace B4XPF3 = . if (B4XPF3 == 9997.0 | B4XPF3 == 9998.0 | B4XPF3 == 9999.0)
replace B4XPFU3 = . if (B4XPFU3 == 7 | B4XPFU3 == 8 | B4XPFU3 == 9)
replace B4XPT3 = . if (B4XPT3 == 9997.0 | B4XPT3 == 9998.0 | B4XPT3 == 9999.0)
replace B4XPTU3 = . if (B4XPTU3 == 7 | B4XPTU3 == 8 | B4XPTU3 == 9)
replace B4XPDC3 = . if (B4XPDC3 == 99997 | B4XPDC3 == 99998 | B4XPDC3 == 99999)
replace B4XPC4 = . if (B4XPC4 == 99999997 | B4XPC4 == 99999998 | B4XPC4 == 99999999)
replace B4XPDD4 = . if (B4XPDD4 == 99999997.0 | B4XPDD4 == 99999998.0 | B4XPDD4 == 99999999.0)
replace B4XPDU4 = . if (B4XPDU4 == 97 | B4XPDU4 == 98 | B4XPDU4 == 99)
replace B4XPR4 = . if (B4XPR4 == 97 | B4XPR4 == 98 | B4XPR4 == 99)
replace B4XPF4 = . if (B4XPF4 == 9997.0 | B4XPF4 == 9998.0 | B4XPF4 == 9999.0)
replace B4XPFU4 = . if (B4XPFU4 == 7 | B4XPFU4 == 8 | B4XPFU4 == 9)
replace B4XPT4 = . if (B4XPT4 == 9997.0 | B4XPT4 == 9998.0 | B4XPT4 == 9999.0)
replace B4XPTU4 = . if (B4XPTU4 == 7 | B4XPTU4 == 8 | B4XPTU4 == 9)
replace B4XPDC4 = . if (B4XPDC4 == 99997 | B4XPDC4 == 99998 | B4XPDC4 == 99999)
replace B4XPC5 = . if (B4XPC5 == 99999997 | B4XPC5 == 99999998 | B4XPC5 == 99999999)
replace B4XPDD5 = . if (B4XPDD5 == 99999997.0 | B4XPDD5 == 99999998.0 | B4XPDD5 == 99999999.0)
replace B4XPDU5 = . if (B4XPDU5 == 97 | B4XPDU5 == 98 | B4XPDU5 == 99)
replace B4XPR5 = . if (B4XPR5 == 97 | B4XPR5 == 98 | B4XPR5 == 99)
replace B4XPF5 = . if (B4XPF5 == 9997.0 | B4XPF5 == 9998.0 | B4XPF5 == 9999.0)
replace B4XPFU5 = . if (B4XPFU5 == 7 | B4XPFU5 == 8 | B4XPFU5 == 9)
replace B4XPT5 = . if (B4XPT5 == 9997.0 | B4XPT5 == 9998.0 | B4XPT5 == 9999.0)
replace B4XPTU5 = . if (B4XPTU5 == 7 | B4XPTU5 == 8 | B4XPTU5 == 9)
replace B4XPDC5 = . if (B4XPDC5 == 99997 | B4XPDC5 == 99998 | B4XPDC5 == 99999)
replace B4XPC6 = . if (B4XPC6 == 99999997 | B4XPC6 == 99999998 | B4XPC6 == 99999999)
replace B4XPDD6 = . if (B4XPDD6 == 99999997.0 | B4XPDD6 == 99999998.0 | B4XPDD6 == 99999999.0)
replace B4XPDU6 = . if (B4XPDU6 == 97 | B4XPDU6 == 98 | B4XPDU6 == 99)
replace B4XPR6 = . if (B4XPR6 == 97 | B4XPR6 == 98 | B4XPR6 == 99)
replace B4XPF6 = . if (B4XPF6 == 9997.0 | B4XPF6 == 9998.0 | B4XPF6 == 9999.0)
replace B4XPFU6 = . if (B4XPFU6 == 7 | B4XPFU6 == 8 | B4XPFU6 == 9)
replace B4XPT6 = . if (B4XPT6 == 9997.0 | B4XPT6 == 9998.0 | B4XPT6 == 9999.0)
replace B4XPTU6 = . if (B4XPTU6 == 7 | B4XPTU6 == 8 | B4XPTU6 == 9)
replace B4XPDC6 = . if (B4XPDC6 == 99997 | B4XPDC6 == 99998 | B4XPDC6 == 99999)
replace B4XPC7 = . if (B4XPC7 == 99999997 | B4XPC7 == 99999998 | B4XPC7 == 99999999)
replace B4XPDD7 = . if (B4XPDD7 == 99999997.0 | B4XPDD7 == 99999998.0 | B4XPDD7 == 99999999.0)
replace B4XPDU7 = . if (B4XPDU7 == 97 | B4XPDU7 == 98 | B4XPDU7 == 99)
replace B4XPR7 = . if (B4XPR7 == 97 | B4XPR7 == 98 | B4XPR7 == 99)
replace B4XPF7 = . if (B4XPF7 == 9997.0 | B4XPF7 == 9998.0 | B4XPF7 == 9999.0)
replace B4XPFU7 = . if (B4XPFU7 == 7 | B4XPFU7 == 8 | B4XPFU7 == 9)
replace B4XPT7 = . if (B4XPT7 == 9997.0 | B4XPT7 == 9998.0 | B4XPT7 == 9999.0)
replace B4XPTU7 = . if (B4XPTU7 == 7 | B4XPTU7 == 8 | B4XPTU7 == 9)
replace B4XPDC7 = . if (B4XPDC7 == 99997 | B4XPDC7 == 99998 | B4XPDC7 == 99999)
replace B4XPC8 = . if (B4XPC8 == 99999997 | B4XPC8 == 99999998 | B4XPC8 == 99999999)
replace B4XPDD8 = . if (B4XPDD8 == 99999997.0 | B4XPDD8 == 99999998.0 | B4XPDD8 == 99999999.0)
replace B4XPDU8 = . if (B4XPDU8 == 97 | B4XPDU8 == 98 | B4XPDU8 == 99)
replace B4XPR8 = . if (B4XPR8 == 97 | B4XPR8 == 98 | B4XPR8 == 99)
replace B4XPF8 = . if (B4XPF8 == 9997.0 | B4XPF8 == 9998.0 | B4XPF8 == 9999.0)
replace B4XPFU8 = . if (B4XPFU8 == 7 | B4XPFU8 == 8 | B4XPFU8 == 9)
replace B4XPT8 = . if (B4XPT8 == 9997.0 | B4XPT8 == 9998.0 | B4XPT8 == 9999.0)
replace B4XPTU8 = . if (B4XPTU8 == 7 | B4XPTU8 == 8 | B4XPTU8 == 9)
replace B4XPDC8 = . if (B4XPDC8 == 99997 | B4XPDC8 == 99998 | B4XPDC8 == 99999)
replace B4XPC9 = . if (B4XPC9 == 99999997 | B4XPC9 == 99999998 | B4XPC9 == 99999999)
replace B4XPDD9 = . if (B4XPDD9 == 99999997.0 | B4XPDD9 == 99999998.0 | B4XPDD9 == 99999999.0)
replace B4XPDU9 = . if (B4XPDU9 == 97 | B4XPDU9 == 98 | B4XPDU9 == 99)
replace B4XPR9 = . if (B4XPR9 == 97 | B4XPR9 == 98 | B4XPR9 == 99)
replace B4XPF9 = . if (B4XPF9 == 9997.0 | B4XPF9 == 9998.0 | B4XPF9 == 9999.0)
replace B4XPFU9 = . if (B4XPFU9 == 7 | B4XPFU9 == 8 | B4XPFU9 == 9)
replace B4XPT9 = . if (B4XPT9 == 9997.0 | B4XPT9 == 9998.0 | B4XPT9 == 9999.0)
replace B4XPTU9 = . if (B4XPTU9 == 7 | B4XPTU9 == 8 | B4XPTU9 == 9)
replace B4XPDC9 = . if (B4XPDC9 == 99997 | B4XPDC9 == 99998 | B4XPDC9 == 99999)
replace B4XPC10 = . if (B4XPC10 == 99999997 | B4XPC10 == 99999998 | B4XPC10 == 99999999)
replace B4XPDD10 = . if (B4XPDD10 == 99999997.0 | B4XPDD10 == 99999998.0 | B4XPDD10 == 99999999.0)
replace B4XPDU10 = . if (B4XPDU10 == 97 | B4XPDU10 == 98 | B4XPDU10 == 99)
replace B4XPR10 = . if (B4XPR10 == 97 | B4XPR10 == 98 | B4XPR10 == 99)
replace B4XPF10 = . if (B4XPF10 == 9997.0 | B4XPF10 == 9998.0 | B4XPF10 == 9999.0)
replace B4XPFU10 = . if (B4XPFU10 == 7 | B4XPFU10 == 8 | B4XPFU10 == 9)
replace B4XPT10 = . if (B4XPT10 == 9997.0 | B4XPT10 == 9998.0 | B4XPT10 == 9999.0)
replace B4XPTU10 = . if (B4XPTU10 == 7 | B4XPTU10 == 8 | B4XPTU10 == 9)
replace B4XPDC10 = . if (B4XPDC10 == 99997 | B4XPDC10 == 99998 | B4XPDC10 == 99999)
replace B4XPC11 = . if (B4XPC11 == 99999997 | B4XPC11 == 99999998 | B4XPC11 == 99999999)
replace B4XPDD11 = . if (B4XPDD11 == 99999997.0 | B4XPDD11 == 99999998.0 | B4XPDD11 == 99999999.0)
replace B4XPDU11 = . if (B4XPDU11 == 97 | B4XPDU11 == 98 | B4XPDU11 == 99)
replace B4XPR11 = . if (B4XPR11 == 97 | B4XPR11 == 98 | B4XPR11 == 99)
replace B4XPF11 = . if (B4XPF11 == 9997.0 | B4XPF11 == 9998.0 | B4XPF11 == 9999.0)
replace B4XPFU11 = . if (B4XPFU11 == 7 | B4XPFU11 == 8 | B4XPFU11 == 9)
replace B4XPT11 = . if (B4XPT11 == 9997.0 | B4XPT11 == 9998.0 | B4XPT11 == 9999.0)
replace B4XPTU11 = . if (B4XPTU11 == 7 | B4XPTU11 == 8 | B4XPTU11 == 9)
replace B4XPDC11 = . if (B4XPDC11 == 99997 | B4XPDC11 == 99998 | B4XPDC11 == 99999)
replace B4XPC12 = . if (B4XPC12 == 99999997 | B4XPC12 == 99999998 | B4XPC12 == 99999999)
replace B4XPDD12 = . if (B4XPDD12 == 99999997.0 | B4XPDD12 == 99999998.0 | B4XPDD12 == 99999999.0)
replace B4XPDU12 = . if (B4XPDU12 == 97 | B4XPDU12 == 98 | B4XPDU12 == 99)
replace B4XPR12 = . if (B4XPR12 == 97 | B4XPR12 == 98 | B4XPR12 == 99)
replace B4XPF12 = . if (B4XPF12 == 9997.0 | B4XPF12 == 9998.0 | B4XPF12 == 9999.0)
replace B4XPFU12 = . if (B4XPFU12 == 7 | B4XPFU12 == 8 | B4XPFU12 == 9)
replace B4XPT12 = . if (B4XPT12 == 9997.0 | B4XPT12 == 9998.0 | B4XPT12 == 9999.0)
replace B4XPTU12 = . if (B4XPTU12 == 7 | B4XPTU12 == 8 | B4XPTU12 == 9)
replace B4XPDC12 = . if (B4XPDC12 == 99997 | B4XPDC12 == 99998 | B4XPDC12 == 99999)
replace B4XPC13 = . if (B4XPC13 == 99999997 | B4XPC13 == 99999998 | B4XPC13 == 99999999)
replace B4XPDD13 = . if (B4XPDD13 == 99999997.0 | B4XPDD13 == 99999998.0 | B4XPDD13 == 99999999.0)
replace B4XPDU13 = . if (B4XPDU13 == 97 | B4XPDU13 == 98 | B4XPDU13 == 99)
replace B4XPR13 = . if (B4XPR13 == 97 | B4XPR13 == 98 | B4XPR13 == 99)
replace B4XPF13 = . if (B4XPF13 == 9997.0 | B4XPF13 == 9998.0 | B4XPF13 == 9999.0)
replace B4XPFU13 = . if (B4XPFU13 == 7 | B4XPFU13 == 8 | B4XPFU13 == 9)
replace B4XPT13 = . if (B4XPT13 == 9997.0 | B4XPT13 == 9998.0 | B4XPT13 == 9999.0)
replace B4XPTU13 = . if (B4XPTU13 == 7 | B4XPTU13 == 8 | B4XPTU13 == 9)
replace B4XPDC13 = . if (B4XPDC13 == 99997 | B4XPDC13 == 99998 | B4XPDC13 == 99999)
replace B4XPC14 = . if (B4XPC14 == 99999997 | B4XPC14 == 99999998 | B4XPC14 == 99999999)
replace B4XPDD14 = . if (B4XPDD14 == 99999997.0 | B4XPDD14 == 99999998.0 | B4XPDD14 == 99999999.0)
replace B4XPDU14 = . if (B4XPDU14 == 97 | B4XPDU14 == 98 | B4XPDU14 == 99)
replace B4XPR14 = . if (B4XPR14 == 97 | B4XPR14 == 98 | B4XPR14 == 99)
replace B4XPF14 = . if (B4XPF14 == 9997.0 | B4XPF14 == 9998.0 | B4XPF14 == 9999.0)
replace B4XPFU14 = . if (B4XPFU14 == 7 | B4XPFU14 == 8 | B4XPFU14 == 9)
replace B4XPT14 = . if (B4XPT14 == 9997.0 | B4XPT14 == 9998.0 | B4XPT14 == 9999.0)
replace B4XPTU14 = . if (B4XPTU14 == 7 | B4XPTU14 == 8 | B4XPTU14 == 9)
replace B4XPDC14 = . if (B4XPDC14 == 99997 | B4XPDC14 == 99998 | B4XPDC14 == 99999)
replace B4XPC15 = . if (B4XPC15 == 99999997 | B4XPC15 == 99999998 | B4XPC15 == 99999999)
replace B4XPDD15 = . if (B4XPDD15 == 99999997.0 | B4XPDD15 == 99999998.0 | B4XPDD15 == 99999999.0)
replace B4XPDU15 = . if (B4XPDU15 == 97 | B4XPDU15 == 98 | B4XPDU15 == 99)
replace B4XPR15 = . if (B4XPR15 == 97 | B4XPR15 == 98 | B4XPR15 == 99)
replace B4XPF15 = . if (B4XPF15 == 9997.0 | B4XPF15 == 9998.0 | B4XPF15 == 9999.0)
replace B4XPFU15 = . if (B4XPFU15 == 7 | B4XPFU15 == 8 | B4XPFU15 == 9)
replace B4XPT15 = . if (B4XPT15 == 9997.0 | B4XPT15 == 9998.0 | B4XPT15 == 9999.0)
replace B4XPTU15 = . if (B4XPTU15 == 7 | B4XPTU15 == 8 | B4XPTU15 == 9)
replace B4XPDC15 = . if (B4XPDC15 == 99997 | B4XPDC15 == 99998 | B4XPDC15 == 99999)
replace B4XBPD = . if (B4XBPD == 7 | B4XBPD == 8 | B4XBPD == 9)
replace B4XBPC = . if (B4XBPC == 7 | B4XBPC == 8 | B4XBPC == 9)
replace B4XCHD = . if (B4XCHD == 7 | B4XCHD == 8 | B4XCHD == 9)
replace B4XCHC = . if (B4XCHC == 7 | B4XCHC == 8 | B4XCHC == 9)
replace B4XDPD = . if (B4XDPD == 7 | B4XDPD == 8 | B4XDPD == 9)
replace B4XDPC = . if (B4XDPC == 7 | B4XDPC == 8 | B4XDPC == 9)
replace B4XCOD = . if (B4XCOD == 7 | B4XCOD == 8 | B4XCOD == 9)
replace B4XCOC = . if (B4XCOC == 7 | B4XCOC == 8 | B4XCOC == 9)
replace B4XSHD = . if (B4XSHD == 7 | B4XSHD == 8 | B4XSHD == 9)
replace B4XSHC = . if (B4XSHC == 7 | B4XSHC == 8 | B4XSHC == 9)
replace B4XOM = . if (B4XOM == 97 | B4XOM == 98 | B4XOM == 99)
replace B4XOMV = . if (B4XOMV == 7 | B4XOMV == 8 | B4XOMV == 9)
replace B4XOC1 = . if (B4XOC1 == 99999997 | B4XOC1 == 99999998 | B4XOC1 == 99999999)
replace B4XODD1 = . if (B4XODD1 == 99999997.0 | B4XODD1 == 99999998.0 | B4XODD1 == 99999999.0)
replace B4XODU1 = . if (B4XODU1 == 97 | B4XODU1 == 98 | B4XODU1 == 99)
replace B4XOR1 = . if (B4XOR1 == 97 | B4XOR1 == 98 | B4XOR1 == 99)
replace B4XOF1 = . if (B4XOF1 == 9997.0 | B4XOF1 == 9998.0 | B4XOF1 == 9999.0)
replace B4XOFU1 = . if (B4XOFU1 == 7 | B4XOFU1 == 8 | B4XOFU1 == 9)
replace B4XOT1 = . if (B4XOT1 == 9997.0 | B4XOT1 == 9998.0 | B4XOT1 == 9999.0)
replace B4XOTU1 = . if (B4XOTU1 == 7 | B4XOTU1 == 8 | B4XOTU1 == 9)
replace B4XODC1 = . if (B4XODC1 == 99997 | B4XODC1 == 99998 | B4XODC1 == 99999)
replace B4XOCS = . if (B4XOCS == 7 | B4XOCS == 8 | B4XOCS == 9)
replace B4XOC2 = . if (B4XOC2 == 99999997 | B4XOC2 == 99999998 | B4XOC2 == 99999999)
replace B4XODD2 = . if (B4XODD2 == 99999997.0 | B4XODD2 == 99999998.0 | B4XODD2 == 99999999.0)
replace B4XODU2 = . if (B4XODU2 == 97 | B4XODU2 == 98 | B4XODU2 == 99)
replace B4XOR2 = . if (B4XOR2 == 97 | B4XOR2 == 98 | B4XOR2 == 99)
replace B4XOF2 = . if (B4XOF2 == 9997.0 | B4XOF2 == 9998.0 | B4XOF2 == 9999.0)
replace B4XOFU2 = . if (B4XOFU2 == 7 | B4XOFU2 == 8 | B4XOFU2 == 9)
replace B4XOT2 = . if (B4XOT2 == 9997.0 | B4XOT2 == 9998.0 | B4XOT2 == 9999.0)
replace B4XOTU2 = . if (B4XOTU2 == 7 | B4XOTU2 == 8 | B4XOTU2 == 9)
replace B4XODC2 = . if (B4XODC2 == 99997 | B4XODC2 == 99998 | B4XODC2 == 99999)
replace B4XOC3 = . if (B4XOC3 == 99999997 | B4XOC3 == 99999998 | B4XOC3 == 99999999)
replace B4XODD3 = . if (B4XODD3 == 99999997.0 | B4XODD3 == 99999998.0 | B4XODD3 == 99999999.0)
replace B4XODU3 = . if (B4XODU3 == 97 | B4XODU3 == 98 | B4XODU3 == 99)
replace B4XOR3 = . if (B4XOR3 == 97 | B4XOR3 == 98 | B4XOR3 == 99)
replace B4XOF3 = . if (B4XOF3 == 9997.0 | B4XOF3 == 9998.0 | B4XOF3 == 9999.0)
replace B4XOFU3 = . if (B4XOFU3 == 7 | B4XOFU3 == 8 | B4XOFU3 == 9)
replace B4XOT3 = . if (B4XOT3 == 9997.0 | B4XOT3 == 9998.0 | B4XOT3 == 9999.0)
replace B4XOTU3 = . if (B4XOTU3 == 7 | B4XOTU3 == 8 | B4XOTU3 == 9)
replace B4XODC3 = . if (B4XODC3 == 99997 | B4XODC3 == 99998 | B4XODC3 == 99999)
replace B4XOC4 = . if (B4XOC4 == 99999997 | B4XOC4 == 99999998 | B4XOC4 == 99999999)
replace B4XODD4 = . if (B4XODD4 == 99999997.0 | B4XODD4 == 99999998.0 | B4XODD4 == 99999999.0)
replace B4XODU4 = . if (B4XODU4 == 97 | B4XODU4 == 98 | B4XODU4 == 99)
replace B4XOR4 = . if (B4XOR4 == 97 | B4XOR4 == 98 | B4XOR4 == 99)
replace B4XOF4 = . if (B4XOF4 == 9997.0 | B4XOF4 == 9998.0 | B4XOF4 == 9999.0)
replace B4XOFU4 = . if (B4XOFU4 == 7 | B4XOFU4 == 8 | B4XOFU4 == 9)
replace B4XOT4 = . if (B4XOT4 == 9997.0 | B4XOT4 == 9998.0 | B4XOT4 == 9999.0)
replace B4XOTU4 = . if (B4XOTU4 == 7 | B4XOTU4 == 8 | B4XOTU4 == 9)
replace B4XODC4 = . if (B4XODC4 == 99997 | B4XODC4 == 99998 | B4XODC4 == 99999)
replace B4XOC5 = . if (B4XOC5 == 99999997 | B4XOC5 == 99999998 | B4XOC5 == 99999999)
replace B4XODD5 = . if (B4XODD5 == 99999997.0 | B4XODD5 == 99999998.0 | B4XODD5 == 99999999.0)
replace B4XODU5 = . if (B4XODU5 == 97 | B4XODU5 == 98 | B4XODU5 == 99)
replace B4XOR5 = . if (B4XOR5 == 97 | B4XOR5 == 98 | B4XOR5 == 99)
replace B4XOF5 = . if (B4XOF5 == 9997.0 | B4XOF5 == 9998.0 | B4XOF5 == 9999.0)
replace B4XOFU5 = . if (B4XOFU5 == 7 | B4XOFU5 == 8 | B4XOFU5 == 9)
replace B4XOT5 = . if (B4XOT5 == 9997.0 | B4XOT5 == 9998.0 | B4XOT5 == 9999.0)
replace B4XOTU5 = . if (B4XOTU5 == 7 | B4XOTU5 == 8 | B4XOTU5 == 9)
replace B4XODC5 = . if (B4XODC5 == 99997 | B4XODC5 == 99998 | B4XODC5 == 99999)
replace B4XOC6 = . if (B4XOC6 == 99999997 | B4XOC6 == 99999998 | B4XOC6 == 99999999)
replace B4XODD6 = . if (B4XODD6 == 99999997.0 | B4XODD6 == 99999998.0 | B4XODD6 == 99999999.0)
replace B4XODU6 = . if (B4XODU6 == 97 | B4XODU6 == 98 | B4XODU6 == 99)
replace B4XOR6 = . if (B4XOR6 == 97 | B4XOR6 == 98 | B4XOR6 == 99)
replace B4XOF6 = . if (B4XOF6 == 9997.0 | B4XOF6 == 9998.0 | B4XOF6 == 9999.0)
replace B4XOFU6 = . if (B4XOFU6 == 7 | B4XOFU6 == 8 | B4XOFU6 == 9)
replace B4XOT6 = . if (B4XOT6 == 9997.0 | B4XOT6 == 9998.0 | B4XOT6 == 9999.0)
replace B4XOTU6 = . if (B4XOTU6 == 7 | B4XOTU6 == 8 | B4XOTU6 == 9)
replace B4XODC6 = . if (B4XODC6 == 99997 | B4XODC6 == 99998 | B4XODC6 == 99999)
replace B4XOC7 = . if (B4XOC7 == 99999997 | B4XOC7 == 99999998 | B4XOC7 == 99999999)
replace B4XODD7 = . if (B4XODD7 == 99999997.0 | B4XODD7 == 99999998.0 | B4XODD7 == 99999999.0)
replace B4XODU7 = . if (B4XODU7 == 97 | B4XODU7 == 98 | B4XODU7 == 99)
replace B4XOR7 = . if (B4XOR7 == 97 | B4XOR7 == 98 | B4XOR7 == 99)
replace B4XOF7 = . if (B4XOF7 == 9997.0 | B4XOF7 == 9998.0 | B4XOF7 == 9999.0)
replace B4XOFU7 = . if (B4XOFU7 == 7 | B4XOFU7 == 8 | B4XOFU7 == 9)
replace B4XOT7 = . if (B4XOT7 == 9997.0 | B4XOT7 == 9998.0 | B4XOT7 == 9999.0)
replace B4XOTU7 = . if (B4XOTU7 == 7 | B4XOTU7 == 8 | B4XOTU7 == 9)
replace B4XODC7 = . if (B4XODC7 == 99997 | B4XODC7 == 99998 | B4XODC7 == 99999)
replace B4XOC8 = . if (B4XOC8 == 99999997 | B4XOC8 == 99999998 | B4XOC8 == 99999999)
replace B4XODD8 = . if (B4XODD8 == 99999997.0 | B4XODD8 == 99999998.0 | B4XODD8 == 99999999.0)
replace B4XODU8 = . if (B4XODU8 == 97 | B4XODU8 == 98 | B4XODU8 == 99)
replace B4XOR8 = . if (B4XOR8 == 97 | B4XOR8 == 98 | B4XOR8 == 99)
replace B4XOF8 = . if (B4XOF8 == 9997.0 | B4XOF8 == 9998.0 | B4XOF8 == 9999.0)
replace B4XOFU8 = . if (B4XOFU8 == 7 | B4XOFU8 == 8 | B4XOFU8 == 9)
replace B4XOT8 = . if (B4XOT8 == 9997.0 | B4XOT8 == 9998.0 | B4XOT8 == 9999.0)
replace B4XOTU8 = . if (B4XOTU8 == 7 | B4XOTU8 == 8 | B4XOTU8 == 9)
replace B4XODC8 = . if (B4XODC8 == 99997 | B4XODC8 == 99998 | B4XODC8 == 99999)
replace B4XOC9 = . if (B4XOC9 == 99999997 | B4XOC9 == 99999998 | B4XOC9 == 99999999)
replace B4XODD9 = . if (B4XODD9 == 99999997.0 | B4XODD9 == 99999998.0 | B4XODD9 == 99999999.0)
replace B4XODU9 = . if (B4XODU9 == 97 | B4XODU9 == 98 | B4XODU9 == 99)
replace B4XOR9 = . if (B4XOR9 == 97 | B4XOR9 == 98 | B4XOR9 == 99)
replace B4XOF9 = . if (B4XOF9 == 9997.0 | B4XOF9 == 9998.0 | B4XOF9 == 9999.0)
replace B4XOFU9 = . if (B4XOFU9 == 7 | B4XOFU9 == 8 | B4XOFU9 == 9)
replace B4XOT9 = . if (B4XOT9 == 9997.0 | B4XOT9 == 9998.0 | B4XOT9 == 9999.0)
replace B4XOTU9 = . if (B4XOTU9 == 7 | B4XOTU9 == 8 | B4XOTU9 == 9)
replace B4XODC9 = . if (B4XODC9 == 99997 | B4XODC9 == 99998 | B4XODC9 == 99999)
replace B4XOC10 = . if (B4XOC10 == 99999997 | B4XOC10 == 99999998 | B4XOC10 == 99999999)
replace B4XODD10 = . if (B4XODD10 == 99999997.0 | B4XODD10 == 99999998.0 | B4XODD10 == 99999999.0)
replace B4XODU10 = . if (B4XODU10 == 97 | B4XODU10 == 98 | B4XODU10 == 99)
replace B4XOR10 = . if (B4XOR10 == 97 | B4XOR10 == 98 | B4XOR10 == 99)
replace B4XOF10 = . if (B4XOF10 == 9997.0 | B4XOF10 == 9998.0 | B4XOF10 == 9999.0)
replace B4XOFU10 = . if (B4XOFU10 == 7 | B4XOFU10 == 8 | B4XOFU10 == 9)
replace B4XOT10 = . if (B4XOT10 == 9997.0 | B4XOT10 == 9998.0 | B4XOT10 == 9999.0)
replace B4XOTU10 = . if (B4XOTU10 == 7 | B4XOTU10 == 8 | B4XOTU10 == 9)
replace B4XODC10 = . if (B4XODC10 == 99997 | B4XODC10 == 99998 | B4XODC10 == 99999)
replace B4XOC11 = . if (B4XOC11 == 99999997 | B4XOC11 == 99999998 | B4XOC11 == 99999999)
replace B4XODD11 = . if (B4XODD11 == 99999997.0 | B4XODD11 == 99999998.0 | B4XODD11 == 99999999.0)
replace B4XODU11 = . if (B4XODU11 == 97 | B4XODU11 == 98 | B4XODU11 == 99)
replace B4XOR11 = . if (B4XOR11 == 97 | B4XOR11 == 98 | B4XOR11 == 99)
replace B4XOF11 = . if (B4XOF11 == 9997.0 | B4XOF11 == 9998.0 | B4XOF11 == 9999.0)
replace B4XOFU11 = . if (B4XOFU11 == 7 | B4XOFU11 == 8 | B4XOFU11 == 9)
replace B4XOT11 = . if (B4XOT11 == 9997.0 | B4XOT11 == 9998.0 | B4XOT11 == 9999.0)
replace B4XOTU11 = . if (B4XOTU11 == 7 | B4XOTU11 == 8 | B4XOTU11 == 9)
replace B4XODC11 = . if (B4XODC11 == 99997 | B4XODC11 == 99998 | B4XODC11 == 99999)
replace B4XOC12 = . if (B4XOC12 == 99999997 | B4XOC12 == 99999998 | B4XOC12 == 99999999)
replace B4XODD12 = . if (B4XODD12 == 99999997.0 | B4XODD12 == 99999998.0 | B4XODD12 == 99999999.0)
replace B4XODU12 = . if (B4XODU12 == 97 | B4XODU12 == 98 | B4XODU12 == 99)
replace B4XOR12 = . if (B4XOR12 == 97 | B4XOR12 == 98 | B4XOR12 == 99)
replace B4XOF12 = . if (B4XOF12 == 9997.0 | B4XOF12 == 9998.0 | B4XOF12 == 9999.0)
replace B4XOFU12 = . if (B4XOFU12 == 7 | B4XOFU12 == 8 | B4XOFU12 == 9)
replace B4XOT12 = . if (B4XOT12 == 9997.0 | B4XOT12 == 9998.0 | B4XOT12 == 9999.0)
replace B4XOTU12 = . if (B4XOTU12 == 7 | B4XOTU12 == 8 | B4XOTU12 == 9)
replace B4XODC12 = . if (B4XODC12 == 99997 | B4XODC12 == 99998 | B4XODC12 == 99999)
replace B4XAM = . if (B4XAM == 97 | B4XAM == 98 | B4XAM == 99)
replace B4XAC1 = . if (B4XAC1 == 999997 | B4XAC1 == 999998 | B4XAC1 == 999999)
replace B4XADD1 = . if (B4XADD1 == 99999997.0 | B4XADD1 == 99999998.0 | B4XADD1 == 99999999.0)
replace B4XADU1 = . if (B4XADU1 == 97 | B4XADU1 == 98 | B4XADU1 == 99)
replace B4XAR1 = . if (B4XAR1 == 97 | B4XAR1 == 98 | B4XAR1 == 99)
replace B4XAF1 = . if (B4XAF1 == 9997.0 | B4XAF1 == 9998.0 | B4XAF1 == 9999.0)
replace B4XAFU1 = . if (B4XAFU1 == 7 | B4XAFU1 == 8 | B4XAFU1 == 9)
replace B4XAT1 = . if (B4XAT1 == 9997.0 | B4XAT1 == 9998.0 | B4XAT1 == 9999.0)
replace B4XATU1 = . if (B4XATU1 == 7 | B4XATU1 == 8 | B4XATU1 == 9)
replace B4XADC1 = . if (B4XADC1 == 99997 | B4XADC1 == 99998 | B4XADC1 == 99999)
replace B4XAC2 = . if (B4XAC2 == 999997 | B4XAC2 == 999998 | B4XAC2 == 999999)
replace B4XADD2 = . if (B4XADD2 == 99999997.0 | B4XADD2 == 99999998.0 | B4XADD2 == 99999999.0)
replace B4XADU2 = . if (B4XADU2 == 97 | B4XADU2 == 98 | B4XADU2 == 99)
replace B4XAR2 = . if (B4XAR2 == 97 | B4XAR2 == 98 | B4XAR2 == 99)
replace B4XAF2 = . if (B4XAF2 == 9997.0 | B4XAF2 == 9998.0 | B4XAF2 == 9999.0)
replace B4XAFU2 = . if (B4XAFU2 == 7 | B4XAFU2 == 8 | B4XAFU2 == 9)
replace B4XAT2 = . if (B4XAT2 == 9997.0 | B4XAT2 == 9998.0 | B4XAT2 == 9999.0)
replace B4XATU2 = . if (B4XATU2 == 7 | B4XATU2 == 8 | B4XATU2 == 9)
replace B4XADC2 = . if (B4XADC2 == 99997 | B4XADC2 == 99998 | B4XADC2 == 99999)
replace B4XAC3 = . if (B4XAC3 == 999997 | B4XAC3 == 999998 | B4XAC3 == 999999)
replace B4XADD3 = . if (B4XADD3 == 99999997.0 | B4XADD3 == 99999998.0 | B4XADD3 == 99999999.0)
replace B4XADU3 = . if (B4XADU3 == 97 | B4XADU3 == 98 | B4XADU3 == 99)
replace B4XAR3 = . if (B4XAR3 == 97 | B4XAR3 == 98 | B4XAR3 == 99)
replace B4XAF3 = . if (B4XAF3 == 9997.0 | B4XAF3 == 9998.0 | B4XAF3 == 9999.0)
replace B4XAFU3 = . if (B4XAFU3 == 7 | B4XAFU3 == 8 | B4XAFU3 == 9)
replace B4XAT3 = . if (B4XAT3 == 9997.0 | B4XAT3 == 9998.0 | B4XAT3 == 9999.0)
replace B4XATU3 = . if (B4XATU3 == 7 | B4XATU3 == 8 | B4XATU3 == 9)
replace B4XADC3 = . if (B4XADC3 == 99997 | B4XADC3 == 99998 | B4XADC3 == 99999)
replace B4XAC4 = . if (B4XAC4 == 999997 | B4XAC4 == 999998 | B4XAC4 == 999999)
replace B4XADD4 = . if (B4XADD4 == 99999997.0 | B4XADD4 == 99999998.0 | B4XADD4 == 99999999.0)
replace B4XADU4 = . if (B4XADU4 == 97 | B4XADU4 == 98 | B4XADU4 == 99)
replace B4XAR4 = . if (B4XAR4 == 97 | B4XAR4 == 98 | B4XAR4 == 99)
replace B4XAF4 = . if (B4XAF4 == 9997.0 | B4XAF4 == 9998.0 | B4XAF4 == 9999.0)
replace B4XAFU4 = . if (B4XAFU4 == 7 | B4XAFU4 == 8 | B4XAFU4 == 9)
replace B4XAT4 = . if (B4XAT4 == 9997.0 | B4XAT4 == 9998.0 | B4XAT4 == 9999.0)
replace B4XATU4 = . if (B4XATU4 == 7 | B4XATU4 == 8 | B4XATU4 == 9)
replace B4XADC4 = . if (B4XADC4 == 99997 | B4XADC4 == 99998 | B4XADC4 == 99999)
replace B4XAC5 = . if (B4XAC5 == 999997 | B4XAC5 == 999998 | B4XAC5 == 999999)
replace B4XADD5 = . if (B4XADD5 == 99999997.0 | B4XADD5 == 99999998.0 | B4XADD5 == 99999999.0)
replace B4XADU5 = . if (B4XADU5 == 97 | B4XADU5 == 98 | B4XADU5 == 99)
replace B4XAR5 = . if (B4XAR5 == 97 | B4XAR5 == 98 | B4XAR5 == 99)
replace B4XAF5 = . if (B4XAF5 == 9997.0 | B4XAF5 == 9998.0 | B4XAF5 == 9999.0)
replace B4XAFU5 = . if (B4XAFU5 == 7 | B4XAFU5 == 8 | B4XAFU5 == 9)
replace B4XAT5 = . if (B4XAT5 == 9997.0 | B4XAT5 == 9998.0 | B4XAT5 == 9999.0)
replace B4XATU5 = . if (B4XATU5 == 7 | B4XATU5 == 8 | B4XATU5 == 9)
replace B4XADC5 = . if (B4XADC5 == 99997 | B4XADC5 == 99998 | B4XADC5 == 99999)
replace B4XAC6 = . if (B4XAC6 == 999997 | B4XAC6 == 999998 | B4XAC6 == 999999)
replace B4XADD6 = . if (B4XADD6 == 99999997.0 | B4XADD6 == 99999998.0 | B4XADD6 == 99999999.0)
replace B4XADU6 = . if (B4XADU6 == 97 | B4XADU6 == 98 | B4XADU6 == 99)
replace B4XAR6 = . if (B4XAR6 == 97 | B4XAR6 == 98 | B4XAR6 == 99)
replace B4XAF6 = . if (B4XAF6 == 9997.0 | B4XAF6 == 9998.0 | B4XAF6 == 9999.0)
replace B4XAFU6 = . if (B4XAFU6 == 7 | B4XAFU6 == 8 | B4XAFU6 == 9)
replace B4XAT6 = . if (B4XAT6 == 9997.0 | B4XAT6 == 9998.0 | B4XAT6 == 9999.0)
replace B4XATU6 = . if (B4XATU6 == 7 | B4XATU6 == 8 | B4XATU6 == 9)
replace B4XADC6 = . if (B4XADC6 == 99997 | B4XADC6 == 99998 | B4XADC6 == 99999)
replace B4XAC7 = . if (B4XAC7 == 999997 | B4XAC7 == 999998 | B4XAC7 == 999999)
replace B4XADD7 = . if (B4XADD7 == 99999997.0 | B4XADD7 == 99999998.0 | B4XADD7 == 99999999.0)
replace B4XADU7 = . if (B4XADU7 == 97 | B4XADU7 == 98 | B4XADU7 == 99)
replace B4XAR7 = . if (B4XAR7 == 97 | B4XAR7 == 98 | B4XAR7 == 99)
replace B4XAF7 = . if (B4XAF7 == 9997.0 | B4XAF7 == 9998.0 | B4XAF7 == 9999.0)
replace B4XAFU7 = . if (B4XAFU7 == 7 | B4XAFU7 == 8 | B4XAFU7 == 9)
replace B4XAT7 = . if (B4XAT7 == 9997.0 | B4XAT7 == 9998.0 | B4XAT7 == 9999.0)
replace B4XATU7 = . if (B4XATU7 == 7 | B4XATU7 == 8 | B4XATU7 == 9)
replace B4XADC7 = . if (B4XADC7 == 99997 | B4XADC7 == 99998 | B4XADC7 == 99999)
replace B4XAC8 = . if (B4XAC8 == 999997 | B4XAC8 == 999998 | B4XAC8 == 999999)
replace B4XADD8 = . if (B4XADD8 == 99999997.0 | B4XADD8 == 99999998.0 | B4XADD8 == 99999999.0)
replace B4XADU8 = . if (B4XADU8 == 97 | B4XADU8 == 98 | B4XADU8 == 99)
replace B4XAR8 = . if (B4XAR8 == 97 | B4XAR8 == 98 | B4XAR8 == 99)
replace B4XAF8 = . if (B4XAF8 == 9997.0 | B4XAF8 == 9998.0 | B4XAF8 == 9999.0)
replace B4XAFU8 = . if (B4XAFU8 == 7 | B4XAFU8 == 8 | B4XAFU8 == 9)
replace B4XAT8 = . if (B4XAT8 == 9997.0 | B4XAT8 == 9998.0 | B4XAT8 == 9999.0)
replace B4XATU8 = . if (B4XATU8 == 7 | B4XATU8 == 8 | B4XATU8 == 9)
replace B4XADC8 = . if (B4XADC8 == 99997 | B4XADC8 == 99998 | B4XADC8 == 99999)
replace B4XAC9 = . if (B4XAC9 == 999997 | B4XAC9 == 999998 | B4XAC9 == 999999)
replace B4XADD9 = . if (B4XADD9 == 99999997.0 | B4XADD9 == 99999998.0 | B4XADD9 == 99999999.0)
replace B4XADU9 = . if (B4XADU9 == 97 | B4XADU9 == 98 | B4XADU9 == 99)
replace B4XAR9 = . if (B4XAR9 == 97 | B4XAR9 == 98 | B4XAR9 == 99)
replace B4XAF9 = . if (B4XAF9 == 9997.0 | B4XAF9 == 9998.0 | B4XAF9 == 9999.0)
replace B4XAFU9 = . if (B4XAFU9 == 7 | B4XAFU9 == 8 | B4XAFU9 == 9)
replace B4XAT9 = . if (B4XAT9 == 9997.0 | B4XAT9 == 9998.0 | B4XAT9 == 9999.0)
replace B4XATU9 = . if (B4XATU9 == 7 | B4XATU9 == 8 | B4XATU9 == 9)
replace B4XADC9 = . if (B4XADC9 == 99997 | B4XADC9 == 99998 | B4XADC9 == 99999)
replace B4XAC10 = . if (B4XAC10 == 999997 | B4XAC10 == 999998 | B4XAC10 == 999999)
replace B4XADD10 = . if (B4XADD10 == 99999997.0 | B4XADD10 == 99999998.0 | B4XADD10 == 99999999.0)
replace B4XADU10 = . if (B4XADU10 == 97 | B4XADU10 == 98 | B4XADU10 == 99)
replace B4XAR10 = . if (B4XAR10 == 97 | B4XAR10 == 98 | B4XAR10 == 99)
replace B4XAF10 = . if (B4XAF10 == 9997.0 | B4XAF10 == 9998.0 | B4XAF10 == 9999.0)
replace B4XAFU10 = . if (B4XAFU10 == 7 | B4XAFU10 == 8 | B4XAFU10 == 9)
replace B4XAT10 = . if (B4XAT10 == 9997.0 | B4XAT10 == 9998.0 | B4XAT10 == 9999.0)
replace B4XATU10 = . if (B4XATU10 == 7 | B4XATU10 == 8 | B4XATU10 == 9)
replace B4XADC10 = . if (B4XADC10 == 99997 | B4XADC10 == 99998 | B4XADC10 == 99999)
replace B4XAC11 = . if (B4XAC11 == 999997 | B4XAC11 == 999998 | B4XAC11 == 999999)
replace B4XADD11 = . if (B4XADD11 == 99999997.0 | B4XADD11 == 99999998.0 | B4XADD11 == 99999999.0)
replace B4XADU11 = . if (B4XADU11 == 97 | B4XADU11 == 98 | B4XADU11 == 99)
replace B4XAR11 = . if (B4XAR11 == 97 | B4XAR11 == 98 | B4XAR11 == 99)
replace B4XAF11 = . if (B4XAF11 == 9997.0 | B4XAF11 == 9998.0 | B4XAF11 == 9999.0)
replace B4XAFU11 = . if (B4XAFU11 == 7 | B4XAFU11 == 8 | B4XAFU11 == 9)
replace B4XAT11 = . if (B4XAT11 == 9997.0 | B4XAT11 == 9998.0 | B4XAT11 == 9999.0)
replace B4XATU11 = . if (B4XATU11 == 7 | B4XATU11 == 8 | B4XATU11 == 9)
replace B4XADC11 = . if (B4XADC11 == 99997 | B4XADC11 == 99998 | B4XADC11 == 99999)
replace B4XAC12 = . if (B4XAC12 == 999997 | B4XAC12 == 999998 | B4XAC12 == 999999)
replace B4XADD12 = . if (B4XADD12 == 99999997.0 | B4XADD12 == 99999998.0 | B4XADD12 == 99999999.0)
replace B4XADU12 = . if (B4XADU12 == 97 | B4XADU12 == 98 | B4XADU12 == 99)
replace B4XAR12 = . if (B4XAR12 == 97 | B4XAR12 == 98 | B4XAR12 == 99)
replace B4XAF12 = . if (B4XAF12 == 9997.0 | B4XAF12 == 9998.0 | B4XAF12 == 9999.0)
replace B4XAFU12 = . if (B4XAFU12 == 7 | B4XAFU12 == 8 | B4XAFU12 == 9)
replace B4XAT12 = . if (B4XAT12 == 9997.0 | B4XAT12 == 9998.0 | B4XAT12 == 9999.0)
replace B4XATU12 = . if (B4XATU12 == 7 | B4XATU12 == 8 | B4XATU12 == 9)
replace B4XADC12 = . if (B4XADC12 == 99997 | B4XADC12 == 99998 | B4XADC12 == 99999)
replace B4XM = . if (B4XM == 7 | B4XM == 8 | B4XM == 9)
replace B4XMM = . if (B4XMM == 97 | B4XMM == 98 | B4XMM == 99)
replace B4XMC1 = . if (B4XMC1 == 99999997 | B4XMC1 == 99999998 | B4XMC1 == 99999999)
replace B4XMC2 = . if (B4XMC2 == 99999997 | B4XMC2 == 99999998 | B4XMC2 == 99999999)
replace B4XMC3 = . if (B4XMC3 == 99999997 | B4XMC3 == 99999998 | B4XMC3 == 99999999)
replace B4XMC4 = . if (B4XMC4 == 99999997 | B4XMC4 == 99999998 | B4XMC4 == 99999999)
replace B4XMC5 = . if (B4XMC5 == 99999997 | B4XMC5 == 99999998 | B4XMC5 == 99999999)
replace B4XMC6 = . if (B4XMC6 == 99999997 | B4XMC6 == 99999998 | B4XMC6 == 99999999)
replace B4XMC7 = . if (B4XMC7 == 99999997 | B4XMC7 == 99999998 | B4XMC7 == 99999999)
replace B4XMC8 = . if (B4XMC8 == 99999997 | B4XMC8 == 99999998 | B4XMC8 == 99999999)
replace B4XXM = . if (B4XXM == 7 | B4XXM == 8 | B4XXM == 9)
replace B4PWHRF = . if (B4PWHRF == 8)
replace B4P1A = . if (B4P1A == 999997.00 | B4P1A == 999998.00 | B4P1A == 999999.00)
replace B4P1B = . if (B4P1B == 99997.00 | B4P1B == 99998.00 | B4P1B == 99999.00)
replace B4PBMI = . if (B4PBMI == 999997.00 | B4PBMI == 999998.00 | B4PBMI == 999999.00)
replace B4P1C = . if (B4P1C == 9997.0 | B4P1C == 9998.0 | B4P1C == 9999.0)
replace B4P1D = . if (B4P1D == 997 | B4P1D == 998 | B4P1D == 999)
replace B4P1E = . if (B4P1E == 97 | B4P1E == 98 | B4P1E == 99)
replace B4P1F1S = . if (B4P1F1S == 997 | B4P1F1S == 998 | B4P1F1S == 999)
replace B4P1F1D = . if (B4P1F1D == 997 | B4P1F1D == 998 | B4P1F1D == 999)
replace B4P1F2S = . if (B4P1F2S == 997 | B4P1F2S == 998 | B4P1F2S == 999)
replace B4P1F2D = . if (B4P1F2D == 997 | B4P1F2D == 998 | B4P1F2D == 999)
replace B4P1F3S = . if (B4P1F3S == 997 | B4P1F3S == 998 | B4P1F3S == 999)
replace B4P1F3D = . if (B4P1F3D == 997 | B4P1F3D == 998 | B4P1F3D == 999)
replace B4P1GS = . if (B4P1GS == 997 | B4P1GS == 998 | B4P1GS == 999)
replace B4P1GD = . if (B4P1GD == 997 | B4P1GD == 998 | B4P1GD == 999)
replace B4P1GS23 = . if (B4P1GS23 == 998)
replace B4P1GD23 = . if (B4P1GD23 == 998)
replace B4P2A = . if (B4P2A == 999997.0 | B4P2A == 999998.0 | B4P2A == 999999.0)
replace B4P2B = . if (B4P2B == 999997.0 | B4P2B == 999998.0 | B4P2B == 999999.0)
replace B4P2C = . if (B4P2C == 999997.0 | B4P2C == 999998.0 | B4P2C == 999999.0)
replace B4P2D = . if (B4P2D == 999997.00 | B4P2D == 999998.00 | B4P2D == 999999.00)
replace B4PWHR = . if (B4PWHR == 999998.00 | B4PWHR == 999999.00)
replace B4P3A = . if (B4P3A == 7 | B4P3A == 8 | B4P3A == 9)
replace B4P3A1 = . if (B4P3A1 == 7 | B4P3A1 == 8 | B4P3A1 == 9)
replace B4P3A2R1 = . if (B4P3A2R1 == 97 | B4P3A2R1 == 98 | B4P3A2R1 == 99)
replace B4P3A2R2 = . if (B4P3A2R2 == 97 | B4P3A2R2 == 98 | B4P3A2R2 == 99)
replace B4P3A2R3 = . if (B4P3A2R3 == 97 | B4P3A2R3 == 98 | B4P3A2R3 == 99)
replace B4P3A2L1 = . if (B4P3A2L1 == 97 | B4P3A2L1 == 98 | B4P3A2L1 == 99)
replace B4P3A2L2 = . if (B4P3A2L2 == 97 | B4P3A2L2 == 98 | B4P3A2L2 == 99)
replace B4P3A2L3 = . if (B4P3A2L3 == 97 | B4P3A2L3 == 98 | B4P3A2L3 == 99)
replace B4P3B1 = . if (B4P3B1 == 7 | B4P3B1 == 8 | B4P3B1 == 9)
replace B4P3B2R = . if (B4P3B2R == 997 | B4P3B2R == 998 | B4P3B2R == 999)
replace B4P3B2L = . if (B4P3B2L == 997 | B4P3B2L == 998 | B4P3B2L == 999)
replace B4P3B3R = . if (B4P3B3R == 8 | B4P3B3R == 9)
replace B4P3B4 = . if (B4P3B4 == 7 | B4P3B4 == 8 | B4P3B4 == 9)
replace B4P3B4A = . if (B4P3B4A == 97 | B4P3B4A == 98 | B4P3B4A == 99)
replace B4P3B5R = . if (B4P3B5R == 997 | B4P3B5R == 998 | B4P3B5R == 999)
replace B4P3B5L = . if (B4P3B5L == 997 | B4P3B5L == 998 | B4P3B5L == 999)
replace B4P3B6 = . if (B4P3B6 == 7 | B4P3B6 == 8 | B4P3B6 == 9)
replace B4P3C1 = . if (B4P3C1 == 7 | B4P3C1 == 8 | B4P3C1 == 9)
replace B4P3C2 = . if (B4P3C2 == 997 | B4P3C2 == 998 | B4P3C2 == 999)
replace B4P3C3 = . if (B4P3C3 == 7 | B4P3C3 == 8 | B4P3C3 == 9)
replace B4P3D = . if (B4P3D == 7 | B4P3D == 8 | B4P3D == 9)
replace B4P3E = . if (B4P3E == 7 | B4P3E == 8 | B4P3E == 9)
replace B4P3F = . if (B4P3F == 7 | B4P3F == 8 | B4P3F == 9)
replace B4P3G = . if (B4P3G == 7 | B4P3G == 8 | B4P3G == 9)
replace B4P3H1R = . if (B4P3H1R == 8 | B4P3H1R == 9)
replace B4P3H2 = . if (B4P3H2 == 97 | B4P3H2 == 98 | B4P3H2 == 99)
replace B4P3H3 = . if (B4P3H3 == 97 | B4P3H3 == 98 | B4P3H3 == 99)
replace B4P3I1 = . if (B4P3I1 == 7 | B4P3I1 == 8 | B4P3I1 == 9)
replace B4P3I2 = . if (B4P3I2 == 97 | B4P3I2 == 98 | B4P3I2 == 99)
replace B4P3I3R = . if (B4P3I3R == 8 | B4P3I3R == 9)
replace B4PMD = . if (B4PMD == 7 | B4PMD == 8 | B4PMD == 9)
replace B4P4B = . if (B4P4B == 9 | B4P4B == 8 | B4P4B == 7)
replace B4P5A1 = . if (B4P5A1 == 99 | B4P5A1 == 98 | B4P5A1 == 97)
replace B4P5A2 = . if (B4P5A2 == 9 | B4P5A2 == 8 | B4P5A2 == 7)
replace B4P5A3 = . if (B4P5A3 == 99 | B4P5A3 == 98 | B4P5A3 == 97)
replace B4P5A4 = . if (B4P5A4 == 9 | B4P5A4 == 8 | B4P5A4 == 7)
replace B4P5B = . if (B4P5B == 9 | B4P5B == 8 | B4P5B == 7)
replace B4P5B1 = . if (B4P5B1 == 9 | B4P5B1 == 8 | B4P5B1 == 7)
replace B4P5B2 = . if (B4P5B2 == 9 | B4P5B2 == 8 | B4P5B2 == 7)
replace B4P5B3 = . if (B4P5B3 == 9 | B4P5B3 == 8 | B4P5B3 == 7)
replace B4P5B4 = . if (B4P5B4 == 9 | B4P5B4 == 8 | B4P5B4 == 7)
replace B4P5B5 = . if (B4P5B5 == 9 | B4P5B5 == 8 | B4P5B5 == 7)
replace B4P5B6 = . if (B4P5B6 == 9 | B4P5B6 == 8 | B4P5B6 == 7)
replace B4P5B7 = . if (B4P5B7 == 9 | B4P5B7 == 8 | B4P5B7 == 7)
replace B4P5B8 = . if (B4P5B8 == 9 | B4P5B8 == 8 | B4P5B8 == 7)
replace B4P5B9 = . if (B4P5B9 == 9 | B4P5B9 == 8 | B4P5B9 == 7)
replace B4P5B10 = . if (B4P5B10 == 9 | B4P5B10 == 8 | B4P5B10 == 7)
replace B4P5B11 = . if (B4P5B11 == 9 | B4P5B11 == 8 | B4P5B11 == 7)
replace B4P5B12 = . if (B4P5B12 == 9 | B4P5B12 == 8 | B4P5B12 == 7)
replace B4P5B13 = . if (B4P5B13 == 9 | B4P5B13 == 8 | B4P5B13 == 7)
replace B4P5B14 = . if (B4P5B14 == 9 | B4P5B14 == 8 | B4P5B14 == 7)
replace B4P5B15 = . if (B4P5B15 == 9 | B4P5B15 == 8 | B4P5B15 == 7)
replace B4P5B16 = . if (B4P5B16 == 9 | B4P5B16 == 8 | B4P5B16 == 7)
replace B4P5B17 = . if (B4P5B17 == 9 | B4P5B17 == 8 | B4P5B17 == 7)
replace B4P6A1 = . if (B4P6A1 == 9 | B4P6A1 == 8 | B4P6A1 == 7)
replace B4P6A2 = . if (B4P6A2 == 9 | B4P6A2 == 8 | B4P6A2 == 7)
replace B4P6B = . if (B4P6B == 9 | B4P6B == 8 | B4P6B == 7)
replace B4P6C = . if (B4P6C == 9 | B4P6C == 8 | B4P6C == 7)
replace B4P6D1 = . if (B4P6D1 == 9 | B4P6D1 == 8 | B4P6D1 == 7)
replace B4P6D2 = . if (B4P6D2 == 9 | B4P6D2 == 8 | B4P6D2 == 7)
replace B4P6D3 = . if (B4P6D3 == 9 | B4P6D3 == 8 | B4P6D3 == 7)
replace B4P6D4 = . if (B4P6D4 == 9 | B4P6D4 == 8 | B4P6D4 == 7)
replace B4P6E1 = . if (B4P6E1 == 9 | B4P6E1 == 8 | B4P6E1 == 7)
replace B4P6E2 = . if (B4P6E2 == 9 | B4P6E2 == 8 | B4P6E2 == 7)
replace B4P6E3 = . if (B4P6E3 == 9 | B4P6E3 == 8 | B4P6E3 == 7)
replace B4P6E4 = . if (B4P6E4 == 9 | B4P6E4 == 8 | B4P6E4 == 7)
replace B4P6E4R = . if (B4P6E4R == 9 | B4P6E4R == 8 | B4P6E4R == 7)
replace B4P6E4L = . if (B4P6E4L == 9 | B4P6E4L == 8 | B4P6E4L == 7)
replace B4P6F1 = . if (B4P6F1 == 97 | B4P6F1 == 98 | B4P6F1 == 99)
replace B4P6F2 = . if (B4P6F2 == 97 | B4P6F2 == 98 | B4P6F2 == 99)
replace B4P6F3 = . if (B4P6F3 == 97 | B4P6F3 == 98 | B4P6F3 == 99)
replace B4P6F4 = . if (B4P6F4 == 97 | B4P6F4 == 98 | B4P6F4 == 99)
replace B4P6F5 = . if (B4P6F5 == 97 | B4P6F5 == 98 | B4P6F5 == 99)
replace B4P7A = . if (B4P7A == 9 | B4P7A == 8 | B4P7A == 7)
replace B4P7A1R = . if (B4P7A1R == 9 | B4P7A1R == 8 | B4P7A1R == 7)
replace B4P7A1L = . if (B4P7A1L == 9 | B4P7A1L == 8 | B4P7A1L == 7)
replace B4P7A2R = . if (B4P7A2R == 9 | B4P7A2R == 8 | B4P7A2R == 7)
replace B4P7A2L = . if (B4P7A2L == 9 | B4P7A2L == 8 | B4P7A2L == 7)
replace B4P8A = . if (B4P8A == 99 | B4P8A == 97 | B4P8A == 98)
replace B4P8B1 = . if (B4P8B1 == 97 | B4P8B1 == 98 | B4P8B1 == 99)
replace B4P8B2 = . if (B4P8B2 == 99 | B4P8B2 == 98 | B4P8B2 == 97)
replace B4P8B3 = . if (B4P8B3 == 9 | B4P8B3 == 8 | B4P8B3 == 7)
replace B4P8B4 = . if (B4P8B4 == 9 | B4P8B4 == 8 | B4P8B4 == 7)
replace B4P8B5 = . if (B4P8B5 == 9 | B4P8B5 == 8 | B4P8B5 == 7)
replace B4P8B6 = . if (B4P8B6 == 9 | B4P8B6 == 8 | B4P8B6 == 7)
replace B4P8B7 = . if (B4P8B7 == 9 | B4P8B7 == 8 | B4P8B7 == 7)
replace B4P8C1AD = . if (B4P8C1AD == 7 | B4P8C1AD == 8 | B4P8C1AD == 9)
replace B4P8C1A = . if (B4P8C1A == 97 | B4P8C1A == 98 | B4P8C1A == 99)
replace B4P8C1HO = . if (B4P8C1HO == 97 | B4P8C1HO == 98 | B4P8C1HO == 99)
replace B4P8C2AD = . if (B4P8C2AD == 7 | B4P8C2AD == 8 | B4P8C2AD == 9)
replace B4P8C2A = . if (B4P8C2A == 97 | B4P8C2A == 98 | B4P8C2A == 99)
replace B4P8C2HO = . if (B4P8C2HO == 97 | B4P8C2HO == 98 | B4P8C2HO == 99)
replace B4P8D = . if (B4P8D == 9 | B4P8D == 8 | B4P8D == 7)
replace B4P9A = . if (B4P9A == 9 | B4P9A == 8 | B4P9A == 7)
replace B4P9A1 = . if (B4P9A1 == 9 | B4P9A1 == 8 | B4P9A1 == 7)
replace B4P9A2 = . if (B4P9A2 == 9 | B4P9A2 == 8 | B4P9A2 == 7)
replace B4P9A3 = . if (B4P9A3 == 9 | B4P9A3 == 8 | B4P9A3 == 7)
replace B4P9A4 = . if (B4P9A4 == 9 | B4P9A4 == 8 | B4P9A4 == 7)
replace B4P9B = . if (B4P9B == 9 | B4P9B == 8 | B4P9B == 7)
replace B4P9C = . if (B4P9C == 9 | B4P9C == 8 | B4P9C == 7)
replace B4P9D = . if (B4P9D == 9 | B4P9D == 8 | B4P9D == 7)
replace B4P9D1 = . if (B4P9D1 == 9 | B4P9D1 == 8 | B4P9D1 == 7)
replace B4P9D2 = . if (B4P9D2 == 9 | B4P9D2 == 8 | B4P9D2 == 7)
replace B4P9D3 = . if (B4P9D3 == 9 | B4P9D3 == 8 | B4P9D3 == 7)
replace B4P9D3N = . if (B4P9D3N == 99 | B4P9D3N == 98 | B4P9D3N == 97)
replace B4P9D3S = . if (B4P9D3S == 997.0 | B4P9D3S == 998.0 | B4P9D3S == 999.0)
replace B4P10A1 = . if (B4P10A1 == 9 | B4P10A1 == 8 | B4P10A1 == 7)
replace B4P10A2 = . if (B4P10A2 == 9 | B4P10A2 == 8 | B4P10A2 == 7)
replace B4P10A3 = . if (B4P10A3 == 9 | B4P10A3 == 8 | B4P10A3 == 7)
replace B4P10A4 = . if (B4P10A4 == 9 | B4P10A4 == 8 | B4P10A4 == 7)
replace B4P10B1 = . if (B4P10B1 == 9 | B4P10B1 == 8 | B4P10B1 == 7)
replace B4P10B2 = . if (B4P10B2 == 9 | B4P10B2 == 8 | B4P10B2 == 7)
replace B4P10B2A = . if (B4P10B2A == 9 | B4P10B2A == 8 | B4P10B2A == 7)
replace B4P10B2B = . if (B4P10B2B == 9 | B4P10B2B == 8 | B4P10B2B == 7)
replace B4P10B3 = . if (B4P10B3 == 9 | B4P10B3 == 8 | B4P10B3 == 7)
replace B4P10C = . if (B4P10C == 9 | B4P10C == 8 | B4P10C == 7)
replace B4P10C1R = . if (B4P10C1R == 9 | B4P10C1R == 8 | B4P10C1R == 7)
replace B4P10C1L = . if (B4P10C1L == 9 | B4P10C1L == 8 | B4P10C1L == 7)
replace B4P10C2R = . if (B4P10C2R == 9 | B4P10C2R == 8 | B4P10C2R == 7)
replace B4P10C2L = . if (B4P10C2L == 9 | B4P10C2L == 8 | B4P10C2L == 7)
replace B4P10C3R = . if (B4P10C3R == 9 | B4P10C3R == 8 | B4P10C3R == 7)
replace B4P10C3L = . if (B4P10C3L == 9 | B4P10C3L == 8 | B4P10C3L == 7)
replace B4P10C4R = . if (B4P10C4R == 9 | B4P10C4R == 8 | B4P10C4R == 7)
replace B4P10C4L = . if (B4P10C4L == 9 | B4P10C4L == 8 | B4P10C4L == 7)
replace B4P10C5R = . if (B4P10C5R == 9 | B4P10C5R == 8 | B4P10C5R == 7)
replace B4P10C5L = . if (B4P10C5L == 9 | B4P10C5L == 8 | B4P10C5L == 7)
replace B4P10C6R = . if (B4P10C6R == 9 | B4P10C6R == 8 | B4P10C6R == 7)
replace B4P10C6L = . if (B4P10C6L == 9 | B4P10C6L == 8 | B4P10C6L == 7)
replace B4P10C7R = . if (B4P10C7R == 9 | B4P10C7R == 8 | B4P10C7R == 7)
replace B4P10C7L = . if (B4P10C7L == 9 | B4P10C7L == 8 | B4P10C7L == 7)
replace B4P11A1 = . if (B4P11A1 == 9 | B4P11A1 == 8 | B4P11A1 == 7)
replace B4P11B = . if (B4P11B == 99 | B4P11B == 98 | B4P11B == 97)
replace B4P11B1 = . if (B4P11B1 == 9 | B4P11B1 == 8 | B4P11B1 == 7)
replace B4P11B1A = . if (B4P11B1A == 9 | B4P11B1A == 8 | B4P11B1A == 7)
replace B4P11B1B = . if (B4P11B1B == 9 | B4P11B1B == 8 | B4P11B1B == 7)
replace B4P11B1C = . if (B4P11B1C == 9 | B4P11B1C == 8 | B4P11B1C == 7)
replace B4P11B1D = . if (B4P11B1D == 9 | B4P11B1D == 8 | B4P11B1D == 7)
replace B4P11B2 = . if (B4P11B2 == 9 | B4P11B2 == 8 | B4P11B2 == 7)
replace B4P11B2A = . if (B4P11B2A == 9 | B4P11B2A == 8 | B4P11B2A == 7)
replace B4P11B2B = . if (B4P11B2B == 9 | B4P11B2B == 8 | B4P11B2B == 7)
replace B4P11B2C = . if (B4P11B2C == 9 | B4P11B2C == 8 | B4P11B2C == 7)
replace B4P11B2D = . if (B4P11B2D == 9 | B4P11B2D == 8 | B4P11B2D == 7)
replace B4P11B3 = . if (B4P11B3 == 9 | B4P11B3 == 8 | B4P11B3 == 7)
replace B4P12A = . if (B4P12A == 9 | B4P12A == 8 | B4P12A == 7)
replace B4P12B = . if (B4P12B == 99 | B4P12B == 98 | B4P12B == 97)
replace B4P12C = . if (B4P12C == 9 | B4P12C == 8 | B4P12C == 7)
replace B4P12C1 = . if (B4P12C1 == 9 | B4P12C1 == 8 | B4P12C1 == 7)
replace B4P12C1A = . if (B4P12C1A == 9 | B4P12C1A == 8 | B4P12C1A == 7)
replace B4P12C1B = . if (B4P12C1B == 9 | B4P12C1B == 8 | B4P12C1B == 7)
replace B4P12C1C = . if (B4P12C1C == 9 | B4P12C1C == 8 | B4P12C1C == 7)
replace B4P12C1D = . if (B4P12C1D == 9 | B4P12C1D == 8 | B4P12C1D == 7)
replace B4P12C1E = . if (B4P12C1E == 9 | B4P12C1E == 8 | B4P12C1E == 7)
replace B4P12C1F = . if (B4P12C1F == 9 | B4P12C1F == 8 | B4P12C1F == 7)
replace B4P12C2 = . if (B4P12C2 == 9 | B4P12C2 == 8 | B4P12C2 == 7)
replace B4P12C2A = . if (B4P12C2A == 9 | B4P12C2A == 8 | B4P12C2A == 7)
replace B4P12C2B = . if (B4P12C2B == 9 | B4P12C2B == 8 | B4P12C2B == 7)
replace B4P12C2C = . if (B4P12C2C == 9 | B4P12C2C == 8 | B4P12C2C == 7)
replace B4P12C2D = . if (B4P12C2D == 9 | B4P12C2D == 8 | B4P12C2D == 7)
replace B4P12C2E = . if (B4P12C2E == 9 | B4P12C2E == 8 | B4P12C2E == 7)
replace B4P12C2F = . if (B4P12C2F == 9 | B4P12C2F == 8 | B4P12C2F == 7)
replace B4P12C3 = . if (B4P12C3 == 9 | B4P12C3 == 8 | B4P12C3 == 7)
replace B4P12C3A = . if (B4P12C3A == 9 | B4P12C3A == 8 | B4P12C3A == 7)
replace B4P12C3B = . if (B4P12C3B == 9 | B4P12C3B == 8 | B4P12C3B == 7)
replace B4P12C3C = . if (B4P12C3C == 9 | B4P12C3C == 8 | B4P12C3C == 7)
replace B4P12C3D = . if (B4P12C3D == 9 | B4P12C3D == 8 | B4P12C3D == 7)
replace B4P12C3E = . if (B4P12C3E == 9 | B4P12C3E == 8 | B4P12C3E == 7)
replace B4P12C3F = . if (B4P12C3F == 9 | B4P12C3F == 8 | B4P12C3F == 7)
replace B4P12C4 = . if (B4P12C4 == 9 | B4P12C4 == 8 | B4P12C4 == 7)
replace B4P12C4A = . if (B4P12C4A == 9 | B4P12C4A == 8 | B4P12C4A == 7)
replace B4P12C4B = . if (B4P12C4B == 9 | B4P12C4B == 8 | B4P12C4B == 7)
replace B4P12C4C = . if (B4P12C4C == 9 | B4P12C4C == 8 | B4P12C4C == 7)
replace B4P12C4D = . if (B4P12C4D == 9 | B4P12C4D == 8 | B4P12C4D == 7)
replace B4P12C4E = . if (B4P12C4E == 9 | B4P12C4E == 8 | B4P12C4E == 7)
replace B4P12C4F = . if (B4P12C4F == 9 | B4P12C4F == 8 | B4P12C4F == 7)
replace B4P12C5 = . if (B4P12C5 == 9 | B4P12C5 == 8 | B4P12C5 == 7)
replace B4P12C5A = . if (B4P12C5A == 9 | B4P12C5A == 8 | B4P12C5A == 7)
replace B4P12C5B = . if (B4P12C5B == 9 | B4P12C5B == 8 | B4P12C5B == 7)
replace B4P12C5C = . if (B4P12C5C == 9 | B4P12C5C == 8 | B4P12C5C == 7)
replace B4P12C5D = . if (B4P12C5D == 9 | B4P12C5D == 8 | B4P12C5D == 7)
replace B4P12C5E = . if (B4P12C5E == 9 | B4P12C5E == 8 | B4P12C5E == 7)
replace B4P12C5F = . if (B4P12C5F == 9 | B4P12C5F == 8 | B4P12C5F == 7)
replace B4P12C6 = . if (B4P12C6 == 9 | B4P12C6 == 8 | B4P12C6 == 7)
replace B4P12C7 = . if (B4P12C7 == 9 | B4P12C7 == 8 | B4P12C7 == 7)
replace B4P12D = . if (B4P12D == 99 | B4P12D == 98 | B4P12D == 97)
replace B4P12E1 = . if (B4P12E1 == 9 | B4P12E1 == 8 | B4P12E1 == 7)
replace B4P12E2 = . if (B4P12E2 == 9 | B4P12E2 == 8 | B4P12E2 == 7)
replace B4P12E3 = . if (B4P12E3 == 9 | B4P12E3 == 8 | B4P12E3 == 7)
replace B4P12E4 = . if (B4P12E4 == 9 | B4P12E4 == 8 | B4P12E4 == 7)
replace B4P12E5 = . if (B4P12E5 == 9 | B4P12E5 == 8 | B4P12E5 == 7)
replace B4P13 = . if (B4P13 == 9 | B4P13 == 8 | B4P13 == 7)
replace B4P13A1 = . if (B4P13A1 == 9 | B4P13A1 == 8 | B4P13A1 == 7)
replace B4P13A2 = . if (B4P13A2 == 9 | B4P13A2 == 8 | B4P13A2 == 7)
replace B4P13A3 = . if (B4P13A3 == 9 | B4P13A3 == 8 | B4P13A3 == 7)
replace B4P13A4 = . if (B4P13A4 == 9 | B4P13A4 == 8 | B4P13A4 == 7)
replace B4P13B1 = . if (B4P13B1 == 9 | B4P13B1 == 8 | B4P13B1 == 7)
replace B4P13B1A = . if (B4P13B1A == 9 | B4P13B1A == 8 | B4P13B1A == 7)
replace B4P13B1B = . if (B4P13B1B == 9 | B4P13B1B == 8 | B4P13B1B == 7)
replace B4P13B1C = . if (B4P13B1C == 9 | B4P13B1C == 8 | B4P13B1C == 7)
replace B4P13B1D = . if (B4P13B1D == 9 | B4P13B1D == 8 | B4P13B1D == 7)
replace B4P13B2 = . if (B4P13B2 == 9 | B4P13B2 == 8 | B4P13B2 == 7)
replace B4P13B2A = . if (B4P13B2A == 9 | B4P13B2A == 8 | B4P13B2A == 7)
replace B4P13B2B = . if (B4P13B2B == 9 | B4P13B2B == 8 | B4P13B2B == 7)
replace B4P13B2C = . if (B4P13B2C == 9 | B4P13B2C == 8 | B4P13B2C == 7)
replace B4P13B2D = . if (B4P13B2D == 9 | B4P13B2D == 8 | B4P13B2D == 7)
replace B4P13B3 = . if (B4P13B3 == 9 | B4P13B3 == 8 | B4P13B3 == 7)
replace B4P13B3A = . if (B4P13B3A == 9 | B4P13B3A == 8 | B4P13B3A == 7)
replace B4P13B3B = . if (B4P13B3B == 9 | B4P13B3B == 8 | B4P13B3B == 7)
replace B4P13B3C = . if (B4P13B3C == 9 | B4P13B3C == 8 | B4P13B3C == 7)
replace B4P13B3D = . if (B4P13B3D == 9 | B4P13B3D == 8 | B4P13B3D == 7)
replace B4P13B4 = . if (B4P13B4 == 9 | B4P13B4 == 8 | B4P13B4 == 7)
replace B4P13B4A = . if (B4P13B4A == 9 | B4P13B4A == 8 | B4P13B4A == 7)
replace B4P13B4B = . if (B4P13B4B == 9 | B4P13B4B == 8 | B4P13B4B == 7)
replace B4P13B4C = . if (B4P13B4C == 9 | B4P13B4C == 8 | B4P13B4C == 7)
replace B4P13B4D = . if (B4P13B4D == 9 | B4P13B4D == 8 | B4P13B4D == 7)
replace B4P13B5 = . if (B4P13B5 == 9 | B4P13B5 == 8 | B4P13B5 == 7)
replace B4P13B5A = . if (B4P13B5A == 9 | B4P13B5A == 8 | B4P13B5A == 7)
replace B4P13B5B = . if (B4P13B5B == 9 | B4P13B5B == 8 | B4P13B5B == 7)
replace B4P13B5C = . if (B4P13B5C == 9 | B4P13B5C == 8 | B4P13B5C == 7)
replace B4P13B5D = . if (B4P13B5D == 9 | B4P13B5D == 8 | B4P13B5D == 7)
replace B4P13C1R = . if (B4P13C1R == 9 | B4P13C1R == 8 | B4P13C1R == 7)
replace B4P13C1L = . if (B4P13C1L == 9 | B4P13C1L == 8 | B4P13C1L == 7)
replace B4P13C2R = . if (B4P13C2R == 9 | B4P13C2R == 8 | B4P13C2R == 7)
replace B4P13C2L = . if (B4P13C2L == 9 | B4P13C2L == 8 | B4P13C2L == 7)
replace B4P13C3R = . if (B4P13C3R == 9 | B4P13C3R == 8 | B4P13C3R == 7)
replace B4P13C3L = . if (B4P13C3L == 9 | B4P13C3L == 8 | B4P13C3L == 7)
replace B4P13C4A = . if (B4P13C4A == 9 | B4P13C4A == 8 | B4P13C4A == 7)
replace B4P13D1 = . if (B4P13D1 == 9 | B4P13D1 == 8 | B4P13D1 == 7)
replace B4P13D1A = . if (B4P13D1A == 9 | B4P13D1A == 8 | B4P13D1A == 7)
replace B4P13D1B = . if (B4P13D1B == 9 | B4P13D1B == 8 | B4P13D1B == 7)
replace B4P13D1C = . if (B4P13D1C == 9 | B4P13D1C == 8 | B4P13D1C == 7)
replace B4P13D1D = . if (B4P13D1D == 9 | B4P13D1D == 8 | B4P13D1D == 7)
replace B4P13D2 = . if (B4P13D2 == 9 | B4P13D2 == 8 | B4P13D2 == 7)
replace B4P13D2A = . if (B4P13D2A == 9 | B4P13D2A == 8 | B4P13D2A == 7)
replace B4P13D2B = . if (B4P13D2B == 9 | B4P13D2B == 8 | B4P13D2B == 7)
replace B4P13D2C = . if (B4P13D2C == 9 | B4P13D2C == 8 | B4P13D2C == 7)
replace B4P13D2D = . if (B4P13D2D == 9 | B4P13D2D == 8 | B4P13D2D == 7)
replace B4P13D3 = . if (B4P13D3 == 9 | B4P13D3 == 8 | B4P13D3 == 7)
replace B4P13D3A = . if (B4P13D3A == 9 | B4P13D3A == 8 | B4P13D3A == 7)
replace B4P13D3B = . if (B4P13D3B == 9 | B4P13D3B == 8 | B4P13D3B == 7)
replace B4P13D3C = . if (B4P13D3C == 9 | B4P13D3C == 8 | B4P13D3C == 7)
replace B4P13D3D = . if (B4P13D3D == 9 | B4P13D3D == 8 | B4P13D3D == 7)
replace B4P13D4 = . if (B4P13D4 == 9 | B4P13D4 == 8 | B4P13D4 == 7)
replace B4P13D4A = . if (B4P13D4A == 9 | B4P13D4A == 8 | B4P13D4A == 7)
replace B4P13D4B = . if (B4P13D4B == 9 | B4P13D4B == 8 | B4P13D4B == 7)
replace B4P13D4C = . if (B4P13D4C == 9 | B4P13D4C == 8 | B4P13D4C == 7)
replace B4P13D4D = . if (B4P13D4D == 9 | B4P13D4D == 8 | B4P13D4D == 7)
replace B4P13D5 = . if (B4P13D5 == 9 | B4P13D5 == 8 | B4P13D5 == 7)
replace B4P13D5A = . if (B4P13D5A == 9 | B4P13D5A == 8 | B4P13D5A == 7)
replace B4P13D5B = . if (B4P13D5B == 9 | B4P13D5B == 8 | B4P13D5B == 7)
replace B4P13D5C = . if (B4P13D5C == 9 | B4P13D5C == 8 | B4P13D5C == 7)
replace B4P13D5D = . if (B4P13D5D == 9 | B4P13D5D == 8 | B4P13D5D == 7)
replace B4P13E1 = . if (B4P13E1 == 9 | B4P13E1 == 8 | B4P13E1 == 7)
replace B4P13E1A = . if (B4P13E1A == 9 | B4P13E1A == 8 | B4P13E1A == 7)
replace B4P13E1B = . if (B4P13E1B == 9 | B4P13E1B == 8 | B4P13E1B == 7)
replace B4P13E1C = . if (B4P13E1C == 9 | B4P13E1C == 8 | B4P13E1C == 7)
replace B4P13E1D = . if (B4P13E1D == 9 | B4P13E1D == 8 | B4P13E1D == 7)
replace B4P13E2 = . if (B4P13E2 == 9 | B4P13E2 == 8 | B4P13E2 == 7)
replace B4P13E3 = . if (B4P13E3 == 9 | B4P13E3 == 8 | B4P13E3 == 7)
replace B4BHA1C = . if (B4BHA1C == 997.00 | B4BHA1C == 998.00 | B4BHA1C == 999.00)
replace B4BCHOL = . if (B4BCHOL == 997 | B4BCHOL == 998 | B4BCHOL == 999)
replace B4BTRIGL = . if (B4BTRIGL == 9997 | B4BTRIGL == 9998 | B4BTRIGL == 9999)
replace B4BHDL = . if (B4BHDL == 997 | B4BHDL == 998 | B4BHDL == 999)
replace B4BLDL = . if (B4BLDL == 997 | B4BLDL == 998 | B4BLDL == 999)
replace B4BRTHDL = . if (B4BRTHDL == 9997.00 | B4BRTHDL == 9998.00 | B4BRTHDL == 9999.00)
replace B4BDHEAS = . if (B4BDHEAS == 9997.0 | B4BDHEAS == 9998.0 | B4BDHEAS == 9999.0)
replace B4BDHEA = . if (B4BDHEA == 9997.00 | B4BDHEA == 9998.00 | B4BDHEA == 9999.00)
replace B4BSCREA = . if (B4BSCREA == 997.0 | B4BSCREA == 998.0 | B4BSCREA == 999.0)
replace B4BIL6 = . if (B4BIL6 == 99997.00 | B4BIL6 == 99998.00 | B4BIL6 == 99999.00)
replace B4BSIL6R = . if (B4BSIL6R == 99997 | B4BSIL6R == 99998 | B4BSIL6R == 99999)
replace B4BFGN = . if (B4BFGN == 997 | B4BFGN == 998 | B4BFGN == 999)
replace B4BCRP = . if (B4BCRP == 99997.00 | B4BCRP == 99998.00 | B4BCRP == 99999.00)
replace B4BSESEL = . if (B4BSESEL == 99997.00 | B4BSESEL == 99998.00 | B4BSESEL == 99999.00)
replace B4BSICAM = . if (B4BSICAM == 999997.00 | B4BSICAM == 999998.00 | B4BSICAM == 999999.00)
replace B4BATBC = . if (B4BATBC == 9997.000 | B4BATBC == 9998.000 | B4BATBC == 9999.000)
replace B4B13CBC = . if (B4B13CBC == 9997.000 | B4B13CBC == 9998.000 | B4B13CBC == 9999.000)
replace B4BAC = . if (B4BAC == 99997.000 | B4BAC == 99998.000 | B4BAC == 99999.000)
replace B4BBCX = . if (B4BBCX == 9997.000 | B4BBCX == 9998.000 | B4BBCX == 9999.000)
replace B4BLUT = . if (B4BLUT == 99997.000 | B4BLUT == 99998.000 | B4BLUT == 99999.000)
replace B4BZX = . if (B4BZX == 9997.000 | B4BZX == 9998.000 | B4BZX == 9999.000)
replace B4BLYC = . if (B4BLYC == 9997.000 | B4BLYC == 9998.000 | B4BLYC == 9999.000)
replace B4BRET = . if (B4BRET == 99997.000 | B4BRET == 99998.000 | B4BRET == 99999.000)
replace B4BATOC = . if (B4BATOC == 999997.000 | B4BATOC == 999998.000 | B4BATOC == 999999.000)
replace B4BGTOC = . if (B4BGTOC == 99997.000 | B4BGTOC == 99998.000 | B4BGTOC == 99999.000)
replace B4BP1NP = . if (B4BP1NP == 999997.00 | B4BP1NP == 999998.00 | B4BP1NP == 999999.00)
replace B4BSBAP = . if (B4BSBAP == 999997.00 | B4BSBAP == 999998.00 | B4BSBAP == 999999.00)
replace B4BSNTX = . if (B4BSNTX == 999997.00 | B4BSNTX == 999998.00 | B4BSNTX == 999999.00)
replace B4BGLUC = . if (B4BGLUC == 997 | B4BGLUC == 998 | B4BGLUC == 999)
replace B4BINSLN = . if (B4BINSLN == 997 | B4BINSLN == 998 | B4BINSLN == 999)
replace B4BIGF1 = . if (B4BIGF1 == 997 | B4BIGF1 == 998 | B4BIGF1 == 999)
replace B4BHOMAIR = . if (B4BHOMAIR == 997.00 | B4BHOMAIR == 998.00 | B4BHOMAIR == 999.00)
replace B4BUPROB = . if (B4BUPROB == 9)
replace B4BUSTRT = "" if (B4BUSTRT == "349200.0" | B4BUSTRT == "352800.0" | B4BUSTRT == "356400.0")
replace B4BUEND = "" if (B4BUEND == "349200.0" | B4BUEND == "352800.0" | B4BUEND == "356400.0")
replace B4BUVDYN = . if (B4BUVDYN == 7 | B4BUVDYN == 8 | B4BUVDYN == 9)
replace B4BUVDN = . if (B4BUVDN == 97.0 | B4BUVDN == 98.0 | B4BUVDN == 99.0)
replace B4BURVOL = . if (B4BURVOL == 9997 | B4BURVOL == 9998 | B4BURVOL == 9999)
replace B4BCORTL = . if (B4BCORTL == 997.00 | B4BCORTL == 998.00 | B4BCORTL == 999.00)
replace B4BCORTO = . if (B4BCORTO == 997.00 | B4BCORTO == 998.00 | B4BCORTO == 999.00)
replace B4BUCREA = . if (B4BUCREA == 997 | B4BUCREA == 998 | B4BUCREA == 999)
replace B4BCLCRE = . if (B4BCLCRE == 99997.0 | B4BCLCRE == 99998.0 | B4BCLCRE == 99999.0)
replace B4BCOCRE = . if (B4BCOCRE == 997.0 | B4BCOCRE == 998.0 | B4BCOCRE == 999.0)
replace B4BNOREP = . if (B4BNOREP == 9997.00 | B4BNOREP == 9998.00 | B4BNOREP == 9999.00)
replace B4BEPIN = . if (B4BEPIN == 9997.00 | B4BEPIN == 9998.00 | B4BEPIN == 9999.00)
replace B4BDOPA = . if (B4BDOPA == 99997.00 | B4BDOPA == 99998.00 | B4BDOPA == 99999.00)
replace B4BNE12 = . if (B4BNE12 == 9999997.0 | B4BNE12 == 9999998.0 | B4BNE12 == 9999999.0)
replace B4BEPI12 = . if (B4BEPI12 == 9999997.0 | B4BEPI12 == 9999998.0 | B4BEPI12 == 9999999.0)
replace B4BDOP12 = . if (B4BDOP12 == 99999997.0 | B4BDOP12 == 99999998.0 | B4BDOP12 == 99999999.0)
replace B4BNOCRE = . if (B4BNOCRE == 9999997.0 | B4BNOCRE == 9999998.0 | B4BNOCRE == 9999999.0)
replace B4BEPCRE = . if (B4BEPCRE == 9999997.0 | B4BEPCRE == 9999998.0 | B4BEPCRE == 9999999.0)
replace B4BDOCRE = . if (B4BDOCRE == 99999997.0 | B4BDOCRE == 99999998.0 | B4BDOCRE == 99999999.0)
replace B4BNECL = . if (B4BNECL == 9997.00 | B4BNECL == 9998.00 | B4BNECL == 9999.00)
replace B4BSUCRE = . if (B4BSUCRE == 99997.000 | B4BSUCRE == 99998.000 | B4BSUCRE == 99999.000)
replace B4BGFR = . if (B4BGFR == 9999997.0 | B4BGFR == 9999998.0 | B4BGFR == 9999999.0)
replace B4BSCL11 = . if (B4BSCL11 == 99997.00 | B4BSCL11 == 99998.00 | B4BSCL11 == 99999.00)
replace B4BSCL21 = . if (B4BSCL21 == 99997.00 | B4BSCL21 == 99998.00 | B4BSCL21 == 99999.00)
replace B4BSCL31 = . if (B4BSCL31 == 99997.00 | B4BSCL31 == 99998.00 | B4BSCL31 == 99999.00)
replace B4BSCL41 = . if (B4BSCL41 == 99997.00 | B4BSCL41 == 99998.00 | B4BSCL41 == 99999.00)
replace B4BSCL12 = . if (B4BSCL12 == 99998.00 | B4BSCL12 == 99999.00)
replace B4BSCL22 = . if (B4BSCL22 == 99998.00 | B4BSCL22 == 99999.00)
replace B4BSCL32 = . if (B4BSCL32 == 99998.00 | B4BSCL32 == 99999.00)
replace B4BSCL42 = . if (B4BSCL42 == 99998.00 | B4BSCL42 == 99999.00)
replace B4BSCL1A = . if (B4BSCL1A == 99997.00 | B4BSCL1A == 99998.00 | B4BSCL1A == 99999.00)
replace B4BSCL2A = . if (B4BSCL2A == 99997.00 | B4BSCL2A == 99998.00 | B4BSCL2A == 99999.00)
replace B4BSCL3A = . if (B4BSCL3A == 99997.00 | B4BSCL3A == 99998.00 | B4BSCL3A == 99999.00)
replace B4BSCL4A = . if (B4BSCL4A == 99997.00 | B4BSCL4A == 99998.00 | B4BSCL4A == 99999.00)
replace B4BSCL14 = . if (B4BSCL14 == 99997.00 | B4BSCL14 == 99998.00 | B4BSCL14 == 99999.00)
replace B4AWAVL = . if (B4AWAVL == 9)
replace B4AWIMPU = . if (B4AWIMPU == 9)
replace B4AWMARK = . if (B4AWMARK == 9)
replace B4AWDAYS = . if (B4AWDAYS == 9)
replace B4AWPART = . if (B4AWPART == 9)
replace B4AWIDIO = . if (B4AWIDIO == 9)
replace B4AWTMZN = . if (B4AWTMZN == 9)
replace B4AWLAG = . if (B4AWLAG == 99)
replace B4AWBGNM = . if (B4AWBGNM == 99)
replace B4AWENDM = . if (B4AWENDM == 99)
replace B4AD11 = . if (B4AD11 == 7 | B4AD11 == 8 | B4AD11 == 9)
replace B4AD12 = . if (B4AD12 == 9997.0 | B4AD12 == 9998.0 | B4AD12 == 9999.0)
replace B4AD13 = . if (B4AD13 == 7 | B4AD13 == 8 | B4AD13 == 9)
replace B4AD13S = . if (B4AD13S == 9997.0 | B4AD13S == 9998.0 | B4AD13S == 9999.0)
replace B4AD14 = . if (B4AD14 == 9997.0 | B4AD14 == 9998.0 | B4AD14 == 9999.0)
replace B4AD15 = . if (B4AD15 == 9997.0 | B4AD15 == 9998.0 | B4AD15 == 9999.0)
replace B4AD16 = . if (B4AD16 == 7 | B4AD16 == 8 | B4AD16 == 9)
replace B4AD16M = . if (B4AD16M == 97 | B4AD16M == 98 | B4AD16M == 99)
replace B4AD17 = . if (B4AD17 == 7 | B4AD17 == 8 | B4AD17 == 9)
replace B4AD17M = . if (B4AD17M == 7 | B4AD17M == 8 | B4AD17M == 9)
replace B4AD18 = "" if (B4AD18 == "349200.0" | B4AD18 == "352800.0" | B4AD18 == "356400.0")
replace B4AD18A = . if (B4AD18A == 7 | B4AD18A == 8 | B4AD18A == 9)
replace B4AD19 = . if (B4AD19 == 9997.0 | B4AD19 == 9998.0 | B4AD19 == 9999.0)
replace B4AD110 = . if (B4AD110 == 7 | B4AD110 == 8 | B4AD110 == 9)
replace B4AD111 = . if (B4AD111 == 97 | B4AD111 == 98 | B4AD111 == 99)
replace B4AD112 = . if (B4AD112 == 7 | B4AD112 == 8 | B4AD112 == 9)
replace B4AD113 = . if (B4AD113 == 7 | B4AD113 == 8 | B4AD113 == 9)
replace B4AD114 = . if (B4AD114 == 97 | B4AD114 == 98 | B4AD114 == 99)
replace B4AD115 = "" if (B4AD115 == "349200.0" | B4AD115 == "352800.0" | B4AD115 == "356400.0")
replace B4AD115A = . if (B4AD115A == 7 | B4AD115A == 8 | B4AD115A == 9)
replace B4AD116 = "" if (B4AD116 == "349200.0" | B4AD116 == "352800.0" | B4AD116 == "356400.0")
replace B4AD116A = . if (B4AD116A == 7 | B4AD116A == 8 | B4AD116A == 9)
replace B4AD117 = . if (B4AD117 == 7 | B4AD117 == 8 | B4AD117 == 9)
replace B4AD118 = . if (B4AD118 == 7 | B4AD118 == 8 | B4AD118 == 9)
replace B4AD119 = . if (B4AD119 == 7 | B4AD119 == 8 | B4AD119 == 9)
replace B4AD120 = . if (B4AD120 == 7 | B4AD120 == 8 | B4AD120 == 9)
replace B4AD21 = . if (B4AD21 == 7 | B4AD21 == 8 | B4AD21 == 9)
replace B4AD22 = . if (B4AD22 == 9997.0 | B4AD22 == 9998.0 | B4AD22 == 9999.0)
replace B4AD23 = . if (B4AD23 == 7 | B4AD23 == 8 | B4AD23 == 9)
replace B4AD23S = . if (B4AD23S == 9997.0 | B4AD23S == 9998.0 | B4AD23S == 9999.0)
replace B4AD24 = . if (B4AD24 == 9997.0 | B4AD24 == 9998.0 | B4AD24 == 9999.0)
replace B4AD25 = . if (B4AD25 == 9997.0 | B4AD25 == 9998.0 | B4AD25 == 9999.0)
replace B4AD26 = . if (B4AD26 == 7 | B4AD26 == 8 | B4AD26 == 9)
replace B4AD26M = . if (B4AD26M == 97 | B4AD26M == 98 | B4AD26M == 99)
replace B4AD27 = . if (B4AD27 == 7 | B4AD27 == 8 | B4AD27 == 9)
replace B4AD27M = . if (B4AD27M == 7 | B4AD27M == 8 | B4AD27M == 9)
replace B4AD28 = "" if (B4AD28 == "349200.0" | B4AD28 == "352800.0" | B4AD28 == "356400.0")
replace B4AD28A = . if (B4AD28A == 7 | B4AD28A == 8 | B4AD28A == 9)
replace B4AD29 = . if (B4AD29 == 9997.0 | B4AD29 == 9998.0 | B4AD29 == 9999.0)
replace B4AD210 = . if (B4AD210 == 7 | B4AD210 == 8 | B4AD210 == 9)
replace B4AD211 = . if (B4AD211 == 97 | B4AD211 == 98 | B4AD211 == 99)
replace B4AD212 = . if (B4AD212 == 7 | B4AD212 == 8 | B4AD212 == 9)
replace B4AD213 = . if (B4AD213 == 7 | B4AD213 == 8 | B4AD213 == 9)
replace B4AD214 = . if (B4AD214 == 97 | B4AD214 == 98 | B4AD214 == 99)
replace B4AD215 = "" if (B4AD215 == "349200.0" | B4AD215 == "352800.0" | B4AD215 == "356400.0")
replace B4AD215A = . if (B4AD215A == 7 | B4AD215A == 8 | B4AD215A == 9)
replace B4AD216 = "" if (B4AD216 == "349200.0" | B4AD216 == "352800.0" | B4AD216 == "356400.0")
replace B4AD216A = . if (B4AD216A == 7 | B4AD216A == 8 | B4AD216A == 9)
replace B4AD217 = . if (B4AD217 == 7 | B4AD217 == 8 | B4AD217 == 9)
replace B4AD218 = . if (B4AD218 == 7 | B4AD218 == 8 | B4AD218 == 9)
replace B4AD219 = . if (B4AD219 == 7 | B4AD219 == 8 | B4AD219 == 9)
replace B4AD220 = . if (B4AD220 == 7 | B4AD220 == 8 | B4AD220 == 9)
replace B4AD31 = . if (B4AD31 == 7 | B4AD31 == 8 | B4AD31 == 9)
replace B4AD32 = . if (B4AD32 == 9997.0 | B4AD32 == 9998.0 | B4AD32 == 9999.0)
replace B4AD33 = . if (B4AD33 == 7 | B4AD33 == 8 | B4AD33 == 9)
replace B4AD33S = . if (B4AD33S == 9997.0 | B4AD33S == 9998.0 | B4AD33S == 9999.0)
replace B4AD34 = . if (B4AD34 == 9997.0 | B4AD34 == 9998.0 | B4AD34 == 9999.0)
replace B4AD35 = . if (B4AD35 == 9997.0 | B4AD35 == 9998.0 | B4AD35 == 9999.0)
replace B4AD36 = . if (B4AD36 == 7 | B4AD36 == 8 | B4AD36 == 9)
replace B4AD36M = . if (B4AD36M == 97 | B4AD36M == 98 | B4AD36M == 99)
replace B4AD37 = . if (B4AD37 == 7 | B4AD37 == 8 | B4AD37 == 9)
replace B4AD37M = . if (B4AD37M == 7 | B4AD37M == 8 | B4AD37M == 9)
replace B4AD38 = "" if (B4AD38 == "349200.0" | B4AD38 == "352800.0" | B4AD38 == "356400.0")
replace B4AD38A = . if (B4AD38A == 7 | B4AD38A == 8 | B4AD38A == 9)
replace B4AD39 = . if (B4AD39 == 9997.0 | B4AD39 == 9998.0 | B4AD39 == 9999.0)
replace B4AD310 = . if (B4AD310 == 7 | B4AD310 == 8 | B4AD310 == 9)
replace B4AD311 = . if (B4AD311 == 97 | B4AD311 == 98 | B4AD311 == 99)
replace B4AD312 = . if (B4AD312 == 7 | B4AD312 == 8 | B4AD312 == 9)
replace B4AD313 = . if (B4AD313 == 7 | B4AD313 == 8 | B4AD313 == 9)
replace B4AD314 = . if (B4AD314 == 97 | B4AD314 == 98 | B4AD314 == 99)
replace B4AD315 = "" if (B4AD315 == "349200.0" | B4AD315 == "352800.0" | B4AD315 == "356400.0")
replace B4AD315A = . if (B4AD315A == 7 | B4AD315A == 8 | B4AD315A == 9)
replace B4AD316 = "" if (B4AD316 == "349200.0" | B4AD316 == "352800.0" | B4AD316 == "356400.0")
replace B4AD316A = . if (B4AD316A == 7 | B4AD316A == 8 | B4AD316A == 9)
replace B4AD317 = . if (B4AD317 == 7 | B4AD317 == 8 | B4AD317 == 9)
replace B4AD318 = . if (B4AD318 == 7 | B4AD318 == 8 | B4AD318 == 9)
replace B4AD319 = . if (B4AD319 == 7 | B4AD319 == 8 | B4AD319 == 9)
replace B4AD320 = . if (B4AD320 == 7 | B4AD320 == 8 | B4AD320 == 9)
replace B4AD41 = . if (B4AD41 == 7 | B4AD41 == 8 | B4AD41 == 9)
replace B4AD42 = . if (B4AD42 == 9997.0 | B4AD42 == 9998.0 | B4AD42 == 9999.0)
replace B4AD43 = . if (B4AD43 == 7 | B4AD43 == 8 | B4AD43 == 9)
replace B4AD43S = . if (B4AD43S == 9997.0 | B4AD43S == 9998.0 | B4AD43S == 9999.0)
replace B4AD44 = . if (B4AD44 == 9997.0 | B4AD44 == 9998.0 | B4AD44 == 9999.0)
replace B4AD45 = . if (B4AD45 == 9997.0 | B4AD45 == 9998.0 | B4AD45 == 9999.0)
replace B4AD46 = . if (B4AD46 == 7 | B4AD46 == 8 | B4AD46 == 9)
replace B4AD46M = . if (B4AD46M == 97 | B4AD46M == 98 | B4AD46M == 99)
replace B4AD47 = . if (B4AD47 == 7 | B4AD47 == 8 | B4AD47 == 9)
replace B4AD47M = . if (B4AD47M == 7 | B4AD47M == 8 | B4AD47M == 9)
replace B4AD48 = "" if (B4AD48 == "349200.0" | B4AD48 == "352800.0" | B4AD48 == "356400.0")
replace B4AD48A = . if (B4AD48A == 7 | B4AD48A == 8 | B4AD48A == 9)
replace B4AD49 = . if (B4AD49 == 9997.0 | B4AD49 == 9998.0 | B4AD49 == 9999.0)
replace B4AD410 = . if (B4AD410 == 7 | B4AD410 == 8 | B4AD410 == 9)
replace B4AD411 = . if (B4AD411 == 97 | B4AD411 == 98 | B4AD411 == 99)
replace B4AD412 = . if (B4AD412 == 7 | B4AD412 == 8 | B4AD412 == 9)
replace B4AD413 = . if (B4AD413 == 7 | B4AD413 == 8 | B4AD413 == 9)
replace B4AD414 = . if (B4AD414 == 97 | B4AD414 == 98 | B4AD414 == 99)
replace B4AD415 = "" if (B4AD415 == "349200.0" | B4AD415 == "352800.0" | B4AD415 == "356400.0")
replace B4AD415A = . if (B4AD415A == 7 | B4AD415A == 8 | B4AD415A == 9)
replace B4AD416 = "" if (B4AD416 == "349200.0" | B4AD416 == "352800.0" | B4AD416 == "356400.0")
replace B4AD416A = . if (B4AD416A == 7 | B4AD416A == 8 | B4AD416A == 9)
replace B4AD417 = . if (B4AD417 == 7 | B4AD417 == 8 | B4AD417 == 9)
replace B4AD418 = . if (B4AD418 == 7 | B4AD418 == 8 | B4AD418 == 9)
replace B4AD419 = . if (B4AD419 == 7 | B4AD419 == 8 | B4AD419 == 9)
replace B4AD420 = . if (B4AD420 == 7 | B4AD420 == 8 | B4AD420 == 9)
replace B4AD51 = . if (B4AD51 == 7 | B4AD51 == 8 | B4AD51 == 9)
replace B4AD52 = . if (B4AD52 == 9997.0 | B4AD52 == 9998.0 | B4AD52 == 9999.0)
replace B4AD53 = . if (B4AD53 == 7 | B4AD53 == 8 | B4AD53 == 9)
replace B4AD53S = . if (B4AD53S == 9997.0 | B4AD53S == 9998.0 | B4AD53S == 9999.0)
replace B4AD54 = . if (B4AD54 == 9997.0 | B4AD54 == 9998.0 | B4AD54 == 9999.0)
replace B4AD55 = . if (B4AD55 == 9997.0 | B4AD55 == 9998.0 | B4AD55 == 9999.0)
replace B4AD56 = . if (B4AD56 == 7 | B4AD56 == 8 | B4AD56 == 9)
replace B4AD56M = . if (B4AD56M == 97 | B4AD56M == 98 | B4AD56M == 99)
replace B4AD57 = . if (B4AD57 == 7 | B4AD57 == 8 | B4AD57 == 9)
replace B4AD57M = . if (B4AD57M == 7 | B4AD57M == 8 | B4AD57M == 9)
replace B4AD58 = "" if (B4AD58 == "349200.0" | B4AD58 == "352800.0" | B4AD58 == "356400.0")
replace B4AD58A = . if (B4AD58A == 7 | B4AD58A == 8 | B4AD58A == 9)
replace B4AD59 = . if (B4AD59 == 9997.0 | B4AD59 == 9998.0 | B4AD59 == 9999.0)
replace B4AD510 = . if (B4AD510 == 7 | B4AD510 == 8 | B4AD510 == 9)
replace B4AD511 = . if (B4AD511 == 97 | B4AD511 == 98 | B4AD511 == 99)
replace B4AD512 = . if (B4AD512 == 7 | B4AD512 == 8 | B4AD512 == 9)
replace B4AD513 = . if (B4AD513 == 7 | B4AD513 == 8 | B4AD513 == 9)
replace B4AD514 = . if (B4AD514 == 97 | B4AD514 == 98 | B4AD514 == 99)
replace B4AD515 = "" if (B4AD515 == "349200.0" | B4AD515 == "352800.0" | B4AD515 == "356400.0")
replace B4AD515A = . if (B4AD515A == 7 | B4AD515A == 8 | B4AD515A == 9)
replace B4AD516 = "" if (B4AD516 == "349200.0" | B4AD516 == "352800.0" | B4AD516 == "356400.0")
replace B4AD516A = . if (B4AD516A == 7 | B4AD516A == 8 | B4AD516A == 9)
replace B4AD517 = . if (B4AD517 == 7 | B4AD517 == 8 | B4AD517 == 9)
replace B4AD518 = . if (B4AD518 == 7 | B4AD518 == 8 | B4AD518 == 9)
replace B4AD519 = . if (B4AD519 == 7 | B4AD519 == 8 | B4AD519 == 9)
replace B4AD520 = . if (B4AD520 == 7 | B4AD520 == 8 | B4AD520 == 9)
replace B4AD61 = . if (B4AD61 == 7 | B4AD61 == 8 | B4AD61 == 9)
replace B4AD62 = . if (B4AD62 == 9997.0 | B4AD62 == 9998.0 | B4AD62 == 9999.0)
replace B4AD63 = . if (B4AD63 == 7 | B4AD63 == 8 | B4AD63 == 9)
replace B4AD63S = . if (B4AD63S == 9997.0 | B4AD63S == 9998.0 | B4AD63S == 9999.0)
replace B4AD64 = . if (B4AD64 == 9997.0 | B4AD64 == 9998.0 | B4AD64 == 9999.0)
replace B4AD65 = . if (B4AD65 == 9997.0 | B4AD65 == 9998.0 | B4AD65 == 9999.0)
replace B4AD66 = . if (B4AD66 == 7 | B4AD66 == 8 | B4AD66 == 9)
replace B4AD66M = . if (B4AD66M == 97 | B4AD66M == 98 | B4AD66M == 99)
replace B4AD67 = . if (B4AD67 == 7 | B4AD67 == 8 | B4AD67 == 9)
replace B4AD67M = . if (B4AD67M == 7 | B4AD67M == 8 | B4AD67M == 9)
replace B4AD68 = "" if (B4AD68 == "349200.0" | B4AD68 == "352800.0" | B4AD68 == "356400.0")
replace B4AD68A = . if (B4AD68A == 7 | B4AD68A == 8 | B4AD68A == 9)
replace B4AD69 = . if (B4AD69 == 9997.0 | B4AD69 == 9998.0 | B4AD69 == 9999.0)
replace B4AD610 = . if (B4AD610 == 7 | B4AD610 == 8 | B4AD610 == 9)
replace B4AD611 = . if (B4AD611 == 97 | B4AD611 == 98 | B4AD611 == 99)
replace B4AD612 = . if (B4AD612 == 7 | B4AD612 == 8 | B4AD612 == 9)
replace B4AD613 = . if (B4AD613 == 7 | B4AD613 == 8 | B4AD613 == 9)
replace B4AD614 = . if (B4AD614 == 97 | B4AD614 == 98 | B4AD614 == 99)
replace B4AD615 = "" if (B4AD615 == "349200.0" | B4AD615 == "352800.0" | B4AD615 == "356400.0")
replace B4AD615A = . if (B4AD615A == 7 | B4AD615A == 8 | B4AD615A == 9)
replace B4AD616 = "" if (B4AD616 == "349200.0" | B4AD616 == "352800.0" | B4AD616 == "356400.0")
replace B4AD616A = . if (B4AD616A == 7 | B4AD616A == 8 | B4AD616A == 9)
replace B4AD617 = . if (B4AD617 == 7 | B4AD617 == 8 | B4AD617 == 9)
replace B4AD618 = . if (B4AD618 == 7 | B4AD618 == 8 | B4AD618 == 9)
replace B4AD619 = . if (B4AD619 == 7 | B4AD619 == 8 | B4AD619 == 9)
replace B4AD620 = . if (B4AD620 == 7 | B4AD620 == 8 | B4AD620 == 9)
replace B4AD71 = . if (B4AD71 == 7 | B4AD71 == 8 | B4AD71 == 9)
replace B4AD72 = . if (B4AD72 == 9997.0 | B4AD72 == 9998.0 | B4AD72 == 9999.0)
replace B4AD73 = . if (B4AD73 == 7 | B4AD73 == 8 | B4AD73 == 9)
replace B4AD73S = . if (B4AD73S == 9997.0 | B4AD73S == 9998.0 | B4AD73S == 9999.0)
replace B4AD74 = . if (B4AD74 == 9997.0 | B4AD74 == 9998.0 | B4AD74 == 9999.0)
replace B4AD75 = . if (B4AD75 == 9997.0 | B4AD75 == 9998.0 | B4AD75 == 9999.0)
replace B4AD76 = . if (B4AD76 == 7 | B4AD76 == 8 | B4AD76 == 9)
replace B4AD76M = . if (B4AD76M == 97 | B4AD76M == 98 | B4AD76M == 99)
replace B4AD77 = . if (B4AD77 == 7 | B4AD77 == 8 | B4AD77 == 9)
replace B4AD77M = . if (B4AD77M == 7 | B4AD77M == 8 | B4AD77M == 9)
replace B4AD78 = "" if (B4AD78 == "349200.0" | B4AD78 == "352800.0" | B4AD78 == "356400.0")
replace B4AD78A = . if (B4AD78A == 7 | B4AD78A == 8 | B4AD78A == 9)
replace B4AD79 = . if (B4AD79 == 9997.0 | B4AD79 == 9998.0 | B4AD79 == 9999.0)
replace B4AD710 = . if (B4AD710 == 7 | B4AD710 == 8 | B4AD710 == 9)
replace B4AD711 = . if (B4AD711 == 97 | B4AD711 == 98 | B4AD711 == 99)
replace B4AD712 = . if (B4AD712 == 7 | B4AD712 == 8 | B4AD712 == 9)
replace B4AD713 = . if (B4AD713 == 7 | B4AD713 == 8 | B4AD713 == 9)
replace B4AD714 = . if (B4AD714 == 97 | B4AD714 == 98 | B4AD714 == 99)
replace B4AD715 = "" if (B4AD715 == "349200.0" | B4AD715 == "352800.0" | B4AD715 == "356400.0")
replace B4AD715A = . if (B4AD715A == 7 | B4AD715A == 8 | B4AD715A == 9)
replace B4AD716 = "" if (B4AD716 == "349200.0" | B4AD716 == "352800.0" | B4AD716 == "356400.0")
replace B4AD716A = . if (B4AD716A == 7 | B4AD716A == 8 | B4AD716A == 9)
replace B4AD717 = . if (B4AD717 == 7 | B4AD717 == 8 | B4AD717 == 9)
replace B4AD718 = . if (B4AD718 == 7 | B4AD718 == 8 | B4AD718 == 9)
replace B4AD719 = . if (B4AD719 == 7 | B4AD719 == 8 | B4AD719 == 9)
replace B4AD720 = . if (B4AD720 == 7 | B4AD720 == 8 | B4AD720 == 9)
replace B4WR1TAC = . if (B4WR1TAC == 999998 | B4WR1TAC == 999999)
replace B4WR1ACM = . if (B4WR1ACM == 998.00 | B4WR1ACM == 999.00)
replace B4WR1MAC = . if (B4WR1MAC == 9998 | B4WR1MAC == 9999)
replace B4WR1IAC = . if (B4WR1IAC == 98 | B4WR1IAC == 99)
replace B4WR1SW = . if (B4WR1SW == 98.00 | B4WR1SW == 99.00)
replace B4WR1WT = . if (B4WR1WT == 998.00 | B4WR1WT == 999.00)
replace B4WR1PW = . if (B4WR1PW == 998.00 | B4WR1PW == 999.00)
replace B4WR1WB = . if (B4WR1WB == 998 | B4WR1WB == 999)
replace B4WR1AWB = . if (B4WR1AWB == 998.00 | B4WR1AWB == 999.00)
replace B4WR1SLT = . if (B4WR1SLT == 9998.0 | B4WR1SLT == 9999.0)
replace B4WR1PSL = . if (B4WR1PSL == 998.00 | B4WR1PSL == 999.00)
replace B4WR1SLB = . if (B4WR1SLB == 998 | B4WR1SLB == 999)
replace B4WR1ASB = . if (B4WR1ASB == 998.00 | B4WR1ASB == 999.00)
replace B4WS1TAC = . if (B4WS1TAC == 999998 | B4WS1TAC == 999999)
replace B4WS1ACM = . if (B4WS1ACM == 998.00 | B4WS1ACM == 999.00)
replace B4WS1MAC = . if (B4WS1MAC == 9998 | B4WS1MAC == 9999)
replace B4WS1IAC = . if (B4WS1IAC == 98 | B4WS1IAC == 99)
replace B4WS1ISW = . if (B4WS1ISW == 98.00 | B4WS1ISW == 99.00)
replace B4WS1OL = . if (B4WS1OL == 998.00 | B4WS1OL == 999.00)
replace B4WS1SNT = . if (B4WS1SNT == 998.00 | B4WS1SNT == 999.00)
replace B4WS1EFF = . if (B4WS1EFF == 998.00 | B4WS1EFF == 999.00)
replace B4WS1WSO = . if (B4WS1WSO == 998.00 | B4WS1WSO == 999.00)
replace B4WS1WT = . if (B4WS1WT == 998.00 | B4WS1WT == 999.00)
replace B4WS1PW = . if (B4WS1PW == 98.00 | B4WS1PW == 99.00)
replace B4WS1WB = . if (B4WS1WB == 998 | B4WS1WB == 999)
replace B4WS1AWB = . if (B4WS1AWB == 98.00 | B4WS1AWB == 99.00)
replace B4WS1SLT = . if (B4WS1SLT == 9998.0 | B4WS1SLT == 9999.0)
replace B4WS1PSL = . if (B4WS1PSL == 998.00 | B4WS1PSL == 999.00)
replace B4WS1SLB = . if (B4WS1SLB == 998 | B4WS1SLB == 999)
replace B4WS1ASB = . if (B4WS1ASB == 998.00 | B4WS1ASB == 999.00)
replace B4WA1TAC = . if (B4WA1TAC == 9999998 | B4WA1TAC == 9999999)
replace B4WA1ACM = . if (B4WA1ACM == 9998.00 | B4WA1ACM == 9999.00)
replace B4WA1MAC = . if (B4WA1MAC == 9998 | B4WA1MAC == 9999)
replace B4WA1IAC = . if (B4WA1IAC == 8 | B4WA1IAC == 9)
replace B4WA1ISW = . if (B4WA1ISW == 8.00 | B4WA1ISW == 9.00)
replace B4WA1WT = . if (B4WA1WT == 9998.0 | B4WA1WT == 9999.0)
replace B4WA1PW = . if (B4WA1PW == 998.00 | B4WA1PW == 999.00)
replace B4WA1WB = . if (B4WA1WB == 998 | B4WA1WB == 999)
replace B4WA1AWB = . if (B4WA1AWB == 998.00 | B4WA1AWB == 999.00)
replace B4WA1SLT = . if (B4WA1SLT == 998.00 | B4WA1SLT == 999.00)
replace B4WA1PSL = . if (B4WA1PSL == 98.00 | B4WA1PSL == 99.00)
replace B4WA1SLB = . if (B4WA1SLB == 998 | B4WA1SLB == 999)
replace B4WA1ASB = . if (B4WA1ASB == 98.00 | B4WA1ASB == 99.00)
replace B4WR2TAC = . if (B4WR2TAC == 999998 | B4WR2TAC == 999999)
replace B4WR2ACM = . if (B4WR2ACM == 998.00 | B4WR2ACM == 999.00)
replace B4WR2MAC = . if (B4WR2MAC == 9998 | B4WR2MAC == 9999)
replace B4WR2IAC = . if (B4WR2IAC == 98 | B4WR2IAC == 99)
replace B4WR2SW = . if (B4WR2SW == 98.00 | B4WR2SW == 99.00)
replace B4WR2WT = . if (B4WR2WT == 998.00 | B4WR2WT == 999.00)
replace B4WR2PW = . if (B4WR2PW == 998.00 | B4WR2PW == 999.00)
replace B4WR2WB = . if (B4WR2WB == 998 | B4WR2WB == 999)
replace B4WR2AWB = . if (B4WR2AWB == 998.00 | B4WR2AWB == 999.00)
replace B4WR2SLT = . if (B4WR2SLT == 9998.0 | B4WR2SLT == 9999.0)
replace B4WR2PSL = . if (B4WR2PSL == 998.00 | B4WR2PSL == 999.00)
replace B4WR2SLB = . if (B4WR2SLB == 998 | B4WR2SLB == 999)
replace B4WR2ASB = . if (B4WR2ASB == 998.00 | B4WR2ASB == 999.00)
replace B4WS2TAC = . if (B4WS2TAC == 999998 | B4WS2TAC == 999999)
replace B4WS2ACM = . if (B4WS2ACM == 998.00 | B4WS2ACM == 999.00)
replace B4WS2MAC = . if (B4WS2MAC == 9998 | B4WS2MAC == 9999)
replace B4WS2IAC = . if (B4WS2IAC == 98 | B4WS2IAC == 99)
replace B4WS2ISW = . if (B4WS2ISW == 98.00 | B4WS2ISW == 99.00)
replace B4WS2OL = . if (B4WS2OL == 998.00 | B4WS2OL == 999.00)
replace B4WS2SNT = . if (B4WS2SNT == 998.00 | B4WS2SNT == 999.00)
replace B4WS2EFF = . if (B4WS2EFF == 998.00 | B4WS2EFF == 999.00)
replace B4WS2WSO = . if (B4WS2WSO == 998.00 | B4WS2WSO == 999.00)
replace B4WS2WT = . if (B4WS2WT == 998.00 | B4WS2WT == 999.00)
replace B4WS2PW = . if (B4WS2PW == 98.00 | B4WS2PW == 99.00)
replace B4WS2WB = . if (B4WS2WB == 998 | B4WS2WB == 999)
replace B4WS2AWB = . if (B4WS2AWB == 98.00 | B4WS2AWB == 99.00)
replace B4WS2SLT = . if (B4WS2SLT == 9998.0 | B4WS2SLT == 9999.0)
replace B4WS2PSL = . if (B4WS2PSL == 998.00 | B4WS2PSL == 999.00)
replace B4WS2SLB = . if (B4WS2SLB == 998 | B4WS2SLB == 999)
replace B4WS2ASB = . if (B4WS2ASB == 998.00 | B4WS2ASB == 999.00)
replace B4WA2TAC = . if (B4WA2TAC == 9999998 | B4WA2TAC == 9999999)
replace B4WA2ACM = . if (B4WA2ACM == 9998.00 | B4WA2ACM == 9999.00)
replace B4WA2MAC = . if (B4WA2MAC == 9998 | B4WA2MAC == 9999)
replace B4WA2IAC = . if (B4WA2IAC == 8 | B4WA2IAC == 9)
replace B4WA2ISW = . if (B4WA2ISW == 8.00 | B4WA2ISW == 9.00)
replace B4WA2WT = . if (B4WA2WT == 9998.0 | B4WA2WT == 9999.0)
replace B4WA2PW = . if (B4WA2PW == 998.00 | B4WA2PW == 999.00)
replace B4WA2WB = . if (B4WA2WB == 998 | B4WA2WB == 999)
replace B4WA2AWB = . if (B4WA2AWB == 998.00 | B4WA2AWB == 999.00)
replace B4WA2SLT = . if (B4WA2SLT == 998.00 | B4WA2SLT == 999.00)
replace B4WA2PSL = . if (B4WA2PSL == 98.00 | B4WA2PSL == 99.00)
replace B4WA2SLB = . if (B4WA2SLB == 998 | B4WA2SLB == 999)
replace B4WA2ASB = . if (B4WA2ASB == 98.00 | B4WA2ASB == 99.00)
replace B4WR3TAC = . if (B4WR3TAC == 999998 | B4WR3TAC == 999999)
replace B4WR3ACM = . if (B4WR3ACM == 998.00 | B4WR3ACM == 999.00)
replace B4WR3MAC = . if (B4WR3MAC == 9998 | B4WR3MAC == 9999)
replace B4WR3IAC = . if (B4WR3IAC == 98 | B4WR3IAC == 99)
replace B4WR3SW = . if (B4WR3SW == 98.00 | B4WR3SW == 99.00)
replace B4WR3WT = . if (B4WR3WT == 998.00 | B4WR3WT == 999.00)
replace B4WR3PW = . if (B4WR3PW == 998.00 | B4WR3PW == 999.00)
replace B4WR3WB = . if (B4WR3WB == 998 | B4WR3WB == 999)
replace B4WR3AWB = . if (B4WR3AWB == 998.00 | B4WR3AWB == 999.00)
replace B4WR3SLT = . if (B4WR3SLT == 9998.0 | B4WR3SLT == 9999.0)
replace B4WR3PSL = . if (B4WR3PSL == 998.00 | B4WR3PSL == 999.00)
replace B4WR3SLB = . if (B4WR3SLB == 998 | B4WR3SLB == 999)
replace B4WR3ASB = . if (B4WR3ASB == 998.00 | B4WR3ASB == 999.00)
replace B4WS3TAC = . if (B4WS3TAC == 999998 | B4WS3TAC == 999999)
replace B4WS3ACM = . if (B4WS3ACM == 998.00 | B4WS3ACM == 999.00)
replace B4WS3MAC = . if (B4WS3MAC == 9998 | B4WS3MAC == 9999)
replace B4WS3IAC = . if (B4WS3IAC == 98 | B4WS3IAC == 99)
replace B4WS3ISW = . if (B4WS3ISW == 98.00 | B4WS3ISW == 99.00)
replace B4WS3OL = . if (B4WS3OL == 998.00 | B4WS3OL == 999.00)
replace B4WS3SNT = . if (B4WS3SNT == 998.00 | B4WS3SNT == 999.00)
replace B4WS3EFF = . if (B4WS3EFF == 998.00 | B4WS3EFF == 999.00)
replace B4WS3WSO = . if (B4WS3WSO == 998.00 | B4WS3WSO == 999.00)
replace B4WS3WT = . if (B4WS3WT == 998.00 | B4WS3WT == 999.00)
replace B4WS3PW = . if (B4WS3PW == 98.00 | B4WS3PW == 99.00)
replace B4WS3WB = . if (B4WS3WB == 998 | B4WS3WB == 999)
replace B4WS3AWB = . if (B4WS3AWB == 98.00 | B4WS3AWB == 99.00)
replace B4WS3SLT = . if (B4WS3SLT == 9998.0 | B4WS3SLT == 9999.0)
replace B4WS3PSL = . if (B4WS3PSL == 998.00 | B4WS3PSL == 999.00)
replace B4WS3SLB = . if (B4WS3SLB == 998 | B4WS3SLB == 999)
replace B4WS3ASB = . if (B4WS3ASB == 998.00 | B4WS3ASB == 999.00)
replace B4WA3TAC = . if (B4WA3TAC == 9999998 | B4WA3TAC == 9999999)
replace B4WA3ACM = . if (B4WA3ACM == 9998.00 | B4WA3ACM == 9999.00)
replace B4WA3MAC = . if (B4WA3MAC == 9998 | B4WA3MAC == 9999)
replace B4WA3IAC = . if (B4WA3IAC == 8 | B4WA3IAC == 9)
replace B4WA3ISW = . if (B4WA3ISW == 8.00 | B4WA3ISW == 9.00)
replace B4WA3WT = . if (B4WA3WT == 9998.0 | B4WA3WT == 9999.0)
replace B4WA3PW = . if (B4WA3PW == 998.00 | B4WA3PW == 999.00)
replace B4WA3WB = . if (B4WA3WB == 998 | B4WA3WB == 999)
replace B4WA3AWB = . if (B4WA3AWB == 998.00 | B4WA3AWB == 999.00)
replace B4WA3SLT = . if (B4WA3SLT == 998.00 | B4WA3SLT == 999.00)
replace B4WA3PSL = . if (B4WA3PSL == 98.00 | B4WA3PSL == 99.00)
replace B4WA3SLB = . if (B4WA3SLB == 998 | B4WA3SLB == 999)
replace B4WA3ASB = . if (B4WA3ASB == 98.00 | B4WA3ASB == 99.00)
replace B4WR4TAC = . if (B4WR4TAC == 999998 | B4WR4TAC == 999999)
replace B4WR4ACM = . if (B4WR4ACM == 998.00 | B4WR4ACM == 999.00)
replace B4WR4MAC = . if (B4WR4MAC == 9998 | B4WR4MAC == 9999)
replace B4WR4IAC = . if (B4WR4IAC == 98 | B4WR4IAC == 99)
replace B4WR4SW = . if (B4WR4SW == 98.00 | B4WR4SW == 99.00)
replace B4WR4WT = . if (B4WR4WT == 998.00 | B4WR4WT == 999.00)
replace B4WR4PW = . if (B4WR4PW == 998.00 | B4WR4PW == 999.00)
replace B4WR4WB = . if (B4WR4WB == 998 | B4WR4WB == 999)
replace B4WR4AWB = . if (B4WR4AWB == 998.00 | B4WR4AWB == 999.00)
replace B4WR4SLT = . if (B4WR4SLT == 9998.0 | B4WR4SLT == 9999.0)
replace B4WR4PSL = . if (B4WR4PSL == 998.00 | B4WR4PSL == 999.00)
replace B4WR4SLB = . if (B4WR4SLB == 998 | B4WR4SLB == 999)
replace B4WR4ASB = . if (B4WR4ASB == 998.00 | B4WR4ASB == 999.00)
replace B4WS4TAC = . if (B4WS4TAC == 999998 | B4WS4TAC == 999999)
replace B4WS4ACM = . if (B4WS4ACM == 998.00 | B4WS4ACM == 999.00)
replace B4WS4MAC = . if (B4WS4MAC == 9998 | B4WS4MAC == 9999)
replace B4WS4IAC = . if (B4WS4IAC == 98 | B4WS4IAC == 99)
replace B4WS4ISW = . if (B4WS4ISW == 98.00 | B4WS4ISW == 99.00)
replace B4WS4OL = . if (B4WS4OL == 998.00 | B4WS4OL == 999.00)
replace B4WS4SNT = . if (B4WS4SNT == 998.00 | B4WS4SNT == 999.00)
replace B4WS4EFF = . if (B4WS4EFF == 998.00 | B4WS4EFF == 999.00)
replace B4WS4WSO = . if (B4WS4WSO == 998.00 | B4WS4WSO == 999.00)
replace B4WS4WT = . if (B4WS4WT == 998.00 | B4WS4WT == 999.00)
replace B4WS4PW = . if (B4WS4PW == 98.00 | B4WS4PW == 99.00)
replace B4WS4WB = . if (B4WS4WB == 998 | B4WS4WB == 999)
replace B4WS4AWB = . if (B4WS4AWB == 98.00 | B4WS4AWB == 99.00)
replace B4WS4SLT = . if (B4WS4SLT == 9998.0 | B4WS4SLT == 9999.0)
replace B4WS4PSL = . if (B4WS4PSL == 998.00 | B4WS4PSL == 999.00)
replace B4WS4SLB = . if (B4WS4SLB == 998 | B4WS4SLB == 999)
replace B4WS4ASB = . if (B4WS4ASB == 998.00 | B4WS4ASB == 999.00)
replace B4WA4TAC = . if (B4WA4TAC == 9999998 | B4WA4TAC == 9999999)
replace B4WA4ACM = . if (B4WA4ACM == 9998.00 | B4WA4ACM == 9999.00)
replace B4WA4MAC = . if (B4WA4MAC == 9998 | B4WA4MAC == 9999)
replace B4WA4IAC = . if (B4WA4IAC == 8 | B4WA4IAC == 9)
replace B4WA4ISW = . if (B4WA4ISW == 8.00 | B4WA4ISW == 9.00)
replace B4WA4WT = . if (B4WA4WT == 9998.0 | B4WA4WT == 9999.0)
replace B4WA4PW = . if (B4WA4PW == 998.00 | B4WA4PW == 999.00)
replace B4WA4WB = . if (B4WA4WB == 998 | B4WA4WB == 999)
replace B4WA4AWB = . if (B4WA4AWB == 998.00 | B4WA4AWB == 999.00)
replace B4WA4SLT = . if (B4WA4SLT == 998.00 | B4WA4SLT == 999.00)
replace B4WA4PSL = . if (B4WA4PSL == 98.00 | B4WA4PSL == 99.00)
replace B4WA4SLB = . if (B4WA4SLB == 998 | B4WA4SLB == 999)
replace B4WA4ASB = . if (B4WA4ASB == 98.00 | B4WA4ASB == 99.00)
replace B4WR5TAC = . if (B4WR5TAC == 999998 | B4WR5TAC == 999999)
replace B4WR5ACM = . if (B4WR5ACM == 998.00 | B4WR5ACM == 999.00)
replace B4WR5MAC = . if (B4WR5MAC == 9998 | B4WR5MAC == 9999)
replace B4WR5IAC = . if (B4WR5IAC == 98 | B4WR5IAC == 99)
replace B4WR5SW = . if (B4WR5SW == 98.00 | B4WR5SW == 99.00)
replace B4WR5WT = . if (B4WR5WT == 998.00 | B4WR5WT == 999.00)
replace B4WR5PW = . if (B4WR5PW == 998.00 | B4WR5PW == 999.00)
replace B4WR5WB = . if (B4WR5WB == 998 | B4WR5WB == 999)
replace B4WR5AWB = . if (B4WR5AWB == 998.00 | B4WR5AWB == 999.00)
replace B4WR5SLT = . if (B4WR5SLT == 9998.0 | B4WR5SLT == 9999.0)
replace B4WR5PSL = . if (B4WR5PSL == 998.00 | B4WR5PSL == 999.00)
replace B4WR5SLB = . if (B4WR5SLB == 998 | B4WR5SLB == 999)
replace B4WR5ASB = . if (B4WR5ASB == 998.00 | B4WR5ASB == 999.00)
replace B4WS5TAC = . if (B4WS5TAC == 999998 | B4WS5TAC == 999999)
replace B4WS5ACM = . if (B4WS5ACM == 998.00 | B4WS5ACM == 999.00)
replace B4WS5MAC = . if (B4WS5MAC == 9998 | B4WS5MAC == 9999)
replace B4WS5IAC = . if (B4WS5IAC == 98 | B4WS5IAC == 99)
replace B4WS5ISW = . if (B4WS5ISW == 98.00 | B4WS5ISW == 99.00)
replace B4WS5OL = . if (B4WS5OL == 998.00 | B4WS5OL == 999.00)
replace B4WS5SNT = . if (B4WS5SNT == 998.00 | B4WS5SNT == 999.00)
replace B4WS5EFF = . if (B4WS5EFF == 998.00 | B4WS5EFF == 999.00)
replace B4WS5WSO = . if (B4WS5WSO == 998.00 | B4WS5WSO == 999.00)
replace B4WS5WT = . if (B4WS5WT == 998.00 | B4WS5WT == 999.00)
replace B4WS5PW = . if (B4WS5PW == 98.00 | B4WS5PW == 99.00)
replace B4WS5WB = . if (B4WS5WB == 998 | B4WS5WB == 999)
replace B4WS5AWB = . if (B4WS5AWB == 98.00 | B4WS5AWB == 99.00)
replace B4WS5SLT = . if (B4WS5SLT == 9998.0 | B4WS5SLT == 9999.0)
replace B4WS5PSL = . if (B4WS5PSL == 998.00 | B4WS5PSL == 999.00)
replace B4WS5SLB = . if (B4WS5SLB == 998 | B4WS5SLB == 999)
replace B4WS5ASB = . if (B4WS5ASB == 998.00 | B4WS5ASB == 999.00)
replace B4WA5TAC = . if (B4WA5TAC == 9999998 | B4WA5TAC == 9999999)
replace B4WA5ACM = . if (B4WA5ACM == 9998.00 | B4WA5ACM == 9999.00)
replace B4WA5MAC = . if (B4WA5MAC == 9998 | B4WA5MAC == 9999)
replace B4WA5IAC = . if (B4WA5IAC == 8 | B4WA5IAC == 9)
replace B4WA5ISW = . if (B4WA5ISW == 8.00 | B4WA5ISW == 9.00)
replace B4WA5WT = . if (B4WA5WT == 9998.0 | B4WA5WT == 9999.0)
replace B4WA5PW = . if (B4WA5PW == 998.00 | B4WA5PW == 999.00)
replace B4WA5WB = . if (B4WA5WB == 998 | B4WA5WB == 999)
replace B4WA5AWB = . if (B4WA5AWB == 998.00 | B4WA5AWB == 999.00)
replace B4WA5SLT = . if (B4WA5SLT == 998.00 | B4WA5SLT == 999.00)
replace B4WA5PSL = . if (B4WA5PSL == 98.00 | B4WA5PSL == 99.00)
replace B4WA5SLB = . if (B4WA5SLB == 998 | B4WA5SLB == 999)
replace B4WA5ASB = . if (B4WA5ASB == 98.00 | B4WA5ASB == 99.00)
replace B4WR6TAC = . if (B4WR6TAC == 999998 | B4WR6TAC == 999999)
replace B4WR6ACM = . if (B4WR6ACM == 998.00 | B4WR6ACM == 999.00)
replace B4WR6MAC = . if (B4WR6MAC == 9998 | B4WR6MAC == 9999)
replace B4WR6IAC = . if (B4WR6IAC == 98 | B4WR6IAC == 99)
replace B4WR6SW = . if (B4WR6SW == 98.00 | B4WR6SW == 99.00)
replace B4WR6WT = . if (B4WR6WT == 998.00 | B4WR6WT == 999.00)
replace B4WR6PW = . if (B4WR6PW == 998.00 | B4WR6PW == 999.00)
replace B4WR6WB = . if (B4WR6WB == 998 | B4WR6WB == 999)
replace B4WR6AWB = . if (B4WR6AWB == 998.00 | B4WR6AWB == 999.00)
replace B4WR6SLT = . if (B4WR6SLT == 9998.0 | B4WR6SLT == 9999.0)
replace B4WR6PSL = . if (B4WR6PSL == 998.00 | B4WR6PSL == 999.00)
replace B4WR6SLB = . if (B4WR6SLB == 998 | B4WR6SLB == 999)
replace B4WR6ASB = . if (B4WR6ASB == 998.00 | B4WR6ASB == 999.00)
replace B4WS6TAC = . if (B4WS6TAC == 999998 | B4WS6TAC == 999999)
replace B4WS6ACM = . if (B4WS6ACM == 998.00 | B4WS6ACM == 999.00)
replace B4WS6MAC = . if (B4WS6MAC == 9998 | B4WS6MAC == 9999)
replace B4WS6IAC = . if (B4WS6IAC == 98 | B4WS6IAC == 99)
replace B4WS6ISW = . if (B4WS6ISW == 98.00 | B4WS6ISW == 99.00)
replace B4WS6OL = . if (B4WS6OL == 998.00 | B4WS6OL == 999.00)
replace B4WS6SNT = . if (B4WS6SNT == 998.00 | B4WS6SNT == 999.00)
replace B4WS6EFF = . if (B4WS6EFF == 998.00 | B4WS6EFF == 999.00)
replace B4WS6WSO = . if (B4WS6WSO == 998.00 | B4WS6WSO == 999.00)
replace B4WS6WT = . if (B4WS6WT == 998.00 | B4WS6WT == 999.00)
replace B4WS6PW = . if (B4WS6PW == 98.00 | B4WS6PW == 99.00)
replace B4WS6WB = . if (B4WS6WB == 998 | B4WS6WB == 999)
replace B4WS6AWB = . if (B4WS6AWB == 98.00 | B4WS6AWB == 99.00)
replace B4WS6SLT = . if (B4WS6SLT == 9998.0 | B4WS6SLT == 9999.0)
replace B4WS6PSL = . if (B4WS6PSL == 998.00 | B4WS6PSL == 999.00)
replace B4WS6SLB = . if (B4WS6SLB == 998 | B4WS6SLB == 999)
replace B4WS6ASB = . if (B4WS6ASB == 998.00 | B4WS6ASB == 999.00)
replace B4WA6TAC = . if (B4WA6TAC == 9999998 | B4WA6TAC == 9999999)
replace B4WA6ACM = . if (B4WA6ACM == 9998.00 | B4WA6ACM == 9999.00)
replace B4WA6MAC = . if (B4WA6MAC == 9998 | B4WA6MAC == 9999)
replace B4WA6IAC = . if (B4WA6IAC == 8 | B4WA6IAC == 9)
replace B4WA6ISW = . if (B4WA6ISW == 8.00 | B4WA6ISW == 9.00)
replace B4WA6WT = . if (B4WA6WT == 9998.0 | B4WA6WT == 9999.0)
replace B4WA6PW = . if (B4WA6PW == 998.00 | B4WA6PW == 999.00)
replace B4WA6WB = . if (B4WA6WB == 998 | B4WA6WB == 999)
replace B4WA6AWB = . if (B4WA6AWB == 998.00 | B4WA6AWB == 999.00)
replace B4WA6SLT = . if (B4WA6SLT == 998.00 | B4WA6SLT == 999.00)
replace B4WA6PSL = . if (B4WA6PSL == 98.00 | B4WA6PSL == 99.00)
replace B4WA6SLB = . if (B4WA6SLB == 998 | B4WA6SLB == 999)
replace B4WA6ASB = . if (B4WA6ASB == 98.00 | B4WA6ASB == 99.00)
replace B4WR7TAC = . if (B4WR7TAC == 999998 | B4WR7TAC == 999999)
replace B4WR7ACM = . if (B4WR7ACM == 998.00 | B4WR7ACM == 999.00)
replace B4WR7MAC = . if (B4WR7MAC == 9998 | B4WR7MAC == 9999)
replace B4WR7IAC = . if (B4WR7IAC == 98 | B4WR7IAC == 99)
replace B4WR7SW = . if (B4WR7SW == 98.00 | B4WR7SW == 99.00)
replace B4WR7WT = . if (B4WR7WT == 998.00 | B4WR7WT == 999.00)
replace B4WR7PW = . if (B4WR7PW == 998.00 | B4WR7PW == 999.00)
replace B4WR7WB = . if (B4WR7WB == 998 | B4WR7WB == 999)
replace B4WR7AWB = . if (B4WR7AWB == 998.00 | B4WR7AWB == 999.00)
replace B4WR7SLT = . if (B4WR7SLT == 9998.0 | B4WR7SLT == 9999.0)
replace B4WR7PSL = . if (B4WR7PSL == 998.00 | B4WR7PSL == 999.00)
replace B4WR7SLB = . if (B4WR7SLB == 998 | B4WR7SLB == 999)
replace B4WR7ASB = . if (B4WR7ASB == 998.00 | B4WR7ASB == 999.00)
replace B4WS7TAC = . if (B4WS7TAC == 999998 | B4WS7TAC == 999999)
replace B4WS7ACM = . if (B4WS7ACM == 998.00 | B4WS7ACM == 999.00)
replace B4WS7MAC = . if (B4WS7MAC == 9998 | B4WS7MAC == 9999)
replace B4WS7IAC = . if (B4WS7IAC == 98 | B4WS7IAC == 99)
replace B4WS7ISW = . if (B4WS7ISW == 98.00 | B4WS7ISW == 99.00)
replace B4WS7OL = . if (B4WS7OL == 998.00 | B4WS7OL == 999.00)
replace B4WS7SNT = . if (B4WS7SNT == 998.00 | B4WS7SNT == 999.00)
replace B4WS7EFF = . if (B4WS7EFF == 998.00 | B4WS7EFF == 999.00)
replace B4WS7WSO = . if (B4WS7WSO == 998.00 | B4WS7WSO == 999.00)
replace B4WS7WT = . if (B4WS7WT == 998.00 | B4WS7WT == 999.00)
replace B4WS7PW = . if (B4WS7PW == 98.00 | B4WS7PW == 99.00)
replace B4WS7WB = . if (B4WS7WB == 998 | B4WS7WB == 999)
replace B4WS7AWB = . if (B4WS7AWB == 98.00 | B4WS7AWB == 99.00)
replace B4WS7SLT = . if (B4WS7SLT == 9998.0 | B4WS7SLT == 9999.0)
replace B4WS7PSL = . if (B4WS7PSL == 998.00 | B4WS7PSL == 999.00)
replace B4WS7SLB = . if (B4WS7SLB == 998 | B4WS7SLB == 999)
replace B4WS7ASB = . if (B4WS7ASB == 998.00 | B4WS7ASB == 999.00)
replace B4VHAWR = . if (B4VHAWR == 7 | B4VHAWR == 8 | B4VHAWR == 9)
replace B4VHADW = . if (B4VHADW == 7 | B4VHADW == 8 | B4VHADW == 9)
replace B4VHATH = . if (B4VHATH == 7 | B4VHATH == 8 | B4VHATH == 9)
replace B4VHASC = . if (B4VHASC == 7 | B4VHASC == 8 | B4VHASC == 9)
replace B4VHATO = . if (B4VHATO == 7 | B4VHATO == 8 | B4VHATO == 9)
replace B4VHAKN = . if (B4VHAKN == 7 | B4VHAKN == 8 | B4VHAKN == 9)
replace B4VHASP = . if (B4VHASP == 7 | B4VHASP == 8 | B4VHASP == 9)
replace B4VHABR = . if (B4VHABR == 7 | B4VHABR == 8 | B4VHABR == 9)
replace B4VHASM = . if (B4VHASM == 7 | B4VHASM == 8 | B4VHASM == 9)
replace B4VHAOB = . if (B4VHAOB == 7 | B4VHAOB == 8 | B4VHAOB == 9)
replace B4VHAKI = . if (B4VHAKI == 7 | B4VHAKI == 8 | B4VHAKI == 9)
replace B4VHAOE = . if (B4VHAOE == 7 | B4VHAOE == 8 | B4VHAOE == 9)
replace B4VHALT = . if (B4VHALT == 998 | B4VHALT == 999)
replace B4VHART = . if (B4VHART == 998 | B4VHART == 999)
replace B4VHALQ = . if (B4VHALQ == 998 | B4VHALQ == 999)
replace B4VHADZ = . if (B4VHADZ == 98 | B4VHADZ == 99)
replace B4VHADR = . if (B4VHADR == 98 | B4VHADR == 99)
replace B4VHADL = . if (B4VHADL == 98 | B4VHADL == 99)
replace B4VST = "" if (B4VST == "349200.0" | B4VST == "352800.0" | B4VST == "356400.0")
replace B4VATEH = . if (B4VATEH == 9999.00)
replace B4VCAFH = . if (B4VCAFH == 9999.00)
replace B4VCIGH = . if (B4VCIGH == 9999.00)
replace B4VCLB = . if (B4VCLB == 7 | B4VCLB == 8 | B4VCLB == 9)
replace B4VCLBT = . if (B4VCLBT == 7 | B4VCLBT == 8 | B4VCLBT == 9)
replace B4VCIRC = . if (B4VCIRC == 8 | B4VCIRC == 9)
replace B4VLC = . if (B4VLC == 8 | B4VLC == 9)
replace B4VS1T = "" if (B4VS1T == "349200.0" | B4VS1T == "352800.0" | B4VS1T == "356400.0")
replace B4VSRB1 = . if (B4VSRB1 == 98 | B4VSRB1 == 99)
replace B4VTASK1 = "" if (B4VTASK1 == "INAPPLIC")
replace B4VCS1 = . if (B4VCS1 == 9)
replace B4VSRCS1 = . if (B4VSRCS1 == 98 | B4VSRCS1 == 99)
replace B4VSRR1 = . if (B4VSRR1 == 98 | B4VSRR1 == 99)
replace B4VTASK2 = "" if (B4VTASK2 == "INAPPLIC")
replace B4VCS2 = . if (B4VCS2 == 9)
replace B4VSRCS2 = . if (B4VSRCS2 == 98 | B4VSRCS2 == 99)
replace B4VSRR2 = . if (B4VSRR2 == 98 | B4VSRR2 == 99)
replace B4VS2T = "" if (B4VS2T == "349200.0" | B4VS2T == "352800.0" | B4VS2T == "356400.0")
replace B4VSRU1 = . if (B4VSRU1 == 98 | B4VSRU1 == 99)
replace B4VS3T = "" if (B4VS3T == "349200.0" | B4VS3T == "352800.0" | B4VS3T == "356400.0")
replace B4VS4T = "" if (B4VS4T == "349200.0" | B4VS4T == "352800.0" | B4VS4T == "356400.0")
replace B4VSTS1 = . if (B4VSTS1 == 998)
replace B4VS1S2 = . if (B4VS1S2 == 998)
replace B4VS2S3 = . if (B4VS2S3 == 998)
replace B4VS3S4 = . if (B4VS3S4 == 998)
replace B4VMEQ = . if (B4VMEQ == 9)
replace B4VMEQR = . if (B4VMEQR == 9)
replace B4VPEQ = . if (B4VPEQ == 9)
replace B4VPEQR = . if (B4VPEQR == 9)
replace B4VB1DU = . if (B4VB1DU == 9998 | B4VB1DU == 9999)
replace B4VB1BEG = . if (B4VB1BEG == 99998.0 | B4VB1BEG == 99999.0)
replace B4VB1END = . if (B4VB1END == 99998.0 | B4VB1END == 99999.0)
replace B4VB1MAX = . if (B4VB1MAX == 99998.0 | B4VB1MAX == 99999.0)
replace B4VB1NU = . if (B4VB1NU == 9998 | B4VB1NU == 9999)
replace B4VB1HR = . if (B4VB1HR == 99998.0 | B4VB1HR == 99999.0)
replace B4VB1SD = . if (B4VB1SD == 99998.00 | B4VB1SD == 99999.00)
replace B4VB1LSD = . if (B4VB1LSD == 99998.00 | B4VB1LSD == 99999.00)
replace B4VB1RM = . if (B4VB1RM == 99998.00 | B4VB1RM == 99999.00)
replace B4VB1LRM = . if (B4VB1LRM == 99998.00 | B4VB1LRM == 99999.00)
replace B4VB1LF = . if (B4VB1LF == 99998.00 | B4VB1LF == 99999.00)
replace B4VB1LLF = . if (B4VB1LLF == 99998.00 | B4VB1LLF == 99999.00)
replace B4VB1HF = . if (B4VB1HF == 99998.00 | B4VB1HF == 99999.00)
replace B4VB1LHF = . if (B4VB1LHF == 99998.00 | B4VB1LHF == 99999.00)
replace B4VB2DU = . if (B4VB2DU == 9998 | B4VB2DU == 9999)
replace B4VB2BEG = . if (B4VB2BEG == 99998.0 | B4VB2BEG == 99999.0)
replace B4VB2END = . if (B4VB2END == 99998.0 | B4VB2END == 99999.0)
replace B4VB2MAX = . if (B4VB2MAX == 99998.0 | B4VB2MAX == 99999.0)
replace B4VB2NU = . if (B4VB2NU == 9998 | B4VB2NU == 9999)
replace B4VB2HR = . if (B4VB2HR == 99998.0 | B4VB2HR == 99999.0)
replace B4VB2SD = . if (B4VB2SD == 99998.00 | B4VB2SD == 99999.00)
replace B4VB2LSD = . if (B4VB2LSD == 99998.00 | B4VB2LSD == 99999.00)
replace B4VB2RM = . if (B4VB2RM == 99998.00 | B4VB2RM == 99999.00)
replace B4VB2LRM = . if (B4VB2LRM == 99998.00 | B4VB2LRM == 99999.00)
replace B4VB2LF = . if (B4VB2LF == 99998.00 | B4VB2LF == 99999.00)
replace B4VB2LLF = . if (B4VB2LLF == 99998.00 | B4VB2LLF == 99999.00)
replace B4VB2HF = . if (B4VB2HF == 99998.00 | B4VB2HF == 99999.00)
replace B4VB2LHF = . if (B4VB2LHF == 99998.00 | B4VB2LHF == 99999.00)
replace B4VM1DU = . if (B4VM1DU == 9998 | B4VM1DU == 9999)
replace B4VM1BEG = . if (B4VM1BEG == 99998.0 | B4VM1BEG == 99999.0)
replace B4VM1END = . if (B4VM1END == 99998.0 | B4VM1END == 99999.0)
replace B4VM1MAX = . if (B4VM1MAX == 99998.0 | B4VM1MAX == 99999.0)
replace B4VM1NU = . if (B4VM1NU == 9998 | B4VM1NU == 9999)
replace B4VM1HR = . if (B4VM1HR == 99998.0 | B4VM1HR == 99999.0)
replace B4VM1SD = . if (B4VM1SD == 99998.00 | B4VM1SD == 99999.00)
replace B4VM1LSD = . if (B4VM1LSD == 99998.00 | B4VM1LSD == 99999.00)
replace B4VM1RM = . if (B4VM1RM == 99998.00 | B4VM1RM == 99999.00)
replace B4VM1LRM = . if (B4VM1LRM == 99998.00 | B4VM1LRM == 99999.00)
replace B4VM1LF = . if (B4VM1LF == 99998.00 | B4VM1LF == 99999.00)
replace B4VM1LLF = . if (B4VM1LLF == 99998.00 | B4VM1LLF == 99999.00)
replace B4VM1HF = . if (B4VM1HF == 99998.00 | B4VM1HF == 99999.00)
replace B4VM1LHF = . if (B4VM1LHF == 99998.00 | B4VM1LHF == 99999.00)
replace B4VP1DU = . if (B4VP1DU == 9998 | B4VP1DU == 9999)
replace B4VP1BEG = . if (B4VP1BEG == 99998.0 | B4VP1BEG == 99999.0)
replace B4VP1END = . if (B4VP1END == 99998.0 | B4VP1END == 99999.0)
replace B4VP1MAX = . if (B4VP1MAX == 99998.0 | B4VP1MAX == 99999.0)
replace B4VP1NU = . if (B4VP1NU == 9998 | B4VP1NU == 9999)
replace B4VP1HR = . if (B4VP1HR == 99998.0 | B4VP1HR == 99999.0)
replace B4VP1SD = . if (B4VP1SD == 99998.00 | B4VP1SD == 99999.00)
replace B4VP1LSD = . if (B4VP1LSD == 99998.00 | B4VP1LSD == 99999.00)
replace B4VP1RM = . if (B4VP1RM == 99998.00 | B4VP1RM == 99999.00)
replace B4VP1LRM = . if (B4VP1LRM == 99998.00 | B4VP1LRM == 99999.00)
replace B4VP1LF = . if (B4VP1LF == 99998.00 | B4VP1LF == 99999.00)
replace B4VP1LLF = . if (B4VP1LLF == 99998.00 | B4VP1LLF == 99999.00)
replace B4VP1HF = . if (B4VP1HF == 99998.00 | B4VP1HF == 99999.00)
replace B4VP1LHF = . if (B4VP1LHF == 99998.00 | B4VP1LHF == 99999.00)
replace B4VP2DU = . if (B4VP2DU == 9998 | B4VP2DU == 9999)
replace B4VP2BEG = . if (B4VP2BEG == 99998.0 | B4VP2BEG == 99999.0)
replace B4VP2END = . if (B4VP2END == 99998.0 | B4VP2END == 99999.0)
replace B4VP2MAX = . if (B4VP2MAX == 99998.0 | B4VP2MAX == 99999.0)
replace B4VP2NU = . if (B4VP2NU == 9998 | B4VP2NU == 9999)
replace B4VP2HR = . if (B4VP2HR == 99998.0 | B4VP2HR == 99999.0)
replace B4VP2SD = . if (B4VP2SD == 99998.00 | B4VP2SD == 99999.00)
replace B4VP2LSD = . if (B4VP2LSD == 99998.00 | B4VP2LSD == 99999.00)
replace B4VP2RM = . if (B4VP2RM == 99998.00 | B4VP2RM == 99999.00)
replace B4VP2LRM = . if (B4VP2LRM == 99998.00 | B4VP2LRM == 99999.00)
replace B4VP2LF = . if (B4VP2LF == 99998.00 | B4VP2LF == 99999.00)
replace B4VP2LLF = . if (B4VP2LLF == 99998.00 | B4VP2LLF == 99999.00)
replace B4VP2HF = . if (B4VP2HF == 99998.00 | B4VP2HF == 99999.00)
replace B4VP2LHF = . if (B4VP2LHF == 99998.00 | B4VP2LHF == 99999.00)
replace B4VR1DU = . if (B4VR1DU == 9998 | B4VR1DU == 9999)
replace B4VR1BEG = . if (B4VR1BEG == 99998.0 | B4VR1BEG == 99999.0)
replace B4VR1END = . if (B4VR1END == 99998.0 | B4VR1END == 99999.0)
replace B4VR1MAX = . if (B4VR1MAX == 99998.0 | B4VR1MAX == 99999.0)
replace B4VR1NU = . if (B4VR1NU == 9998 | B4VR1NU == 9999)
replace B4VR1HR = . if (B4VR1HR == 99998.0 | B4VR1HR == 99999.0)
replace B4VR1SD = . if (B4VR1SD == 99998.00 | B4VR1SD == 99999.00)
replace B4VR1LSD = . if (B4VR1LSD == 99998.00 | B4VR1LSD == 99999.00)
replace B4VR1RM = . if (B4VR1RM == 99998.00 | B4VR1RM == 99999.00)
replace B4VR1LRM = . if (B4VR1LRM == 99998.00 | B4VR1LRM == 99999.00)
replace B4VR1LF = . if (B4VR1LF == 99998.00 | B4VR1LF == 99999.00)
replace B4VR1LLF = . if (B4VR1LLF == 99998.00 | B4VR1LLF == 99999.00)
replace B4VR1HF = . if (B4VR1HF == 99998.00 | B4VR1HF == 99999.00)
replace B4VR1LHF = . if (B4VR1LHF == 99998.00 | B4VR1LHF == 99999.00)
replace B4VR2DU = . if (B4VR2DU == 9998 | B4VR2DU == 9999)
replace B4VR2BEG = . if (B4VR2BEG == 99998.0 | B4VR2BEG == 99999.0)
replace B4VR2END = . if (B4VR2END == 99998.0 | B4VR2END == 99999.0)
replace B4VR2MAX = . if (B4VR2MAX == 99998.0 | B4VR2MAX == 99999.0)
replace B4VR2NU = . if (B4VR2NU == 9998 | B4VR2NU == 9999)
replace B4VR2HR = . if (B4VR2HR == 99998.0 | B4VR2HR == 99999.0)
replace B4VR2SD = . if (B4VR2SD == 99998.00 | B4VR2SD == 99999.00)
replace B4VR2LSD = . if (B4VR2LSD == 99998.00 | B4VR2LSD == 99999.00)
replace B4VR2RM = . if (B4VR2RM == 99998.00 | B4VR2RM == 99999.00)
replace B4VR2LRM = . if (B4VR2LRM == 99998.00 | B4VR2LRM == 99999.00)
replace B4VR2LF = . if (B4VR2LF == 99998.00 | B4VR2LF == 99999.00)
replace B4VR2LLF = . if (B4VR2LLF == 99998.00 | B4VR2LLF == 99999.00)
replace B4VR2HF = . if (B4VR2HF == 99998.00 | B4VR2HF == 99999.00)
replace B4VR2LHF = . if (B4VR2LHF == 99998.00 | B4VR2LHF == 99999.00)
replace B4VS1DU = . if (B4VS1DU == 9998 | B4VS1DU == 9999)
replace B4VS1BEG = . if (B4VS1BEG == 99998.0 | B4VS1BEG == 99999.0)
replace B4VS1END = . if (B4VS1END == 99998.0 | B4VS1END == 99999.0)
replace B4VS1MAX = . if (B4VS1MAX == 99998.0 | B4VS1MAX == 99999.0)
replace B4VS1NU = . if (B4VS1NU == 9998 | B4VS1NU == 9999)
replace B4VS1HR = . if (B4VS1HR == 99998.0 | B4VS1HR == 99999.0)
replace B4VS1SD = . if (B4VS1SD == 99998.00 | B4VS1SD == 99999.00)
replace B4VS1LSD = . if (B4VS1LSD == 99998.00 | B4VS1LSD == 99999.00)
replace B4VS1RM = . if (B4VS1RM == 99998.00 | B4VS1RM == 99999.00)
replace B4VS1LRM = . if (B4VS1LRM == 99998.00 | B4VS1LRM == 99999.00)
replace B4VS1LF = . if (B4VS1LF == 99998.00 | B4VS1LF == 99999.00)
replace B4VS1LLF = . if (B4VS1LLF == 99998.00 | B4VS1LLF == 99999.00)
replace B4VS1HF = . if (B4VS1HF == 99998.00 | B4VS1HF == 99999.00)
replace B4VS1LHF = . if (B4VS1LHF == 99998.00 | B4VS1LHF == 99999.00)
replace B4VS2DU = . if (B4VS2DU == 9998 | B4VS2DU == 9999)
replace B4VS2BEG = . if (B4VS2BEG == 99998.0 | B4VS2BEG == 99999.0)
replace B4VS2END = . if (B4VS2END == 99998.0 | B4VS2END == 99999.0)
replace B4VS2MAX = . if (B4VS2MAX == 99998.0 | B4VS2MAX == 99999.0)
replace B4VS2NU = . if (B4VS2NU == 9998 | B4VS2NU == 9999)
replace B4VS2HR = . if (B4VS2HR == 99998.0 | B4VS2HR == 99999.0)
replace B4VS2SD = . if (B4VS2SD == 99998.00 | B4VS2SD == 99999.00)
replace B4VS2LSD = . if (B4VS2LSD == 99998.00 | B4VS2LSD == 99999.00)
replace B4VS2RM = . if (B4VS2RM == 99998.00 | B4VS2RM == 99999.00)
replace B4VS2LRM = . if (B4VS2LRM == 99998.00 | B4VS2LRM == 99999.00)
replace B4VS2LF = . if (B4VS2LF == 99998.00 | B4VS2LF == 99999.00)
replace B4VS2LLF = . if (B4VS2LLF == 99998.00 | B4VS2LLF == 99999.00)
replace B4VS2HF = . if (B4VS2HF == 99998.00 | B4VS2HF == 99999.00)
replace B4VS2LHF = . if (B4VS2LHF == 99998.00 | B4VS2LHF == 99999.00)
replace B4VU1DU = . if (B4VU1DU == 9998 | B4VU1DU == 9999)
replace B4VU1BEG = . if (B4VU1BEG == 99998.0 | B4VU1BEG == 99999.0)
replace B4VU1END = . if (B4VU1END == 99998.0 | B4VU1END == 99999.0)
replace B4VU1MAX = . if (B4VU1MAX == 99998.0 | B4VU1MAX == 99999.0)
replace B4VU1NU = . if (B4VU1NU == 9998 | B4VU1NU == 9999)
replace B4VU1HR = . if (B4VU1HR == 99998.0 | B4VU1HR == 99999.0)
replace B4VU1SD = . if (B4VU1SD == 99998.00 | B4VU1SD == 99999.00)
replace B4VU1LSD = . if (B4VU1LSD == 99998.00 | B4VU1LSD == 99999.00)
replace B4VU1RM = . if (B4VU1RM == 99998.00 | B4VU1RM == 99999.00)
replace B4VU1LRM = . if (B4VU1LRM == 99998.00 | B4VU1LRM == 99999.00)
replace B4VU1LF = . if (B4VU1LF == 99998.00 | B4VU1LF == 99999.00)
replace B4VU1LLF = . if (B4VU1LLF == 99998.00 | B4VU1LLF == 99999.00)
replace B4VU1HF = . if (B4VU1HF == 99998.00 | B4VU1HF == 99999.00)
replace B4VU1LHF = . if (B4VU1LHF == 99998.00 | B4VU1LHF == 99999.00)


*/
/********************************************************************

 Section 5: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace
