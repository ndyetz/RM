/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 04652
 |      NATIONAL SURVEY OF MIDLIFE DEVELOPMENT IN THE UNITED STATES
 |                         (MIDUS II), 2004-2006
 |                  (DATASET 0001: M2_P1_AGGREGATE DATA)
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 04652-0001-statasetup.do)
 |
 **************************************************************************/

set mem 30m  /* Allocating 30 megabyte(s) of RAM for Stata SE to read the
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


label data "National Survey of Midlife Development in the United States (MIDUS II), 2004-2006, M2_P1_Aggregate Data"

#delimit ;
label define SAMPLMAJ  1 "MAIN RDD" 2 "SIBLING" 3 "TWIN" 4 "CITY OVERSAMPLES" ;
label define B1STATUS  1 "COMPLETED M2 PHONE ONLY"
                       2 "COMPLETED M2 PHONE & SAQ" 8 "NO M2 PARTICIPATION" ;
label define B1PAGE_M2 98 "REFUSED" 99 "INAPP (NO M2 PARTICIPATION)" ;
label define B1PBYEAR  9998 "REFUSED" ;
label define B1PRSEX   1 "MALE" 2 "FEMALE" ;
label define B1PA1     1 "EXCELLENT" 2 "VERY GOOD" 3 "GOOD" 4 "FAIR" 5 "POOR"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA2     1 "EXCELLENT" 2 "VERY GOOD" 3 "GOOD" 4 "FAIR" 5 "POOR"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA3     1 "MUCH BETTER" 2 "SOMEWHAT BETTER" 3 "ABOUT THE SAME"
                       4 "SOMEWHAT WORSE" 5 "MUCH WORSE" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PA4     97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PA4A    1 "PHYSICAL" 2 "MENTAL" 3 "COMBINATION" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PA4BA   97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PA4BB   97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PA4BC   97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PA5     97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PA5A    1 "PHYSICAL" 2 "MENTAL" 3 "COMBINATION" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PA5BA   97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PA5BB   97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PA5BC   97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PA6A    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA6B    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA6C    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA6D    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA7     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA7A    96 "CONGENITAL/AT BIRTH" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define B1PA7BA   1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define B1PA7BB   1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define B1PA7BC   1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define B1PA7BD   1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define B1PA7BE   1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define B1PA7BF   1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define B1PA7BG   1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define B1PA7BH   1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define B1PA7BI   1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define B1PA7BJ   1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define B1PA7C    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA7D    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA8     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA8A    9997 "DON'T KNOW" 9999 "INAPP" ;
label define B1PA9     1 "HIGHER" 2 "LOWER" 3 "ABOUT THE SAME" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PA9A    1 "A LOT" 2 "SOMEWHAT" 3 "A LITTLE" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PA9B    1 "A LOT" 2 "SOMEWHAT" 3 "A LITTLE" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PA10A   1 "YES" 2 "NO" 6 "NO ONE" 7 "DON'T KNOW" ;
label define B1PA10B   1 "YES" 2 "NO" 6 "NO ONE" 7 "DON'T KNOW" ;
label define B1PA10C   1 "YES" 2 "NO" 6 "NO ONE" 7 "DON'T KNOW" ;
label define B1PA10D   1 "YES" 2 "NO" 6 "NO ONE" 7 "DON'T KNOW" ;
label define B1PA10E   1 "YES" 2 "NO" 6 "NO ONE" 7 "DON'T KNOW" ;
label define B1PA10F   1 "YES" 2 "NO" 6 "NO ONE" 7 "DON'T KNOW" ;
label define B1PA10G   1 "YES" 2 "NO" 6 "NO ONE" 7 "DON'T KNOW" ;
label define B1PA10H   1 "YES" 2 "NO" 6 "NO ONE" 7 "DON'T KNOW" ;
label define B1PA11    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA12    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA13    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA14    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA15    1 "BYPASS" 2 "MEDICATION" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PA16    1 "VERY" 2 "SOMEWHAT" 3 "NOT VERY SURE" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PA17    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA18    1 "YES" 2 "NO" 3 "CANNOT WALK BECAUSE OF CHEST PAIN"
                       4 "CANNOT WALK FOR OTHER REASONS" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PA19    1 "STOP" 2 "SLOW DOWN" 3 "CONTINUE AT THE SAME PACE"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA20    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA21    1 "10 MINUTES OR LESS" 2 "MORE THAN 10 MINUTES"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA22    1 "CENTER OF CHEST" 2 "LEFT SIDE OF CHEST ONLY"
                       3 "LEFT SIDE OF CHEST AND LEFT ARM"
                       4 "SOMEWHERE ELSE (SPECIFY LOCATION)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PA23    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA23A   96 "96 OR MORE ATTACKS" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define B1PA23B   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA23CA  1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define B1PA23CB  1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define B1PA23CC  1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define B1PA23CD  1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define B1PA23CE  1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define B1PA23CF  1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define B1PA23CG  1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define B1PA23CH  1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define B1PA23CI  1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define B1PA23CJ  1 "YES" 2 "NO" 11 "NONE" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define B1PA24    1 "YES" 2 "NO" 3 "SUSPECTS" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PA24A   97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PA24B   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA24C   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA24D   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA24EA  1 "YES" 2 "NO" 7 "DON'T KNOW" 9 "INAPP" ;
label define B1PA24EB  1 "YES" 2 "NO" 7 "DON'T KNOW" 9 "INAPP" ;
label define B1PA24EC  1 "YES" 2 "NO" 7 "DON'T KNOW" 9 "INAPP" ;
label define B1PA24ED  1 "YES" 2 "NO" 7 "DON'T KNOW" 9 "INAPP" ;
label define B1PA24EE  1 "YES" 2 "NO" 7 "DON'T KNOW" 9 "INAPP" ;
label define B1PA24EF  1 "YES" 2 "NO" 7 "DON'T KNOW" 9 "INAPP" ;
label define B1PA25NM  0 "LESS THAN ONE MONTH" 96 "NEVER" 97 "DON'T KNOW" ;
label define B1PA25IN  1 "MONTHS" 2 "YEARS" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PA25A   1 "LOW" 2 "ABOUT NORMAL" 3 "SLIGHTLY RAISED" 4 "HIGH"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA25BS  997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PA25BD  997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PA26    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA27    1 "HIGHER" 2 "LOWER" 3 "ABOUT THE SAME" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PA27A   1 "A LOT" 2 "SOMEWHAT" 3 "A LITTLE" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PA27B   1 "A LOT" 2 "SOMEWHAT" 3 "A LITTLE" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PA28A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA28B   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA28C   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA28D   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA28E   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA28F   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA28G   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA28H   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA28I   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA28J   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA28AA  97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PA28BB  97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PA28CC  97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PA28DD  97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PA28EE  97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PA28FF  97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PA28GG  97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PA28HH  97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PA28II  97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PA28JJ  97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PA29    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA29AA  1 "YES" 2 "NO" 7 "DON'T KNOW" 9 "INAPP" ;
label define B1PA29AB  1 "YES" 2 "NO" 7 "DON'T KNOW" 9 "INAPP" ;
label define B1PA29AC  1 "YES" 2 "NO" 7 "DON'T KNOW" 9 "INAPP" ;
label define B1PA29AD  1 "YES" 2 "NO" 7 "DON'T KNOW" 9 "INAPP" ;
label define B1PA29AE  1 "YES" 2 "NO" 7 "DON'T KNOW" 9 "INAPP" ;
label define B1PA29AF  1 "YES" 2 "NO" 7 "DON'T KNOW" 9 "INAPP" ;
label define B1PA29AG  1 "YES" 2 "NO" 7 "DON'T KNOW" 9 "INAPP" ;
label define B1PA29AH  1 "YES" 2 "NO" 7 "DON'T KNOW" 9 "INAPP" ;
label define B1PA29AI  1 "YES" 2 "NO" 7 "DON'T KNOW" 9 "INAPP" ;
label define B1PA30A   1 "YES" 2 "NO" 7 "DON'T KNOW" 9 "INAPP" ;
label define B1PA30B   1 "YES" 2 "NO" 7 "DON'T KNOW" 9 "INAPP" ;
label define B1PA30C   1 "YES" 2 "NO" 7 "DON'T KNOW" 9 "INAPP" ;
label define B1PA30D   1 "YES" 2 "NO" 7 "DON'T KNOW" 9 "INAPP" ;
label define B1PA30E   1 "YES" 2 "NO" 7 "DON'T KNOW" 9 "INAPP" ;
label define B1PA30F   1 "YES" 2 "NO" 7 "DON'T KNOW" 9 "INAPP" ;
label define B1PA31A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA31B   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA31C   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA31D   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA31E   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA31F   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA31H   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA31I   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA31J   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA32A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA32C   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA32D   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA32E   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA32G   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA32H   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA32J   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA33A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA33C   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA33D   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA33E   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA33G   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA33H   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA33J   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA34A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA34B   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA34C   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA34D   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA34E   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA34F   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA34H   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA34I   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA34J   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA35A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA35B   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA35C   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA35D   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA35E   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA35F   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA35G   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA35H   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA35I   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA35J   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA36A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA36AM  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PA36AY  9997 "DON'T KNOW" 9999 "INAPP" ;
label define B1PA36B   1 "ONE OVARY REMOVED" 2 "BOTH OVARIES REMOVED" 3 "NO"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA36C   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA36DM  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PA36DY  9997 "DON'T KNOW" 9999 "INAPP" ;
label define B1PA36EM  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PA36EY  9997 "DON'T KNOW" 9999 "INAPP" ;
label define B1PA37    96 "NEVER HAD A CIGARETTE" 97 "DON'T KNOW"
                       98 "REFUSED" ;
label define B1PA38A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA38B   97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PA39    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA40    96 "96 OR MORE CIGARETTES A DAY" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define B1PA41    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA42    97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PA43    96 "96 OR MORE CIGARETTES PER DAY" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define B1PA44    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA45A   1 "YES" 2 "NO" 4 "NO ONE" 7 "DON'T KNOW" ;
label define B1PA45B   1 "YES" 2 "NO" 4 "NO ONE" 7 "DON'T KNOW" ;
label define B1PA45C   1 "YES" 2 "NO" 4 "NO ONE" 7 "DON'T KNOW" ;
label define B1PA46    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA47    1 "YES" 2 "NO" 3 "NEVER HAD A JOB" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PA48    1 "YES" 2 "NO" 3 "DON'T CURRENTLY HAVE A JOB"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA49    96 "NEVER HAD A DRINK" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define B1PA50    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA51    1 "EVERY DAY" 2 "5 OR 6 DAYS A WEEK"
                       3 "3 OR 4 DAYS A WEEK" 4 "1 OR 2 DAYS A WEEK"
                       5 "LESS THAN ONE DAY A WEEK"
                       6 "NEVER DRINK (VOLUNTEERED)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PA51A   1 "3 OR 4 DAYS A MONTH" 2 "1 OR 2 DAYS A MONTH"
                       3 "LESS OFTEN THAN ONE DAY A MONTH"
                       4 "NEVER DRINK (VOLUNTEERED)"
                       6 "NEVER DRINK (VOLUNTEERED)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PA52    97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PA53    97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PA54    1 "EVERY DAY" 2 "5 OR 6 DAYS A WEEK"
                       3 "3 OR 4 DAYS A WEEK" 4 "1 OR 2 DAYS A WEEK"
                       5 "LESS THAN ONE DAY A WEEK"
                       6 "NEVER DRINK (VOLUNTEERED)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PA54A   1 "3 OR 4 DAYS A MONTH" 2 "1 OR 2 DAYS A MONTH"
                       3 "LESS OFTEN THAN ONE DAY A MONTH"
                       4 "NEVER DRINK (VOLUNTEERED)"
                       6 "NEVER DRINK (VOLUNTEERED)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PA55    97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PA56    97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PA57    0 "LESS THAN 1 YEAR" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define B1PA58    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA59    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA60    1 "YES" 2 "NO" 6 "WAS ON ANTI-DEPRESSANTS"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA61    1 "ALL DAY LONG" 2 "MOST OF THE DAY"
                       3 "ABOUT HALF THE DAY" 4 "LESS THAN HALF THE DAY"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA62    1 "EVERY DAY" 2 "ALMOST EVERY DAY"
                       3 "LESS OFTEN THAN THAT" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PA63    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA64    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA65    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA65A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA66    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA66A   1 "EVERY NIGHT" 2 "NEARLY EVERY NIGHT"
                       3 "LESS OFTEN THAN THAT" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PA67    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA68    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA69    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA70    97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PA71MO  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       96 "CURRENTLY FEEL THIS WAY, HAS NOT ENDED"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PA71YR  9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define B1PDEPAF  0 "Lowest depressed affect"
                       7 "Highest depressed affect" ;
label define B1PDEPAD  0 "Negative" 1 "Positive" ;
label define B1PA72    1 "YES" 2 "NO" 6 "WAS ON ANTI-DEPRESSANTS"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA73    1 "ALL DAY LONG" 2 "MOST OF THE DAY"
                       3 "ABOUT HALF THE DAY" 4 "LESS THAN HALF THE DAY"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA74    1 "EVERY DAY" 2 "ALMOST EVERY DAY"
                       3 "LESS OFTEN THAN THAT" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PA75    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA76    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA76A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA77    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA77A   1 "EVERY NIGHT" 2 "NEARLY EVERY NIGHT"
                       3 "LESS OFTEN THAN THAT" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PA78    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA79    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA80    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA81    97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PA82MO  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       96 "CURRENTLY FEEL THIS WAY, HAS NOT ENDED"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PA82YR  9999 "INAPP" ;
label define B1PANHED  0 "Lowest depression/anhedonia"
                       6 "Highest depression/anhedonia" ;
label define B1PANHDX  0 "Negative" 1 "Positive" ;
label define B1PDEPRE  0 "Lowest depression" 7 "Highest depression" ;
label define B1PDEPDX  0 "Negative" 1 "Positive" ;
label define B1PA83    1 "MORE" 2 "LESS" 3 "ABOUT THE SAME"
                       4 "I DON'T WORRY AT ALL (VOLUNTEERED)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PA83A   1 "A LOT MORE" 2 "SOMEWHAT" 3 "A LITTLE"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA84    1 "EVERY DAY" 2 "JUST ABOUT EVERY DAY" 3 "MOST DAYS"
                       4 "ABOUT HALF THE DAYS" 5 "LESS THAN HALF THE DAYS"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA84A   1 "ALL DAY LONG" 2 "MOST OF THE DAY" 3 "ABOUT HALF"
                       4 "LESS THAN HALF THE DAY" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PA85    1 "ONE THING" 2 "MORE THAN ONE" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PA85A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA86    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA86A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA87    1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA87A   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA88A   1 "MOST DAYS" 2 "ABOUT HALF THE DAYS"
                       3 "LESS THAN HALF THE DAYS" 4 "NEVER" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PA88B   1 "MOST DAYS" 2 "ABOUT HALF THE DAYS"
                       3 "LESS THAN HALF THE DAYS" 4 "NEVER" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PA88C   1 "MOST DAYS" 2 "ABOUT HALF THE DAYS"
                       3 "LESS THAN HALF THE DAYS" 4 "NEVER" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PA88D   1 "MOST DAYS" 2 "ABOUT HALF THE DAYS"
                       3 "LESS THAN HALF THE DAYS" 4 "NEVER" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PA88E   1 "MOST DAYS" 2 "ABOUT HALF THE DAYS"
                       3 "LESS THAN HALF THE DAYS" 4 "NEVER" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PA88F   1 "MOST DAYS" 2 "ABOUT HALF THE DAYS"
                       3 "LESS THAN HALF THE DAYS" 4 "NEVER" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PA88G   1 "MOST DAYS" 2 "ABOUT HALF THE DAYS"
                       3 "LESS THAN HALF THE DAYS" 4 "NEVER" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PA88H   1 "MOST DAYS" 2 "ABOUT HALF THE DAYS"
                       3 "LESS THAN HALF THE DAYS" 4 "NEVER" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PA88I   1 "MOST DAYS" 2 "ABOUT HALF THE DAYS"
                       3 "LESS THAN HALF THE DAYS" 4 "NEVER" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PA88J   1 "MOST DAYS" 2 "ABOUT HALF THE DAYS"
                       3 "LESS THAN HALF THE DAYS" 4 "NEVER" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PA89    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PANXIE  0 "Lowest anxiety score" 10 "highest anxiety score" ;
label define B1PANXTD  0 "Negative" 1 "Positive" ;
label define B1PA90    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA90A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA91    997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PA92    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA92A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA92B   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA92C   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA92D   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA92E   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PA92F   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PPANIC  0 "Lowest panic score" 6 "Highest panic score" ;
label define B1PPANDX  0 "Negative" 1 "Positive" ;
label define B1PB1     1 "NO SCHOOL/SOME GRADE SCHOOL (1-6)"
                       2 "EIGHTH GRADE/JUNIOR HIGH SCHOOL (7-8)"
                       3 "SOME HIGH SCHOOL (9-12 NO DIPLOMA/NO GED)" 4 "GED"
                       5 "GRADUATED FROM HIGH SCHOOL"
                       6 "1 TO 2 YEARS OF COLLEGE, NO DEGREE YET"
                       7 "3 OR MORE YEARS OF COLLEGE, NO DEGREE YET"
                       8 "GRAD. FROM 2-YEAR COLLEGE, VOCATIONAL SCHOOL, OR ASSOC. DEGR"
                       9 "GRADUATED FROM A 4- OR 5-YEAR COLLEGE, OR BACHELOR'S DEGREE"
                       10 "SOME GRADUATE SCHOOL" 11 "MASTER'S DEGREE"
                       12 "PH.D., ED.D., MD, DDS, LLB, LLD, JD, OR OTHER PROFESS'NL DEG"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PB2     97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PB3A    1 "YES" 2 "NO" 7 "DON'T KNOW" 9 "INAPP" ;
label define B1PB3B    1 "YES" 2 "NO" 7 "DON'T KNOW" 9 "INAPP" ;
label define B1PB3C    1 "YES" 2 "NO" 7 "DON'T KNOW" 9 "INAPP" ;
label define B1PB3D    1 "YES" 2 "NO" 7 "DON'T KNOW" 9 "INAPP" ;
label define B1PB3E    1 "YES" 2 "NO" 7 "DON'T KNOW" 9 "INAPP" ;
label define B1PB3F    1 "YES" 2 "NO" 7 "DON'T KNOW" 9 "INAPP" ;
label define B1PB3G    1 "YES" 2 "NO" 7 "DON'T KNOW" 9 "INAPP" ;
label define B1PB3H    1 "YES" 2 "NO" 7 "DON'T KNOW" 9 "INAPP" ;
label define B1PB3I    1 "YES" 2 "NO" 7 "DON'T KNOW" 9 "INAPP" ;
label define B1PB3J    1 "YES" 2 "NO" 7 "DON'T KNOW" 9 "INAPP" ;
label define B1PB3K    1 "YES" 2 "NO" 7 "DON'T KNOW" 9 "INAPP" ;
label define B1PBWORK  1 "WORKING NOW" 2 "SELF-EMPLOYED"
                       3 "LOOKING FOR WORK; UNEMPLOYED"
                       4 "TEMPORARILY LAID OFF" 5 "RETIRED" 6 "HOMEMAKER"
                       7 "FULL-TIME STUDENT" 8 "PART-TIME STUDENT"
                       9 "MATERNITY OR SICK LEAVE (VOLUNTEERED)"
                       10 "PERMANENTLY DISABLED (VOLUNTEERED)"
                       11 "OTHER (SPECIFY)" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define B1PB4N    996 "NEVER HAD A PAYING JOB" 997 "DON'T KNOW"
                       998 "REFUSED" 999 "INAPP" ;
label define B1PB4M    1 "DAYS" 2 "WEEKS" 3 "MONTHS" 4 "YEARS" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PB5     1 "FIRED" 2 "LAID OFF" 3 "PLANT/COMPANY CLOSED"
                       4 "QUIT" 5 "RETIRED"
                       6 "WORK FORCE REDUCTION (VOLUNTEERED)" 7 "OTHER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PB6     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PB7     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PB7A    996 "996 OR MORE PEOPLE" 997 "DON'T KNOW"
                       998 "REFUSED" 999 "INAPP" ;
label define B1PB8     1 "HAS EMPLOYER" 2 "SELF-EMPLOYED" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1POCC    3 "LEGISLATORS"
                       4 "CHIEF EXECUTIVES AND GENERAL ADMINISTRATORS, PUBLIC ADMINIS"
                       5 "ADMINISTRATORS AND OFFICIALS, PUBLIC ADMINISTRATION"
                       6 "ADMINISTRATORS, PROTECTIVE SERVICES"
                       7 "FINANCIAL MANAGERS"
                       8 "PERSONNEL AND LABOR RELATIONS MANAGERS"
                       9 "PURCHASING MANAGERS"
                       13 "MANAGERS, MARKETING, ADVERTISING, AND PUBLIC RELATIONS"
                       14 "ADMINISTRATORS, EDUCATION AND RELATED FIELDS"
                       15 "MANAGERS, MEDICINE AND HEALTH"
                       16 "POSTMASTERS AND MAIL SUPERINTENDENTS"
                       17 "MANAGERS, FOOD SERVING AND LODGING ESTABLISHMENTS"
                       18 "MANAGERS, PROPERTIES AND REAL ESTATE"
                       19 "FUNERAL DIRECTORS"
                       21 "MANAGERS, SERVICE ORGANIZATIONS, N.E.C."
                       22 "MANAGERS AND ADMINISTRATORS, N.E.C."
                       23 "ACCOUNTANTS AND AUDITORS" 24 "UNDERWRITERS"
                       25 "OTHER FINANCIAL OFFICERS" 26 "MANAGEMENT ANALYSTS"
                       27 "PERSONNEL, TRAINING, AND LABOR RELATIONS SPECIALISTS"
                       28 "PURCHASING AGENTS AND BUYERS, FARM PRODUCTS"
                       29 "BUYERS, WHOLESALE AND RETAIL TRADE, EXCEPT FARM PRODUCTS"
                       33 "PURCHASING AGENTS AND BUYERS, N.E.C."
                       34 "BUSINESS AND PROMOTION AGENTS"
                       35 "CONSTRUCTION INSPECTORS"
                       36 "INSPECTORS AND COMPLIANCE OFFICERS, EXCEPT CONSTRUCTION"
                       37 "MANAGEMENT RELATED OCCUPATIONS, N.E.C."
                       43 "ARCHITECTS" 44 "AEROSPACE ENGINEERS"
                       45 "METALLURGICAL AND MATERIALS ENGINEERS"
                       46 "MINING ENGINEERS" 47 "PETROLEUM ENGINEERS"
                       48 "CHEMICAL ENGINEERS" 49 "NUCLEAR ENGINEERS"
                       53 "CIVIL ENGINEERS" 54 "AGRICULTURAL ENGINEERS"
                       55 "ELECTRICAL AND ELECTRONIC ENGINEERS"
                       56 "INDUSTRIAL ENGINEERS" 57 "MECHANICAL ENGINEERS"
                       58 "MARINE AND NAVAL ARCHITECTS"
                       59 "ENGINEERS, N.E.C."
                       63 "SURVEYORS AND MAPPING SCIENTISTS"
                       64 "COMPUTER SYSTEMS ANALYSTS AND SCIENTISTS"
                       65 "OPERATIONS AND SYSTEMS RESEARCHERS AND ANALYSTS"
                       66 "ACTUARIES" 67 "STATISTICIANS"
                       68 "MATHEMATICAL SCIENTISTS, N.E.C."
                       69 "PHYSICISTS AND ASTRONOMERS"
                       73 "CHEMISTS, EXCEPT BIOCHEMISTS"
                       74 "ATMOSPHERIC AND SPACE SCIENTISTS"
                       75 "GEOLOGISTS AND GEODESISTS"
                       76 "PHYSICAL SCIENTISTS, N.E.C."
                       77 "AGRICULTURAL AND FOOD SCIENTISTS"
                       78 "BIOLOGICAL AND LIFE SCIENTISTS"
                       79 "FORESTRY AND CONSERVATION SCIENTISTS"
                       83 "MEDICAL SCIENTISTS" 84 "PHYSICIANS" 85 "DENTISTS"
                       86 "VETERINARIANS" 87 "OPTOMETRISTS" 88 "PODIATRISTS"
                       89 "HEALTH DIAGNOSING PRACTITIONERS, N.E.C."
                       95 "REGISTERED NURSES" 96 "PHARMACISTS"
                       97 "DIETITIANS" 98 "RESPIRATORY THERAPISTS"
                       99 "OCCUPATIONAL THERAPISTS" 103 "PHYSICAL THERAPISTS"
                       104 "SPEECH THERAPISTS" 105 "THERAPISTS, N.E.C."
                       106 "PHYSICIANS ASSISTANTS"
                       113 "EARTH, ENVIRONMENTAL, AND MARINE SCIENCE TEACHERS"
                       114 "BIOLOGICAL SCIENCE TEACHERS"
                       115 "CHEMISTRY TEACHERS" 116 "PHYSICS TEACHERS"
                       117 "NATURAL SCIENCE TEACHERS, N.E.C."
                       118 "PSYCHOLOGY TEACHERS" 119 "ECONOMICS TEACHERS"
                       123 "HISTORY TEACHERS"
                       124 "POLITICAL SCIENCE TEACHERS"
                       125 "SOCIOLOGY TEACHERS"
                       126 "SOCIAL SCIENCE TEACHERS, N.E.C."
                       127 "ENGINEERING TEACHERS"
                       128 "MATHEMATICAL SCIENCE TEACHERS"
                       129 "COMPUTER SCIENCE TEACHERS"
                       133 "MEDICAL SCIENCE TEACHERS"
                       134 "HEALTH SPECIALTIES TEACHERS"
                       135 "BUSINESS, COMMERCE, AND MARKETING TEACHERS"
                       136 "AGRICULTURE AND FORESTRY TEACHERS"
                       137 "ART, DRAMA, AND MUSIC TEACHERS"
                       138 "PHYSICAL EDUCATION TEACHERS"
                       139 "EDUCATION TEACHERS" 143 "ENGLISH TEACHERS"
                       144 "FOREIGN LANGUAGE TEACHERS" 145 "LAW TEACHERS"
                       146 "SOCIAL WORK TEACHERS" 147 "THEOLOGY TEACHERS"
                       148 "TRADE AND INDUSTRIAL TEACHERS"
                       149 "HOME ECONOMICS TEACHERS"
                       153 "TEACHERS, POSTSECONDARY, N.E.C."
                       154 "POSTSECONDARY TEACHERS, SUBJECT NOT SPECIFIED"
                       155 "TEACHERS, PREKINDERGARTEN AND KINDERGARTEN"
                       156 "TEACHERS, ELEMENTARY SCHOOL"
                       157 "TEACHERS, SECONDARY SCHOOL"
                       158 "TEACHERS, SPECIAL EDUCATION"
                       159 "TEACHERS, N.E.C."
                       163 "COUNSELORS, EDUCATIONAL AND VOCATIONAL"
                       164 "LIBRARIANS" 165 "ARCHIVISTS AND CURATORS"
                       166 "ECONOMISTS" 167 "PSYCHOLOGISTS"
                       168 "SOCIOLOGISTS" 169 "SOCIAL SCIENTISTS, N.E.C."
                       173 "URBAN PLANNERS" 174 "SOCIAL WORKERS"
                       175 "RECREATION WORKERS" 176 "CLERGY"
                       177 "RELIGIOUS WORKERS, N.E.C." 178 "LAWYERS"
                       179 "JUDGES" 183 "AUTHORS" 184 "TECHNICAL WRITERS"
                       185 "DESIGNERS" 186 "MUSICIANS AND COMPOSERS"
                       187 "ACTORS AND DIRECTORS"
                       188 "PAINTERS, SCULPTORS, CRAFT-ARTISTS, AND ARTIST PRINTMAKERS"
                       189 "PHOTOGRAPHERS" 193 "DANCERS"
                       194 "ARTISTS, PERFORMERS, AND RELATED WORKERS, N.E.C."
                       195 "EDITORS AND REPORTERS"
                       197 "PUBLIC RELATIONS SPECIALISTS" 198 "ANNOUNCERS"
                       199 "ATHLETES"
                       203 "CLINICAL LABORATORY TECHNOLOGISTS AND TECHNICIANS"
                       204 "DENTAL HYGIENISTS"
                       205 "HEALTH RECORD TECHNOLOGISTS AND TECHNICIANS"
                       206 "RADIOLOGIC TECHNICIANS"
                       207 "LICENSED PRACTICAL NURSES"
                       208 "HEALTH TECHNOLOGISTS AND TECHNICIANS, N.E.C."
                       213 "ELECTRICAL AND ELECTRONIC TECHNICIANS"
                       214 "INDUSTRIAL ENGINEERING TECHNICIANS"
                       215 "MECHANICAL ENGINEERING TECHNICIANS"
                       216 "ENGINEERING TECHNICIANS, N.E.C."
                       217 "DRAFTING OCCUPATIONS"
                       218 "SURVEYING AND MAPPING TECHNICIANS"
                       223 "BIOLOGICAL TECHNICIANS"
                       224 "CHEMICAL TECHNICIANS"
                       225 "SCIENCE TECHNICIANS, N.E.C."
                       226 "AIRPLANE PILOTS AND NAVIGATORS"
                       227 "AIR TRAFFIC CONTROLLERS"
                       228 "BROADCAST EQUIPMENT OPERATORS"
                       229 "COMPUTER PROGRAMMERS"
                       233 "TOOL PROGRAMMERS, NUMERICAL CONTROL"
                       234 "LEGAL ASSISTANTS" 235 "TECHNICIANS, N.E.C."
                       243 "SUPERVISORS AND PROPRIETORS, SALES OCCUPATIONS"
                       253 "INSURANCE SALES OCCUPATIONS"
                       254 "REAL ESTATE SALES OCCUPATIONS"
                       255 "SECURITIES AND FINANCIAL SERVICES SALES OCCUPATIONS"
                       256 "ADVERTISING AND RELATED SALES OCCUPATIONS"
                       257 "SALES OCCUPATIONS, OTHER BUSINESS SERVICES"
                       258 "SALES ENGINEERS"
                       259 "SALES REPRESENTATIVES, MINING, MANUFACTURING, AND WHOLESALE"
                       263 "SALES WORKERS, MOTOR VEHICLES AND BOATS"
                       264 "SALES WORKERS, APPAREL"
                       265 "SALES WORKERS, SHOES"
                       266 "SALES WORKERS, FURNITURE AND HOME FURNISHINGS"
                       267 "SALES WORKERS, RADIO, TV, HI-FI, AND APPLIANCES"
                       268 "SALES WORKERS, HARDWARE AND BUILDING SUPPLIES"
                       269 "SALES WORKERS, PARTS"
                       274 "SALES WORKERS, OTHER COMMODITIES"
                       275 "SALES COUNTER CLERKS" 276 "CASHIERS"
                       277 "STREET AND DOOR-TO-DOOR SALES WORKERS"
                       278 "NEWS VENDORS"
                       283 "DEMONSTRATORS, PROMOTERS AND MODELS, SALES"
                       284 "AUCTIONEERS"
                       285 "SALES SUPPORT OCCUPATIONS, N.E.C."
                       303 "SUPERVISORS, GENERAL OFFICE"
                       304 "SUPERVISORS, COMPUTER EQUIPMENT OPERATORS"
                       305 "SUPERVISORS, FINANCIAL RECORDS PROCESSING"
                       306 "CHIEF COMMUNICATIONS OPERATORS"
                       307 "SUPERVISORS, DISTRIBUTION, SCHEDULING, AND ADJUSTING CLERKS"
                       308 "COMPUTER OPERATORS"
                       309 "PERIPHERAL EQUIPMENT OPERATORS" 313 "SECRETARIES"
                       314 "STENOGRAPHERS" 315 "TYPISTS" 316 "INTERVIEWERS"
                       317 "HOTEL CLERKS"
                       318 "TRANSPORTATION TICKET AND RESERVATION AGENTS"
                       319 "RECEPTIONISTS" 323 "INFORMATION CLERKS, N.E.C."
                       325 "CLASSIFIED-AD CLERKS" 326 "CORRESPONDENCE CLERKS"
                       327 "ORDER CLERKS"
                       328 "PERSONNEL CLERKS, EXCEPT PAYROLL AND TIMEKEEPING"
                       329 "LIBRARY CLERKS" 335 "FILE CLERKS"
                       336 "RECORDS CLERKS"
                       337 "BOOKKEEPERS, ACCOUNTING, AND AUDITING CLERKS"
                       338 "PAYROLL AND TIMEKEEPING CLERKS"
                       339 "BILLING CLERKS" 343 "COST AND RATE CLERKS"
                       344 "BILLING, POSTING, AND CALCULATING MACHINE OPERATORS"
                       345 "DUPLICATING MACHINE OPERATORS"
                       346 "MAIL PREPARING AND PAPER HANDLING MACHINE OPERATORS"
                       347 "OFFICE MACHINE OPERATORS, N.E.C."
                       348 "TELEPHONE OPERATORS"
                       353 "COMMUNICATIONS EQUIPMENT OPERATORS, N.E.C."
                       354 "POSTAL CLERKS, EXCEPT MAIL CARRIERS"
                       355 "MAIL CARRIERS, POSTAL SERVICE"
                       356 "MAIL CLERKS, EXCEPT POSTAL SERVICE"
                       357 "MESSENGERS" 359 "DISPATCHERS"
                       363 "PRODUCTION COORDINATORS"
                       364 "TRAFFIC, SHIPPING, AND RECEIVING CLERKS"
                       365 "STOCK AND INVENTORY CLERKS" 366 "METER READERS"
                       368 "WEIGHERS, MEASURERS, CHECKERS, AND SAMPLERS"
                       373 "EXPEDITERS"
                       374 "MATERIAL RECORDING, SCHEDULING, AND DISTRIBUTING CLERKS, N."
                       375 "INSURANCE ADJUSTERS, EXAMINERS, AND INVESTIGATORS"
                       376 "INVESTIGATORS AND ADJUSTERS, EXCEPT INSURANCE"
                       377 "ELIGIBILITY CLERKS, SOCIAL WELFARE"
                       378 "BILL AND ACCOUNT COLLECTORS"
                       379 "GENERAL OFFICE CLERKS" 383 "BANK TELLERS"
                       384 "PROOFREADERS" 385 "DATA-ENTRY KEYERS"
                       386 "STATISTICAL CLERKS" 387 "TEACHERS AIDES"
                       389 "ADMINISTRATIVE SUPPORT OCCUPATIONS, N.E.C."
                       403 "LAUNDERERS AND IRONERS"
                       404 "COOKS, PRIVATE HOUSEHOLD"
                       405 "HOUSEKEEPERS AND BUTLERS"
                       406 "CHILD CARE WORKERS, PRIVATE HOUSEHOLD"
                       407 "PRIVATE HOUSEHOLD CLEANERS AND SERVANTS"
                       413 "SUPERVISORS, FIREFIGHTING AND FIRE PREVENTION OCCUPATIONS"
                       414 "SUPERVISORS, POLICE AND DETECTIVES"
                       415 "SUPERVISORS, GUARDS"
                       416 "FIRE INSPECTION AND FIRE PREVENTION OCCUPATIONS"
                       417 "FIREFIGHTING OCCUPATIONS"
                       418 "POLICE AND DETECTIVES, PUBLIC SERVICE"
                       423 "SHERIFFS, BAILIFFS, AND OTHER LAW ENFORCEMENT OFFICERS"
                       424 "CORRECTIONAL INSTITUTION OFFICERS"
                       425 "CROSSING GUARDS"
                       426 "GUARDS AND POLICE, EXCEPT PUBLIC SERVICE"
                       427 "PROTECTIVE SERVICE OCCUPATIONS, N.E.C."
                       433 "SUPERVISORS, FOOD PREPARATION AND SERVICE OCCUPATIONS"
                       434 "BARTENDERS" 435 "WAITERS AND WAITRESSES"
                       436 "COOKS"
                       438 "FOOD COUNTER, FOUNTAIN AND RELATED OCCUPATIONS"
                       439 "KITCHEN WORKERS, FOOD PREPARATION"
                       443 "WAITERS/WAITRESSES ASSISTANTS"
                       444 "MISCELLANEOUS FOOD PREPARATION OCCUPATIONS"
                       445 "DENTAL ASSISTANTS"
                       446 "HEALTH AIDES, EXCEPT NURSING"
                       447 "NURSING AIDES, ORDERLIES, AND ATTENDANTS"
                       448 "SUPERVISORS, CLEANING AND BUILDING SERVICE WORKERS"
                       449 "MAIDS AND HOUSEMEN" 453 "JANITORS AND CLEANERS"
                       454 "ELEVATOR OPERATORS"
                       455 "PEST CONTROL OCCUPATIONS"
                       456 "SUPERVISORS, PERSONAL SERVICE OCCUPATIONS"
                       457 "BARBERS" 458 "HAIRDRESSERS AND COSMETOLOGISTS"
                       459 "ATTENDANTS, AMUSEMENT AND RECREATION FACILITIES"
                       461 "GUIDES" 462 "USHERS"
                       463 "PUBLIC TRANSPORTATION ATTENDANTS"
                       464 "BAGGAGE PORTERS AND BELLHOPS"
                       465 "WELFARE SERVICE AIDES"
                       466 "FAMILY CHILD CARE PROVIDERS"
                       467 "EARLY CHILDHOOD TEACHERS ASSISTANTS"
                       468 "CHILD CARE WORKERS, N.E.C."
                       469 "PERSONAL SERVICE OCCUPATIONS, N.E.C."
                       473 "FARMERS, EXCEPT HORTICULTURAL"
                       474 "HORTICULTURAL SPECIALTY FARMERS"
                       475 "MANAGERS, FARMS, EXCEPT HORTICULTURAL"
                       476 "MANAGERS, HORTICULTURAL SPECIALTY FARMS"
                       477 "SUPERVISORS, FARM WORKERS" 479 "FARM WORKERS"
                       483 "MARINE LIFE CULTIVATION WORKERS"
                       484 "NURSERY WORKERS"
                       485 "SUPERVISORS, RELATED AGRICULTURAL OCCUPATIONS"
                       486 "GROUNDSKEEPERS AND GARDENERS, EXCEPT FARM"
                       487 "ANIMAL CARETAKERS, EXCEPT FARM"
                       488 "GRADERS AND SORTERS, AGRICULTURAL PRODUCTS"
                       489 "INSPECTORS, AGRICULTURAL PRODUCTS"
                       494 "SUPERVISORS, FORESTRY AND LOGGING WORKERS"
                       495 "FORESTRY WORKERS, EXCEPT LOGGING"
                       496 "TIMBER CUTTING AND LOGGING OCCUPATIONS"
                       497 "CAPTAINS AND OTHER OFFICERS, FISHING VESSELS"
                       498 "FISHERS" 499 "HUNTERS AND TRAPPERS"
                       503 "SUPERVISORS, MECHANICS AND REPAIRERS"
                       505 "AUTOMOBILE MECHANICS, EXCEPT APPRENTICES"
                       506 "AUTOMOBILE MECHANIC APPRENTICES"
                       507 "BUS, TRUCK, AND STATIONARY ENGINE MECHANICS"
                       508 "AIRCRAFT ENGINE MECHANICS"
                       509 "SMALL ENGINE REPAIRERS"
                       514 "AUTOMOBILE BODY AND RELATED REPAIRERS"
                       515 "AIRCRAFT MECHANICS, EXCEPT ENGINE"
                       516 "HEAVY EQUIPMENT MECHANICS"
                       517 "FARM EQUIPMENT MECHANICS"
                       518 "INDUSTRIAL MACHINERY REPAIRERS"
                       519 "MACHINERY MAINTENANCE OCCUPATIONS"
                       523 "ELECTRONIC REPAIRERS, COMMUNICATIONS AND INDUSTRIAL EQUIPME"
                       525 "DATA PROCESSING EQUIPMENT REPAIRERS"
                       526 "HOUSEHOLD APPLIANCE AND POWER TOOL REPAIRERS"
                       527 "TELEPHONE LINE INSTALLERS AND REPAIRERS"
                       529 "TELEPHONE INSTALLERS AND REPAIRERS"
                       533 "MISCELLANEOUS ELECTRICAL AND ELECTRONIC EQUIPMENT REPAIRERS"
                       534 "HEATING, AIR CONDITIONING, AND REFRIGERATION MECHANICS"
                       535 "CAMERA, WATCH, AND MUSICAL INSTRUMENT REPAIRERS"
                       536 "LOCKSMITHS AND SAFE REPAIRERS"
                       538 "OFFICE MACHINE REPAIRERS"
                       539 "MECHANICAL CONTROLS AND VALVE REPAIRERS"
                       543 "ELEVATOR INSTALLERS AND REPAIRERS"
                       544 "MILLWRIGHTS"
                       547 "SPECIFIED MECHANICS AND REPAIRERS, N.E.C."
                       549 "NOT SPECIFIED MECHANICS AND REPAIRERS"
                       553 "SUPERVISORS, BRICKMASONS, STONEMASONS, AND TILE SETTERS"
                       554 "SUPERVISORS, CARPENTERS AND RELATED WORKERS"
                       555 "SUPERVISORS, ELECTRICIANS AND POWER TRANSMISSION INSTALLERS"
                       556 "SUPERVISORS, PAINTERS, PAPERHANGERS, AND PLASTERERS"
                       557 "SUPERVISORS, PLUMBERS, PIPEFITTERS, AND STEAMFITTERS"
                       558 "SUPERVISORS, CONSTRUCTION N.E.C."
                       563 "BRICKMASONS AND STONEMASONS, EXCEPT APPRENTICES"
                       564 "BRICKMASON AND STONEMASON APPRENTICES"
                       565 "TILE SETTERS, HARD AND SOFT"
                       566 "CARPET INSTALLERS"
                       567 "CARPENTERS, EXCEPT APPRENTICES"
                       569 "CARPENTER APPRENTICES" 573 "DRYWALL INSTALLERS"
                       575 "ELECTRICIANS, EXCEPT APPRENTICES"
                       576 "ELECTRICIAN APPRENTICES"
                       577 "ELECTRICAL POWER INSTALLERS AND REPAIRERS"
                       579 "PAINTERS, CONSTRUCTION AND MAINTENANCE"
                       583 "PAPERHANGERS" 584 "PLASTERERS"
                       585 "PLUMBERS, PIPEFITTERS, AND STEAMFITTERS, EXCEPT APPRENTICES"
                       587 "PLUMBER, PIPEFITTER, AND STEAMFITTER APPRENTICES"
                       588 "CONCRETE AND TERRAZZO FINISHERS" 589 "GLAZIERS"
                       593 "INSULATION WORKERS"
                       594 "PAVING, SURFACING, AND TAMPING EQUIPMENT OPERATORS"
                       595 "ROOFERS" 596 "SHEETMETAL DUCT INSTALLERS"
                       597 "STRUCTURAL METAL WORKERS" 598 "DRILLERS, EARTH"
                       599 "CONSTRUCTION TRADES, N.E.C."
                       613 "SUPERVISORS, EXTRACTIVE OCCUPATIONS"
                       614 "DRILLERS, OIL WELL" 615 "EXPLOSIVES WORKERS"
                       616 "MINING MACHINE OPERATORS"
                       617 "MINING OCCUPATIONS, N.E.C."
                       628 "SUPERVISORS, PRODUCTION OCCUPATIONS"
                       634 "TOOL AND DIE MAKERS, EXCEPT APPRENTICES"
                       635 "TOOL AND DIE MAKER APPRENTICES"
                       636 "PRECISION ASSEMBLERS, METAL"
                       637 "MACHINISTS, EXCEPT APPRENTICES"
                       639 "MACHINIST APPRENTICES" 643 "BOILERMAKERS"
                       644 "PRECISION GRINDERS, FILERS, AND TOOL SHARPENERS"
                       645 "PATTERNMAKERS AND MODEL MAKERS, METAL"
                       646 "LAY-OUT WORKERS"
                       647 "PRECIOUS STONES AND METALS WORKERS , JEWELERS"
                       649 "ENGRAVERS, METAL"
                       653 "SHEET METAL WORKERS, EXCEPT APPRENTICES"
                       654 "SHEET METAL WORKER APPRENTICES"
                       655 "MISCELLANEOUS PRECISION METAL WORKERS"
                       656 "PATTERNMAKERS AND MODEL MAKERS, WOOD"
                       657 "CABINET MAKERS AND BENCH CARPENTERS"
                       658 "FURNITURE AND WOOD FINISHERS"
                       659 "MISCELLANEOUS PRECISION WOODWORKERS"
                       666 "DRESSMAKERS" 667 "TAILORS" 668 "UPHOLSTERERS"
                       669 "SHOE REPAIRERS"
                       674 "MISCELLANEOUS PRECISION APPAREL AND FABRIC WORKERS"
                       675 "HAND MOLDERS AND SHAPERS, EXCEPT JEWELERS"
                       676 "PATTERNMAKERS, LAY-OUT WORKERS, AND CUTTERS"
                       677 "OPTICAL GOODS WORKERS"
                       678 "DENTAL LABORATORY AND MEDICAL APPLIANCE TECHNICIANS"
                       679 "BOOKBINDERS"
                       683 "ELECTRICAL AND ELECTRONIC EQUIPMENT ASSEMBLERS"
                       684 "MISCELLANEOUS PRECISION WORKERS, N.E.C."
                       686 "BUTCHERS AND MEAT CUTTERS" 687 "BAKERS"
                       688 "FOOD BATCHMAKERS"
                       689 "INSPECTORS, TESTERS, AND GRADERS"
                       693 "ADJUSTERS AND CALIBRATORS"
                       694 "WATER AND SEWAGE TREATMENT PLANT OPERATORS"
                       695 "POWER PLANT OPERATORS" 696 "STATIONARY ENGINEERS"
                       699 "MISCELLANEOUS PLANT AND SYSTEM OPERATORS"
                       703 "LATHE AND TURNING MACHINE SET-UP OPERATORS"
                       704 "LATHE AND TURNING MACHINE OPERATORS"
                       705 "MILLING AND PLANING MACHINE OPERATORS"
                       706 "PUNCHING AND STAMPING PRESS MACHINE OPERATORS"
                       707 "ROLLING MACHINE OPERATORS"
                       708 "DRILLING AND BORING MACHINE OPERATORS"
                       709 "GRINDING, ABRADING, BUFFING, AND POLISHING MACHINE OPERATOR"
                       713 "FORGING MACHINE OPERATORS"
                       714 "NUMERICAL CONTROL MACHINE OPERATORS"
                       715 "MISCELLANEOUS METAL, PLASTIC, STONE, AND GLASS WORKING MACH"
                       717 "FABRICATING MACHINE OPERATORS, N.E.C."
                       719 "MOLDING AND CASTING MACHINE OPERATORS"
                       723 "METAL PLATING MACHINE OPERATORS"
                       724 "HEAT TREATING EQUIPMENT OPERATORS"
                       725 "MISCELLANEOUS METAL AND PLASTIC PROCESSING MACHINE OPERATOR"
                       726 "WOOD LATHE, ROUTING, AND PLANING MACHINE OPERATORS"
                       727 "SAWING MACHINE OPERATORS"
                       728 "SHAPING AND JOINING MACHINE OPERATORS"
                       729 "NAILING AND TACKING MACHINE OPERATORS"
                       733 "MISCELLANEOUS WOODWORKING MACHINE OPERATORS"
                       734 "PRINTING PRESS OPERATORS"
                       735 "PHOTOENGRAVERS AND LITHOGRAPHERS"
                       736 "TYPESETTERS AND COMPOSITORS"
                       737 "MISCELLANEOUS PRINTING MACHINE OPERATORS"
                       738 "WINDING AND TWISTING MACHINE OPERATORS"
                       739 "KNITTING, LOOPING, TAPING, AND WEAVING MACHINE OPERATORS"
                       743 "TEXTILE CUTTING MACHINE OPERATORS"
                       744 "TEXTILE SEWING MACHINE OPERATORS"
                       745 "SHOE MACHINE OPERATORS"
                       747 "PRESSING MACHINE OPERATORS"
                       748 "LAUNDERING AND DRY CLEANING MACHINE OPERATORS"
                       749 "MISCELLANEOUS TEXTILE MACHINE OPERATORS"
                       753 "CEMENTING AND GLUING MACHINE OPERATORS"
                       754 "PACKAGING AND FILLING MACHINE OPERATORS"
                       755 "EXTRUDING AND FORMING MACHINE OPERATORS"
                       756 "MIXING AND BLENDING MACHINE OPERATORS"
                       757 "SEPARATING, FILTERING, AND CLARIFYING MACHINE OPERATORS"
                       758 "COMPRESSING AND COMPACTING MACHINE OPERATORS"
                       759 "PAINTING AND PAINT SPRAYING MACHINE OPERATORS"
                       763 "ROASTING AND BAKING MACHINE OPERATORS, FOOD"
                       764 "WASHING, CLEANING, AND PICKLING MACHINE OPERATORS"
                       765 "FOLDING MACHINE OPERATORS"
                       766 "FURNACE, KILN, AND OVEN OPERATORS, EXCEPT FOOD"
                       768 "CRUSHING AND GRINDING MACHINE OPERATORS"
                       769 "SLICING AND CUTTING MACHINE OPERATORS"
                       773 "MOTION PICTURE PROJECTIONISTS"
                       774 "PHOTOGRAPHIC PROCESS MACHINE OPERATORS"
                       777 "MISC. MACHINE OPER."
                       779 "MACHINE OPER., NOT SPEC."
                       783 "WELDERS AND CUTTERS" 784 "SOLDERERS AND BRAZERS"
                       785 "ASSEMBLERS"
                       786 "HAND CUTTING AND TRIMMING OCCUPATIONS"
                       787 "HAND MOLDING, CASTING, AND FORMING OCCUPATIONS"
                       789 "HAND PAINTING, COATING, AND DECORATING OCCUPATIONS"
                       793 "HAND ENGRAVING AND PRINTING OCCUPATIONS"
                       795 "MISCELLANEOUS HAND WORKING OCCUPATIONS"
                       796 "PRODUCTION INSPECTORS, CHECKERS, AND EXAMINERS"
                       797 "PRODUCTION TESTERS"
                       798 "PRODUCTION SAMPLERS AND WEIGHERS"
                       799 "GRADERS AND SORTERS, EXCEPT AGRICULTURAL"
                       803 "SUPERVISORS, MOTOR VEHICLE OPERATORS"
                       804 "TRUCK DRIVERS" 806 "DRIVER-SALES WORKERS"
                       808 "BUS DRIVERS" 809 "TAXICAB DRIVERS AND CHAUFFEURS"
                       813 "PARKING LOT ATTENDANTS"
                       814 "MOTOR TRANSPORTATION OCCUPATIONS, N.E.C."
                       823 "RAILROAD CONDUCTORS AND YARDMASTERS"
                       824 "LOCOMOTIVE OPERATING OCCUPATIONS"
                       825 "RAILROAD BRAKE, SIGNAL, AND SWITCH OPERATORS"
                       826 "RAIL VEHICLE OPERATORS, N.E.C."
                       828 "SHIP CAPTAINS AND MATES, EXCEPT FISHING BOATS"
                       829 "SAILORS AND DECKHANDS" 833 "MARINE ENGINEERS"
                       834 "BRIDGE, LOCK, AND LIGHTHOUSE TENDERS"
                       843 "SUPERVISORS, MATERIAL MOVING EQUIPMENT OPERATORS"
                       844 "OPERATING ENGINEERS"
                       845 "LONGSHORE EQUIPMENT OPERATORS"
                       848 "HOIST AND WINCH OPERATORS"
                       849 "CRANE AND TOWER OPERATORS"
                       853 "EXCAVATING AND LOADING MACHINE OPERATORS"
                       855 "GRADER, DOZER, AND SCRAPER OPERATORS"
                       856 "INDUSTRIAL TRUCK AND TRACTOR EQUIPMENT OPERATORS"
                       859 "MISCELLANEOUS MATERIAL MOVING EQUIPMENT OPERATORS"
                       864 "SUPERVISORS, HANDLERS, EQUIPMENT CLEANERS, AND LABORERS, N."
                       865 "HELPERS, MECHANICS, AND REPAIRERS"
                       866 "HELPERS, CONSTRUCTION TRADES"
                       867 "HELPERS, SURVEYOR"
                       868 "HELPERS, EXTRACTIVE OCCUPATIONS"
                       869 "CONSTRUCTION LABORERS" 874 "PRODUCTION HELPERS"
                       875 "GARBAGE COLLECTORS" 876 "STEVEDORES"
                       877 "STOCK HANDLERS AND BAGGERS"
                       878 "MACHINE FEEDERS AND OFFBEARERS"
                       883 "FREIGHT, STOCK, AND MATERIAL HANDLERS, N.E.C."
                       885 "GARAGE AND SERVICE STATION RELATED OCCUPATIONS"
                       887 "VEHICLE WASHERS AND EQUIPMENT CLEANERS"
                       888 "HAND PACKERS AND PACKAGERS"
                       889 "LABORERS, EXC. CONST."
                       903 "COMMISSIONED OFFICERS AND WARRANT OFFICERS"
                       904 "NON-COMMISSIONED OFFICERS AND OTHER ENLISTED PERSONNEL"
                       905 "MILITARY OCCUPATION, RANK NOT SPECIFIED"
                       995 "UNKNOWN OR UNSURE" 997 "ALLOCATION REQUIRED"
                       998 "MISSING OR NOT REPORTED" 999 "INAPP" ;
label define B1PIND    10 "AGRICULTURAL PRODUCTION, CROPS"
                       11 "AGRICULTURAL PRODUCTION, LIVESTOCK"
                       12 "VETERINARY SERVICES"
                       20 "LANDSCAPE AND HORTICULTURAL SERVICES"
                       30 "AGRICULTURAL SERVICES, N.E.C." 31 "FORESTRY"
                       32 "FISHING, HUNTING, AND TRAPPING" 40 "METAL MINING"
                       41 "COAL MINING" 42 "OIL AND GAS EXTRACTION"
                       50 "NONMETALLIC MINING AND QUARRYING, EXCEPT FUELS"
                       60 "CONSTRUCTION" 100 "MEAT PRODUCTS"
                       101 "DAIRY PRODUCTS"
                       102 "CANNED, FROZEN, AND PRESERVED FRUITS AND VEGETABLES"
                       110 "GRAIN MILL PRODUCTS" 111 "BAKERY PRODUCTS"
                       112 "SUGAR AND CONFECTIONERY PRODUCTS"
                       120 "BEVERAGE INDUSTRIES"
                       121 "MISCELLANEOUS FOOD PREPARATIONS AND KINDRED PRODUCTS"
                       122 "NOT SPECIFIED FOOD INDUSTRIES"
                       130 "TOBACCO MANUFACTURES" 132 "KNITTING MILLS"
                       140 "DYEING AND FINISHING TEXTILES, EXCEPT WOOL AND KNIT"
                       141 "CARPETS AND RUGS"
                       142 "YARN, THREAD, AND FABRIC MILLS"
                       150 "MISCELLANEOUS TEXTILE MILL PRODUCTS"
                       151 "APPAREL AND ACCESSORIES, EXCEPT KNIT"
                       152 "MISCELLANEOUS FABRICATED TEXTILE PRODUCTS"
                       160 "PULP, PAPER, AND PAPERBOARD MILLS"
                       161 "MISCELLANEOUS PAPER AND PULP PRODUCTS"
                       162 "PAPERBOARD CONTAINERS AND BOXES"
                       171 "NEWSPAPER PUBLISHING AND PRINTING"
                       172 "PRINTING, PUBLISHING AND ALLIED INDUSTRIES, EXCEPT NEWSPAPER"
                       180 "PLASTICS, SYNTHETICS, AND RESINS" 181 "DRUGS"
                       182 "SOAPS AND COSMETICS"
                       190 "PAINTS, VARNISHES, AND RELATED PRODUCTS"
                       191 "AGRICULTURAL CHEMICALS"
                       192 "INDUSTRIAL AND MISCELLANEOUS CHEMICALS"
                       200 "PETROLEUM REFINING"
                       201 "MISCELLANEOUS PETROLEUM AND COAL PRODUCTS"
                       210 "TIRES AND INNER TUBES"
                       211 "OTHER RUBBER PRODUCTS AND PLASTICS FOOTWEAR AND BELTING"
                       212 "MISCELLANEOUS PLASTICS PRODUCTS"
                       220 "LEATHER TANNING AND FINISHING"
                       221 "FOOTWEAR, EXCEPT RUBBER AND PLASTIC"
                       222 "LEATHER PRODUCTS, EXCEPT FOOTWEAR" 230 "LOGGING"
                       231 "SAWMILLS, PLANING MILLS AND MILLWORK"
                       232 "WOOD BUILDINGS AND MOBILE HOMES"
                       241 "MISCELLANEOUS WOOD PRODUCTS"
                       242 "FURNITURE AND FIXTURES"
                       250 "GLASS AND GLASS PRODUCTS"
                       251 "CEMENT, CONCRETE, GYPSUM, AND PLASTER PRODUCTS"
                       252 "STRUCTURAL CLAY PRODUCTS"
                       261 "POTTERY AND RELATED PRODUCTS"
                       262 "MISCELLANEOUS NONMETALLIC MINERAL AND STONE PRODUCTS"
                       270 "BLAST FURNACES, STEELWORKS, AND FINISHING MILLS"
                       271 "IRON AND STEEL FOUNDRIES"
                       272 "PRIMARY ALUMINUM INDUSTRIES"
                       280 "OTHER PRIMARY METAL INDUSTRIES"
                       281 "CUTLERY, HANDTOOLS, AND GENERAL HARDWARE"
                       282 "FABRICATED STRUCTURAL METAL PRODUCTS"
                       290 "SCREW MACHINE PRODUCTS"
                       291 "METAL FORGINGS AND STAMPINGS" 292 "ORDNANCE"
                       300 "MISCELLANEOUS FABRICATED METAL PRODUCTS"
                       301 "NOT SPECIFIED METAL INDUSTRIES"
                       310 "ENGINES AND TURBINES"
                       311 "FARM MACHINERY AND EQUIPMENT"
                       312 "CONSTRUCTION AND MATERIAL HANDLING MACHINES"
                       320 "METALWORKING MACHINERY"
                       321 "OFFICE AND ACCOUNTING MACHINES"
                       322 "COMPUTERS AND RELATED EQUIPMENT"
                       331 "MACHINERY, EXCEPT ELECTRICAL, N.E.C."
                       332 "NOT SPECIFIED MACHINERY"
                       340 "HOUSEHOLD APPLIANCES"
                       341 "RADIO, TV, AND COMMUNICATION EQUIPMENT"
                       342 "ELECTRICAL MACHINERY, EQUIPMENT, AND SUPPLIES, N.E.C."
                       350 "NOT SPECIFIED ELECTRICAL MACHINERY, EQUIPMENT, AND SUPPLIES"
                       351 "MOTOR VEHICLES AND MOTOR VEHICLE EQUIPMENT"
                       352 "AIRCRAFT AND PARTS"
                       360 "SHIP AND BOAT BUILDING AND REPAIRING"
                       361 "RAILROAD LOCOMOTIVES AND EQUIPMENT"
                       362 "GUIDED MISSILES, SPACE VEHICLES, AND PARTS"
                       370 "CYCLES AND MISCELLANEOUS TRANSPORTATION EQUIPMENT"
                       371 "SCIENTIFIC AND CONTROLLING INSTRUMENTS"
                       372 "MEDICAL, DENTAL, AND OPTICAL INSTRUMENTS AND SUPPLIES"
                       380 "PHOTOGRAPHIC EQUIPMENT AND SUPPLIES"
                       381 "WATCHES, CLOCKS, AND CLOCKWORK OPERATED DEVICES"
                       390 "TOYS, AMUSEMENT, AND SPORTING GOODS"
                       391 "MISCELLANEOUS MANUFACTURING INDUSTRIES"
                       392 "NOT SPECIFIED MANUFACTURING INDUSTRIES"
                       400 "RAILROADS" 401 "BUS SERVICE AND URBAN TRANSIT"
                       402 "TAXICAB SERVICE" 410 "TRUCKING SERVICE"
                       411 "WAREHOUSING AND STORAGE"
                       412 "U.S. POSTAL SERVICE" 420 "WATER TRANSPORTATION"
                       421 "AIR TRANSPORTATION"
                       422 "PIPE LINES, EXCEPT NATURAL GAS"
                       432 "SERVICES INCIDENTAL TO TRANSPORTATION"
                       440 "RADIO AND TELEVISION BROADCASTING AND CABLE"
                       441 "TELEPHONE COMMUNICATIONS"
                       442 "TELEGRAPH AND MISCELLANEOUS COMMUNICATIONS SERVICES"
                       450 "ELECTRIC LIGHT AND POWER"
                       451 "GAS AND STEAM SUPPLY SYSTEMS"
                       452 "ELECTRIC AND GAS, AND OTHER COMBINATIONS"
                       470 "WATER SUPPLY AND IRRIGATION"
                       471 "SANITARY SERVICES" 472 "NOT SPECIFIED UTILITIES"
                       500 "MOTOR VEHICLES AND EQUIPMENT"
                       501 "FURNITURE AND HOME FURNISHINGS"
                       502 "LUMBER AND CONSTRUCTION MATERIALS"
                       510 "PROFESSIONAL AND COMMERCIAL EQUIP. AND SUPPLIES"
                       511 "METALS AND MINERALS, EXCEPT PETROLEUM"
                       512 "ELECTRICAL GOODS"
                       521 "HARDWARE, PLUMBING AND HEATING SUPPLIES"
                       530 "MACHINERY, EQUIPMENT, AND SUPPLIES"
                       531 "SCRAP AND WASTE MATERIALS"
                       532 "MISCELLANEOUS WHOLESALE, DURABLE GOODS"
                       540 "PAPER AND PAPER PRODUCTS"
                       541 "DRUGS, CHEMICALS AND ALLIED PRODUCTS"
                       542 "APPAREL, FABRICS, AND NOTIONS"
                       550 "GROCERIES AND RELATED PRODUCTS"
                       551 "FARM-PRODUCT RAW MATERIALS"
                       552 "PETROLEUM PRODUCTS" 560 "ALCOHOLIC BEVERAGES"
                       561 "FARM SUPPLIES"
                       562 "MISCELLANEOUS WHOLESALE, NONDURABLE GOODS"
                       571 "NOT SPECIFIED WHOLESALE TRADE"
                       580 "LUMBER AND BUILDING MATERIAL RETAILING"
                       581 "HARDWARE STORES"
                       582 "RETAIL NURSERIES AND GARDEN STORES"
                       590 "MOBILE HOME DEALERS" 591 "DEPARTMENT STORES"
                       592 "VARIETY STORES"
                       600 "MISCELLANEOUS GENERAL MERCHANDISE STORES"
                       601 "GROCERY STORES" 602 "DAIRY PRODUCTS STORES"
                       610 "RETAIL BAKERIES" 611 "FOOD STORES, N.E.C."
                       612 "MOTOR VEHICLE DEALERS"
                       620 "AUTO AND HOME SUPPLY STORES"
                       621 "GASOLINE SERVICE STATIONS"
                       622 "MISCELLANEOUS VEHICLE DEALERS"
                       623 "APPAREL AND ACCESSORY STORES, EXCEPT SHOE"
                       630 "SHOE STORES"
                       631 "FURNITURE AND HOME FURNISHINGS STORES"
                       632 "HOUSEHOLD APPLIANCE STORES"
                       633 "RADIO, TV, AND COMPUTER STORES"
                       640 "MUSIC STORES" 641 "EATING AND DRINKING PLACES"
                       642 "DRUG STORES" 650 "LIQUOR STORES"
                       651 "SPORTING GOODS, BICYCLES, AND HOBBY STORES"
                       652 "BOOK AND STATIONERY STORES" 660 "JEWELRY STORES"
                       661 "GIFT, NOVELTY, AND SOUVENIR SHOPS"
                       662 "SEWING, NEEDLEWORK AND PIECE GOODS STORES"
                       663 "CATALOG AND MAIL ORDER HOUSES"
                       670 "VENDING MACHINE OPERATORS"
                       671 "DIRECT SELLING ESTABLISHMENTS" 672 "FUEL DEALERS"
                       681 "RETAIL FLORISTS"
                       682 "MISCELLANEOUS RETAIL STORES"
                       691 "NOT SPECIFIED RETAIL TRADE" 700 "BANKING"
                       701 "SAVINGS INSTITUTIONS, INCLUDING CREDIT UNIONS"
                       702 "CREDIT AGENCIES, N.E.C."
                       710 "SECURITY, COMMODITY BROKERAGE, AND INVESTMENT COMPANIES"
                       711 "INSURANCE"
                       712 "REAL ESTATE, INCLUDING REAL ESTATE-INSURANCE OFFICES"
                       721 "ADVERTISING"
                       722 "SERVICES TO DWELLINGS AND OTHER BUILDINGS"
                       731 "PERSONNEL SUPPLY SERVICES"
                       732 "COMPUTER AND DATA PROCESSING SERVICES"
                       740 "DETECTIVE AND PROTECTIVE SERVICES"
                       741 "BUSINESS SERVICES, N.E.C."
                       742 "AUTOMOTIVE RENTAL AND LEASING, WITHOUT DRIVERS"
                       750 "AUTOMOBILE PARKING AND CARWASHES"
                       751 "AUTOMOTIVE REPAIR AND RELATED SERVICES"
                       752 "ELECTRICAL REPAIR SHOPS"
                       760 "MISCELLANEOUS REPAIR SERVICES"
                       761 "PRIVATE HOUSEHOLDS" 762 "HOTELS AND MOTELS"
                       770 "LODGING PLACES, EXCEPT HOTELS AND MOTELS"
                       771 "LAUNDRY, CLEANING, AND GARMENT SERVICES"
                       772 "BEAUTY SHOPS" 780 "BARBER SHOPS"
                       781 "FUNERAL SERVICE AND CREMATORIES"
                       782 "SHOE REPAIR SHOPS" 790 "DRESSMAKING SHOPS"
                       791 "MISCELLANEOUS PERSONAL SERVICES"
                       800 "THEATERS AND MOTION PICTURES"
                       801 "VIDEO TAPE RENTAL" 802 "BOWLING CENTERS"
                       810 "MISCELLANEOUS ENTERTAINMENT AND RECREATION SERVICES"
                       812 "OFFICES AND CLINICS OF PHYSICIANS"
                       820 "OFFICES AND CLINICS OF DENTISTS"
                       821 "OFFICES AND CLINICS OF CHIROPRACTORS"
                       822 "OFFICES AND CLINICS OF OPTOMETRISTS"
                       830 "OFFICES AND CLINICS OF HEALTH PRACTITIONERS, N.E.C."
                       831 "HOSPITALS"
                       832 "NURSING AND PERSONAL CARE FACILITIES"
                       840 "HEALTH SERVICES, N.E.C." 841 "LEGAL SERVICES"
                       842 "ELEMENTARY AND SECONDARY SCHOOLS"
                       850 "COLLEGES AND UNIVERSITIES"
                       851 "VOCATIONAL SCHOOLS" 852 "LIBRARIES"
                       860 "EDUCATIONAL SERVICES, N.E.C."
                       861 "JOB TRAINING AND VOCATIONAL REHABILITATION SERVICES"
                       862 "CHILD DAY CARE SERVICES"
                       863 "FAMILY CHILD CARE HOMES"
                       870 "RESIDENTIAL CARE FACILITIES, WITHOUT NURSING"
                       871 "SOCIAL SERVICES, N.E.C."
                       872 "MUSEUMS, ART GALLERIES, AND ZOOS"
                       873 "LABOR UNIONS" 880 "RELIGIOUS ORGANIZATIONS"
                       881 "MEMBERSHIP ORGANIZATIONS, N.E.C."
                       882 "ENGINEERING, ARCHITECTURAL, AND SURVEYING SERVICES"
                       890 "ACCOUNTING, AUDITING, AND BOOKKEEPING SERVICES"
                       891 "RESEARCH, DEVELOPMENT, AND TESTING SERVICES"
                       892 "MANAGEMENT AND PUBLIC RELATIONS SERVICES"
                       893 "MISCELLANEOUS PROFESSIONAL AND RELATED SERVICES"
                       900 "EXECUTIVE AND LEGISLATIVE OFFICES"
                       901 "GENERAL GOVERNMENT, N.E.C."
                       910 "JUSTICE, PUBLIC ORDER, AND SAFETY"
                       921 "PUBLIC FINANCE, TAXATION, AND MONETARY POLICY"
                       922 "ADMINISTRATION OF HUMAN RESOURCES PROGRAMS"
                       930 "ADMINISTRATION OF ENVIRONMENTAL QUALITY AND HOUSING PROGRAMS"
                       931 "ADMINISTRATION OF ECONOMIC PROGRAMS"
                       932 "NATIONAL SECURITY AND INTERNATIONAL AFFAIRS"
                       940 "ARMY" 941 "AIR FORCE" 942 "NAVY" 950 "MARINES"
                       951 "COAST GUARD"
                       952 "ARMED RESERVES, BRANCH NOT SPECIFIED"
                       960 "MILITARY RESERVES OR NATIONAL GUARD"
                       995 "UNKNOWN OR UNSURE" 997 "ALLOCATION REQUIRED"
                       998 "MISSING OR NOT REPORTED" 999 "INAPP" ;
label define B1PTEDU   9 "INAPP" ;
label define B1PTEARN  9 "INAPP" ;
label define B1PTSEI   999 "INAPP" ;
label define B1PMEDU   9 "INAPP" ;
label define B1PMEARN  9 "INAPP" ;
label define B1PMSEI   999 "INAPP" ;
label define B1PFEDU   9 "INAPP" ;
label define B1PFEARN  9 "INAPP" ;
label define B1PFSEI   999 "INAPP" ;
label define B1POCMAJ  1 "EXECUTIVE, ADMINISTRATIVE, AND MANAGERIAL"
                       2 "PROFESSIONAL SPECIALTY"
                       3 "TECHNICIAN AND RELATED SUPPORT"
                       4 "SALES OCCUPATION"
                       5 "ADMINISTRATIVE SUPPORT INCLUDING CLERICAL"
                       6 "SERVICE OCCUPATION"
                       7 "FARMING, FORESTRY, AND FISHING"
                       8 "PRECISION PRODUCTION, CRAFTS, AND REPAIR"
                       9 "OPERATOR, LABORER, AND MILITARY" 99 "INAPP" ;
label define B1PINDMJ  1 "AGRICULTURE, FORESTRY, FISHING, AND MINING"
                       2 "CONSTRUCTION" 3 "MANUFACTURING"
                       4 "TRANSPORTATION, COMMUNICATIONS, AND PUBLIC UTILITY"
                       5 "WHOLESALE TRADE" 6 "RETAIL TRADE"
                       7 "FINANCE, INSURANCE, AND REAL ESTATE"
                       8 "BUSINESS AND REPAIR SERVICES" 9 "PERSONAL SERVICES"
                       10 "ENTERTAINMENT AND RECREATIONAL SERVICES"
                       11 "PROFESSIONAL AND RELATED SERVICES"
                       12 "PUBLIC ADMINISTRATION" 99 "INAPP" ;
label define B1PB12    997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PB12A   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PB13    997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PB14    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PB14A   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PB15    1 "HAS EMPLOYER" 2 "SELF-EMPLOYED" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1POCCP   3 "LEGISLATORS"
                       4 "CHIEF EXECUTIVES AND GENERAL ADMINISTRATORS, PUBLIC ADMINIS"
                       5 "ADMINISTRATORS AND OFFICIALS, PUBLIC ADMINISTRATION"
                       6 "ADMINISTRATORS, PROTECTIVE SERVICES"
                       7 "FINANCIAL MANAGERS"
                       8 "PERSONNEL AND LABOR RELATIONS MANAGERS"
                       9 "PURCHASING MANAGERS"
                       13 "MANAGERS, MARKETING, ADVERTISING, AND PUBLIC RELATIONS"
                       14 "ADMINISTRATORS, EDUCATION AND RELATED FIELDS"
                       15 "MANAGERS, MEDICINE AND HEALTH"
                       16 "POSTMASTERS AND MAIL SUPERINTENDENTS"
                       17 "MANAGERS, FOOD SERVING AND LODGING ESTABLISHMENTS"
                       18 "MANAGERS, PROPERTIES AND REAL ESTATE"
                       19 "FUNERAL DIRECTORS"
                       21 "MANAGERS, SERVICE ORGANIZATIONS, N.E.C."
                       22 "MANAGERS AND ADMINISTRATORS, N.E.C."
                       23 "ACCOUNTANTS AND AUDITORS" 24 "UNDERWRITERS"
                       25 "OTHER FINANCIAL OFFICERS" 26 "MANAGEMENT ANALYSTS"
                       27 "PERSONNEL, TRAINING, AND LABOR RELATIONS SPECIALISTS"
                       28 "PURCHASING AGENTS AND BUYERS, FARM PRODUCTS"
                       29 "BUYERS, WHOLESALE AND RETAIL TRADE, EXCEPT FARM PRODUCTS"
                       33 "PURCHASING AGENTS AND BUYERS, N.E.C."
                       34 "BUSINESS AND PROMOTION AGENTS"
                       35 "CONSTRUCTION INSPECTORS"
                       36 "INSPECTORS AND COMPLIANCE OFFICERS, EXCEPT CONSTRUCTION"
                       37 "MANAGEMENT RELATED OCCUPATIONS, N.E.C."
                       43 "ARCHITECTS" 44 "AEROSPACE ENGINEERS"
                       45 "METALLURGICAL AND MATERIALS ENGINEERS"
                       46 "MINING ENGINEERS" 47 "PETROLEUM ENGINEERS"
                       48 "CHEMICAL ENGINEERS" 49 "NUCLEAR ENGINEERS"
                       53 "CIVIL ENGINEERS" 54 "AGRICULTURAL ENGINEERS"
                       55 "ELECTRICAL AND ELECTRONIC ENGINEERS"
                       56 "INDUSTRIAL ENGINEERS" 57 "MECHANICAL ENGINEERS"
                       58 "MARINE AND NAVAL ARCHITECTS"
                       59 "ENGINEERS, N.E.C."
                       63 "SURVEYORS AND MAPPING SCIENTISTS"
                       64 "COMPUTER SYSTEMS ANALYSTS AND SCIENTISTS"
                       65 "OPERATIONS AND SYSTEMS RESEARCHERS AND ANALYSTS"
                       66 "ACTUARIES" 67 "STATISTICIANS"
                       68 "MATHEMATICAL SCIENTISTS, N.E.C."
                       69 "PHYSICISTS AND ASTRONOMERS"
                       73 "CHEMISTS, EXCEPT BIOCHEMISTS"
                       74 "ATMOSPHERIC AND SPACE SCIENTISTS"
                       75 "GEOLOGISTS AND GEODESISTS"
                       76 "PHYSICAL SCIENTISTS, N.E.C."
                       77 "AGRICULTURAL AND FOOD SCIENTISTS"
                       78 "BIOLOGICAL AND LIFE SCIENTISTS"
                       79 "FORESTRY AND CONSERVATION SCIENTISTS"
                       83 "MEDICAL SCIENTISTS" 84 "PHYSICIANS" 85 "DENTISTS"
                       86 "VETERINARIANS" 87 "OPTOMETRISTS" 88 "PODIATRISTS"
                       89 "HEALTH DIAGNOSING PRACTITIONERS, N.E.C."
                       95 "REGISTERED NURSES" 96 "PHARMACISTS"
                       97 "DIETITIANS" 98 "RESPIRATORY THERAPISTS"
                       99 "OCCUPATIONAL THERAPISTS" 103 "PHYSICAL THERAPISTS"
                       104 "SPEECH THERAPISTS" 105 "THERAPISTS, N.E.C."
                       106 "PHYSICIANS ASSISTANTS"
                       113 "EARTH, ENVIRONMENTAL, AND MARINE SCIENCE TEACHERS"
                       114 "BIOLOGICAL SCIENCE TEACHERS"
                       115 "CHEMISTRY TEACHERS" 116 "PHYSICS TEACHERS"
                       117 "NATURAL SCIENCE TEACHERS, N.E.C."
                       118 "PSYCHOLOGY TEACHERS" 119 "ECONOMICS TEACHERS"
                       123 "HISTORY TEACHERS"
                       124 "POLITICAL SCIENCE TEACHERS"
                       125 "SOCIOLOGY TEACHERS"
                       126 "SOCIAL SCIENCE TEACHERS, N.E.C."
                       127 "ENGINEERING TEACHERS"
                       128 "MATHEMATICAL SCIENCE TEACHERS"
                       129 "COMPUTER SCIENCE TEACHERS"
                       133 "MEDICAL SCIENCE TEACHERS"
                       134 "HEALTH SPECIALTIES TEACHERS"
                       135 "BUSINESS, COMMERCE, AND MARKETING TEACHERS"
                       136 "AGRICULTURE AND FORESTRY TEACHERS"
                       137 "ART, DRAMA, AND MUSIC TEACHERS"
                       138 "PHYSICAL EDUCATION TEACHERS"
                       139 "EDUCATION TEACHERS" 143 "ENGLISH TEACHERS"
                       144 "FOREIGN LANGUAGE TEACHERS" 145 "LAW TEACHERS"
                       146 "SOCIAL WORK TEACHERS" 147 "THEOLOGY TEACHERS"
                       148 "TRADE AND INDUSTRIAL TEACHERS"
                       149 "HOME ECONOMICS TEACHERS"
                       153 "TEACHERS, POSTSECONDARY, N.E.C."
                       154 "POSTSECONDARY TEACHERS, SUBJECT NOT SPECIFIED"
                       155 "TEACHERS, PREKINDERGARTEN AND KINDERGARTEN"
                       156 "TEACHERS, ELEMENTARY SCHOOL"
                       157 "TEACHERS, SECONDARY SCHOOL"
                       158 "TEACHERS, SPECIAL EDUCATION"
                       159 "TEACHERS, N.E.C."
                       163 "COUNSELORS, EDUCATIONAL AND VOCATIONAL"
                       164 "LIBRARIANS" 165 "ARCHIVISTS AND CURATORS"
                       166 "ECONOMISTS" 167 "PSYCHOLOGISTS"
                       168 "SOCIOLOGISTS" 169 "SOCIAL SCIENTISTS, N.E.C."
                       173 "URBAN PLANNERS" 174 "SOCIAL WORKERS"
                       175 "RECREATION WORKERS" 176 "CLERGY"
                       177 "RELIGIOUS WORKERS, N.E.C." 178 "LAWYERS"
                       179 "JUDGES" 183 "AUTHORS" 184 "TECHNICAL WRITERS"
                       185 "DESIGNERS" 186 "MUSICIANS AND COMPOSERS"
                       187 "ACTORS AND DIRECTORS"
                       188 "PAINTERS, SCULPTORS, CRAFT-ARTISTS, AND ARTIST PRINTMAKERS"
                       189 "PHOTOGRAPHERS" 193 "DANCERS"
                       194 "ARTISTS, PERFORMERS, AND RELATED WORKERS, N.E.C."
                       195 "EDITORS AND REPORTERS"
                       197 "PUBLIC RELATIONS SPECIALISTS" 198 "ANNOUNCERS"
                       199 "ATHLETES"
                       203 "CLINICAL LABORATORY TECHNOLOGISTS AND TECHNICIANS"
                       204 "DENTAL HYGIENISTS"
                       205 "HEALTH RECORD TECHNOLOGISTS AND TECHNICIANS"
                       206 "RADIOLOGIC TECHNICIANS"
                       207 "LICENSED PRACTICAL NURSES"
                       208 "HEALTH TECHNOLOGISTS AND TECHNICIANS, N.E.C."
                       213 "ELECTRICAL AND ELECTRONIC TECHNICIANS"
                       214 "INDUSTRIAL ENGINEERING TECHNICIANS"
                       215 "MECHANICAL ENGINEERING TECHNICIANS"
                       216 "ENGINEERING TECHNICIANS, N.E.C."
                       217 "DRAFTING OCCUPATIONS"
                       218 "SURVEYING AND MAPPING TECHNICIANS"
                       223 "BIOLOGICAL TECHNICIANS"
                       224 "CHEMICAL TECHNICIANS"
                       225 "SCIENCE TECHNICIANS, N.E.C."
                       226 "AIRPLANE PILOTS AND NAVIGATORS"
                       227 "AIR TRAFFIC CONTROLLERS"
                       228 "BROADCAST EQUIPMENT OPERATORS"
                       229 "COMPUTER PROGRAMMERS"
                       233 "TOOL PROGRAMMERS, NUMERICAL CONTROL"
                       234 "LEGAL ASSISTANTS" 235 "TECHNICIANS, N.E.C."
                       243 "SUPERVISORS AND PROPRIETORS, SALES OCCUPATIONS"
                       253 "INSURANCE SALES OCCUPATIONS"
                       254 "REAL ESTATE SALES OCCUPATIONS"
                       255 "SECURITIES AND FINANCIAL SERVICES SALES OCCUPATIONS"
                       256 "ADVERTISING AND RELATED SALES OCCUPATIONS"
                       257 "SALES OCCUPATIONS, OTHER BUSINESS SERVICES"
                       258 "SALES ENGINEERS"
                       259 "SALES REPRESENTATIVES, MINING, MANUFACTURING, AND WHOLESALE"
                       263 "SALES WORKERS, MOTOR VEHICLES AND BOATS"
                       264 "SALES WORKERS, APPAREL"
                       265 "SALES WORKERS, SHOES"
                       266 "SALES WORKERS, FURNITURE AND HOME FURNISHINGS"
                       267 "SALES WORKERS, RADIO, TV, HI-FI, AND APPLIANCES"
                       268 "SALES WORKERS, HARDWARE AND BUILDING SUPPLIES"
                       269 "SALES WORKERS, PARTS"
                       274 "SALES WORKERS, OTHER COMMODITIES"
                       275 "SALES COUNTER CLERKS" 276 "CASHIERS"
                       277 "STREET AND DOOR-TO-DOOR SALES WORKERS"
                       278 "NEWS VENDORS"
                       283 "DEMONSTRATORS, PROMOTERS AND MODELS, SALES"
                       284 "AUCTIONEERS"
                       285 "SALES SUPPORT OCCUPATIONS, N.E.C."
                       303 "SUPERVISORS, GENERAL OFFICE"
                       304 "SUPERVISORS, COMPUTER EQUIPMENT OPERATORS"
                       305 "SUPERVISORS, FINANCIAL RECORDS PROCESSING"
                       306 "CHIEF COMMUNICATIONS OPERATORS"
                       307 "SUPERVISORS, DISTRIBUTION, SCHEDULING, AND ADJUSTING CLERKS"
                       308 "COMPUTER OPERATORS"
                       309 "PERIPHERAL EQUIPMENT OPERATORS" 313 "SECRETARIES"
                       314 "STENOGRAPHERS" 315 "TYPISTS" 316 "INTERVIEWERS"
                       317 "HOTEL CLERKS"
                       318 "TRANSPORTATION TICKET AND RESERVATION AGENTS"
                       319 "RECEPTIONISTS" 323 "INFORMATION CLERKS, N.E.C."
                       325 "CLASSIFIED-AD CLERKS" 326 "CORRESPONDENCE CLERKS"
                       327 "ORDER CLERKS"
                       328 "PERSONNEL CLERKS, EXCEPT PAYROLL AND TIMEKEEPING"
                       329 "LIBRARY CLERKS" 335 "FILE CLERKS"
                       336 "RECORDS CLERKS"
                       337 "BOOKKEEPERS, ACCOUNTING, AND AUDITING CLERKS"
                       338 "PAYROLL AND TIMEKEEPING CLERKS"
                       339 "BILLING CLERKS" 343 "COST AND RATE CLERKS"
                       344 "BILLING, POSTING, AND CALCULATING MACHINE OPERATORS"
                       345 "DUPLICATING MACHINE OPERATORS"
                       346 "MAIL PREPARING AND PAPER HANDLING MACHINE OPERATORS"
                       347 "OFFICE MACHINE OPERATORS, N.E.C."
                       348 "TELEPHONE OPERATORS"
                       353 "COMMUNICATIONS EQUIPMENT OPERATORS, N.E.C."
                       354 "POSTAL CLERKS, EXCEPT MAIL CARRIERS"
                       355 "MAIL CARRIERS, POSTAL SERVICE"
                       356 "MAIL CLERKS, EXCEPT POSTAL SERVICE"
                       357 "MESSENGERS" 359 "DISPATCHERS"
                       363 "PRODUCTION COORDINATORS"
                       364 "TRAFFIC, SHIPPING, AND RECEIVING CLERKS"
                       365 "STOCK AND INVENTORY CLERKS" 366 "METER READERS"
                       368 "WEIGHERS, MEASURERS, CHECKERS, AND SAMPLERS"
                       373 "EXPEDITERS"
                       374 "MATERIAL RECORDING, SCHEDULING, AND DISTRIBUTING CLERKS, N."
                       375 "INSURANCE ADJUSTERS, EXAMINERS, AND INVESTIGATORS"
                       376 "INVESTIGATORS AND ADJUSTERS, EXCEPT INSURANCE"
                       377 "ELIGIBILITY CLERKS, SOCIAL WELFARE"
                       378 "BILL AND ACCOUNT COLLECTORS"
                       379 "GENERAL OFFICE CLERKS" 383 "BANK TELLERS"
                       384 "PROOFREADERS" 385 "DATA-ENTRY KEYERS"
                       386 "STATISTICAL CLERKS" 387 "TEACHERS AIDES"
                       389 "ADMINISTRATIVE SUPPORT OCCUPATIONS, N.E.C."
                       403 "LAUNDERERS AND IRONERS"
                       404 "COOKS, PRIVATE HOUSEHOLD"
                       405 "HOUSEKEEPERS AND BUTLERS"
                       406 "CHILD CARE WORKERS, PRIVATE HOUSEHOLD"
                       407 "PRIVATE HOUSEHOLD CLEANERS AND SERVANTS"
                       413 "SUPERVISORS, FIREFIGHTING AND FIRE PREVENTION OCCUPATIONS"
                       414 "SUPERVISORS, POLICE AND DETECTIVES"
                       415 "SUPERVISORS, GUARDS"
                       416 "FIRE INSPECTION AND FIRE PREVENTION OCCUPATIONS"
                       417 "FIREFIGHTING OCCUPATIONS"
                       418 "POLICE AND DETECTIVES, PUBLIC SERVICE"
                       423 "SHERIFFS, BAILIFFS, AND OTHER LAW ENFORCEMENT OFFICERS"
                       424 "CORRECTIONAL INSTITUTION OFFICERS"
                       425 "CROSSING GUARDS"
                       426 "GUARDS AND POLICE, EXCEPT PUBLIC SERVICE"
                       427 "PROTECTIVE SERVICE OCCUPATIONS, N.E.C."
                       433 "SUPERVISORS, FOOD PREPARATION AND SERVICE OCCUPATIONS"
                       434 "BARTENDERS" 435 "WAITERS AND WAITRESSES"
                       436 "COOKS"
                       438 "FOOD COUNTER, FOUNTAIN AND RELATED OCCUPATIONS"
                       439 "KITCHEN WORKERS, FOOD PREPARATION"
                       443 "WAITERS/WAITRESSES ASSISTANTS"
                       444 "MISCELLANEOUS FOOD PREPARATION OCCUPATIONS"
                       445 "DENTAL ASSISTANTS"
                       446 "HEALTH AIDES, EXCEPT NURSING"
                       447 "NURSING AIDES, ORDERLIES, AND ATTENDANTS"
                       448 "SUPERVISORS, CLEANING AND BUILDING SERVICE WORKERS"
                       449 "MAIDS AND HOUSEMEN" 453 "JANITORS AND CLEANERS"
                       454 "ELEVATOR OPERATORS"
                       455 "PEST CONTROL OCCUPATIONS"
                       456 "SUPERVISORS, PERSONAL SERVICE OCCUPATIONS"
                       457 "BARBERS" 458 "HAIRDRESSERS AND COSMETOLOGISTS"
                       459 "ATTENDANTS, AMUSEMENT AND RECREATION FACILITIES"
                       461 "GUIDES" 462 "USHERS"
                       463 "PUBLIC TRANSPORTATION ATTENDANTS"
                       464 "BAGGAGE PORTERS AND BELLHOPS"
                       465 "WELFARE SERVICE AIDES"
                       466 "FAMILY CHILD CARE PROVIDERS"
                       467 "EARLY CHILDHOOD TEACHERS ASSISTANTS"
                       468 "CHILD CARE WORKERS, N.E.C."
                       469 "PERSONAL SERVICE OCCUPATIONS, N.E.C."
                       473 "FARMERS, EXCEPT HORTICULTURAL"
                       474 "HORTICULTURAL SPECIALTY FARMERS"
                       475 "MANAGERS, FARMS, EXCEPT HORTICULTURAL"
                       476 "MANAGERS, HORTICULTURAL SPECIALTY FARMS"
                       477 "SUPERVISORS, FARM WORKERS" 479 "FARM WORKERS"
                       483 "MARINE LIFE CULTIVATION WORKERS"
                       484 "NURSERY WORKERS"
                       485 "SUPERVISORS, RELATED AGRICULTURAL OCCUPATIONS"
                       486 "GROUNDSKEEPERS AND GARDENERS, EXCEPT FARM"
                       487 "ANIMAL CARETAKERS, EXCEPT FARM"
                       488 "GRADERS AND SORTERS, AGRICULTURAL PRODUCTS"
                       489 "INSPECTORS, AGRICULTURAL PRODUCTS"
                       494 "SUPERVISORS, FORESTRY AND LOGGING WORKERS"
                       495 "FORESTRY WORKERS, EXCEPT LOGGING"
                       496 "TIMBER CUTTING AND LOGGING OCCUPATIONS"
                       497 "CAPTAINS AND OTHER OFFICERS, FISHING VESSELS"
                       498 "FISHERS" 499 "HUNTERS AND TRAPPERS"
                       503 "SUPERVISORS, MECHANICS AND REPAIRERS"
                       505 "AUTOMOBILE MECHANICS, EXCEPT APPRENTICES"
                       506 "AUTOMOBILE MECHANIC APPRENTICES"
                       507 "BUS, TRUCK, AND STATIONARY ENGINE MECHANICS"
                       508 "AIRCRAFT ENGINE MECHANICS"
                       509 "SMALL ENGINE REPAIRERS"
                       514 "AUTOMOBILE BODY AND RELATED REPAIRERS"
                       515 "AIRCRAFT MECHANICS, EXCEPT ENGINE"
                       516 "HEAVY EQUIPMENT MECHANICS"
                       517 "FARM EQUIPMENT MECHANICS"
                       518 "INDUSTRIAL MACHINERY REPAIRERS"
                       519 "MACHINERY MAINTENANCE OCCUPATIONS"
                       523 "ELECTRONIC REPAIRERS, COMMUNICATIONS AND INDUSTRIAL EQUIPME"
                       525 "DATA PROCESSING EQUIPMENT REPAIRERS"
                       526 "HOUSEHOLD APPLIANCE AND POWER TOOL REPAIRERS"
                       527 "TELEPHONE LINE INSTALLERS AND REPAIRERS"
                       529 "TELEPHONE INSTALLERS AND REPAIRERS"
                       533 "MISCELLANEOUS ELECTRICAL AND ELECTRONIC EQUIPMENT REPAIRERS"
                       534 "HEATING, AIR CONDITIONING, AND REFRIGERATION MECHANICS"
                       535 "CAMERA, WATCH, AND MUSICAL INSTRUMENT REPAIRERS"
                       536 "LOCKSMITHS AND SAFE REPAIRERS"
                       538 "OFFICE MACHINE REPAIRERS"
                       539 "MECHANICAL CONTROLS AND VALVE REPAIRERS"
                       543 "ELEVATOR INSTALLERS AND REPAIRERS"
                       544 "MILLWRIGHTS"
                       547 "SPECIFIED MECHANICS AND REPAIRERS, N.E.C."
                       549 "NOT SPECIFIED MECHANICS AND REPAIRERS"
                       553 "SUPERVISORS, BRICKMASONS, STONEMASONS, AND TILE SETTERS"
                       554 "SUPERVISORS, CARPENTERS AND RELATED WORKERS"
                       555 "SUPERVISORS, ELECTRICIANS AND POWER TRANSMISSION INSTALLERS"
                       556 "SUPERVISORS, PAINTERS, PAPERHANGERS, AND PLASTERERS"
                       557 "SUPERVISORS, PLUMBERS, PIPEFITTERS, AND STEAMFITTERS"
                       558 "SUPERVISORS, CONSTRUCTION N.E.C."
                       563 "BRICKMASONS AND STONEMASONS, EXCEPT APPRENTICES"
                       564 "BRICKMASON AND STONEMASON APPRENTICES"
                       565 "TILE SETTERS, HARD AND SOFT"
                       566 "CARPET INSTALLERS"
                       567 "CARPENTERS, EXCEPT APPRENTICES"
                       569 "CARPENTER APPRENTICES" 573 "DRYWALL INSTALLERS"
                       575 "ELECTRICIANS, EXCEPT APPRENTICES"
                       576 "ELECTRICIAN APPRENTICES"
                       577 "ELECTRICAL POWER INSTALLERS AND REPAIRERS"
                       579 "PAINTERS, CONSTRUCTION AND MAINTENANCE"
                       583 "PAPERHANGERS" 584 "PLASTERERS"
                       585 "PLUMBERS, PIPEFITTERS, AND STEAMFITTERS, EXCEPT APPRENTICES"
                       587 "PLUMBER, PIPEFITTER, AND STEAMFITTER APPRENTICES"
                       588 "CONCRETE AND TERRAZZO FINISHERS" 589 "GLAZIERS"
                       593 "INSULATION WORKERS"
                       594 "PAVING, SURFACING, AND TAMPING EQUIPMENT OPERATORS"
                       595 "ROOFERS" 596 "SHEETMETAL DUCT INSTALLERS"
                       597 "STRUCTURAL METAL WORKERS" 598 "DRILLERS, EARTH"
                       599 "CONSTRUCTION TRADES, N.E.C."
                       613 "SUPERVISORS, EXTRACTIVE OCCUPATIONS"
                       614 "DRILLERS, OIL WELL" 615 "EXPLOSIVES WORKERS"
                       616 "MINING MACHINE OPERATORS"
                       617 "MINING OCCUPATIONS, N.E.C."
                       628 "SUPERVISORS, PRODUCTION OCCUPATIONS"
                       634 "TOOL AND DIE MAKERS, EXCEPT APPRENTICES"
                       635 "TOOL AND DIE MAKER APPRENTICES"
                       636 "PRECISION ASSEMBLERS, METAL"
                       637 "MACHINISTS, EXCEPT APPRENTICES"
                       639 "MACHINIST APPRENTICES" 643 "BOILERMAKERS"
                       644 "PRECISION GRINDERS, FILERS, AND TOOL SHARPENERS"
                       645 "PATTERNMAKERS AND MODEL MAKERS, METAL"
                       646 "LAY-OUT WORKERS"
                       647 "PRECIOUS STONES AND METALS WORKERS , JEWELERS"
                       649 "ENGRAVERS, METAL"
                       653 "SHEET METAL WORKERS, EXCEPT APPRENTICES"
                       654 "SHEET METAL WORKER APPRENTICES"
                       655 "MISCELLANEOUS PRECISION METAL WORKERS"
                       656 "PATTERNMAKERS AND MODEL MAKERS, WOOD"
                       657 "CABINET MAKERS AND BENCH CARPENTERS"
                       658 "FURNITURE AND WOOD FINISHERS"
                       659 "MISCELLANEOUS PRECISION WOODWORKERS"
                       666 "DRESSMAKERS" 667 "TAILORS" 668 "UPHOLSTERERS"
                       669 "SHOE REPAIRERS"
                       674 "MISCELLANEOUS PRECISION APPAREL AND FABRIC WORKERS"
                       675 "HAND MOLDERS AND SHAPERS, EXCEPT JEWELERS"
                       676 "PATTERNMAKERS, LAY-OUT WORKERS, AND CUTTERS"
                       677 "OPTICAL GOODS WORKERS"
                       678 "DENTAL LABORATORY AND MEDICAL APPLIANCE TECHNICIANS"
                       679 "BOOKBINDERS"
                       683 "ELECTRICAL AND ELECTRONIC EQUIPMENT ASSEMBLERS"
                       684 "MISCELLANEOUS PRECISION WORKERS, N.E.C."
                       686 "BUTCHERS AND MEAT CUTTERS" 687 "BAKERS"
                       688 "FOOD BATCHMAKERS"
                       689 "INSPECTORS, TESTERS, AND GRADERS"
                       693 "ADJUSTERS AND CALIBRATORS"
                       694 "WATER AND SEWAGE TREATMENT PLANT OPERATORS"
                       695 "POWER PLANT OPERATORS" 696 "STATIONARY ENGINEERS"
                       699 "MISCELLANEOUS PLANT AND SYSTEM OPERATORS"
                       703 "LATHE AND TURNING MACHINE SET-UP OPERATORS"
                       704 "LATHE AND TURNING MACHINE OPERATORS"
                       705 "MILLING AND PLANING MACHINE OPERATORS"
                       706 "PUNCHING AND STAMPING PRESS MACHINE OPERATORS"
                       707 "ROLLING MACHINE OPERATORS"
                       708 "DRILLING AND BORING MACHINE OPERATORS"
                       709 "GRINDING, ABRADING, BUFFING, AND POLISHING MACHINE OPERATOR"
                       713 "FORGING MACHINE OPERATORS"
                       714 "NUMERICAL CONTROL MACHINE OPERATORS"
                       715 "MISCELLANEOUS METAL, PLASTIC, STONE, AND GLASS WORKING MACH"
                       717 "FABRICATING MACHINE OPERATORS, N.E.C."
                       719 "MOLDING AND CASTING MACHINE OPERATORS"
                       723 "METAL PLATING MACHINE OPERATORS"
                       724 "HEAT TREATING EQUIPMENT OPERATORS"
                       725 "MISCELLANEOUS METAL AND PLASTIC PROCESSING MACHINE OPERATOR"
                       726 "WOOD LATHE, ROUTING, AND PLANING MACHINE OPERATORS"
                       727 "SAWING MACHINE OPERATORS"
                       728 "SHAPING AND JOINING MACHINE OPERATORS"
                       729 "NAILING AND TACKING MACHINE OPERATORS"
                       733 "MISCELLANEOUS WOODWORKING MACHINE OPERATORS"
                       734 "PRINTING PRESS OPERATORS"
                       735 "PHOTOENGRAVERS AND LITHOGRAPHERS"
                       736 "TYPESETTERS AND COMPOSITORS"
                       737 "MISCELLANEOUS PRINTING MACHINE OPERATORS"
                       738 "WINDING AND TWISTING MACHINE OPERATORS"
                       739 "KNITTING, LOOPING, TAPING, AND WEAVING MACHINE OPERATORS"
                       743 "TEXTILE CUTTING MACHINE OPERATORS"
                       744 "TEXTILE SEWING MACHINE OPERATORS"
                       745 "SHOE MACHINE OPERATORS"
                       747 "PRESSING MACHINE OPERATORS"
                       748 "LAUNDERING AND DRY CLEANING MACHINE OPERATORS"
                       749 "MISCELLANEOUS TEXTILE MACHINE OPERATORS"
                       753 "CEMENTING AND GLUING MACHINE OPERATORS"
                       754 "PACKAGING AND FILLING MACHINE OPERATORS"
                       755 "EXTRUDING AND FORMING MACHINE OPERATORS"
                       756 "MIXING AND BLENDING MACHINE OPERATORS"
                       757 "SEPARATING, FILTERING, AND CLARIFYING MACHINE OPERATORS"
                       758 "COMPRESSING AND COMPACTING MACHINE OPERATORS"
                       759 "PAINTING AND PAINT SPRAYING MACHINE OPERATORS"
                       763 "ROASTING AND BAKING MACHINE OPERATORS, FOOD"
                       764 "WASHING, CLEANING, AND PICKLING MACHINE OPERATORS"
                       765 "FOLDING MACHINE OPERATORS"
                       766 "FURNACE, KILN, AND OVEN OPERATORS, EXCEPT FOOD"
                       768 "CRUSHING AND GRINDING MACHINE OPERATORS"
                       769 "SLICING AND CUTTING MACHINE OPERATORS"
                       773 "MOTION PICTURE PROJECTIONISTS"
                       774 "PHOTOGRAPHIC PROCESS MACHINE OPERATORS"
                       777 "MISC. MACHINE OPER."
                       779 "MACHINE OPER., NOT SPEC."
                       783 "WELDERS AND CUTTERS" 784 "SOLDERERS AND BRAZERS"
                       785 "ASSEMBLERS"
                       786 "HAND CUTTING AND TRIMMING OCCUPATIONS"
                       787 "HAND MOLDING, CASTING, AND FORMING OCCUPATIONS"
                       789 "HAND PAINTING, COATING, AND DECORATING OCCUPATIONS"
                       793 "HAND ENGRAVING AND PRINTING OCCUPATIONS"
                       795 "MISCELLANEOUS HAND WORKING OCCUPATIONS"
                       796 "PRODUCTION INSPECTORS, CHECKERS, AND EXAMINERS"
                       797 "PRODUCTION TESTERS"
                       798 "PRODUCTION SAMPLERS AND WEIGHERS"
                       799 "GRADERS AND SORTERS, EXCEPT AGRICULTURAL"
                       803 "SUPERVISORS, MOTOR VEHICLE OPERATORS"
                       804 "TRUCK DRIVERS" 806 "DRIVER-SALES WORKERS"
                       808 "BUS DRIVERS" 809 "TAXICAB DRIVERS AND CHAUFFEURS"
                       813 "PARKING LOT ATTENDANTS"
                       814 "MOTOR TRANSPORTATION OCCUPATIONS, N.E.C."
                       823 "RAILROAD CONDUCTORS AND YARDMASTERS"
                       824 "LOCOMOTIVE OPERATING OCCUPATIONS"
                       825 "RAILROAD BRAKE, SIGNAL, AND SWITCH OPERATORS"
                       826 "RAIL VEHICLE OPERATORS, N.E.C."
                       828 "SHIP CAPTAINS AND MATES, EXCEPT FISHING BOATS"
                       829 "SAILORS AND DECKHANDS" 833 "MARINE ENGINEERS"
                       834 "BRIDGE, LOCK, AND LIGHTHOUSE TENDERS"
                       843 "SUPERVISORS, MATERIAL MOVING EQUIPMENT OPERATORS"
                       844 "OPERATING ENGINEERS"
                       845 "LONGSHORE EQUIPMENT OPERATORS"
                       848 "HOIST AND WINCH OPERATORS"
                       849 "CRANE AND TOWER OPERATORS"
                       853 "EXCAVATING AND LOADING MACHINE OPERATORS"
                       855 "GRADER, DOZER, AND SCRAPER OPERATORS"
                       856 "INDUSTRIAL TRUCK AND TRACTOR EQUIPMENT OPERATORS"
                       859 "MISCELLANEOUS MATERIAL MOVING EQUIPMENT OPERATORS"
                       864 "SUPERVISORS, HANDLERS, EQUIPMENT CLEANERS, AND LABORERS, N."
                       865 "HELPERS, MECHANICS, AND REPAIRERS"
                       866 "HELPERS, CONSTRUCTION TRADES"
                       867 "HELPERS, SURVEYOR"
                       868 "HELPERS, EXTRACTIVE OCCUPATIONS"
                       869 "CONSTRUCTION LABORERS" 874 "PRODUCTION HELPERS"
                       875 "GARBAGE COLLECTORS" 876 "STEVEDORES"
                       877 "STOCK HANDLERS AND BAGGERS"
                       878 "MACHINE FEEDERS AND OFFBEARERS"
                       883 "FREIGHT, STOCK, AND MATERIAL HANDLERS, N.E.C."
                       885 "GARAGE AND SERVICE STATION RELATED OCCUPATIONS"
                       887 "VEHICLE WASHERS AND EQUIPMENT CLEANERS"
                       888 "HAND PACKERS AND PACKAGERS"
                       889 "LABORERS, EXC. CONST."
                       903 "COMMISSIONED OFFICERS AND WARRANT OFFICERS"
                       904 "NON-COMMISSIONED OFFICERS AND OTHER ENLISTED PERSONNEL"
                       905 "MILITARY OCCUPATION, RANK NOT SPECIFIED"
                       995 "UNKNOWN OR UNSURE" 997 "ALLOCATION REQUIRED"
                       998 "MISSING OR NOT REPORTED" 999 "INAPP" ;
label define B1PINDP   10 "AGRICULTURAL PRODUCTION, CROPS"
                       11 "AGRICULTURAL PRODUCTION, LIVESTOCK"
                       12 "VETERINARY SERVICES"
                       20 "LANDSCAPE AND HORTICULTURAL SERVICES"
                       30 "AGRICULTURAL SERVICES, N.E.C." 31 "FORESTRY"
                       32 "FISHING, HUNTING, AND TRAPPING" 40 "METAL MINING"
                       41 "COAL MINING" 42 "OIL AND GAS EXTRACTION"
                       50 "NONMETALLIC MINING AND QUARRYING, EXCEPT FUELS"
                       60 "CONSTRUCTION" 100 "MEAT PRODUCTS"
                       101 "DAIRY PRODUCTS"
                       102 "CANNED, FROZEN, AND PRESERVED FRUITS AND VEGETABLES"
                       110 "GRAIN MILL PRODUCTS" 111 "BAKERY PRODUCTS"
                       112 "SUGAR AND CONFECTIONERY PRODUCTS"
                       120 "BEVERAGE INDUSTRIES"
                       121 "MISCELLANEOUS FOOD PREPARATIONS AND KINDRED PRODUCTS"
                       122 "NOT SPECIFIED FOOD INDUSTRIES"
                       130 "TOBACCO MANUFACTURES" 132 "KNITTING MILLS"
                       140 "DYEING AND FINISHING TEXTILES, EXCEPT WOOL AND KNIT"
                       141 "CARPETS AND RUGS"
                       142 "YARN, THREAD, AND FABRIC MILLS"
                       150 "MISCELLANEOUS TEXTILE MILL PRODUCTS"
                       151 "APPAREL AND ACCESSORIES, EXCEPT KNIT"
                       152 "MISCELLANEOUS FABRICATED TEXTILE PRODUCTS"
                       160 "PULP, PAPER, AND PAPERBOARD MILLS"
                       161 "MISCELLANEOUS PAPER AND PULP PRODUCTS"
                       162 "PAPERBOARD CONTAINERS AND BOXES"
                       171 "NEWSPAPER PUBLISHING AND PRINTING"
                       172 "PRINTING, PUBLISHING AND ALLIED INDUSTRIES, EXCEPT NEWSPAPER"
                       180 "PLASTICS, SYNTHETICS, AND RESINS" 181 "DRUGS"
                       182 "SOAPS AND COSMETICS"
                       190 "PAINTS, VARNISHES, AND RELATED PRODUCTS"
                       191 "AGRICULTURAL CHEMICALS"
                       192 "INDUSTRIAL AND MISCELLANEOUS CHEMICALS"
                       200 "PETROLEUM REFINING"
                       201 "MISCELLANEOUS PETROLEUM AND COAL PRODUCTS"
                       210 "TIRES AND INNER TUBES"
                       211 "OTHER RUBBER PRODUCTS AND PLASTICS FOOTWEAR AND BELTING"
                       212 "MISCELLANEOUS PLASTICS PRODUCTS"
                       220 "LEATHER TANNING AND FINISHING"
                       221 "FOOTWEAR, EXCEPT RUBBER AND PLASTIC"
                       222 "LEATHER PRODUCTS, EXCEPT FOOTWEAR" 230 "LOGGING"
                       231 "SAWMILLS, PLANING MILLS AND MILLWORK"
                       232 "WOOD BUILDINGS AND MOBILE HOMES"
                       241 "MISCELLANEOUS WOOD PRODUCTS"
                       242 "FURNITURE AND FIXTURES"
                       250 "GLASS AND GLASS PRODUCTS"
                       251 "CEMENT, CONCRETE, GYPSUM, AND PLASTER PRODUCTS"
                       252 "STRUCTURAL CLAY PRODUCTS"
                       261 "POTTERY AND RELATED PRODUCTS"
                       262 "MISCELLANEOUS NONMETALLIC MINERAL AND STONE PRODUCTS"
                       270 "BLAST FURNACES, STEELWORKS, AND FINISHING MILLS"
                       271 "IRON AND STEEL FOUNDRIES"
                       272 "PRIMARY ALUMINUM INDUSTRIES"
                       280 "OTHER PRIMARY METAL INDUSTRIES"
                       281 "CUTLERY, HANDTOOLS, AND GENERAL HARDWARE"
                       282 "FABRICATED STRUCTURAL METAL PRODUCTS"
                       290 "SCREW MACHINE PRODUCTS"
                       291 "METAL FORGINGS AND STAMPINGS" 292 "ORDNANCE"
                       300 "MISCELLANEOUS FABRICATED METAL PRODUCTS"
                       301 "NOT SPECIFIED METAL INDUSTRIES"
                       310 "ENGINES AND TURBINES"
                       311 "FARM MACHINERY AND EQUIPMENT"
                       312 "CONSTRUCTION AND MATERIAL HANDLING MACHINES"
                       320 "METALWORKING MACHINERY"
                       321 "OFFICE AND ACCOUNTING MACHINES"
                       322 "COMPUTERS AND RELATED EQUIPMENT"
                       331 "MACHINERY, EXCEPT ELECTRICAL, N.E.C."
                       332 "NOT SPECIFIED MACHINERY"
                       340 "HOUSEHOLD APPLIANCES"
                       341 "RADIO, TV, AND COMMUNICATION EQUIPMENT"
                       342 "ELECTRICAL MACHINERY, EQUIPMENT, AND SUPPLIES, N.E.C."
                       350 "NOT SPECIFIED ELECTRICAL MACHINERY, EQUIPMENT, AND SUPPLIES"
                       351 "MOTOR VEHICLES AND MOTOR VEHICLE EQUIPMENT"
                       352 "AIRCRAFT AND PARTS"
                       360 "SHIP AND BOAT BUILDING AND REPAIRING"
                       361 "RAILROAD LOCOMOTIVES AND EQUIPMENT"
                       362 "GUIDED MISSILES, SPACE VEHICLES, AND PARTS"
                       370 "CYCLES AND MISCELLANEOUS TRANSPORTATION EQUIPMENT"
                       371 "SCIENTIFIC AND CONTROLLING INSTRUMENTS"
                       372 "MEDICAL, DENTAL, AND OPTICAL INSTRUMENTS AND SUPPLIES"
                       380 "PHOTOGRAPHIC EQUIPMENT AND SUPPLIES"
                       381 "WATCHES, CLOCKS, AND CLOCKWORK OPERATED DEVICES"
                       390 "TOYS, AMUSEMENT, AND SPORTING GOODS"
                       391 "MISCELLANEOUS MANUFACTURING INDUSTRIES"
                       392 "NOT SPECIFIED MANUFACTURING INDUSTRIES"
                       400 "RAILROADS" 401 "BUS SERVICE AND URBAN TRANSIT"
                       402 "TAXICAB SERVICE" 410 "TRUCKING SERVICE"
                       411 "WAREHOUSING AND STORAGE"
                       412 "U.S. POSTAL SERVICE" 420 "WATER TRANSPORTATION"
                       421 "AIR TRANSPORTATION"
                       422 "PIPE LINES, EXCEPT NATURAL GAS"
                       432 "SERVICES INCIDENTAL TO TRANSPORTATION"
                       440 "RADIO AND TELEVISION BROADCASTING AND CABLE"
                       441 "TELEPHONE COMMUNICATIONS"
                       442 "TELEGRAPH AND MISCELLANEOUS COMMUNICATIONS SERVICES"
                       450 "ELECTRIC LIGHT AND POWER"
                       451 "GAS AND STEAM SUPPLY SYSTEMS"
                       452 "ELECTRIC AND GAS, AND OTHER COMBINATIONS"
                       470 "WATER SUPPLY AND IRRIGATION"
                       471 "SANITARY SERVICES" 472 "NOT SPECIFIED UTILITIES"
                       500 "MOTOR VEHICLES AND EQUIPMENT"
                       501 "FURNITURE AND HOME FURNISHINGS"
                       502 "LUMBER AND CONSTRUCTION MATERIALS"
                       510 "PROFESSIONAL AND COMMERCIAL EQUIP. AND SUPPLIES"
                       511 "METALS AND MINERALS, EXCEPT PETROLEUM"
                       512 "ELECTRICAL GOODS"
                       521 "HARDWARE, PLUMBING AND HEATING SUPPLIES"
                       530 "MACHINERY, EQUIPMENT, AND SUPPLIES"
                       531 "SCRAP AND WASTE MATERIALS"
                       532 "MISCELLANEOUS WHOLESALE, DURABLE GOODS"
                       540 "PAPER AND PAPER PRODUCTS"
                       541 "DRUGS, CHEMICALS AND ALLIED PRODUCTS"
                       542 "APPAREL, FABRICS, AND NOTIONS"
                       550 "GROCERIES AND RELATED PRODUCTS"
                       551 "FARM-PRODUCT RAW MATERIALS"
                       552 "PETROLEUM PRODUCTS" 560 "ALCOHOLIC BEVERAGES"
                       561 "FARM SUPPLIES"
                       562 "MISCELLANEOUS WHOLESALE, NONDURABLE GOODS"
                       571 "NOT SPECIFIED WHOLESALE TRADE"
                       580 "LUMBER AND BUILDING MATERIAL RETAILING"
                       581 "HARDWARE STORES"
                       582 "RETAIL NURSERIES AND GARDEN STORES"
                       590 "MOBILE HOME DEALERS" 591 "DEPARTMENT STORES"
                       592 "VARIETY STORES"
                       600 "MISCELLANEOUS GENERAL MERCHANDISE STORES"
                       601 "GROCERY STORES" 602 "DAIRY PRODUCTS STORES"
                       610 "RETAIL BAKERIES" 611 "FOOD STORES, N.E.C."
                       612 "MOTOR VEHICLE DEALERS"
                       620 "AUTO AND HOME SUPPLY STORES"
                       621 "GASOLINE SERVICE STATIONS"
                       622 "MISCELLANEOUS VEHICLE DEALERS"
                       623 "APPAREL AND ACCESSORY STORES, EXCEPT SHOE"
                       630 "SHOE STORES"
                       631 "FURNITURE AND HOME FURNISHINGS STORES"
                       632 "HOUSEHOLD APPLIANCE STORES"
                       633 "RADIO, TV, AND COMPUTER STORES"
                       640 "MUSIC STORES" 641 "EATING AND DRINKING PLACES"
                       642 "DRUG STORES" 650 "LIQUOR STORES"
                       651 "SPORTING GOODS, BICYCLES, AND HOBBY STORES"
                       652 "BOOK AND STATIONERY STORES" 660 "JEWELRY STORES"
                       661 "GIFT, NOVELTY, AND SOUVENIR SHOPS"
                       662 "SEWING, NEEDLEWORK AND PIECE GOODS STORES"
                       663 "CATALOG AND MAIL ORDER HOUSES"
                       670 "VENDING MACHINE OPERATORS"
                       671 "DIRECT SELLING ESTABLISHMENTS" 672 "FUEL DEALERS"
                       681 "RETAIL FLORISTS"
                       682 "MISCELLANEOUS RETAIL STORES"
                       691 "NOT SPECIFIED RETAIL TRADE" 700 "BANKING"
                       701 "SAVINGS INSTITUTIONS, INCLUDING CREDIT UNIONS"
                       702 "CREDIT AGENCIES, N.E.C."
                       710 "SECURITY, COMMODITY BROKERAGE, AND INVESTMENT COMPANIES"
                       711 "INSURANCE"
                       712 "REAL ESTATE, INCLUDING REAL ESTATE-INSURANCE OFFICES"
                       721 "ADVERTISING"
                       722 "SERVICES TO DWELLINGS AND OTHER BUILDINGS"
                       731 "PERSONNEL SUPPLY SERVICES"
                       732 "COMPUTER AND DATA PROCESSING SERVICES"
                       740 "DETECTIVE AND PROTECTIVE SERVICES"
                       741 "BUSINESS SERVICES, N.E.C."
                       742 "AUTOMOTIVE RENTAL AND LEASING, WITHOUT DRIVERS"
                       750 "AUTOMOBILE PARKING AND CARWASHES"
                       751 "AUTOMOTIVE REPAIR AND RELATED SERVICES"
                       752 "ELECTRICAL REPAIR SHOPS"
                       760 "MISCELLANEOUS REPAIR SERVICES"
                       761 "PRIVATE HOUSEHOLDS" 762 "HOTELS AND MOTELS"
                       770 "LODGING PLACES, EXCEPT HOTELS AND MOTELS"
                       771 "LAUNDRY, CLEANING, AND GARMENT SERVICES"
                       772 "BEAUTY SHOPS" 780 "BARBER SHOPS"
                       781 "FUNERAL SERVICE AND CREMATORIES"
                       782 "SHOE REPAIR SHOPS" 790 "DRESSMAKING SHOPS"
                       791 "MISCELLANEOUS PERSONAL SERVICES"
                       800 "THEATERS AND MOTION PICTURES"
                       801 "VIDEO TAPE RENTAL" 802 "BOWLING CENTERS"
                       810 "MISCELLANEOUS ENTERTAINMENT AND RECREATION SERVICES"
                       812 "OFFICES AND CLINICS OF PHYSICIANS"
                       820 "OFFICES AND CLINICS OF DENTISTS"
                       821 "OFFICES AND CLINICS OF CHIROPRACTORS"
                       822 "OFFICES AND CLINICS OF OPTOMETRISTS"
                       830 "OFFICES AND CLINICS OF HEALTH PRACTITIONERS, N.E.C."
                       831 "HOSPITALS"
                       832 "NURSING AND PERSONAL CARE FACILITIES"
                       840 "HEALTH SERVICES, N.E.C." 841 "LEGAL SERVICES"
                       842 "ELEMENTARY AND SECONDARY SCHOOLS"
                       850 "COLLEGES AND UNIVERSITIES"
                       851 "VOCATIONAL SCHOOLS" 852 "LIBRARIES"
                       860 "EDUCATIONAL SERVICES, N.E.C."
                       861 "JOB TRAINING AND VOCATIONAL REHABILITATION SERVICES"
                       862 "CHILD DAY CARE SERVICES"
                       863 "FAMILY CHILD CARE HOMES"
                       870 "RESIDENTIAL CARE FACILITIES, WITHOUT NURSING"
                       871 "SOCIAL SERVICES, N.E.C."
                       872 "MUSEUMS, ART GALLERIES, AND ZOOS"
                       873 "LABOR UNIONS" 880 "RELIGIOUS ORGANIZATIONS"
                       881 "MEMBERSHIP ORGANIZATIONS, N.E.C."
                       882 "ENGINEERING, ARCHITECTURAL, AND SURVEYING SERVICES"
                       890 "ACCOUNTING, AUDITING, AND BOOKKEEPING SERVICES"
                       891 "RESEARCH, DEVELOPMENT, AND TESTING SERVICES"
                       892 "MANAGEMENT AND PUBLIC RELATIONS SERVICES"
                       893 "MISCELLANEOUS PROFESSIONAL AND RELATED SERVICES"
                       900 "EXECUTIVE AND LEGISLATIVE OFFICES"
                       901 "GENERAL GOVERNMENT, N.E.C."
                       910 "JUSTICE, PUBLIC ORDER, AND SAFETY"
                       921 "PUBLIC FINANCE, TAXATION, AND MONETARY POLICY"
                       922 "ADMINISTRATION OF HUMAN RESOURCES PROGRAMS"
                       930 "ADMINISTRATION OF ENVIRONMENTAL QUALITY AND HOUSING PROGRAMS"
                       931 "ADMINISTRATION OF ECONOMIC PROGRAMS"
                       932 "NATIONAL SECURITY AND INTERNATIONAL AFFAIRS"
                       940 "ARMY" 941 "AIR FORCE" 942 "NAVY" 950 "MARINES"
                       951 "COAST GUARD"
                       952 "ARMED RESERVES, BRANCH NOT SPECIFIED"
                       960 "MILITARY RESERVES OR NATIONAL GUARD"
                       995 "UNKNOWN OR UNSURE" 997 "ALLOCATION REQUIRED"
                       998 "MISSING OR NOT REPORTED" 999 "INAPP" ;
label define B1PTEDUP  9 "INAPP" ;
label define B1PTEARP  9 "INAPP" ;
label define B1PTSEIP  999 "INAPP" ;
label define B1PMEDUP  9 "INAPP" ;
label define B1PMEARP  9 "INAPP" ;
label define B1PMSEIP  999 "INAPP" ;
label define B1PFEDUP  9 "INAPP" ;
label define B1PFEARP  9 "INAPP" ;
label define B1PFSEIP  999 "INAPP" ;
label define B1POCPMJ  1 "EXECUTIVE, ADMINISTRATIVE, AND MANAGERIAL"
                       2 "PROFESSIONAL SPECIALTY"
                       3 "TECHNICIAN AND RELATED SUPPORT"
                       4 "SALES OCCUPATION"
                       5 "ADMINISTRATIVE SUPPORT INCLUDING CLERICAL"
                       6 "SERVICE OCCUPATION"
                       7 "FARMING, FORESTRY, AND FISHING"
                       8 "PRECISION PRODUCTION, CRAFTS, AND REPAIR"
                       9 "OPERATOR, LABORER, AND MILITARY" 99 "INAPP" ;
label define B1PPINMJ  1 "AGRICULTURE, FORESTRY, FISHING, AND MINING"
                       2 "CONSTRUCTION" 3 "MANUFACTURING"
                       4 "TRANSPORTATION, COMMUNICATIONS, AND PUBLIC UTILITY"
                       5 "WHOLESALE TRADE" 6 "RETAIL TRADE"
                       7 "FINANCE, INSURANCE, AND REAL ESTATE"
                       8 "BUSINESS AND REPAIR SERVICES" 9 "PERSONAL SERVICES"
                       10 "ENTERTAINMENT AND RECREATIONAL SERVICES"
                       11 "PROFESSIONAL AND RELATED SERVICES"
                       12 "PUBLIC ADMINISTRATION" 99 "INAPP" ;
label define B1PB19    1 "MARRIED" 2 "SEPARATED" 3 "DIVORCED" 4 "WIDOWED"
                       5 "NEVER MARRIED" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PB20    97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PB21M   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PB21Y   9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define B1PB22    1 "WIDOWHOOD" 2 "DIVORCE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PB23M   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PB23Y   9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define B1PB24M   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PB24Y   9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define B1PB25M   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PB25Y   9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define B1PB26M   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PB26Y   9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define B1PB27M   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PB27Y   9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define B1PB28M   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PB28Y   9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define B1PB29M   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PB29Y   9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define B1PB30    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PB31N   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PB31M   1 "DAYS" 2 "WEEKS" 3 "MONTHS" 4 "YEARS" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PB32Y   9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define B1PSAGE   97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PB33    1 "NO SCHOOL/SOME GRADE SCHOOL (1-6)"
                       2 "EIGHTH GRADE/JUNIOR HIGH SCHOOL (7-8)"
                       3 "SOME HIGH SCHOOL (9-12 NO DIPLOMA/NO GED)" 4 "GED"
                       5 "GRADUATED FROM HIGH SCHOOL"
                       6 "1 TO 2 YEARS OF COLLEGE, NO DEGREE YET"
                       7 "3 OR MORE YEARS OF COLLEGE, NO DEGREE YET"
                       8 "GRADUATED FROM A TWO-YEAR COLLEGE OR VOCATIONAL SCHOOL, OR"
                       9 "GRADUATED FROM A FOUR- OR FIVE-YEAR COLLEGE, OR BACHELOR'S D"
                       10 "SOME GRADUATE SCHOOL" 11 "MASTER'S DEGREE"
                       12 "PH.D., ED.D., MD, DDS, LLB, LLD, JD, OR OTHER PROFESSIONAL D"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PB34A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PB34B   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PB34C   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PB34D   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PB34E   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PB34F   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PB34G   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PB34H   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PB34I   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PB34J   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PB34K   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PB34WK  1 "WORKING NOW" 2 "SELF-EMPLOYED"
                       3 "LOOKING FOR WORK; UNEMPLOYED"
                       4 "TEMPORARILY LAID OFF" 5 "RETIRED" 6 "HOMEMAKER"
                       7 "FULL-TIME STUDENT" 8 "PART-TIME STUDENT"
                       9 "MATERNITY OR SICK LEAVE (VOLUNTEERED)"
                       10 "PERMANENTLY DISABLED (VOLUNTEERED)"
                       11 "OTHER (SPECIFY)" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define B1PB35N   996 "NEVER WORKED" 997 "DON'T KNOW" 998 "REFUSED"
                       999 "INAPP" ;
label define B1PB35M   1 "DAYS" 2 "WEEKS" 3 "MONTHS" 4 "YEARS" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PB36    1 "FIRED" 2 "LAID OFF" 3 "PLANT/COMPANY CLOSED"
                       4 "QUIT" 5 "RETIRED"
                       6 "WORK FORCE REDUCTION (VOLUNTEERED)"
                       7 "OTHER (SPECIFY ACTION)" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define B1PB37    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PB38    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PB39    1 "HAS/HAD EMPLOYER" 2 "SELF-EMPLOYED" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1POCCS   3 "LEGISLATORS"
                       4 "CHIEF EXECUTIVES AND GENERAL ADMINISTRATORS, PUBLIC ADMINIS"
                       5 "ADMINISTRATORS AND OFFICIALS, PUBLIC ADMINISTRATION"
                       6 "ADMINISTRATORS, PROTECTIVE SERVICES"
                       7 "FINANCIAL MANAGERS"
                       8 "PERSONNEL AND LABOR RELATIONS MANAGERS"
                       9 "PURCHASING MANAGERS"
                       13 "MANAGERS, MARKETING, ADVERTISING, AND PUBLIC RELATIONS"
                       14 "ADMINISTRATORS, EDUCATION AND RELATED FIELDS"
                       15 "MANAGERS, MEDICINE AND HEALTH"
                       16 "POSTMASTERS AND MAIL SUPERINTENDENTS"
                       17 "MANAGERS, FOOD SERVING AND LODGING ESTABLISHMENTS"
                       18 "MANAGERS, PROPERTIES AND REAL ESTATE"
                       19 "FUNERAL DIRECTORS"
                       21 "MANAGERS, SERVICE ORGANIZATIONS, N.E.C."
                       22 "MANAGERS AND ADMINISTRATORS, N.E.C."
                       23 "ACCOUNTANTS AND AUDITORS" 24 "UNDERWRITERS"
                       25 "OTHER FINANCIAL OFFICERS" 26 "MANAGEMENT ANALYSTS"
                       27 "PERSONNEL, TRAINING, AND LABOR RELATIONS SPECIALISTS"
                       28 "PURCHASING AGENTS AND BUYERS, FARM PRODUCTS"
                       29 "BUYERS, WHOLESALE AND RETAIL TRADE, EXCEPT FARM PRODUCTS"
                       33 "PURCHASING AGENTS AND BUYERS, N.E.C."
                       34 "BUSINESS AND PROMOTION AGENTS"
                       35 "CONSTRUCTION INSPECTORS"
                       36 "INSPECTORS AND COMPLIANCE OFFICERS, EXCEPT CONSTRUCTION"
                       37 "MANAGEMENT RELATED OCCUPATIONS, N.E.C."
                       43 "ARCHITECTS" 44 "AEROSPACE ENGINEERS"
                       45 "METALLURGICAL AND MATERIALS ENGINEERS"
                       46 "MINING ENGINEERS" 47 "PETROLEUM ENGINEERS"
                       48 "CHEMICAL ENGINEERS" 49 "NUCLEAR ENGINEERS"
                       53 "CIVIL ENGINEERS" 54 "AGRICULTURAL ENGINEERS"
                       55 "ELECTRICAL AND ELECTRONIC ENGINEERS"
                       56 "INDUSTRIAL ENGINEERS" 57 "MECHANICAL ENGINEERS"
                       58 "MARINE AND NAVAL ARCHITECTS"
                       59 "ENGINEERS, N.E.C."
                       63 "SURVEYORS AND MAPPING SCIENTISTS"
                       64 "COMPUTER SYSTEMS ANALYSTS AND SCIENTISTS"
                       65 "OPERATIONS AND SYSTEMS RESEARCHERS AND ANALYSTS"
                       66 "ACTUARIES" 67 "STATISTICIANS"
                       68 "MATHEMATICAL SCIENTISTS, N.E.C."
                       69 "PHYSICISTS AND ASTRONOMERS"
                       73 "CHEMISTS, EXCEPT BIOCHEMISTS"
                       74 "ATMOSPHERIC AND SPACE SCIENTISTS"
                       75 "GEOLOGISTS AND GEODESISTS"
                       76 "PHYSICAL SCIENTISTS, N.E.C."
                       77 "AGRICULTURAL AND FOOD SCIENTISTS"
                       78 "BIOLOGICAL AND LIFE SCIENTISTS"
                       79 "FORESTRY AND CONSERVATION SCIENTISTS"
                       83 "MEDICAL SCIENTISTS" 84 "PHYSICIANS" 85 "DENTISTS"
                       86 "VETERINARIANS" 87 "OPTOMETRISTS" 88 "PODIATRISTS"
                       89 "HEALTH DIAGNOSING PRACTITIONERS, N.E.C."
                       95 "REGISTERED NURSES" 96 "PHARMACISTS"
                       97 "DIETITIANS" 98 "RESPIRATORY THERAPISTS"
                       99 "OCCUPATIONAL THERAPISTS" 103 "PHYSICAL THERAPISTS"
                       104 "SPEECH THERAPISTS" 105 "THERAPISTS, N.E.C."
                       106 "PHYSICIANS ASSISTANTS"
                       113 "EARTH, ENVIRONMENTAL, AND MARINE SCIENCE TEACHERS"
                       114 "BIOLOGICAL SCIENCE TEACHERS"
                       115 "CHEMISTRY TEACHERS" 116 "PHYSICS TEACHERS"
                       117 "NATURAL SCIENCE TEACHERS, N.E.C."
                       118 "PSYCHOLOGY TEACHERS" 119 "ECONOMICS TEACHERS"
                       123 "HISTORY TEACHERS"
                       124 "POLITICAL SCIENCE TEACHERS"
                       125 "SOCIOLOGY TEACHERS"
                       126 "SOCIAL SCIENCE TEACHERS, N.E.C."
                       127 "ENGINEERING TEACHERS"
                       128 "MATHEMATICAL SCIENCE TEACHERS"
                       129 "COMPUTER SCIENCE TEACHERS"
                       133 "MEDICAL SCIENCE TEACHERS"
                       134 "HEALTH SPECIALTIES TEACHERS"
                       135 "BUSINESS, COMMERCE, AND MARKETING TEACHERS"
                       136 "AGRICULTURE AND FORESTRY TEACHERS"
                       137 "ART, DRAMA, AND MUSIC TEACHERS"
                       138 "PHYSICAL EDUCATION TEACHERS"
                       139 "EDUCATION TEACHERS" 143 "ENGLISH TEACHERS"
                       144 "FOREIGN LANGUAGE TEACHERS" 145 "LAW TEACHERS"
                       146 "SOCIAL WORK TEACHERS" 147 "THEOLOGY TEACHERS"
                       148 "TRADE AND INDUSTRIAL TEACHERS"
                       149 "HOME ECONOMICS TEACHERS"
                       153 "TEACHERS, POSTSECONDARY, N.E.C."
                       154 "POSTSECONDARY TEACHERS, SUBJECT NOT SPECIFIED"
                       155 "TEACHERS, PREKINDERGARTEN AND KINDERGARTEN"
                       156 "TEACHERS, ELEMENTARY SCHOOL"
                       157 "TEACHERS, SECONDARY SCHOOL"
                       158 "TEACHERS, SPECIAL EDUCATION"
                       159 "TEACHERS, N.E.C."
                       163 "COUNSELORS, EDUCATIONAL AND VOCATIONAL"
                       164 "LIBRARIANS" 165 "ARCHIVISTS AND CURATORS"
                       166 "ECONOMISTS" 167 "PSYCHOLOGISTS"
                       168 "SOCIOLOGISTS" 169 "SOCIAL SCIENTISTS, N.E.C."
                       173 "URBAN PLANNERS" 174 "SOCIAL WORKERS"
                       175 "RECREATION WORKERS" 176 "CLERGY"
                       177 "RELIGIOUS WORKERS, N.E.C." 178 "LAWYERS"
                       179 "JUDGES" 183 "AUTHORS" 184 "TECHNICAL WRITERS"
                       185 "DESIGNERS" 186 "MUSICIANS AND COMPOSERS"
                       187 "ACTORS AND DIRECTORS"
                       188 "PAINTERS, SCULPTORS, CRAFT-ARTISTS, AND ARTIST PRINTMAKERS"
                       189 "PHOTOGRAPHERS" 193 "DANCERS"
                       194 "ARTISTS, PERFORMERS, AND RELATED WORKERS, N.E.C."
                       195 "EDITORS AND REPORTERS"
                       197 "PUBLIC RELATIONS SPECIALISTS" 198 "ANNOUNCERS"
                       199 "ATHLETES"
                       203 "CLINICAL LABORATORY TECHNOLOGISTS AND TECHNICIANS"
                       204 "DENTAL HYGIENISTS"
                       205 "HEALTH RECORD TECHNOLOGISTS AND TECHNICIANS"
                       206 "RADIOLOGIC TECHNICIANS"
                       207 "LICENSED PRACTICAL NURSES"
                       208 "HEALTH TECHNOLOGISTS AND TECHNICIANS, N.E.C."
                       213 "ELECTRICAL AND ELECTRONIC TECHNICIANS"
                       214 "INDUSTRIAL ENGINEERING TECHNICIANS"
                       215 "MECHANICAL ENGINEERING TECHNICIANS"
                       216 "ENGINEERING TECHNICIANS, N.E.C."
                       217 "DRAFTING OCCUPATIONS"
                       218 "SURVEYING AND MAPPING TECHNICIANS"
                       223 "BIOLOGICAL TECHNICIANS"
                       224 "CHEMICAL TECHNICIANS"
                       225 "SCIENCE TECHNICIANS, N.E.C."
                       226 "AIRPLANE PILOTS AND NAVIGATORS"
                       227 "AIR TRAFFIC CONTROLLERS"
                       228 "BROADCAST EQUIPMENT OPERATORS"
                       229 "COMPUTER PROGRAMMERS"
                       233 "TOOL PROGRAMMERS, NUMERICAL CONTROL"
                       234 "LEGAL ASSISTANTS" 235 "TECHNICIANS, N.E.C."
                       243 "SUPERVISORS AND PROPRIETORS, SALES OCCUPATIONS"
                       253 "INSURANCE SALES OCCUPATIONS"
                       254 "REAL ESTATE SALES OCCUPATIONS"
                       255 "SECURITIES AND FINANCIAL SERVICES SALES OCCUPATIONS"
                       256 "ADVERTISING AND RELATED SALES OCCUPATIONS"
                       257 "SALES OCCUPATIONS, OTHER BUSINESS SERVICES"
                       258 "SALES ENGINEERS"
                       259 "SALES REPRESENTATIVES, MINING, MANUFACTURING, AND WHOLESALE"
                       263 "SALES WORKERS, MOTOR VEHICLES AND BOATS"
                       264 "SALES WORKERS, APPAREL"
                       265 "SALES WORKERS, SHOES"
                       266 "SALES WORKERS, FURNITURE AND HOME FURNISHINGS"
                       267 "SALES WORKERS, RADIO, TV, HI-FI, AND APPLIANCES"
                       268 "SALES WORKERS, HARDWARE AND BUILDING SUPPLIES"
                       269 "SALES WORKERS, PARTS"
                       274 "SALES WORKERS, OTHER COMMODITIES"
                       275 "SALES COUNTER CLERKS" 276 "CASHIERS"
                       277 "STREET AND DOOR-TO-DOOR SALES WORKERS"
                       278 "NEWS VENDORS"
                       283 "DEMONSTRATORS, PROMOTERS AND MODELS, SALES"
                       284 "AUCTIONEERS"
                       285 "SALES SUPPORT OCCUPATIONS, N.E.C."
                       303 "SUPERVISORS, GENERAL OFFICE"
                       304 "SUPERVISORS, COMPUTER EQUIPMENT OPERATORS"
                       305 "SUPERVISORS, FINANCIAL RECORDS PROCESSING"
                       306 "CHIEF COMMUNICATIONS OPERATORS"
                       307 "SUPERVISORS, DISTRIBUTION, SCHEDULING, AND ADJUSTING CLERKS"
                       308 "COMPUTER OPERATORS"
                       309 "PERIPHERAL EQUIPMENT OPERATORS" 313 "SECRETARIES"
                       314 "STENOGRAPHERS" 315 "TYPISTS" 316 "INTERVIEWERS"
                       317 "HOTEL CLERKS"
                       318 "TRANSPORTATION TICKET AND RESERVATION AGENTS"
                       319 "RECEPTIONISTS" 323 "INFORMATION CLERKS, N.E.C."
                       325 "CLASSIFIED-AD CLERKS" 326 "CORRESPONDENCE CLERKS"
                       327 "ORDER CLERKS"
                       328 "PERSONNEL CLERKS, EXCEPT PAYROLL AND TIMEKEEPING"
                       329 "LIBRARY CLERKS" 335 "FILE CLERKS"
                       336 "RECORDS CLERKS"
                       337 "BOOKKEEPERS, ACCOUNTING, AND AUDITING CLERKS"
                       338 "PAYROLL AND TIMEKEEPING CLERKS"
                       339 "BILLING CLERKS" 343 "COST AND RATE CLERKS"
                       344 "BILLING, POSTING, AND CALCULATING MACHINE OPERATORS"
                       345 "DUPLICATING MACHINE OPERATORS"
                       346 "MAIL PREPARING AND PAPER HANDLING MACHINE OPERATORS"
                       347 "OFFICE MACHINE OPERATORS, N.E.C."
                       348 "TELEPHONE OPERATORS"
                       353 "COMMUNICATIONS EQUIPMENT OPERATORS, N.E.C."
                       354 "POSTAL CLERKS, EXCEPT MAIL CARRIERS"
                       355 "MAIL CARRIERS, POSTAL SERVICE"
                       356 "MAIL CLERKS, EXCEPT POSTAL SERVICE"
                       357 "MESSENGERS" 359 "DISPATCHERS"
                       363 "PRODUCTION COORDINATORS"
                       364 "TRAFFIC, SHIPPING, AND RECEIVING CLERKS"
                       365 "STOCK AND INVENTORY CLERKS" 366 "METER READERS"
                       368 "WEIGHERS, MEASURERS, CHECKERS, AND SAMPLERS"
                       373 "EXPEDITERS"
                       374 "MATERIAL RECORDING, SCHEDULING, AND DISTRIBUTING CLERKS, N."
                       375 "INSURANCE ADJUSTERS, EXAMINERS, AND INVESTIGATORS"
                       376 "INVESTIGATORS AND ADJUSTERS, EXCEPT INSURANCE"
                       377 "ELIGIBILITY CLERKS, SOCIAL WELFARE"
                       378 "BILL AND ACCOUNT COLLECTORS"
                       379 "GENERAL OFFICE CLERKS" 383 "BANK TELLERS"
                       384 "PROOFREADERS" 385 "DATA-ENTRY KEYERS"
                       386 "STATISTICAL CLERKS" 387 "TEACHERS AIDES"
                       389 "ADMINISTRATIVE SUPPORT OCCUPATIONS, N.E.C."
                       403 "LAUNDERERS AND IRONERS"
                       404 "COOKS, PRIVATE HOUSEHOLD"
                       405 "HOUSEKEEPERS AND BUTLERS"
                       406 "CHILD CARE WORKERS, PRIVATE HOUSEHOLD"
                       407 "PRIVATE HOUSEHOLD CLEANERS AND SERVANTS"
                       413 "SUPERVISORS, FIREFIGHTING AND FIRE PREVENTION OCCUPATIONS"
                       414 "SUPERVISORS, POLICE AND DETECTIVES"
                       415 "SUPERVISORS, GUARDS"
                       416 "FIRE INSPECTION AND FIRE PREVENTION OCCUPATIONS"
                       417 "FIREFIGHTING OCCUPATIONS"
                       418 "POLICE AND DETECTIVES, PUBLIC SERVICE"
                       423 "SHERIFFS, BAILIFFS, AND OTHER LAW ENFORCEMENT OFFICERS"
                       424 "CORRECTIONAL INSTITUTION OFFICERS"
                       425 "CROSSING GUARDS"
                       426 "GUARDS AND POLICE, EXCEPT PUBLIC SERVICE"
                       427 "PROTECTIVE SERVICE OCCUPATIONS, N.E.C."
                       433 "SUPERVISORS, FOOD PREPARATION AND SERVICE OCCUPATIONS"
                       434 "BARTENDERS" 435 "WAITERS AND WAITRESSES"
                       436 "COOKS"
                       438 "FOOD COUNTER, FOUNTAIN AND RELATED OCCUPATIONS"
                       439 "KITCHEN WORKERS, FOOD PREPARATION"
                       443 "WAITERS/WAITRESSES ASSISTANTS"
                       444 "MISCELLANEOUS FOOD PREPARATION OCCUPATIONS"
                       445 "DENTAL ASSISTANTS"
                       446 "HEALTH AIDES, EXCEPT NURSING"
                       447 "NURSING AIDES, ORDERLIES, AND ATTENDANTS"
                       448 "SUPERVISORS, CLEANING AND BUILDING SERVICE WORKERS"
                       449 "MAIDS AND HOUSEMEN" 453 "JANITORS AND CLEANERS"
                       454 "ELEVATOR OPERATORS"
                       455 "PEST CONTROL OCCUPATIONS"
                       456 "SUPERVISORS, PERSONAL SERVICE OCCUPATIONS"
                       457 "BARBERS" 458 "HAIRDRESSERS AND COSMETOLOGISTS"
                       459 "ATTENDANTS, AMUSEMENT AND RECREATION FACILITIES"
                       461 "GUIDES" 462 "USHERS"
                       463 "PUBLIC TRANSPORTATION ATTENDANTS"
                       464 "BAGGAGE PORTERS AND BELLHOPS"
                       465 "WELFARE SERVICE AIDES"
                       466 "FAMILY CHILD CARE PROVIDERS"
                       467 "EARLY CHILDHOOD TEACHERS ASSISTANTS"
                       468 "CHILD CARE WORKERS, N.E.C."
                       469 "PERSONAL SERVICE OCCUPATIONS, N.E.C."
                       473 "FARMERS, EXCEPT HORTICULTURAL"
                       474 "HORTICULTURAL SPECIALTY FARMERS"
                       475 "MANAGERS, FARMS, EXCEPT HORTICULTURAL"
                       476 "MANAGERS, HORTICULTURAL SPECIALTY FARMS"
                       477 "SUPERVISORS, FARM WORKERS" 479 "FARM WORKERS"
                       483 "MARINE LIFE CULTIVATION WORKERS"
                       484 "NURSERY WORKERS"
                       485 "SUPERVISORS, RELATED AGRICULTURAL OCCUPATIONS"
                       486 "GROUNDSKEEPERS AND GARDENERS, EXCEPT FARM"
                       487 "ANIMAL CARETAKERS, EXCEPT FARM"
                       488 "GRADERS AND SORTERS, AGRICULTURAL PRODUCTS"
                       489 "INSPECTORS, AGRICULTURAL PRODUCTS"
                       494 "SUPERVISORS, FORESTRY AND LOGGING WORKERS"
                       495 "FORESTRY WORKERS, EXCEPT LOGGING"
                       496 "TIMBER CUTTING AND LOGGING OCCUPATIONS"
                       497 "CAPTAINS AND OTHER OFFICERS, FISHING VESSELS"
                       498 "FISHERS" 499 "HUNTERS AND TRAPPERS"
                       503 "SUPERVISORS, MECHANICS AND REPAIRERS"
                       505 "AUTOMOBILE MECHANICS, EXCEPT APPRENTICES"
                       506 "AUTOMOBILE MECHANIC APPRENTICES"
                       507 "BUS, TRUCK, AND STATIONARY ENGINE MECHANICS"
                       508 "AIRCRAFT ENGINE MECHANICS"
                       509 "SMALL ENGINE REPAIRERS"
                       514 "AUTOMOBILE BODY AND RELATED REPAIRERS"
                       515 "AIRCRAFT MECHANICS, EXCEPT ENGINE"
                       516 "HEAVY EQUIPMENT MECHANICS"
                       517 "FARM EQUIPMENT MECHANICS"
                       518 "INDUSTRIAL MACHINERY REPAIRERS"
                       519 "MACHINERY MAINTENANCE OCCUPATIONS"
                       523 "ELECTRONIC REPAIRERS, COMMUNICATIONS AND INDUSTRIAL EQUIPME"
                       525 "DATA PROCESSING EQUIPMENT REPAIRERS"
                       526 "HOUSEHOLD APPLIANCE AND POWER TOOL REPAIRERS"
                       527 "TELEPHONE LINE INSTALLERS AND REPAIRERS"
                       529 "TELEPHONE INSTALLERS AND REPAIRERS"
                       533 "MISCELLANEOUS ELECTRICAL AND ELECTRONIC EQUIPMENT REPAIRERS"
                       534 "HEATING, AIR CONDITIONING, AND REFRIGERATION MECHANICS"
                       535 "CAMERA, WATCH, AND MUSICAL INSTRUMENT REPAIRERS"
                       536 "LOCKSMITHS AND SAFE REPAIRERS"
                       538 "OFFICE MACHINE REPAIRERS"
                       539 "MECHANICAL CONTROLS AND VALVE REPAIRERS"
                       543 "ELEVATOR INSTALLERS AND REPAIRERS"
                       544 "MILLWRIGHTS"
                       547 "SPECIFIED MECHANICS AND REPAIRERS, N.E.C."
                       549 "NOT SPECIFIED MECHANICS AND REPAIRERS"
                       553 "SUPERVISORS, BRICKMASONS, STONEMASONS, AND TILE SETTERS"
                       554 "SUPERVISORS, CARPENTERS AND RELATED WORKERS"
                       555 "SUPERVISORS, ELECTRICIANS AND POWER TRANSMISSION INSTALLERS"
                       556 "SUPERVISORS, PAINTERS, PAPERHANGERS, AND PLASTERERS"
                       557 "SUPERVISORS, PLUMBERS, PIPEFITTERS, AND STEAMFITTERS"
                       558 "SUPERVISORS, CONSTRUCTION N.E.C."
                       563 "BRICKMASONS AND STONEMASONS, EXCEPT APPRENTICES"
                       564 "BRICKMASON AND STONEMASON APPRENTICES"
                       565 "TILE SETTERS, HARD AND SOFT"
                       566 "CARPET INSTALLERS"
                       567 "CARPENTERS, EXCEPT APPRENTICES"
                       569 "CARPENTER APPRENTICES" 573 "DRYWALL INSTALLERS"
                       575 "ELECTRICIANS, EXCEPT APPRENTICES"
                       576 "ELECTRICIAN APPRENTICES"
                       577 "ELECTRICAL POWER INSTALLERS AND REPAIRERS"
                       579 "PAINTERS, CONSTRUCTION AND MAINTENANCE"
                       583 "PAPERHANGERS" 584 "PLASTERERS"
                       585 "PLUMBERS, PIPEFITTERS, AND STEAMFITTERS, EXCEPT APPRENTICES"
                       587 "PLUMBER, PIPEFITTER, AND STEAMFITTER APPRENTICES"
                       588 "CONCRETE AND TERRAZZO FINISHERS" 589 "GLAZIERS"
                       593 "INSULATION WORKERS"
                       594 "PAVING, SURFACING, AND TAMPING EQUIPMENT OPERATORS"
                       595 "ROOFERS" 596 "SHEETMETAL DUCT INSTALLERS"
                       597 "STRUCTURAL METAL WORKERS" 598 "DRILLERS, EARTH"
                       599 "CONSTRUCTION TRADES, N.E.C."
                       613 "SUPERVISORS, EXTRACTIVE OCCUPATIONS"
                       614 "DRILLERS, OIL WELL" 615 "EXPLOSIVES WORKERS"
                       616 "MINING MACHINE OPERATORS"
                       617 "MINING OCCUPATIONS, N.E.C."
                       628 "SUPERVISORS, PRODUCTION OCCUPATIONS"
                       634 "TOOL AND DIE MAKERS, EXCEPT APPRENTICES"
                       635 "TOOL AND DIE MAKER APPRENTICES"
                       636 "PRECISION ASSEMBLERS, METAL"
                       637 "MACHINISTS, EXCEPT APPRENTICES"
                       639 "MACHINIST APPRENTICES" 643 "BOILERMAKERS"
                       644 "PRECISION GRINDERS, FILERS, AND TOOL SHARPENERS"
                       645 "PATTERNMAKERS AND MODEL MAKERS, METAL"
                       646 "LAY-OUT WORKERS"
                       647 "PRECIOUS STONES AND METALS WORKERS , JEWELERS"
                       649 "ENGRAVERS, METAL"
                       653 "SHEET METAL WORKERS, EXCEPT APPRENTICES"
                       654 "SHEET METAL WORKER APPRENTICES"
                       655 "MISCELLANEOUS PRECISION METAL WORKERS"
                       656 "PATTERNMAKERS AND MODEL MAKERS, WOOD"
                       657 "CABINET MAKERS AND BENCH CARPENTERS"
                       658 "FURNITURE AND WOOD FINISHERS"
                       659 "MISCELLANEOUS PRECISION WOODWORKERS"
                       666 "DRESSMAKERS" 667 "TAILORS" 668 "UPHOLSTERERS"
                       669 "SHOE REPAIRERS"
                       674 "MISCELLANEOUS PRECISION APPAREL AND FABRIC WORKERS"
                       675 "HAND MOLDERS AND SHAPERS, EXCEPT JEWELERS"
                       676 "PATTERNMAKERS, LAY-OUT WORKERS, AND CUTTERS"
                       677 "OPTICAL GOODS WORKERS"
                       678 "DENTAL LABORATORY AND MEDICAL APPLIANCE TECHNICIANS"
                       679 "BOOKBINDERS"
                       683 "ELECTRICAL AND ELECTRONIC EQUIPMENT ASSEMBLERS"
                       684 "MISCELLANEOUS PRECISION WORKERS, N.E.C."
                       686 "BUTCHERS AND MEAT CUTTERS" 687 "BAKERS"
                       688 "FOOD BATCHMAKERS"
                       689 "INSPECTORS, TESTERS, AND GRADERS"
                       693 "ADJUSTERS AND CALIBRATORS"
                       694 "WATER AND SEWAGE TREATMENT PLANT OPERATORS"
                       695 "POWER PLANT OPERATORS" 696 "STATIONARY ENGINEERS"
                       699 "MISCELLANEOUS PLANT AND SYSTEM OPERATORS"
                       703 "LATHE AND TURNING MACHINE SET-UP OPERATORS"
                       704 "LATHE AND TURNING MACHINE OPERATORS"
                       705 "MILLING AND PLANING MACHINE OPERATORS"
                       706 "PUNCHING AND STAMPING PRESS MACHINE OPERATORS"
                       707 "ROLLING MACHINE OPERATORS"
                       708 "DRILLING AND BORING MACHINE OPERATORS"
                       709 "GRINDING, ABRADING, BUFFING, AND POLISHING MACHINE OPERATOR"
                       713 "FORGING MACHINE OPERATORS"
                       714 "NUMERICAL CONTROL MACHINE OPERATORS"
                       715 "MISCELLANEOUS METAL, PLASTIC, STONE, AND GLASS WORKING MACH"
                       717 "FABRICATING MACHINE OPERATORS, N.E.C."
                       719 "MOLDING AND CASTING MACHINE OPERATORS"
                       723 "METAL PLATING MACHINE OPERATORS"
                       724 "HEAT TREATING EQUIPMENT OPERATORS"
                       725 "MISCELLANEOUS METAL AND PLASTIC PROCESSING MACHINE OPERATOR"
                       726 "WOOD LATHE, ROUTING, AND PLANING MACHINE OPERATORS"
                       727 "SAWING MACHINE OPERATORS"
                       728 "SHAPING AND JOINING MACHINE OPERATORS"
                       729 "NAILING AND TACKING MACHINE OPERATORS"
                       733 "MISCELLANEOUS WOODWORKING MACHINE OPERATORS"
                       734 "PRINTING PRESS OPERATORS"
                       735 "PHOTOENGRAVERS AND LITHOGRAPHERS"
                       736 "TYPESETTERS AND COMPOSITORS"
                       737 "MISCELLANEOUS PRINTING MACHINE OPERATORS"
                       738 "WINDING AND TWISTING MACHINE OPERATORS"
                       739 "KNITTING, LOOPING, TAPING, AND WEAVING MACHINE OPERATORS"
                       743 "TEXTILE CUTTING MACHINE OPERATORS"
                       744 "TEXTILE SEWING MACHINE OPERATORS"
                       745 "SHOE MACHINE OPERATORS"
                       747 "PRESSING MACHINE OPERATORS"
                       748 "LAUNDERING AND DRY CLEANING MACHINE OPERATORS"
                       749 "MISCELLANEOUS TEXTILE MACHINE OPERATORS"
                       753 "CEMENTING AND GLUING MACHINE OPERATORS"
                       754 "PACKAGING AND FILLING MACHINE OPERATORS"
                       755 "EXTRUDING AND FORMING MACHINE OPERATORS"
                       756 "MIXING AND BLENDING MACHINE OPERATORS"
                       757 "SEPARATING, FILTERING, AND CLARIFYING MACHINE OPERATORS"
                       758 "COMPRESSING AND COMPACTING MACHINE OPERATORS"
                       759 "PAINTING AND PAINT SPRAYING MACHINE OPERATORS"
                       763 "ROASTING AND BAKING MACHINE OPERATORS, FOOD"
                       764 "WASHING, CLEANING, AND PICKLING MACHINE OPERATORS"
                       765 "FOLDING MACHINE OPERATORS"
                       766 "FURNACE, KILN, AND OVEN OPERATORS, EXCEPT FOOD"
                       768 "CRUSHING AND GRINDING MACHINE OPERATORS"
                       769 "SLICING AND CUTTING MACHINE OPERATORS"
                       773 "MOTION PICTURE PROJECTIONISTS"
                       774 "PHOTOGRAPHIC PROCESS MACHINE OPERATORS"
                       777 "MISC. MACHINE OPER."
                       779 "MACHINE OPER., NOT SPEC."
                       783 "WELDERS AND CUTTERS" 784 "SOLDERERS AND BRAZERS"
                       785 "ASSEMBLERS"
                       786 "HAND CUTTING AND TRIMMING OCCUPATIONS"
                       787 "HAND MOLDING, CASTING, AND FORMING OCCUPATIONS"
                       789 "HAND PAINTING, COATING, AND DECORATING OCCUPATIONS"
                       793 "HAND ENGRAVING AND PRINTING OCCUPATIONS"
                       795 "MISCELLANEOUS HAND WORKING OCCUPATIONS"
                       796 "PRODUCTION INSPECTORS, CHECKERS, AND EXAMINERS"
                       797 "PRODUCTION TESTERS"
                       798 "PRODUCTION SAMPLERS AND WEIGHERS"
                       799 "GRADERS AND SORTERS, EXCEPT AGRICULTURAL"
                       803 "SUPERVISORS, MOTOR VEHICLE OPERATORS"
                       804 "TRUCK DRIVERS" 806 "DRIVER-SALES WORKERS"
                       808 "BUS DRIVERS" 809 "TAXICAB DRIVERS AND CHAUFFEURS"
                       813 "PARKING LOT ATTENDANTS"
                       814 "MOTOR TRANSPORTATION OCCUPATIONS, N.E.C."
                       823 "RAILROAD CONDUCTORS AND YARDMASTERS"
                       824 "LOCOMOTIVE OPERATING OCCUPATIONS"
                       825 "RAILROAD BRAKE, SIGNAL, AND SWITCH OPERATORS"
                       826 "RAIL VEHICLE OPERATORS, N.E.C."
                       828 "SHIP CAPTAINS AND MATES, EXCEPT FISHING BOATS"
                       829 "SAILORS AND DECKHANDS" 833 "MARINE ENGINEERS"
                       834 "BRIDGE, LOCK, AND LIGHTHOUSE TENDERS"
                       843 "SUPERVISORS, MATERIAL MOVING EQUIPMENT OPERATORS"
                       844 "OPERATING ENGINEERS"
                       845 "LONGSHORE EQUIPMENT OPERATORS"
                       848 "HOIST AND WINCH OPERATORS"
                       849 "CRANE AND TOWER OPERATORS"
                       853 "EXCAVATING AND LOADING MACHINE OPERATORS"
                       855 "GRADER, DOZER, AND SCRAPER OPERATORS"
                       856 "INDUSTRIAL TRUCK AND TRACTOR EQUIPMENT OPERATORS"
                       859 "MISCELLANEOUS MATERIAL MOVING EQUIPMENT OPERATORS"
                       864 "SUPERVISORS, HANDLERS, EQUIPMENT CLEANERS, AND LABORERS, N."
                       865 "HELPERS, MECHANICS, AND REPAIRERS"
                       866 "HELPERS, CONSTRUCTION TRADES"
                       867 "HELPERS, SURVEYOR"
                       868 "HELPERS, EXTRACTIVE OCCUPATIONS"
                       869 "CONSTRUCTION LABORERS" 874 "PRODUCTION HELPERS"
                       875 "GARBAGE COLLECTORS" 876 "STEVEDORES"
                       877 "STOCK HANDLERS AND BAGGERS"
                       878 "MACHINE FEEDERS AND OFFBEARERS"
                       883 "FREIGHT, STOCK, AND MATERIAL HANDLERS, N.E.C."
                       885 "GARAGE AND SERVICE STATION RELATED OCCUPATIONS"
                       887 "VEHICLE WASHERS AND EQUIPMENT CLEANERS"
                       888 "HAND PACKERS AND PACKAGERS"
                       889 "LABORERS, EXC. CONST."
                       903 "COMMISSIONED OFFICERS AND WARRANT OFFICERS"
                       904 "NON-COMMISSIONED OFFICERS AND OTHER ENLISTED PERSONNEL"
                       905 "MILITARY OCCUPATION, RANK NOT SPECIFIED"
                       995 "UNKNOWN OR UNSURE" 997 "ALLOCATION REQUIRED"
                       998 "NOT IN LABOR FORCE" 999 "MISSING OR NOT REPORTED" ;
label define B1PINDS   10 "AGRICULTURAL PRODUCTION, CROPS"
                       11 "AGRICULTURAL PRODUCTION, LIVESTOCK"
                       12 "VETERINARY SERVICES"
                       20 "LANDSCAPE AND HORTICULTURAL SERVICES"
                       30 "AGRICULTURAL SERVICES, N.E.C." 31 "FORESTRY"
                       32 "FISHING, HUNTING, AND TRAPPING" 40 "METAL MINING"
                       41 "COAL MINING" 42 "OIL AND GAS EXTRACTION"
                       50 "NONMETALLIC MINING AND QUARRYING, EXCEPT FUELS"
                       60 "CONSTRUCTION" 100 "MEAT PRODUCTS"
                       101 "DAIRY PRODUCTS"
                       102 "CANNED, FROZEN, AND PRESERVED FRUITS AND VEGETABLES"
                       110 "GRAIN MILL PRODUCTS" 111 "BAKERY PRODUCTS"
                       112 "SUGAR AND CONFECTIONERY PRODUCTS"
                       120 "BEVERAGE INDUSTRIES"
                       121 "MISCELLANEOUS FOOD PREPARATIONS AND KINDRED PRODUCTS"
                       122 "NOT SPECIFIED FOOD INDUSTRIES"
                       130 "TOBACCO MANUFACTURES" 132 "KNITTING MILLS"
                       140 "DYEING AND FINISHING TEXTILES, EXCEPT WOOL AND KNIT"
                       141 "CARPETS AND RUGS"
                       142 "YARN, THREAD, AND FABRIC MILLS"
                       150 "MISCELLANEOUS TEXTILE MILL PRODUCTS"
                       151 "APPAREL AND ACCESSORIES, EXCEPT KNIT"
                       152 "MISCELLANEOUS FABRICATED TEXTILE PRODUCTS"
                       160 "PULP, PAPER, AND PAPERBOARD MILLS"
                       161 "MISCELLANEOUS PAPER AND PULP PRODUCTS"
                       162 "PAPERBOARD CONTAINERS AND BOXES"
                       171 "NEWSPAPER PUBLISHING AND PRINTING"
                       172 "PRINTING, PUBLISHING AND ALLIED INDUSTRIES, EXCEPT NEWSPAPER"
                       180 "PLASTICS, SYNTHETICS, AND RESINS" 181 "DRUGS"
                       182 "SOAPS AND COSMETICS"
                       190 "PAINTS, VARNISHES, AND RELATED PRODUCTS"
                       191 "AGRICULTURAL CHEMICALS"
                       192 "INDUSTRIAL AND MISCELLANEOUS CHEMICALS"
                       200 "PETROLEUM REFINING"
                       201 "MISCELLANEOUS PETROLEUM AND COAL PRODUCTS"
                       210 "TIRES AND INNER TUBES"
                       211 "OTHER RUBBER PRODUCTS AND PLASTICS FOOTWEAR AND BELTING"
                       212 "MISCELLANEOUS PLASTICS PRODUCTS"
                       220 "LEATHER TANNING AND FINISHING"
                       221 "FOOTWEAR, EXCEPT RUBBER AND PLASTIC"
                       222 "LEATHER PRODUCTS, EXCEPT FOOTWEAR" 230 "LOGGING"
                       231 "SAWMILLS, PLANING MILLS AND MILLWORK"
                       232 "WOOD BUILDINGS AND MOBILE HOMES"
                       241 "MISCELLANEOUS WOOD PRODUCTS"
                       242 "FURNITURE AND FIXTURES"
                       250 "GLASS AND GLASS PRODUCTS"
                       251 "CEMENT, CONCRETE, GYPSUM, AND PLASTER PRODUCTS"
                       252 "STRUCTURAL CLAY PRODUCTS"
                       261 "POTTERY AND RELATED PRODUCTS"
                       262 "MISCELLANEOUS NONMETALLIC MINERAL AND STONE PRODUCTS"
                       270 "BLAST FURNACES, STEELWORKS, AND FINISHING MILLS"
                       271 "IRON AND STEEL FOUNDRIES"
                       272 "PRIMARY ALUMINUM INDUSTRIES"
                       280 "OTHER PRIMARY METAL INDUSTRIES"
                       281 "CUTLERY, HANDTOOLS, AND GENERAL HARDWARE"
                       282 "FABRICATED STRUCTURAL METAL PRODUCTS"
                       290 "SCREW MACHINE PRODUCTS"
                       291 "METAL FORGINGS AND STAMPINGS" 292 "ORDNANCE"
                       300 "MISCELLANEOUS FABRICATED METAL PRODUCTS"
                       301 "NOT SPECIFIED METAL INDUSTRIES"
                       310 "ENGINES AND TURBINES"
                       311 "FARM MACHINERY AND EQUIPMENT"
                       312 "CONSTRUCTION AND MATERIAL HANDLING MACHINES"
                       320 "METALWORKING MACHINERY"
                       321 "OFFICE AND ACCOUNTING MACHINES"
                       322 "COMPUTERS AND RELATED EQUIPMENT"
                       331 "MACHINERY, EXCEPT ELECTRICAL, N.E.C."
                       332 "NOT SPECIFIED MACHINERY"
                       340 "HOUSEHOLD APPLIANCES"
                       341 "RADIO, TV, AND COMMUNICATION EQUIPMENT"
                       342 "ELECTRICAL MACHINERY, EQUIPMENT, AND SUPPLIES, N.E.C."
                       350 "NOT SPECIFIED ELECTRICAL MACHINERY, EQUIPMENT, AND SUPPLIES"
                       351 "MOTOR VEHICLES AND MOTOR VEHICLE EQUIPMENT"
                       352 "AIRCRAFT AND PARTS"
                       360 "SHIP AND BOAT BUILDING AND REPAIRING"
                       361 "RAILROAD LOCOMOTIVES AND EQUIPMENT"
                       362 "GUIDED MISSILES, SPACE VEHICLES, AND PARTS"
                       370 "CYCLES AND MISCELLANEOUS TRANSPORTATION EQUIPMENT"
                       371 "SCIENTIFIC AND CONTROLLING INSTRUMENTS"
                       372 "MEDICAL, DENTAL, AND OPTICAL INSTRUMENTS AND SUPPLIES"
                       380 "PHOTOGRAPHIC EQUIPMENT AND SUPPLIES"
                       381 "WATCHES, CLOCKS, AND CLOCKWORK OPERATED DEVICES"
                       390 "TOYS, AMUSEMENT, AND SPORTING GOODS"
                       391 "MISCELLANEOUS MANUFACTURING INDUSTRIES"
                       392 "NOT SPECIFIED MANUFACTURING INDUSTRIES"
                       400 "RAILROADS" 401 "BUS SERVICE AND URBAN TRANSIT"
                       402 "TAXICAB SERVICE" 410 "TRUCKING SERVICE"
                       411 "WAREHOUSING AND STORAGE"
                       412 "U.S. POSTAL SERVICE" 420 "WATER TRANSPORTATION"
                       421 "AIR TRANSPORTATION"
                       422 "PIPE LINES, EXCEPT NATURAL GAS"
                       432 "SERVICES INCIDENTAL TO TRANSPORTATION"
                       440 "RADIO AND TELEVISION BROADCASTING AND CABLE"
                       441 "TELEPHONE COMMUNICATIONS"
                       442 "TELEGRAPH AND MISCELLANEOUS COMMUNICATIONS SERVICES"
                       450 "ELECTRIC LIGHT AND POWER"
                       451 "GAS AND STEAM SUPPLY SYSTEMS"
                       452 "ELECTRIC AND GAS, AND OTHER COMBINATIONS"
                       470 "WATER SUPPLY AND IRRIGATION"
                       471 "SANITARY SERVICES" 472 "NOT SPECIFIED UTILITIES"
                       500 "MOTOR VEHICLES AND EQUIPMENT"
                       501 "FURNITURE AND HOME FURNISHINGS"
                       502 "LUMBER AND CONSTRUCTION MATERIALS"
                       510 "PROFESSIONAL AND COMMERCIAL EQUIP. AND SUPPLIES"
                       511 "METALS AND MINERALS, EXCEPT PETROLEUM"
                       512 "ELECTRICAL GOODS"
                       521 "HARDWARE, PLUMBING AND HEATING SUPPLIES"
                       530 "MACHINERY, EQUIPMENT, AND SUPPLIES"
                       531 "SCRAP AND WASTE MATERIALS"
                       532 "MISCELLANEOUS WHOLESALE, DURABLE GOODS"
                       540 "PAPER AND PAPER PRODUCTS"
                       541 "DRUGS, CHEMICALS AND ALLIED PRODUCTS"
                       542 "APPAREL, FABRICS, AND NOTIONS"
                       550 "GROCERIES AND RELATED PRODUCTS"
                       551 "FARM-PRODUCT RAW MATERIALS"
                       552 "PETROLEUM PRODUCTS" 560 "ALCOHOLIC BEVERAGES"
                       561 "FARM SUPPLIES"
                       562 "MISCELLANEOUS WHOLESALE, NONDURABLE GOODS"
                       571 "NOT SPECIFIED WHOLESALE TRADE"
                       580 "LUMBER AND BUILDING MATERIAL RETAILING"
                       581 "HARDWARE STORES"
                       582 "RETAIL NURSERIES AND GARDEN STORES"
                       590 "MOBILE HOME DEALERS" 591 "DEPARTMENT STORES"
                       592 "VARIETY STORES"
                       600 "MISCELLANEOUS GENERAL MERCHANDISE STORES"
                       601 "GROCERY STORES" 602 "DAIRY PRODUCTS STORES"
                       610 "RETAIL BAKERIES" 611 "FOOD STORES, N.E.C."
                       612 "MOTOR VEHICLE DEALERS"
                       620 "AUTO AND HOME SUPPLY STORES"
                       621 "GASOLINE SERVICE STATIONS"
                       622 "MISCELLANEOUS VEHICLE DEALERS"
                       623 "APPAREL AND ACCESSORY STORES, EXCEPT SHOE"
                       630 "SHOE STORES"
                       631 "FURNITURE AND HOME FURNISHINGS STORES"
                       632 "HOUSEHOLD APPLIANCE STORES"
                       633 "RADIO, TV, AND COMPUTER STORES"
                       640 "MUSIC STORES" 641 "EATING AND DRINKING PLACES"
                       642 "DRUG STORES" 650 "LIQUOR STORES"
                       651 "SPORTING GOODS, BICYCLES, AND HOBBY STORES"
                       652 "BOOK AND STATIONERY STORES" 660 "JEWELRY STORES"
                       661 "GIFT, NOVELTY, AND SOUVENIR SHOPS"
                       662 "SEWING, NEEDLEWORK AND PIECE GOODS STORES"
                       663 "CATALOG AND MAIL ORDER HOUSES"
                       670 "VENDING MACHINE OPERATORS"
                       671 "DIRECT SELLING ESTABLISHMENTS" 672 "FUEL DEALERS"
                       681 "RETAIL FLORISTS"
                       682 "MISCELLANEOUS RETAIL STORES"
                       691 "NOT SPECIFIED RETAIL TRADE" 700 "BANKING"
                       701 "SAVINGS INSTITUTIONS, INCLUDING CREDIT UNIONS"
                       702 "CREDIT AGENCIES, N.E.C."
                       710 "SECURITY, COMMODITY BROKERAGE, AND INVESTMENT COMPANIES"
                       711 "INSURANCE"
                       712 "REAL ESTATE, INCLUDING REAL ESTATE-INSURANCE OFFICES"
                       721 "ADVERTISING"
                       722 "SERVICES TO DWELLINGS AND OTHER BUILDINGS"
                       731 "PERSONNEL SUPPLY SERVICES"
                       732 "COMPUTER AND DATA PROCESSING SERVICES"
                       740 "DETECTIVE AND PROTECTIVE SERVICES"
                       741 "BUSINESS SERVICES, N.E.C."
                       742 "AUTOMOTIVE RENTAL AND LEASING, WITHOUT DRIVERS"
                       750 "AUTOMOBILE PARKING AND CARWASHES"
                       751 "AUTOMOTIVE REPAIR AND RELATED SERVICES"
                       752 "ELECTRICAL REPAIR SHOPS"
                       760 "MISCELLANEOUS REPAIR SERVICES"
                       761 "PRIVATE HOUSEHOLDS" 762 "HOTELS AND MOTELS"
                       770 "LODGING PLACES, EXCEPT HOTELS AND MOTELS"
                       771 "LAUNDRY, CLEANING, AND GARMENT SERVICES"
                       772 "BEAUTY SHOPS" 780 "BARBER SHOPS"
                       781 "FUNERAL SERVICE AND CREMATORIES"
                       782 "SHOE REPAIR SHOPS" 790 "DRESSMAKING SHOPS"
                       791 "MISCELLANEOUS PERSONAL SERVICES"
                       800 "THEATERS AND MOTION PICTURES"
                       801 "VIDEO TAPE RENTAL" 802 "BOWLING CENTERS"
                       810 "MISCELLANEOUS ENTERTAINMENT AND RECREATION SERVICES"
                       812 "OFFICES AND CLINICS OF PHYSICIANS"
                       820 "OFFICES AND CLINICS OF DENTISTS"
                       821 "OFFICES AND CLINICS OF CHIROPRACTORS"
                       822 "OFFICES AND CLINICS OF OPTOMETRISTS"
                       830 "OFFICES AND CLINICS OF HEALTH PRACTITIONERS, N.E.C."
                       831 "HOSPITALS"
                       832 "NURSING AND PERSONAL CARE FACILITIES"
                       840 "HEALTH SERVICES, N.E.C." 841 "LEGAL SERVICES"
                       842 "ELEMENTARY AND SECONDARY SCHOOLS"
                       850 "COLLEGES AND UNIVERSITIES"
                       851 "VOCATIONAL SCHOOLS" 852 "LIBRARIES"
                       860 "EDUCATIONAL SERVICES, N.E.C."
                       861 "JOB TRAINING AND VOCATIONAL REHABILITATION SERVICES"
                       862 "CHILD DAY CARE SERVICES"
                       863 "FAMILY CHILD CARE HOMES"
                       870 "RESIDENTIAL CARE FACILITIES, WITHOUT NURSING"
                       871 "SOCIAL SERVICES, N.E.C."
                       872 "MUSEUMS, ART GALLERIES, AND ZOOS"
                       873 "LABOR UNIONS" 880 "RELIGIOUS ORGANIZATIONS"
                       881 "MEMBERSHIP ORGANIZATIONS, N.E.C."
                       882 "ENGINEERING, ARCHITECTURAL, AND SURVEYING SERVICES"
                       890 "ACCOUNTING, AUDITING, AND BOOKKEEPING SERVICES"
                       891 "RESEARCH, DEVELOPMENT, AND TESTING SERVICES"
                       892 "MANAGEMENT AND PUBLIC RELATIONS SERVICES"
                       893 "MISCELLANEOUS PROFESSIONAL AND RELATED SERVICES"
                       900 "EXECUTIVE AND LEGISLATIVE OFFICES"
                       901 "GENERAL GOVERNMENT, N.E.C."
                       910 "JUSTICE, PUBLIC ORDER, AND SAFETY"
                       921 "PUBLIC FINANCE, TAXATION, AND MONETARY POLICY"
                       922 "ADMINISTRATION OF HUMAN RESOURCES PROGRAMS"
                       930 "ADMINISTRATION OF ENVIRONMENTAL QUALITY AND HOUSING PROGRAMS"
                       931 "ADMINISTRATION OF ECONOMIC PROGRAMS"
                       932 "NATIONAL SECURITY AND INTERNATIONAL AFFAIRS"
                       940 "ARMY" 941 "AIR FORCE" 942 "NAVY" 950 "MARINES"
                       951 "COAST GUARD"
                       952 "ARMED RESERVES, BRANCH NOT SPECIFIED"
                       960 "MILITARY RESERVES OR NATIONAL GUARD" ;
label define B1PTEDUS  9 "INAPP" ;
label define B1PTEARS  9 "INAPP" ;
label define B1PTSEIS  999 "INAPP" ;
label define B1PMEDUS  9 "INAPP" ;
label define B1PMEARS  9 "INAPP" ;
label define B1PMSEIS  999 "INAPP" ;
label define B1PFEDUS  9 "INAPP" ;
label define B1PFEARS  9 "INAPP" ;
label define B1PFSEIS  999 "INAPP" ;
label define B1PSOCMJ  1 "EXECUTIVE, ADMINISTRATIVE, AND MANAGERIAL"
                       2 "PROFESSIONAL SPECIALTY"
                       3 "TECHNICIAN AND RELATED SUPPORT"
                       4 "SALES OCCUPATION"
                       5 "ADMINISTRATIVE SUPPORT INCLUDING CLERICAL"
                       6 "SERVICE OCCUPATION"
                       7 "FARMING, FORESTRY, AND FISHING"
                       8 "PRECISION PRODUCTION, CRAFTS, AND REPAIR"
                       9 "OPERATOR, LABORER, AND MILITARY" 99 "INAPP" ;
label define B1PSINMJ  1 "AGRICULTURE, FORESTRY, FISHING, AND MINING"
                       2 "CONSTRUCTION" 3 "MANUFACTURING"
                       4 "TRANSPORTATION, COMMUNICATIONS, AND PUBLIC UTILITY"
                       5 "WHOLESALE TRADE" 6 "RETAIL TRADE"
                       7 "FINANCE, INSURANCE, AND REAL ESTATE"
                       8 "BUSINESS AND REPAIR SERVICES" 9 "PERSONAL SERVICES"
                       10 "ENTERTAINMENT AND RECREATIONAL SERVICES"
                       11 "PROFESSIONAL AND RELATED SERVICES"
                       12 "PUBLIC ADMINISTRATION"
                       99 "INAPP OR NOT IN LABOR FORCE" ;
label define B1PC1     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PC2     0 "NONE" 97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PC3     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PC4     0 "NONE" 97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PCHA1   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PCHX1   1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PCHR1   1 "HUSBANDWIFE SPOUSE"
                       2 "LOVER/PARTNER PARTNER'S FATHERMOTHERPAR"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD (SPECIFY)"
                       9 "SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW"
                       10 "FATHERMOTHERPARENT" 11 "STEP-FATHERMOTHERPARENT"
                       12 "FATHERMOTHERPARENT-IN-LAW OR"
                       13 "GRANDFATHERMOTHERPARENT" 14 "BROTHERSISTERSIBLING"
                       15 "STEP-BROTHERSTEP-SISTERSTEP-SIBLING"
                       16 "HALF-BROTHERHALF-SISTERHALF-SIBLING"
                       17 "BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW"
                       18 "GRANDSONDAUGHTERCHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define B1PCMB1   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PCYB1   1900 "1900-2004" 2004 "DON'T KNOW" 9997 "REFUSED"
                       9998 "INAPP" ;
label define B1PHHA1   0 "0 TO 120 YEARS OLD" 120 "DON'T KNOW" 997 "REFUSED"
                       998 "INAPP" ;
label define B1PCHC1   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHH1   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDD1   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDT1   101 "ASPERGERS SYNDROME" 102 "AUTISM"
                       103 "CEREBRAL PALSY (CP)" 104 "COGNITIVE DISABILITY"
                       105 "DEVELOPMENTAL DISABILITY (DD)"
                       106 "DOWN SYNDROME" 107 "FETAL ALCOHOL SYNDROME"
                       108 "FRAGILE X SYNDROME" 109 "HYDROCEPHALUS"
                       110 "INTELLECTUAL DISABILITY"
                       111 "INTELLECTUAL IMPAIRMENT" 112 "MENTAL HANDICAP"
                       113 "MENTAL RETARDATION (MR)" 114 "MENTAL DISABILITY"
                       115 "MENTAL IMPAIRMENT" 116 "MICROCEPHALY"
                       117 "MUSCULAR DYSTROPHY"
                       118 "PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)"
                       119 "PRADER WILLI SYNDROME" 120 "RETARDATION"
                       121 "SPINA BIFIDA" 178 "RETTS DISORDER"
                       222 "ATTENTION DEFICIT DISORDER (ADD)"
                       223 "ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)"
                       224 "HANDICAPPED" 225 "HYPERACTIVITY"
                       226 "LEARNING DISABILITY PROBLEMS (LD)"
                       227 "MENTAL PROBLEMS"
                       228 "SLOW IN SCHOOL SLOW LEARNER SLOW"
                       229 "SPECIAL EDUCATION SPECIAL ED"
                       230 "SPEECH PROBLEMS" 331 "EPILEPSY"
                       332 "SEIZURE DISORDER" 433 "BRAIN DAMAGE"
                       434 "BRAIN INJURY BRAIN INJURED"
                       435 "CLOSED HEAD INJURY" 436 "HEAD INJURY"
                       437 "TRAUMATIC BRAIN INJURY BRAIN INJURY"
                       538 "BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)"
                       539 "CYCLOTHYMIA" 540 "DELUSIONAL DISORDER"
                       542 "SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER"
                       543 "PSYCHOTIC DISORDER PSYCHOSIS"
                       586 "CLINICAL DEPRESSION" 587 "MAJOR DEPRESSION"
                       588 "SEVERE DEPRESSION" 644 "AGORAPHOBIA"
                       645 "ALCOHOLISM" 646 "ALZHEIMERS"
                       647 "ANOREXIA or ANOREXIA NERVOSA" 648 "BULIMIA"
                       649 "EATING DISORDER"
                       650 "ANXIETY or ANXIETY DISORDER"
                       651 "BORDERLINE PERSONALITY DISORDER" 652 "DEMENTIA"
                       653 "DRUG ABUSE"
                       654 "GAMBLING PROBLEM or PATHOLOGICAL GAMBLING"
                       655 "OBSESSIVE COMPULSIVE DISORDER (OCD)"
                       656 "PANIC ATTACKS DISORDER"
                       657 "PERSONALITY DISORDER" 658 "PHOBIA"
                       659 "POSTTRAUMATIC STRESS DISORDERS (PTSD)"
                       660 "SLEEP DISORDER (INSOMNIA)" 661 "SOMATIZATION"
                       662 "DEPRESSION (MILD DEPRESSION)" 663 "DYSTHYMIA"
                       762 "BIOCHEMICAL PROBLEM" 763 "BRAIN DISORDER"
                       764 "BREAKDOWN" 765 "CHEMICAL IMBALANCE"
                       766 "EMOTIONAL PROBLEM DISORDER" 767 "MANIC"
                       768 "MENTAL BREAKDOWN" 769 "MOOD PROBLEM DISORDER"
                       770 "MENTALLY ILL" 771 "MENTAL HEALTH PROBLEMS"
                       772 "NERVES NERVOUS CONDITION" 773 "PARANOID"
                       774 "PSYCHOLOGICAL PROBLEMS"
                       779 "SUICIDAL SUICIDE ATTEMPT" 875 "DEPRESSION"
                       976 "OTHER UNFAMILIAR CONDITION"
                       977 "OTHER FAMILIAR CONDITION" 997 "DON'T KNOW"
                       998 "REFUSED" 999 "INAPP" ;
label define B1PCDP1   1 "SINGLE EPISODE" 2 "LONG-TERM PROBLEM"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDA1   0 "0 TO 95 YEARS OLD" 95 "DON'T KNOW" 97 "REFUSED"
                       98 "INAPP" ;
label define B1PCDX1   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCXT1   1 "MAJOR DEPRESSION" 2 "SCHIZOPHRENIA"
                       3 "BIPOLAR DISORDER (MANIC DEPRESSION)"
                       4 "OTHER (SPECIFY FOLLOWED BY //)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PCDO1   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHA2   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PCHX2   1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PCHR2   1 "HUSBANDWIFE SPOUSE"
                       2 "LOVER/PARTNER PARTNER'S FATHERMOTHERPAR"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD (SPECIFY)"
                       9 "SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW"
                       10 "FATHERMOTHERPARENT" 11 "STEP-FATHERMOTHERPARENT"
                       12 "FATHERMOTHERPARENT-IN-LAW OR"
                       13 "GRANDFATHERMOTHERPARENT" 14 "BROTHERSISTERSIBLING"
                       15 "STEP-BROTHERSTEP-SISTERSTEP-SIBLING"
                       16 "HALF-BROTHERHALF-SISTERHALF-SIBLING"
                       17 "BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW"
                       18 "GRANDSONDAUGHTERCHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define B1PCMB2   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PCYB2   1900 "1900-2004" 2004 "DON'T KNOW" 9997 "REFUSED"
                       9998 "INAPP" ;
label define B1PHHA2   0 "0 TO 120 YEARS OLD" 120 "DON'T KNOW" 997 "REFUSED"
                       998 "INAPP" ;
label define B1PCHC2   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHH2   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDD2   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDT2   101 "ASPERGERS SYNDROME" 102 "AUTISM"
                       103 "CEREBRAL PALSY (CP)" 104 "COGNITIVE DISABILITY"
                       105 "DEVELOPMENTAL DISABILITY (DD)"
                       106 "DOWN SYNDROME" 107 "FETAL ALCOHOL SYNDROME"
                       108 "FRAGILE X SYNDROME" 109 "HYDROCEPHALUS"
                       110 "INTELLECTUAL DISABILITY"
                       111 "INTELLECTUAL IMPAIRMENT" 112 "MENTAL HANDICAP"
                       113 "MENTAL RETARDATION (MR)" 114 "MENTAL DISABILITY"
                       115 "MENTAL IMPAIRMENT" 116 "MICROCEPHALY"
                       117 "MUSCULAR DYSTROPHY"
                       118 "PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)"
                       119 "PRADER WILLI SYNDROME" 120 "RETARDATION"
                       121 "SPINA BIFIDA" 178 "RETTS DISORDER"
                       222 "ATTENTION DEFICIT DISORDER (ADD)"
                       223 "ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)"
                       224 "HANDICAPPED" 225 "HYPERACTIVITY"
                       226 "LEARNING DISABILITY PROBLEMS (LD)"
                       227 "MENTAL PROBLEMS"
                       228 "SLOW IN SCHOOL SLOW LEARNER SLOW"
                       229 "SPECIAL EDUCATION SPECIAL ED"
                       230 "SPEECH PROBLEMS" 331 "EPILEPSY"
                       332 "SEIZURE DISORDER" 433 "BRAIN DAMAGE"
                       434 "BRAIN INJURY BRAIN INJURED"
                       435 "CLOSED HEAD INJURY" 436 "HEAD INJURY"
                       437 "TRAUMATIC BRAIN INJURY BRAIN INJURY"
                       538 "BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)"
                       539 "CYCLOTHYMIA" 540 "DELUSIONAL DISORDER"
                       542 "SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER"
                       543 "PSYCHOTIC DISORDER PSYCHOSIS"
                       586 "CLINICAL DEPRESSION" 587 "MAJOR DEPRESSION"
                       588 "SEVERE DEPRESSION" 644 "AGORAPHOBIA"
                       645 "ALCOHOLISM" 646 "ALZHEIMERS"
                       647 "ANOREXIA or ANOREXIA NERVOSA" 648 "BULIMIA"
                       649 "EATING DISORDER"
                       650 "ANXIETY or ANXIETY DISORDER"
                       651 "BORDERLINE PERSONALITY DISORDER" 652 "DEMENTIA"
                       653 "DRUG ABUSE"
                       654 "GAMBLING PROBLEM or PATHOLOGICAL GAMBLING"
                       655 "OBSESSIVE COMPULSIVE DISORDER (OCD)"
                       656 "PANIC ATTACKS DISORDER"
                       657 "PERSONALITY DISORDER" 658 "PHOBIA"
                       659 "POSTTRAUMATIC STRESS DISORDERS (PTSD)"
                       660 "SLEEP DISORDER (INSOMNIA)" 661 "SOMATIZATION"
                       662 "DEPRESSION (MILD DEPRESSION)" 663 "DYSTHYMIA"
                       762 "BIOCHEMICAL PROBLEM" 763 "BRAIN DISORDER"
                       764 "BREAKDOWN" 765 "CHEMICAL IMBALANCE"
                       766 "EMOTIONAL PROBLEM DISORDER" 767 "MANIC"
                       768 "MENTAL BREAKDOWN" 769 "MOOD PROBLEM DISORDER"
                       770 "MENTALLY ILL" 771 "MENTAL HEALTH PROBLEMS"
                       772 "NERVES NERVOUS CONDITION" 773 "PARANOID"
                       774 "PSYCHOLOGICAL PROBLEMS"
                       779 "SUICIDAL SUICIDE ATTEMPT" 875 "DEPRESSION"
                       976 "OTHER UNFAMILIAR CONDITION"
                       977 "OTHER FAMILIAR CONDITION" 997 "DON'T KNOW"
                       998 "REFUSED" 999 "INAPP" ;
label define B1PCDP2   1 "SINGLE EPISODE" 2 "LONG-TERM PROBLEM"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDA2   0 "0 TO 95 YEARS OLD" 95 "DON'T KNOW" 97 "REFUSED"
                       98 "INAPP" ;
label define B1PCDX2   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCXT2   1 "MAJOR DEPRESSION" 2 "SCHIZOPHRENIA"
                       3 "BIPOLAR DISORDER (MANIC DEPRESSION)"
                       4 "OTHER (SPECIFY FOLLOWED BY //)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PCDO2   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHA3   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PCHX3   1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PCHR3   1 "HUSBANDWIFE SPOUSE"
                       2 "LOVER/PARTNER PARTNER'S FATHERMOTHERPAR"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD (SPECIFY)"
                       9 "SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW"
                       10 "FATHERMOTHERPARENT" 11 "STEP-FATHERMOTHERPARENT"
                       12 "FATHERMOTHERPARENT-IN-LAW OR"
                       13 "GRANDFATHERMOTHERPARENT" 14 "BROTHERSISTERSIBLING"
                       15 "STEP-BROTHERSTEP-SISTERSTEP-SIBLING"
                       16 "HALF-BROTHERHALF-SISTERHALF-SIBLING"
                       17 "BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW"
                       18 "GRANDSONDAUGHTERCHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define B1PCMB3   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PCYB3   1900 "1900-2004" 2004 "DON'T KNOW" 9997 "REFUSED"
                       9998 "INAPP" ;
label define B1PHHA3   0 "0 TO 120 YEARS OLD" 120 "DON'T KNOW" 997 "REFUSED"
                       998 "INAPP" ;
label define B1PCHC3   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHH3   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDD3   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDT3   101 "ASPERGERS SYNDROME" 102 "AUTISM"
                       103 "CEREBRAL PALSY (CP)" 104 "COGNITIVE DISABILITY"
                       105 "DEVELOPMENTAL DISABILITY (DD)"
                       106 "DOWN SYNDROME" 107 "FETAL ALCOHOL SYNDROME"
                       108 "FRAGILE X SYNDROME" 109 "HYDROCEPHALUS"
                       110 "INTELLECTUAL DISABILITY"
                       111 "INTELLECTUAL IMPAIRMENT" 112 "MENTAL HANDICAP"
                       113 "MENTAL RETARDATION (MR)" 114 "MENTAL DISABILITY"
                       115 "MENTAL IMPAIRMENT" 116 "MICROCEPHALY"
                       117 "MUSCULAR DYSTROPHY"
                       118 "PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)"
                       119 "PRADER WILLI SYNDROME" 120 "RETARDATION"
                       121 "SPINA BIFIDA" 178 "RETTS DISORDER"
                       222 "ATTENTION DEFICIT DISORDER (ADD)"
                       223 "ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)"
                       224 "HANDICAPPED" 225 "HYPERACTIVITY"
                       226 "LEARNING DISABILITY PROBLEMS (LD)"
                       227 "MENTAL PROBLEMS"
                       228 "SLOW IN SCHOOL SLOW LEARNER SLOW"
                       229 "SPECIAL EDUCATION SPECIAL ED"
                       230 "SPEECH PROBLEMS" 331 "EPILEPSY"
                       332 "SEIZURE DISORDER" 433 "BRAIN DAMAGE"
                       434 "BRAIN INJURY BRAIN INJURED"
                       435 "CLOSED HEAD INJURY" 436 "HEAD INJURY"
                       437 "TRAUMATIC BRAIN INJURY BRAIN INJURY"
                       538 "BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)"
                       539 "CYCLOTHYMIA" 540 "DELUSIONAL DISORDER"
                       542 "SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER"
                       543 "PSYCHOTIC DISORDER PSYCHOSIS"
                       586 "CLINICAL DEPRESSION" 587 "MAJOR DEPRESSION"
                       588 "SEVERE DEPRESSION" 644 "AGORAPHOBIA"
                       645 "ALCOHOLISM" 646 "ALZHEIMERS"
                       647 "ANOREXIA or ANOREXIA NERVOSA" 648 "BULIMIA"
                       649 "EATING DISORDER"
                       650 "ANXIETY or ANXIETY DISORDER"
                       651 "BORDERLINE PERSONALITY DISORDER" 652 "DEMENTIA"
                       653 "DRUG ABUSE"
                       654 "GAMBLING PROBLEM or PATHOLOGICAL GAMBLING"
                       655 "OBSESSIVE COMPULSIVE DISORDER (OCD)"
                       656 "PANIC ATTACKS DISORDER"
                       657 "PERSONALITY DISORDER" 658 "PHOBIA"
                       659 "POSTTRAUMATIC STRESS DISORDERS (PTSD)"
                       660 "SLEEP DISORDER (INSOMNIA)" 661 "SOMATIZATION"
                       662 "DEPRESSION (MILD DEPRESSION)" 663 "DYSTHYMIA"
                       762 "BIOCHEMICAL PROBLEM" 763 "BRAIN DISORDER"
                       764 "BREAKDOWN" 765 "CHEMICAL IMBALANCE"
                       766 "EMOTIONAL PROBLEM DISORDER" 767 "MANIC"
                       768 "MENTAL BREAKDOWN" 769 "MOOD PROBLEM DISORDER"
                       770 "MENTALLY ILL" 771 "MENTAL HEALTH PROBLEMS"
                       772 "NERVES NERVOUS CONDITION" 773 "PARANOID"
                       774 "PSYCHOLOGICAL PROBLEMS"
                       779 "SUICIDAL SUICIDE ATTEMPT" 875 "DEPRESSION"
                       976 "OTHER UNFAMILIAR CONDITION"
                       977 "OTHER FAMILIAR CONDITION" 997 "DON'T KNOW"
                       998 "REFUSED" 999 "INAPP" ;
label define B1PCDP3   1 "SINGLE EPISODE" 2 "LONG-TERM PROBLEM"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDA3   0 "0 TO 95 YEARS OLD" 95 "DON'T KNOW" 97 "REFUSED"
                       98 "INAPP" ;
label define B1PCDX3   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCXT3   1 "MAJOR DEPRESSION" 2 "SCHIZOPHRENIA"
                       3 "BIPOLAR DISORDER (MANIC DEPRESSION)"
                       4 "OTHER (SPECIFY FOLLOWED BY //)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PCDO3   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHA4   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PCHX4   1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PCHR4   1 "HUSBANDWIFE SPOUSE"
                       2 "LOVER/PARTNER PARTNER'S FATHERMOTHERPAR"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD (SPECIFY)"
                       9 "SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW"
                       10 "FATHERMOTHERPARENT" 11 "STEP-FATHERMOTHERPARENT"
                       12 "FATHERMOTHERPARENT-IN-LAW OR"
                       13 "GRANDFATHERMOTHERPARENT" 14 "BROTHERSISTERSIBLING"
                       15 "STEP-BROTHERSTEP-SISTERSTEP-SIBLING"
                       16 "HALF-BROTHERHALF-SISTERHALF-SIBLING"
                       17 "BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW"
                       18 "GRANDSONDAUGHTERCHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define B1PCMB4   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PCYB4   1900 "1900-2004" 2004 "DON'T KNOW" 9997 "REFUSED"
                       9998 "INAPP" ;
label define B1PHHA4   0 "0 TO 120 YEARS OLD" 120 "DON'T KNOW" 997 "REFUSED"
                       998 "INAPP" ;
label define B1PCHC4   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHH4   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDD4   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDT4   101 "ASPERGERS SYNDROME" 102 "AUTISM"
                       103 "CEREBRAL PALSY (CP)" 104 "COGNITIVE DISABILITY"
                       105 "DEVELOPMENTAL DISABILITY (DD)"
                       106 "DOWN SYNDROME" 107 "FETAL ALCOHOL SYNDROME"
                       108 "FRAGILE X SYNDROME" 109 "HYDROCEPHALUS"
                       110 "INTELLECTUAL DISABILITY"
                       111 "INTELLECTUAL IMPAIRMENT" 112 "MENTAL HANDICAP"
                       113 "MENTAL RETARDATION (MR)" 114 "MENTAL DISABILITY"
                       115 "MENTAL IMPAIRMENT" 116 "MICROCEPHALY"
                       117 "MUSCULAR DYSTROPHY"
                       118 "PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)"
                       119 "PRADER WILLI SYNDROME" 120 "RETARDATION"
                       121 "SPINA BIFIDA" 178 "RETTS DISORDER"
                       222 "ATTENTION DEFICIT DISORDER (ADD)"
                       223 "ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)"
                       224 "HANDICAPPED" 225 "HYPERACTIVITY"
                       226 "LEARNING DISABILITY PROBLEMS (LD)"
                       227 "MENTAL PROBLEMS"
                       228 "SLOW IN SCHOOL SLOW LEARNER SLOW"
                       229 "SPECIAL EDUCATION SPECIAL ED"
                       230 "SPEECH PROBLEMS" 331 "EPILEPSY"
                       332 "SEIZURE DISORDER" 433 "BRAIN DAMAGE"
                       434 "BRAIN INJURY BRAIN INJURED"
                       435 "CLOSED HEAD INJURY" 436 "HEAD INJURY"
                       437 "TRAUMATIC BRAIN INJURY BRAIN INJURY"
                       538 "BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)"
                       539 "CYCLOTHYMIA" 540 "DELUSIONAL DISORDER"
                       542 "SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER"
                       543 "PSYCHOTIC DISORDER PSYCHOSIS"
                       586 "CLINICAL DEPRESSION" 587 "MAJOR DEPRESSION"
                       588 "SEVERE DEPRESSION" 644 "AGORAPHOBIA"
                       645 "ALCOHOLISM" 646 "ALZHEIMERS"
                       647 "ANOREXIA or ANOREXIA NERVOSA" 648 "BULIMIA"
                       649 "EATING DISORDER"
                       650 "ANXIETY or ANXIETY DISORDER"
                       651 "BORDERLINE PERSONALITY DISORDER" 652 "DEMENTIA"
                       653 "DRUG ABUSE"
                       654 "GAMBLING PROBLEM or PATHOLOGICAL GAMBLING"
                       655 "OBSESSIVE COMPULSIVE DISORDER (OCD)"
                       656 "PANIC ATTACKS DISORDER"
                       657 "PERSONALITY DISORDER" 658 "PHOBIA"
                       659 "POSTTRAUMATIC STRESS DISORDERS (PTSD)"
                       660 "SLEEP DISORDER (INSOMNIA)" 661 "SOMATIZATION"
                       662 "DEPRESSION (MILD DEPRESSION)" 663 "DYSTHYMIA"
                       762 "BIOCHEMICAL PROBLEM" 763 "BRAIN DISORDER"
                       764 "BREAKDOWN" 765 "CHEMICAL IMBALANCE"
                       766 "EMOTIONAL PROBLEM DISORDER" 767 "MANIC"
                       768 "MENTAL BREAKDOWN" 769 "MOOD PROBLEM DISORDER"
                       770 "MENTALLY ILL" 771 "MENTAL HEALTH PROBLEMS"
                       772 "NERVES NERVOUS CONDITION" 773 "PARANOID"
                       774 "PSYCHOLOGICAL PROBLEMS"
                       779 "SUICIDAL SUICIDE ATTEMPT" 875 "DEPRESSION"
                       976 "OTHER UNFAMILIAR CONDITION"
                       977 "OTHER FAMILIAR CONDITION" 997 "DON'T KNOW"
                       998 "REFUSED" 999 "INAPP" ;
label define B1PCDP4   1 "SINGLE EPISODE" 2 "LONG-TERM PROBLEM"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDA4   0 "0 TO 95 YEARS OLD" 95 "DON'T KNOW" 97 "REFUSED"
                       98 "INAPP" ;
label define B1PCDX4   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCXT4   1 "MAJOR DEPRESSION" 2 "SCHIZOPHRENIA"
                       3 "BIPOLAR DISORDER (MANIC DEPRESSION)"
                       4 "OTHER (SPECIFY FOLLOWED BY //)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PCDO4   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHA5   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PCHX5   1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PCHR5   1 "HUSBANDWIFE SPOUSE"
                       2 "LOVER/PARTNER PARTNER'S FATHERMOTHERPAR"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD (SPECIFY)"
                       9 "SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW"
                       10 "FATHERMOTHERPARENT" 11 "STEP-FATHERMOTHERPARENT"
                       12 "FATHERMOTHERPARENT-IN-LAW OR"
                       13 "GRANDFATHERMOTHERPARENT" 14 "BROTHERSISTERSIBLING"
                       15 "STEP-BROTHERSTEP-SISTERSTEP-SIBLING"
                       16 "HALF-BROTHERHALF-SISTERHALF-SIBLING"
                       17 "BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW"
                       18 "GRANDSONDAUGHTERCHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define B1PCMB5   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PCYB5   1900 "1900-2004" 2004 "DON'T KNOW" 9997 "REFUSED"
                       9998 "INAPP" ;
label define B1PHHA5   0 "0 TO 120 YEARS OLD" 120 "DON'T KNOW" 997 "REFUSED"
                       998 "INAPP" ;
label define B1PCHC5   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHH5   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDD5   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDT5   101 "ASPERGERS SYNDROME" 102 "AUTISM"
                       103 "CEREBRAL PALSY (CP)" 104 "COGNITIVE DISABILITY"
                       105 "DEVELOPMENTAL DISABILITY (DD)"
                       106 "DOWN SYNDROME" 107 "FETAL ALCOHOL SYNDROME"
                       108 "FRAGILE X SYNDROME" 109 "HYDROCEPHALUS"
                       110 "INTELLECTUAL DISABILITY"
                       111 "INTELLECTUAL IMPAIRMENT" 112 "MENTAL HANDICAP"
                       113 "MENTAL RETARDATION (MR)" 114 "MENTAL DISABILITY"
                       115 "MENTAL IMPAIRMENT" 116 "MICROCEPHALY"
                       117 "MUSCULAR DYSTROPHY"
                       118 "PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)"
                       119 "PRADER WILLI SYNDROME" 120 "RETARDATION"
                       121 "SPINA BIFIDA" 178 "RETTS DISORDER"
                       222 "ATTENTION DEFICIT DISORDER (ADD)"
                       223 "ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)"
                       224 "HANDICAPPED" 225 "HYPERACTIVITY"
                       226 "LEARNING DISABILITY PROBLEMS (LD)"
                       227 "MENTAL PROBLEMS"
                       228 "SLOW IN SCHOOL SLOW LEARNER SLOW"
                       229 "SPECIAL EDUCATION SPECIAL ED"
                       230 "SPEECH PROBLEMS" 331 "EPILEPSY"
                       332 "SEIZURE DISORDER" 433 "BRAIN DAMAGE"
                       434 "BRAIN INJURY BRAIN INJURED"
                       435 "CLOSED HEAD INJURY" 436 "HEAD INJURY"
                       437 "TRAUMATIC BRAIN INJURY BRAIN INJURY"
                       538 "BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)"
                       539 "CYCLOTHYMIA" 540 "DELUSIONAL DISORDER"
                       542 "SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER"
                       543 "PSYCHOTIC DISORDER PSYCHOSIS"
                       586 "CLINICAL DEPRESSION" 587 "MAJOR DEPRESSION"
                       588 "SEVERE DEPRESSION" 644 "AGORAPHOBIA"
                       645 "ALCOHOLISM" 646 "ALZHEIMERS"
                       647 "ANOREXIA or ANOREXIA NERVOSA" 648 "BULIMIA"
                       649 "EATING DISORDER"
                       650 "ANXIETY or ANXIETY DISORDER"
                       651 "BORDERLINE PERSONALITY DISORDER" 652 "DEMENTIA"
                       653 "DRUG ABUSE"
                       654 "GAMBLING PROBLEM or PATHOLOGICAL GAMBLING"
                       655 "OBSESSIVE COMPULSIVE DISORDER (OCD)"
                       656 "PANIC ATTACKS DISORDER"
                       657 "PERSONALITY DISORDER" 658 "PHOBIA"
                       659 "POSTTRAUMATIC STRESS DISORDERS (PTSD)"
                       660 "SLEEP DISORDER (INSOMNIA)" 661 "SOMATIZATION"
                       662 "DEPRESSION (MILD DEPRESSION)" 663 "DYSTHYMIA"
                       762 "BIOCHEMICAL PROBLEM" 763 "BRAIN DISORDER"
                       764 "BREAKDOWN" 765 "CHEMICAL IMBALANCE"
                       766 "EMOTIONAL PROBLEM DISORDER" 767 "MANIC"
                       768 "MENTAL BREAKDOWN" 769 "MOOD PROBLEM DISORDER"
                       770 "MENTALLY ILL" 771 "MENTAL HEALTH PROBLEMS"
                       772 "NERVES NERVOUS CONDITION" 773 "PARANOID"
                       774 "PSYCHOLOGICAL PROBLEMS"
                       779 "SUICIDAL SUICIDE ATTEMPT" 875 "DEPRESSION"
                       976 "OTHER UNFAMILIAR CONDITION"
                       977 "OTHER FAMILIAR CONDITION" 997 "DON'T KNOW"
                       998 "REFUSED" 999 "INAPP" ;
label define B1PCDP5   1 "SINGLE EPISODE" 2 "LONG-TERM PROBLEM"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDA5   0 "0 TO 95 YEARS OLD" 95 "DON'T KNOW" 97 "REFUSED"
                       98 "INAPP" ;
label define B1PCDX5   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCXT5   1 "MAJOR DEPRESSION" 2 "SCHIZOPHRENIA"
                       3 "BIPOLAR DISORDER (MANIC DEPRESSION)"
                       4 "OTHER (SPECIFY FOLLOWED BY //)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PCDO5   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHA6   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PCHX6   1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PCHR6   1 "HUSBANDWIFE SPOUSE"
                       2 "LOVER/PARTNER PARTNER'S FATHERMOTHERPAR"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD (SPECIFY)"
                       9 "SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW"
                       10 "FATHERMOTHERPARENT" 11 "STEP-FATHERMOTHERPARENT"
                       12 "FATHERMOTHERPARENT-IN-LAW OR"
                       13 "GRANDFATHERMOTHERPARENT" 14 "BROTHERSISTERSIBLING"
                       15 "STEP-BROTHERSTEP-SISTERSTEP-SIBLING"
                       16 "HALF-BROTHERHALF-SISTERHALF-SIBLING"
                       17 "BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW"
                       18 "GRANDSONDAUGHTERCHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define B1PCMB6   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PCYB6   1900 "1900-2004" 2004 "DON'T KNOW" 9997 "REFUSED"
                       9998 "INAPP" ;
label define B1PHHA6   0 "0 TO 120 YEARS OLD" 120 "DON'T KNOW" 997 "REFUSED"
                       998 "INAPP" ;
label define B1PCHC6   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHH6   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDD6   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDT6   101 "ASPERGERS SYNDROME" 102 "AUTISM"
                       103 "CEREBRAL PALSY (CP)" 104 "COGNITIVE DISABILITY"
                       105 "DEVELOPMENTAL DISABILITY (DD)"
                       106 "DOWN SYNDROME" 107 "FETAL ALCOHOL SYNDROME"
                       108 "FRAGILE X SYNDROME" 109 "HYDROCEPHALUS"
                       110 "INTELLECTUAL DISABILITY"
                       111 "INTELLECTUAL IMPAIRMENT" 112 "MENTAL HANDICAP"
                       113 "MENTAL RETARDATION (MR)" 114 "MENTAL DISABILITY"
                       115 "MENTAL IMPAIRMENT" 116 "MICROCEPHALY"
                       117 "MUSCULAR DYSTROPHY"
                       118 "PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)"
                       119 "PRADER WILLI SYNDROME" 120 "RETARDATION"
                       121 "SPINA BIFIDA" 178 "RETTS DISORDER"
                       222 "ATTENTION DEFICIT DISORDER (ADD)"
                       223 "ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)"
                       224 "HANDICAPPED" 225 "HYPERACTIVITY"
                       226 "LEARNING DISABILITY PROBLEMS (LD)"
                       227 "MENTAL PROBLEMS"
                       228 "SLOW IN SCHOOL SLOW LEARNER SLOW"
                       229 "SPECIAL EDUCATION SPECIAL ED"
                       230 "SPEECH PROBLEMS" 331 "EPILEPSY"
                       332 "SEIZURE DISORDER" 433 "BRAIN DAMAGE"
                       434 "BRAIN INJURY BRAIN INJURED"
                       435 "CLOSED HEAD INJURY" 436 "HEAD INJURY"
                       437 "TRAUMATIC BRAIN INJURY BRAIN INJURY"
                       538 "BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)"
                       539 "CYCLOTHYMIA" 540 "DELUSIONAL DISORDER"
                       542 "SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER"
                       543 "PSYCHOTIC DISORDER PSYCHOSIS"
                       586 "CLINICAL DEPRESSION" 587 "MAJOR DEPRESSION"
                       588 "SEVERE DEPRESSION" 644 "AGORAPHOBIA"
                       645 "ALCOHOLISM" 646 "ALZHEIMERS"
                       647 "ANOREXIA or ANOREXIA NERVOSA" 648 "BULIMIA"
                       649 "EATING DISORDER"
                       650 "ANXIETY or ANXIETY DISORDER"
                       651 "BORDERLINE PERSONALITY DISORDER" 652 "DEMENTIA"
                       653 "DRUG ABUSE"
                       654 "GAMBLING PROBLEM or PATHOLOGICAL GAMBLING"
                       655 "OBSESSIVE COMPULSIVE DISORDER (OCD)"
                       656 "PANIC ATTACKS DISORDER"
                       657 "PERSONALITY DISORDER" 658 "PHOBIA"
                       659 "POSTTRAUMATIC STRESS DISORDERS (PTSD)"
                       660 "SLEEP DISORDER (INSOMNIA)" 661 "SOMATIZATION"
                       662 "DEPRESSION (MILD DEPRESSION)" 663 "DYSTHYMIA"
                       762 "BIOCHEMICAL PROBLEM" 763 "BRAIN DISORDER"
                       764 "BREAKDOWN" 765 "CHEMICAL IMBALANCE"
                       766 "EMOTIONAL PROBLEM DISORDER" 767 "MANIC"
                       768 "MENTAL BREAKDOWN" 769 "MOOD PROBLEM DISORDER"
                       770 "MENTALLY ILL" 771 "MENTAL HEALTH PROBLEMS"
                       772 "NERVES NERVOUS CONDITION" 773 "PARANOID"
                       774 "PSYCHOLOGICAL PROBLEMS"
                       779 "SUICIDAL SUICIDE ATTEMPT" 875 "DEPRESSION"
                       976 "OTHER UNFAMILIAR CONDITION"
                       977 "OTHER FAMILIAR CONDITION" 997 "DON'T KNOW"
                       998 "REFUSED" 999 "INAPP" ;
label define B1PCDP6   1 "SINGLE EPISODE" 2 "LONG-TERM PROBLEM"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDA6   0 "0 TO 95 YEARS OLD" 95 "DON'T KNOW" 97 "REFUSED"
                       98 "INAPP" ;
label define B1PCDX6   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCXT6   1 "MAJOR DEPRESSION" 2 "SCHIZOPHRENIA"
                       3 "BIPOLAR DISORDER (MANIC DEPRESSION)"
                       4 "OTHER (SPECIFY FOLLOWED BY //)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PCDO6   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHA7   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PCHX7   1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PCHR7   1 "HUSBANDWIFE SPOUSE"
                       2 "LOVER/PARTNER PARTNER'S FATHERMOTHERPAR"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD (SPECIFY)"
                       9 "SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW"
                       10 "FATHERMOTHERPARENT" 11 "STEP-FATHERMOTHERPARENT"
                       12 "FATHERMOTHERPARENT-IN-LAW OR"
                       13 "GRANDFATHERMOTHERPARENT" 14 "BROTHERSISTERSIBLING"
                       15 "STEP-BROTHERSTEP-SISTERSTEP-SIBLING"
                       16 "HALF-BROTHERHALF-SISTERHALF-SIBLING"
                       17 "BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW"
                       18 "GRANDSONDAUGHTERCHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define B1PCMB7   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PCYB7   1900 "1900-2004" 2004 "DON'T KNOW" 9997 "REFUSED"
                       9998 "INAPP" ;
label define B1PHHA7   0 "0 TO 120 YEARS OLD" 120 "DON'T KNOW" 997 "REFUSED"
                       998 "INAPP" ;
label define B1PCHC7   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHH7   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDD7   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDT7   101 "ASPERGERS SYNDROME" 102 "AUTISM"
                       103 "CEREBRAL PALSY (CP)" 104 "COGNITIVE DISABILITY"
                       105 "DEVELOPMENTAL DISABILITY (DD)"
                       106 "DOWN SYNDROME" 107 "FETAL ALCOHOL SYNDROME"
                       108 "FRAGILE X SYNDROME" 109 "HYDROCEPHALUS"
                       110 "INTELLECTUAL DISABILITY"
                       111 "INTELLECTUAL IMPAIRMENT" 112 "MENTAL HANDICAP"
                       113 "MENTAL RETARDATION (MR)" 114 "MENTAL DISABILITY"
                       115 "MENTAL IMPAIRMENT" 116 "MICROCEPHALY"
                       117 "MUSCULAR DYSTROPHY"
                       118 "PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)"
                       119 "PRADER WILLI SYNDROME" 120 "RETARDATION"
                       121 "SPINA BIFIDA" 178 "RETTS DISORDER"
                       222 "ATTENTION DEFICIT DISORDER (ADD)"
                       223 "ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)"
                       224 "HANDICAPPED" 225 "HYPERACTIVITY"
                       226 "LEARNING DISABILITY PROBLEMS (LD)"
                       227 "MENTAL PROBLEMS"
                       228 "SLOW IN SCHOOL SLOW LEARNER SLOW"
                       229 "SPECIAL EDUCATION SPECIAL ED"
                       230 "SPEECH PROBLEMS" 331 "EPILEPSY"
                       332 "SEIZURE DISORDER" 433 "BRAIN DAMAGE"
                       434 "BRAIN INJURY BRAIN INJURED"
                       435 "CLOSED HEAD INJURY" 436 "HEAD INJURY"
                       437 "TRAUMATIC BRAIN INJURY BRAIN INJURY"
                       538 "BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)"
                       539 "CYCLOTHYMIA" 540 "DELUSIONAL DISORDER"
                       542 "SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER"
                       543 "PSYCHOTIC DISORDER PSYCHOSIS"
                       586 "CLINICAL DEPRESSION" 587 "MAJOR DEPRESSION"
                       588 "SEVERE DEPRESSION" 644 "AGORAPHOBIA"
                       645 "ALCOHOLISM" 646 "ALZHEIMERS"
                       647 "ANOREXIA or ANOREXIA NERVOSA" 648 "BULIMIA"
                       649 "EATING DISORDER"
                       650 "ANXIETY or ANXIETY DISORDER"
                       651 "BORDERLINE PERSONALITY DISORDER" 652 "DEMENTIA"
                       653 "DRUG ABUSE"
                       654 "GAMBLING PROBLEM or PATHOLOGICAL GAMBLING"
                       655 "OBSESSIVE COMPULSIVE DISORDER (OCD)"
                       656 "PANIC ATTACKS DISORDER"
                       657 "PERSONALITY DISORDER" 658 "PHOBIA"
                       659 "POSTTRAUMATIC STRESS DISORDERS (PTSD)"
                       660 "SLEEP DISORDER (INSOMNIA)" 661 "SOMATIZATION"
                       662 "DEPRESSION (MILD DEPRESSION)" 663 "DYSTHYMIA"
                       762 "BIOCHEMICAL PROBLEM" 763 "BRAIN DISORDER"
                       764 "BREAKDOWN" 765 "CHEMICAL IMBALANCE"
                       766 "EMOTIONAL PROBLEM DISORDER" 767 "MANIC"
                       768 "MENTAL BREAKDOWN" 769 "MOOD PROBLEM DISORDER"
                       770 "MENTALLY ILL" 771 "MENTAL HEALTH PROBLEMS"
                       772 "NERVES NERVOUS CONDITION" 773 "PARANOID"
                       774 "PSYCHOLOGICAL PROBLEMS"
                       779 "SUICIDAL SUICIDE ATTEMPT" 875 "DEPRESSION"
                       976 "OTHER UNFAMILIAR CONDITION"
                       977 "OTHER FAMILIAR CONDITION" 997 "DON'T KNOW"
                       998 "REFUSED" 999 "INAPP" ;
label define B1PCDP7   1 "SINGLE EPISODE" 2 "LONG-TERM PROBLEM"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDA7   0 "0 TO 95 YEARS OLD" 95 "DON'T KNOW" 97 "REFUSED"
                       98 "INAPP" ;
label define B1PCDX7   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCXT7   1 "MAJOR DEPRESSION" 2 "SCHIZOPHRENIA"
                       3 "BIPOLAR DISORDER (MANIC DEPRESSION)"
                       4 "OTHER (SPECIFY FOLLOWED BY //)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PCDO7   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHA8   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PCHX8   1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PCHR8   1 "HUSBANDWIFE SPOUSE"
                       2 "LOVER/PARTNER PARTNER'S FATHERMOTHERPAR"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD (SPECIFY)"
                       9 "SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW"
                       10 "FATHERMOTHERPARENT" 11 "STEP-FATHERMOTHERPARENT"
                       12 "FATHERMOTHERPARENT-IN-LAW OR"
                       13 "GRANDFATHERMOTHERPARENT" 14 "BROTHERSISTERSIBLING"
                       15 "STEP-BROTHERSTEP-SISTERSTEP-SIBLING"
                       16 "HALF-BROTHERHALF-SISTERHALF-SIBLING"
                       17 "BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW"
                       18 "GRANDSONDAUGHTERCHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define B1PCMB8   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PCYB8   1900 "1900-2004" 2004 "DON'T KNOW" 9997 "REFUSED"
                       9998 "INAPP" ;
label define B1PHHA8   0 "0 TO 120 YEARS OLD" 120 "DON'T KNOW" 997 "REFUSED"
                       998 "INAPP" ;
label define B1PCHC8   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHH8   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDD8   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDT8   101 "ASPERGERS SYNDROME" 102 "AUTISM"
                       103 "CEREBRAL PALSY (CP)" 104 "COGNITIVE DISABILITY"
                       105 "DEVELOPMENTAL DISABILITY (DD)"
                       106 "DOWN SYNDROME" 107 "FETAL ALCOHOL SYNDROME"
                       108 "FRAGILE X SYNDROME" 109 "HYDROCEPHALUS"
                       110 "INTELLECTUAL DISABILITY"
                       111 "INTELLECTUAL IMPAIRMENT" 112 "MENTAL HANDICAP"
                       113 "MENTAL RETARDATION (MR)" 114 "MENTAL DISABILITY"
                       115 "MENTAL IMPAIRMENT" 116 "MICROCEPHALY"
                       117 "MUSCULAR DYSTROPHY"
                       118 "PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)"
                       119 "PRADER WILLI SYNDROME" 120 "RETARDATION"
                       121 "SPINA BIFIDA" 178 "RETTS DISORDER"
                       222 "ATTENTION DEFICIT DISORDER (ADD)"
                       223 "ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)"
                       224 "HANDICAPPED" 225 "HYPERACTIVITY"
                       226 "LEARNING DISABILITY PROBLEMS (LD)"
                       227 "MENTAL PROBLEMS"
                       228 "SLOW IN SCHOOL SLOW LEARNER SLOW"
                       229 "SPECIAL EDUCATION SPECIAL ED"
                       230 "SPEECH PROBLEMS" 331 "EPILEPSY"
                       332 "SEIZURE DISORDER" 433 "BRAIN DAMAGE"
                       434 "BRAIN INJURY BRAIN INJURED"
                       435 "CLOSED HEAD INJURY" 436 "HEAD INJURY"
                       437 "TRAUMATIC BRAIN INJURY BRAIN INJURY"
                       538 "BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)"
                       539 "CYCLOTHYMIA" 540 "DELUSIONAL DISORDER"
                       542 "SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER"
                       543 "PSYCHOTIC DISORDER PSYCHOSIS"
                       586 "CLINICAL DEPRESSION" 587 "MAJOR DEPRESSION"
                       588 "SEVERE DEPRESSION" 644 "AGORAPHOBIA"
                       645 "ALCOHOLISM" 646 "ALZHEIMERS"
                       647 "ANOREXIA or ANOREXIA NERVOSA" 648 "BULIMIA"
                       649 "EATING DISORDER"
                       650 "ANXIETY or ANXIETY DISORDER"
                       651 "BORDERLINE PERSONALITY DISORDER" 652 "DEMENTIA"
                       653 "DRUG ABUSE"
                       654 "GAMBLING PROBLEM or PATHOLOGICAL GAMBLING"
                       655 "OBSESSIVE COMPULSIVE DISORDER (OCD)"
                       656 "PANIC ATTACKS DISORDER"
                       657 "PERSONALITY DISORDER" 658 "PHOBIA"
                       659 "POSTTRAUMATIC STRESS DISORDERS (PTSD)"
                       660 "SLEEP DISORDER (INSOMNIA)" 661 "SOMATIZATION"
                       662 "DEPRESSION (MILD DEPRESSION)" 663 "DYSTHYMIA"
                       762 "BIOCHEMICAL PROBLEM" 763 "BRAIN DISORDER"
                       764 "BREAKDOWN" 765 "CHEMICAL IMBALANCE"
                       766 "EMOTIONAL PROBLEM DISORDER" 767 "MANIC"
                       768 "MENTAL BREAKDOWN" 769 "MOOD PROBLEM DISORDER"
                       770 "MENTALLY ILL" 771 "MENTAL HEALTH PROBLEMS"
                       772 "NERVES NERVOUS CONDITION" 773 "PARANOID"
                       774 "PSYCHOLOGICAL PROBLEMS"
                       779 "SUICIDAL SUICIDE ATTEMPT" 875 "DEPRESSION"
                       976 "OTHER UNFAMILIAR CONDITION"
                       977 "OTHER FAMILIAR CONDITION" 997 "DON'T KNOW"
                       998 "REFUSED" 999 "INAPP" ;
label define B1PCDP8   1 "SINGLE EPISODE" 2 "LONG-TERM PROBLEM"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDA8   0 "0 TO 95 YEARS OLD" 95 "DON'T KNOW" 97 "REFUSED"
                       98 "INAPP" ;
label define B1PCDX8   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCXT8   1 "MAJOR DEPRESSION" 2 "SCHIZOPHRENIA"
                       3 "BIPOLAR DISORDER (MANIC DEPRESSION)"
                       4 "OTHER (SPECIFY FOLLOWED BY //)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PCDO8   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHA9   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PCHX9   1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PCHR9   1 "HUSBANDWIFE SPOUSE"
                       2 "LOVER/PARTNER PARTNER'S FATHERMOTHERPAR"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD (SPECIFY)"
                       9 "SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW"
                       10 "FATHERMOTHERPARENT" 11 "STEP-FATHERMOTHERPARENT"
                       12 "FATHERMOTHERPARENT-IN-LAW OR"
                       13 "GRANDFATHERMOTHERPARENT" 14 "BROTHERSISTERSIBLING"
                       15 "STEP-BROTHERSTEP-SISTERSTEP-SIBLING"
                       16 "HALF-BROTHERHALF-SISTERHALF-SIBLING"
                       17 "BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW"
                       18 "GRANDSONDAUGHTERCHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define B1PCMB9   1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PCYB9   1900 "1900-2004" 2004 "DON'T KNOW" 9997 "REFUSED"
                       9998 "INAPP" ;
label define B1PHHA9   0 "0 TO 120 YEARS OLD" 120 "DON'T KNOW" 997 "REFUSED"
                       998 "INAPP" ;
label define B1PCHC9   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHH9   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDD9   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDT9   101 "ASPERGERS SYNDROME" 102 "AUTISM"
                       103 "CEREBRAL PALSY (CP)" 104 "COGNITIVE DISABILITY"
                       105 "DEVELOPMENTAL DISABILITY (DD)"
                       106 "DOWN SYNDROME" 107 "FETAL ALCOHOL SYNDROME"
                       108 "FRAGILE X SYNDROME" 109 "HYDROCEPHALUS"
                       110 "INTELLECTUAL DISABILITY"
                       111 "INTELLECTUAL IMPAIRMENT" 112 "MENTAL HANDICAP"
                       113 "MENTAL RETARDATION (MR)" 114 "MENTAL DISABILITY"
                       115 "MENTAL IMPAIRMENT" 116 "MICROCEPHALY"
                       117 "MUSCULAR DYSTROPHY"
                       118 "PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)"
                       119 "PRADER WILLI SYNDROME" 120 "RETARDATION"
                       121 "SPINA BIFIDA" 178 "RETTS DISORDER"
                       222 "ATTENTION DEFICIT DISORDER (ADD)"
                       223 "ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)"
                       224 "HANDICAPPED" 225 "HYPERACTIVITY"
                       226 "LEARNING DISABILITY PROBLEMS (LD)"
                       227 "MENTAL PROBLEMS"
                       228 "SLOW IN SCHOOL SLOW LEARNER SLOW"
                       229 "SPECIAL EDUCATION SPECIAL ED"
                       230 "SPEECH PROBLEMS" 331 "EPILEPSY"
                       332 "SEIZURE DISORDER" 433 "BRAIN DAMAGE"
                       434 "BRAIN INJURY BRAIN INJURED"
                       435 "CLOSED HEAD INJURY" 436 "HEAD INJURY"
                       437 "TRAUMATIC BRAIN INJURY BRAIN INJURY"
                       538 "BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)"
                       539 "CYCLOTHYMIA" 540 "DELUSIONAL DISORDER"
                       542 "SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER"
                       543 "PSYCHOTIC DISORDER PSYCHOSIS"
                       586 "CLINICAL DEPRESSION" 587 "MAJOR DEPRESSION"
                       588 "SEVERE DEPRESSION" 644 "AGORAPHOBIA"
                       645 "ALCOHOLISM" 646 "ALZHEIMERS"
                       647 "ANOREXIA or ANOREXIA NERVOSA" 648 "BULIMIA"
                       649 "EATING DISORDER"
                       650 "ANXIETY or ANXIETY DISORDER"
                       651 "BORDERLINE PERSONALITY DISORDER" 652 "DEMENTIA"
                       653 "DRUG ABUSE"
                       654 "GAMBLING PROBLEM or PATHOLOGICAL GAMBLING"
                       655 "OBSESSIVE COMPULSIVE DISORDER (OCD)"
                       656 "PANIC ATTACKS DISORDER"
                       657 "PERSONALITY DISORDER" 658 "PHOBIA"
                       659 "POSTTRAUMATIC STRESS DISORDERS (PTSD)"
                       660 "SLEEP DISORDER (INSOMNIA)" 661 "SOMATIZATION"
                       662 "DEPRESSION (MILD DEPRESSION)" 663 "DYSTHYMIA"
                       762 "BIOCHEMICAL PROBLEM" 763 "BRAIN DISORDER"
                       764 "BREAKDOWN" 765 "CHEMICAL IMBALANCE"
                       766 "EMOTIONAL PROBLEM DISORDER" 767 "MANIC"
                       768 "MENTAL BREAKDOWN" 769 "MOOD PROBLEM DISORDER"
                       770 "MENTALLY ILL" 771 "MENTAL HEALTH PROBLEMS"
                       772 "NERVES NERVOUS CONDITION" 773 "PARANOID"
                       774 "PSYCHOLOGICAL PROBLEMS"
                       779 "SUICIDAL SUICIDE ATTEMPT" 875 "DEPRESSION"
                       976 "OTHER UNFAMILIAR CONDITION"
                       977 "OTHER FAMILIAR CONDITION" 997 "DON'T KNOW"
                       998 "REFUSED" 999 "INAPP" ;
label define B1PCDP9   1 "SINGLE EPISODE" 2 "LONG-TERM PROBLEM"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDA9   0 "0 TO 95 YEARS OLD" 95 "DON'T KNOW" 97 "REFUSED"
                       98 "INAPP" ;
label define B1PCDX9   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCXT9   1 "MAJOR DEPRESSION" 2 "SCHIZOPHRENIA"
                       3 "BIPOLAR DISORDER (MANIC DEPRESSION)"
                       4 "OTHER (SPECIFY FOLLOWED BY //)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PCDO9   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHA10  997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PCHX10  1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PCHR10  1 "HUSBANDWIFE SPOUSE"
                       2 "LOVER/PARTNER PARTNER'S FATHERMOTHERPAR"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD (SPECIFY)"
                       9 "SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW"
                       10 "FATHERMOTHERPARENT" 11 "STEP-FATHERMOTHERPARENT"
                       12 "FATHERMOTHERPARENT-IN-LAW OR"
                       13 "GRANDFATHERMOTHERPARENT" 14 "BROTHERSISTERSIBLING"
                       15 "STEP-BROTHERSTEP-SISTERSTEP-SIBLING"
                       16 "HALF-BROTHERHALF-SISTERHALF-SIBLING"
                       17 "BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW"
                       18 "GRANDSONDAUGHTERCHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define B1PCMB10  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PCYB10  1900 "1900-2004" 2004 "DON'T KNOW" 9997 "REFUSED"
                       9998 "INAPP" ;
label define B1PHHA10  0 "0 TO 120 YEARS OLD" 120 "DON'T KNOW" 997 "REFUSED"
                       998 "INAPP" ;
label define B1PCHC10  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHH10  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDD10  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDT10  101 "ASPERGERS SYNDROME" 102 "AUTISM"
                       103 "CEREBRAL PALSY (CP)" 104 "COGNITIVE DISABILITY"
                       105 "DEVELOPMENTAL DISABILITY (DD)"
                       106 "DOWN SYNDROME" 107 "FETAL ALCOHOL SYNDROME"
                       108 "FRAGILE X SYNDROME" 109 "HYDROCEPHALUS"
                       110 "INTELLECTUAL DISABILITY"
                       111 "INTELLECTUAL IMPAIRMENT" 112 "MENTAL HANDICAP"
                       113 "MENTAL RETARDATION (MR)" 114 "MENTAL DISABILITY"
                       115 "MENTAL IMPAIRMENT" 116 "MICROCEPHALY"
                       117 "MUSCULAR DYSTROPHY"
                       118 "PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)"
                       119 "PRADER WILLI SYNDROME" 120 "RETARDATION"
                       121 "SPINA BIFIDA" 178 "RETTS DISORDER"
                       222 "ATTENTION DEFICIT DISORDER (ADD)"
                       223 "ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)"
                       224 "HANDICAPPED" 225 "HYPERACTIVITY"
                       226 "LEARNING DISABILITY PROBLEMS (LD)"
                       227 "MENTAL PROBLEMS"
                       228 "SLOW IN SCHOOL SLOW LEARNER SLOW"
                       229 "SPECIAL EDUCATION SPECIAL ED"
                       230 "SPEECH PROBLEMS" 331 "EPILEPSY"
                       332 "SEIZURE DISORDER" 433 "BRAIN DAMAGE"
                       434 "BRAIN INJURY BRAIN INJURED"
                       435 "CLOSED HEAD INJURY" 436 "HEAD INJURY"
                       437 "TRAUMATIC BRAIN INJURY BRAIN INJURY"
                       538 "BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)"
                       539 "CYCLOTHYMIA" 540 "DELUSIONAL DISORDER"
                       542 "SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER"
                       543 "PSYCHOTIC DISORDER PSYCHOSIS"
                       586 "CLINICAL DEPRESSION" 587 "MAJOR DEPRESSION"
                       588 "SEVERE DEPRESSION" 644 "AGORAPHOBIA"
                       645 "ALCOHOLISM" 646 "ALZHEIMERS"
                       647 "ANOREXIA or ANOREXIA NERVOSA" 648 "BULIMIA"
                       649 "EATING DISORDER"
                       650 "ANXIETY or ANXIETY DISORDER"
                       651 "BORDERLINE PERSONALITY DISORDER" 652 "DEMENTIA"
                       653 "DRUG ABUSE"
                       654 "GAMBLING PROBLEM or PATHOLOGICAL GAMBLING"
                       655 "OBSESSIVE COMPULSIVE DISORDER (OCD)"
                       656 "PANIC ATTACKS DISORDER"
                       657 "PERSONALITY DISORDER" 658 "PHOBIA"
                       659 "POSTTRAUMATIC STRESS DISORDERS (PTSD)"
                       660 "SLEEP DISORDER (INSOMNIA)" 661 "SOMATIZATION"
                       662 "DEPRESSION (MILD DEPRESSION)" 663 "DYSTHYMIA"
                       762 "BIOCHEMICAL PROBLEM" 763 "BRAIN DISORDER"
                       764 "BREAKDOWN" 765 "CHEMICAL IMBALANCE"
                       766 "EMOTIONAL PROBLEM DISORDER" 767 "MANIC"
                       768 "MENTAL BREAKDOWN" 769 "MOOD PROBLEM DISORDER"
                       770 "MENTALLY ILL" 771 "MENTAL HEALTH PROBLEMS"
                       772 "NERVES NERVOUS CONDITION" 773 "PARANOID"
                       774 "PSYCHOLOGICAL PROBLEMS"
                       779 "SUICIDAL SUICIDE ATTEMPT" 875 "DEPRESSION"
                       976 "OTHER UNFAMILIAR CONDITION"
                       977 "OTHER FAMILIAR CONDITION" 997 "DON'T KNOW"
                       998 "REFUSED" 999 "INAPP" ;
label define B1PCDP10  1 "SINGLE EPISODE" 2 "LONG-TERM PROBLEM"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDA10  0 "0 TO 95 YEARS OLD" 95 "DON'T KNOW" 97 "REFUSED"
                       98 "INAPP" ;
label define B1PCDX10  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCXT10  1 "MAJOR DEPRESSION" 2 "SCHIZOPHRENIA"
                       3 "BIPOLAR DISORDER (MANIC DEPRESSION)"
                       4 "OTHER (SPECIFY FOLLOWED BY //)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PCDO10  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHA11  997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PCHX11  1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PCHR11  1 "HUSBANDWIFE SPOUSE"
                       2 "LOVER/PARTNER PARTNER'S FATHERMOTHERPAR"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD (SPECIFY)"
                       9 "SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW"
                       10 "FATHERMOTHERPARENT" 11 "STEP-FATHERMOTHERPARENT"
                       12 "FATHERMOTHERPARENT-IN-LAW OR"
                       13 "GRANDFATHERMOTHERPARENT" 14 "BROTHERSISTERSIBLING"
                       15 "STEP-BROTHERSTEP-SISTERSTEP-SIBLING"
                       16 "HALF-BROTHERHALF-SISTERHALF-SIBLING"
                       17 "BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW"
                       18 "GRANDSONDAUGHTERCHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define B1PCMB11  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PCYB11  1900 "1900-2004" 2004 "DON'T KNOW" 9997 "REFUSED"
                       9998 "INAPP" ;
label define B1PHHA11  0 "0 TO 120 YEARS OLD" 120 "DON'T KNOW" 997 "REFUSED"
                       998 "INAPP" ;
label define B1PCHC11  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHH11  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDD11  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDT11  101 "ASPERGERS SYNDROME" 102 "AUTISM"
                       103 "CEREBRAL PALSY (CP)" 104 "COGNITIVE DISABILITY"
                       105 "DEVELOPMENTAL DISABILITY (DD)"
                       106 "DOWN SYNDROME" 107 "FETAL ALCOHOL SYNDROME"
                       108 "FRAGILE X SYNDROME" 109 "HYDROCEPHALUS"
                       110 "INTELLECTUAL DISABILITY"
                       111 "INTELLECTUAL IMPAIRMENT" 112 "MENTAL HANDICAP"
                       113 "MENTAL RETARDATION (MR)" 114 "MENTAL DISABILITY"
                       115 "MENTAL IMPAIRMENT" 116 "MICROCEPHALY"
                       117 "MUSCULAR DYSTROPHY"
                       118 "PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)"
                       119 "PRADER WILLI SYNDROME" 120 "RETARDATION"
                       121 "SPINA BIFIDA" 178 "RETTS DISORDER"
                       222 "ATTENTION DEFICIT DISORDER (ADD)"
                       223 "ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)"
                       224 "HANDICAPPED" 225 "HYPERACTIVITY"
                       226 "LEARNING DISABILITY PROBLEMS (LD)"
                       227 "MENTAL PROBLEMS"
                       228 "SLOW IN SCHOOL SLOW LEARNER SLOW"
                       229 "SPECIAL EDUCATION SPECIAL ED"
                       230 "SPEECH PROBLEMS" 331 "EPILEPSY"
                       332 "SEIZURE DISORDER" 433 "BRAIN DAMAGE"
                       434 "BRAIN INJURY BRAIN INJURED"
                       435 "CLOSED HEAD INJURY" 436 "HEAD INJURY"
                       437 "TRAUMATIC BRAIN INJURY BRAIN INJURY"
                       538 "BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)"
                       539 "CYCLOTHYMIA" 540 "DELUSIONAL DISORDER"
                       542 "SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER"
                       543 "PSYCHOTIC DISORDER PSYCHOSIS"
                       586 "CLINICAL DEPRESSION" 587 "MAJOR DEPRESSION"
                       588 "SEVERE DEPRESSION" 644 "AGORAPHOBIA"
                       645 "ALCOHOLISM" 646 "ALZHEIMERS"
                       647 "ANOREXIA or ANOREXIA NERVOSA" 648 "BULIMIA"
                       649 "EATING DISORDER"
                       650 "ANXIETY or ANXIETY DISORDER"
                       651 "BORDERLINE PERSONALITY DISORDER" 652 "DEMENTIA"
                       653 "DRUG ABUSE"
                       654 "GAMBLING PROBLEM or PATHOLOGICAL GAMBLING"
                       655 "OBSESSIVE COMPULSIVE DISORDER (OCD)"
                       656 "PANIC ATTACKS DISORDER"
                       657 "PERSONALITY DISORDER" 658 "PHOBIA"
                       659 "POSTTRAUMATIC STRESS DISORDERS (PTSD)"
                       660 "SLEEP DISORDER (INSOMNIA)" 661 "SOMATIZATION"
                       662 "DEPRESSION (MILD DEPRESSION)" 663 "DYSTHYMIA"
                       762 "BIOCHEMICAL PROBLEM" 763 "BRAIN DISORDER"
                       764 "BREAKDOWN" 765 "CHEMICAL IMBALANCE"
                       766 "EMOTIONAL PROBLEM DISORDER" 767 "MANIC"
                       768 "MENTAL BREAKDOWN" 769 "MOOD PROBLEM DISORDER"
                       770 "MENTALLY ILL" 771 "MENTAL HEALTH PROBLEMS"
                       772 "NERVES NERVOUS CONDITION" 773 "PARANOID"
                       774 "PSYCHOLOGICAL PROBLEMS"
                       779 "SUICIDAL SUICIDE ATTEMPT" 875 "DEPRESSION"
                       976 "OTHER UNFAMILIAR CONDITION"
                       977 "OTHER FAMILIAR CONDITION" 997 "DON'T KNOW"
                       998 "REFUSED" 999 "INAPP" ;
label define B1PCDP11  1 "SINGLE EPISODE" 2 "LONG-TERM PROBLEM"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDA11  0 "0 TO 95 YEARS OLD" 95 "DON'T KNOW" 97 "REFUSED"
                       98 "INAPP" ;
label define B1PCDX11  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCXT11  1 "MAJOR DEPRESSION" 2 "SCHIZOPHRENIA"
                       3 "BIPOLAR DISORDER (MANIC DEPRESSION)"
                       4 "OTHER (SPECIFY FOLLOWED BY //)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PCDO11  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHA12  997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PCHX12  1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PCHR12  1 "HUSBANDWIFE SPOUSE"
                       2 "LOVER/PARTNER PARTNER'S FATHERMOTHERPAR"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD (SPECIFY)"
                       9 "SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW"
                       10 "FATHERMOTHERPARENT" 11 "STEP-FATHERMOTHERPARENT"
                       12 "FATHERMOTHERPARENT-IN-LAW OR"
                       13 "GRANDFATHERMOTHERPARENT" 14 "BROTHERSISTERSIBLING"
                       15 "STEP-BROTHERSTEP-SISTERSTEP-SIBLING"
                       16 "HALF-BROTHERHALF-SISTERHALF-SIBLING"
                       17 "BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW"
                       18 "GRANDSONDAUGHTERCHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define B1PCMB12  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PCYB12  1900 "1900-2004" 2004 "DON'T KNOW" 9997 "REFUSED"
                       9998 "INAPP" ;
label define B1PHHA12  0 "0 TO 120 YEARS OLD" 120 "DON'T KNOW" 997 "REFUSED"
                       998 "INAPP" ;
label define B1PCHC12  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHH12  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDD12  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDT12  101 "ASPERGERS SYNDROME" 102 "AUTISM"
                       103 "CEREBRAL PALSY (CP)" 104 "COGNITIVE DISABILITY"
                       105 "DEVELOPMENTAL DISABILITY (DD)"
                       106 "DOWN SYNDROME" 107 "FETAL ALCOHOL SYNDROME"
                       108 "FRAGILE X SYNDROME" 109 "HYDROCEPHALUS"
                       110 "INTELLECTUAL DISABILITY"
                       111 "INTELLECTUAL IMPAIRMENT" 112 "MENTAL HANDICAP"
                       113 "MENTAL RETARDATION (MR)" 114 "MENTAL DISABILITY"
                       115 "MENTAL IMPAIRMENT" 116 "MICROCEPHALY"
                       117 "MUSCULAR DYSTROPHY"
                       118 "PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)"
                       119 "PRADER WILLI SYNDROME" 120 "RETARDATION"
                       121 "SPINA BIFIDA" 178 "RETTS DISORDER"
                       222 "ATTENTION DEFICIT DISORDER (ADD)"
                       223 "ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)"
                       224 "HANDICAPPED" 225 "HYPERACTIVITY"
                       226 "LEARNING DISABILITY PROBLEMS (LD)"
                       227 "MENTAL PROBLEMS"
                       228 "SLOW IN SCHOOL SLOW LEARNER SLOW"
                       229 "SPECIAL EDUCATION SPECIAL ED"
                       230 "SPEECH PROBLEMS" 331 "EPILEPSY"
                       332 "SEIZURE DISORDER" 433 "BRAIN DAMAGE"
                       434 "BRAIN INJURY BRAIN INJURED"
                       435 "CLOSED HEAD INJURY" 436 "HEAD INJURY"
                       437 "TRAUMATIC BRAIN INJURY BRAIN INJURY"
                       538 "BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)"
                       539 "CYCLOTHYMIA" 540 "DELUSIONAL DISORDER"
                       542 "SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER"
                       543 "PSYCHOTIC DISORDER PSYCHOSIS"
                       586 "CLINICAL DEPRESSION" 587 "MAJOR DEPRESSION"
                       588 "SEVERE DEPRESSION" 644 "AGORAPHOBIA"
                       645 "ALCOHOLISM" 646 "ALZHEIMERS"
                       647 "ANOREXIA or ANOREXIA NERVOSA" 648 "BULIMIA"
                       649 "EATING DISORDER"
                       650 "ANXIETY or ANXIETY DISORDER"
                       651 "BORDERLINE PERSONALITY DISORDER" 652 "DEMENTIA"
                       653 "DRUG ABUSE"
                       654 "GAMBLING PROBLEM or PATHOLOGICAL GAMBLING"
                       655 "OBSESSIVE COMPULSIVE DISORDER (OCD)"
                       656 "PANIC ATTACKS DISORDER"
                       657 "PERSONALITY DISORDER" 658 "PHOBIA"
                       659 "POSTTRAUMATIC STRESS DISORDERS (PTSD)"
                       660 "SLEEP DISORDER (INSOMNIA)" 661 "SOMATIZATION"
                       662 "DEPRESSION (MILD DEPRESSION)" 663 "DYSTHYMIA"
                       762 "BIOCHEMICAL PROBLEM" 763 "BRAIN DISORDER"
                       764 "BREAKDOWN" 765 "CHEMICAL IMBALANCE"
                       766 "EMOTIONAL PROBLEM DISORDER" 767 "MANIC"
                       768 "MENTAL BREAKDOWN" 769 "MOOD PROBLEM DISORDER"
                       770 "MENTALLY ILL" 771 "MENTAL HEALTH PROBLEMS"
                       772 "NERVES NERVOUS CONDITION" 773 "PARANOID"
                       774 "PSYCHOLOGICAL PROBLEMS"
                       779 "SUICIDAL SUICIDE ATTEMPT" 875 "DEPRESSION"
                       976 "OTHER UNFAMILIAR CONDITION"
                       977 "OTHER FAMILIAR CONDITION" 997 "DON'T KNOW"
                       998 "REFUSED" 999 "INAPP" ;
label define B1PCDP12  1 "SINGLE EPISODE" 2 "LONG-TERM PROBLEM"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDA12  0 "0 TO 95 YEARS OLD" 95 "DON'T KNOW" 97 "REFUSED"
                       98 "INAPP" ;
label define B1PCDX12  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCXT12  1 "MAJOR DEPRESSION" 2 "SCHIZOPHRENIA"
                       3 "BIPOLAR DISORDER (MANIC DEPRESSION)"
                       4 "OTHER (SPECIFY FOLLOWED BY //)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PCDO12  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHA13  997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PCHX13  1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PCHR13  1 "HUSBANDWIFE SPOUSE"
                       2 "LOVER/PARTNER PARTNER'S FATHERMOTHERPAR"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD (SPECIFY)"
                       9 "SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW"
                       10 "FATHERMOTHERPARENT" 11 "STEP-FATHERMOTHERPARENT"
                       12 "FATHERMOTHERPARENT-IN-LAW OR"
                       13 "GRANDFATHERMOTHERPARENT" 14 "BROTHERSISTERSIBLING"
                       15 "STEP-BROTHERSTEP-SISTERSTEP-SIBLING"
                       16 "HALF-BROTHERHALF-SISTERHALF-SIBLING"
                       17 "BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW"
                       18 "GRANDSONDAUGHTERCHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define B1PCMB13  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PCYB13  1900 "1900-2004" 2004 "DON'T KNOW" 9997 "REFUSED"
                       9998 "INAPP" ;
label define B1PHHA13  0 "0 TO 120 YEARS OLD" 120 "DON'T KNOW" 997 "REFUSED"
                       998 "INAPP" ;
label define B1PCHC13  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHH13  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDD13  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDT13  101 "ASPERGERS SYNDROME" 102 "AUTISM"
                       103 "CEREBRAL PALSY (CP)" 104 "COGNITIVE DISABILITY"
                       105 "DEVELOPMENTAL DISABILITY (DD)"
                       106 "DOWN SYNDROME" 107 "FETAL ALCOHOL SYNDROME"
                       108 "FRAGILE X SYNDROME" 109 "HYDROCEPHALUS"
                       110 "INTELLECTUAL DISABILITY"
                       111 "INTELLECTUAL IMPAIRMENT" 112 "MENTAL HANDICAP"
                       113 "MENTAL RETARDATION (MR)" 114 "MENTAL DISABILITY"
                       115 "MENTAL IMPAIRMENT" 116 "MICROCEPHALY"
                       117 "MUSCULAR DYSTROPHY"
                       118 "PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)"
                       119 "PRADER WILLI SYNDROME" 120 "RETARDATION"
                       121 "SPINA BIFIDA" 178 "RETTS DISORDER"
                       222 "ATTENTION DEFICIT DISORDER (ADD)"
                       223 "ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)"
                       224 "HANDICAPPED" 225 "HYPERACTIVITY"
                       226 "LEARNING DISABILITY PROBLEMS (LD)"
                       227 "MENTAL PROBLEMS"
                       228 "SLOW IN SCHOOL SLOW LEARNER SLOW"
                       229 "SPECIAL EDUCATION SPECIAL ED"
                       230 "SPEECH PROBLEMS" 331 "EPILEPSY"
                       332 "SEIZURE DISORDER" 433 "BRAIN DAMAGE"
                       434 "BRAIN INJURY BRAIN INJURED"
                       435 "CLOSED HEAD INJURY" 436 "HEAD INJURY"
                       437 "TRAUMATIC BRAIN INJURY BRAIN INJURY"
                       538 "BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)"
                       539 "CYCLOTHYMIA" 540 "DELUSIONAL DISORDER"
                       542 "SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER"
                       543 "PSYCHOTIC DISORDER PSYCHOSIS"
                       586 "CLINICAL DEPRESSION" 587 "MAJOR DEPRESSION"
                       588 "SEVERE DEPRESSION" 644 "AGORAPHOBIA"
                       645 "ALCOHOLISM" 646 "ALZHEIMERS"
                       647 "ANOREXIA or ANOREXIA NERVOSA" 648 "BULIMIA"
                       649 "EATING DISORDER"
                       650 "ANXIETY or ANXIETY DISORDER"
                       651 "BORDERLINE PERSONALITY DISORDER" 652 "DEMENTIA"
                       653 "DRUG ABUSE"
                       654 "GAMBLING PROBLEM or PATHOLOGICAL GAMBLING"
                       655 "OBSESSIVE COMPULSIVE DISORDER (OCD)"
                       656 "PANIC ATTACKS DISORDER"
                       657 "PERSONALITY DISORDER" 658 "PHOBIA"
                       659 "POSTTRAUMATIC STRESS DISORDERS (PTSD)"
                       660 "SLEEP DISORDER (INSOMNIA)" 661 "SOMATIZATION"
                       662 "DEPRESSION (MILD DEPRESSION)" 663 "DYSTHYMIA"
                       762 "BIOCHEMICAL PROBLEM" 763 "BRAIN DISORDER"
                       764 "BREAKDOWN" 765 "CHEMICAL IMBALANCE"
                       766 "EMOTIONAL PROBLEM DISORDER" 767 "MANIC"
                       768 "MENTAL BREAKDOWN" 769 "MOOD PROBLEM DISORDER"
                       770 "MENTALLY ILL" 771 "MENTAL HEALTH PROBLEMS"
                       772 "NERVES NERVOUS CONDITION" 773 "PARANOID"
                       774 "PSYCHOLOGICAL PROBLEMS"
                       779 "SUICIDAL SUICIDE ATTEMPT" 875 "DEPRESSION"
                       976 "OTHER UNFAMILIAR CONDITION"
                       977 "OTHER FAMILIAR CONDITION" 997 "DON'T KNOW"
                       998 "REFUSED" 999 "INAPP" ;
label define B1PCDP13  1 "SINGLE EPISODE" 2 "LONG-TERM PROBLEM"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDA13  0 "0 TO 95 YEARS OLD" 95 "DON'T KNOW" 97 "REFUSED"
                       98 "INAPP" ;
label define B1PCDX13  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCXT13  1 "MAJOR DEPRESSION" 2 "SCHIZOPHRENIA"
                       3 "BIPOLAR DISORDER (MANIC DEPRESSION)"
                       4 "OTHER (SPECIFY FOLLOWED BY //)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PCDO13  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHA14  997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PCHX14  1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PCHR14  1 "HUSBANDWIFE SPOUSE"
                       2 "LOVER/PARTNER PARTNER'S FATHERMOTHERPAR"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD (SPECIFY)"
                       9 "SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW"
                       10 "FATHERMOTHERPARENT" 11 "STEP-FATHERMOTHERPARENT"
                       12 "FATHERMOTHERPARENT-IN-LAW OR"
                       13 "GRANDFATHERMOTHERPARENT" 14 "BROTHERSISTERSIBLING"
                       15 "STEP-BROTHERSTEP-SISTERSTEP-SIBLING"
                       16 "HALF-BROTHERHALF-SISTERHALF-SIBLING"
                       17 "BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW"
                       18 "GRANDSONDAUGHTERCHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define B1PCMB14  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PCYB14  1900 "1900-2004" 2004 "DON'T KNOW" 9997 "REFUSED"
                       9998 "INAPP" ;
label define B1PHHA14  0 "0 TO 120 YEARS OLD" 120 "DON'T KNOW" 997 "REFUSED"
                       998 "INAPP" ;
label define B1PCHC14  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHH14  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDD14  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDT14  101 "ASPERGERS SYNDROME" 102 "AUTISM"
                       103 "CEREBRAL PALSY (CP)" 104 "COGNITIVE DISABILITY"
                       105 "DEVELOPMENTAL DISABILITY (DD)"
                       106 "DOWN SYNDROME" 107 "FETAL ALCOHOL SYNDROME"
                       108 "FRAGILE X SYNDROME" 109 "HYDROCEPHALUS"
                       110 "INTELLECTUAL DISABILITY"
                       111 "INTELLECTUAL IMPAIRMENT" 112 "MENTAL HANDICAP"
                       113 "MENTAL RETARDATION (MR)" 114 "MENTAL DISABILITY"
                       115 "MENTAL IMPAIRMENT" 116 "MICROCEPHALY"
                       117 "MUSCULAR DYSTROPHY"
                       118 "PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)"
                       119 "PRADER WILLI SYNDROME" 120 "RETARDATION"
                       121 "SPINA BIFIDA" 178 "RETTS DISORDER"
                       222 "ATTENTION DEFICIT DISORDER (ADD)"
                       223 "ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)"
                       224 "HANDICAPPED" 225 "HYPERACTIVITY"
                       226 "LEARNING DISABILITY PROBLEMS (LD)"
                       227 "MENTAL PROBLEMS"
                       228 "SLOW IN SCHOOL SLOW LEARNER SLOW"
                       229 "SPECIAL EDUCATION SPECIAL ED"
                       230 "SPEECH PROBLEMS" 331 "EPILEPSY"
                       332 "SEIZURE DISORDER" 433 "BRAIN DAMAGE"
                       434 "BRAIN INJURY BRAIN INJURED"
                       435 "CLOSED HEAD INJURY" 436 "HEAD INJURY"
                       437 "TRAUMATIC BRAIN INJURY BRAIN INJURY"
                       538 "BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)"
                       539 "CYCLOTHYMIA" 540 "DELUSIONAL DISORDER"
                       542 "SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER"
                       543 "PSYCHOTIC DISORDER PSYCHOSIS"
                       586 "CLINICAL DEPRESSION" 587 "MAJOR DEPRESSION"
                       588 "SEVERE DEPRESSION" 644 "AGORAPHOBIA"
                       645 "ALCOHOLISM" 646 "ALZHEIMERS"
                       647 "ANOREXIA or ANOREXIA NERVOSA" 648 "BULIMIA"
                       649 "EATING DISORDER"
                       650 "ANXIETY or ANXIETY DISORDER"
                       651 "BORDERLINE PERSONALITY DISORDER" 652 "DEMENTIA"
                       653 "DRUG ABUSE"
                       654 "GAMBLING PROBLEM or PATHOLOGICAL GAMBLING"
                       655 "OBSESSIVE COMPULSIVE DISORDER (OCD)"
                       656 "PANIC ATTACKS DISORDER"
                       657 "PERSONALITY DISORDER" 658 "PHOBIA"
                       659 "POSTTRAUMATIC STRESS DISORDERS (PTSD)"
                       660 "SLEEP DISORDER (INSOMNIA)" 661 "SOMATIZATION"
                       662 "DEPRESSION (MILD DEPRESSION)" 663 "DYSTHYMIA"
                       762 "BIOCHEMICAL PROBLEM" 763 "BRAIN DISORDER"
                       764 "BREAKDOWN" 765 "CHEMICAL IMBALANCE"
                       766 "EMOTIONAL PROBLEM DISORDER" 767 "MANIC"
                       768 "MENTAL BREAKDOWN" 769 "MOOD PROBLEM DISORDER"
                       770 "MENTALLY ILL" 771 "MENTAL HEALTH PROBLEMS"
                       772 "NERVES NERVOUS CONDITION" 773 "PARANOID"
                       774 "PSYCHOLOGICAL PROBLEMS"
                       779 "SUICIDAL SUICIDE ATTEMPT" 875 "DEPRESSION"
                       976 "OTHER UNFAMILIAR CONDITION"
                       977 "OTHER FAMILIAR CONDITION" 997 "DON'T KNOW"
                       998 "REFUSED" 999 "INAPP" ;
label define B1PCDP14  1 "SINGLE EPISODE" 2 "LONG-TERM PROBLEM"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDA14  0 "0 TO 95 YEARS OLD" 95 "DON'T KNOW" 97 "REFUSED"
                       98 "INAPP" ;
label define B1PCDX14  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCXT14  1 "MAJOR DEPRESSION" 2 "SCHIZOPHRENIA"
                       3 "BIPOLAR DISORDER (MANIC DEPRESSION)"
                       4 "OTHER (SPECIFY FOLLOWED BY //)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PCDO14  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHA15  997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PCHX15  1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PCHR15  1 "HUSBANDWIFE SPOUSE"
                       2 "LOVER/PARTNER PARTNER'S FATHERMOTHERPAR"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD (SPECIFY)"
                       9 "SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW"
                       10 "FATHERMOTHERPARENT" 11 "STEP-FATHERMOTHERPARENT"
                       12 "FATHERMOTHERPARENT-IN-LAW OR"
                       13 "GRANDFATHERMOTHERPARENT" 14 "BROTHERSISTERSIBLING"
                       15 "STEP-BROTHERSTEP-SISTERSTEP-SIBLING"
                       16 "HALF-BROTHERHALF-SISTERHALF-SIBLING"
                       17 "BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW"
                       18 "GRANDSONDAUGHTERCHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define B1PCMB15  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PCYB15  1900 "1900-2004" 2004 "DON'T KNOW" 9997 "REFUSED"
                       9998 "INAPP" ;
label define B1PHHA15  0 "0 TO 120 YEARS OLD" 120 "DON'T KNOW" 997 "REFUSED"
                       998 "INAPP" ;
label define B1PCHC15  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHH15  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDD15  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDT15  101 "ASPERGERS SYNDROME" 102 "AUTISM"
                       103 "CEREBRAL PALSY (CP)" 104 "COGNITIVE DISABILITY"
                       105 "DEVELOPMENTAL DISABILITY (DD)"
                       106 "DOWN SYNDROME" 107 "FETAL ALCOHOL SYNDROME"
                       108 "FRAGILE X SYNDROME" 109 "HYDROCEPHALUS"
                       110 "INTELLECTUAL DISABILITY"
                       111 "INTELLECTUAL IMPAIRMENT" 112 "MENTAL HANDICAP"
                       113 "MENTAL RETARDATION (MR)" 114 "MENTAL DISABILITY"
                       115 "MENTAL IMPAIRMENT" 116 "MICROCEPHALY"
                       117 "MUSCULAR DYSTROPHY"
                       118 "PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)"
                       119 "PRADER WILLI SYNDROME" 120 "RETARDATION"
                       121 "SPINA BIFIDA" 178 "RETTS DISORDER"
                       222 "ATTENTION DEFICIT DISORDER (ADD)"
                       223 "ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)"
                       224 "HANDICAPPED" 225 "HYPERACTIVITY"
                       226 "LEARNING DISABILITY PROBLEMS (LD)"
                       227 "MENTAL PROBLEMS"
                       228 "SLOW IN SCHOOL SLOW LEARNER SLOW"
                       229 "SPECIAL EDUCATION SPECIAL ED"
                       230 "SPEECH PROBLEMS" 331 "EPILEPSY"
                       332 "SEIZURE DISORDER" 433 "BRAIN DAMAGE"
                       434 "BRAIN INJURY BRAIN INJURED"
                       435 "CLOSED HEAD INJURY" 436 "HEAD INJURY"
                       437 "TRAUMATIC BRAIN INJURY BRAIN INJURY"
                       538 "BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)"
                       539 "CYCLOTHYMIA" 540 "DELUSIONAL DISORDER"
                       542 "SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER"
                       543 "PSYCHOTIC DISORDER PSYCHOSIS"
                       586 "CLINICAL DEPRESSION" 587 "MAJOR DEPRESSION"
                       588 "SEVERE DEPRESSION" 644 "AGORAPHOBIA"
                       645 "ALCOHOLISM" 646 "ALZHEIMERS"
                       647 "ANOREXIA or ANOREXIA NERVOSA" 648 "BULIMIA"
                       649 "EATING DISORDER"
                       650 "ANXIETY or ANXIETY DISORDER"
                       651 "BORDERLINE PERSONALITY DISORDER" 652 "DEMENTIA"
                       653 "DRUG ABUSE"
                       654 "GAMBLING PROBLEM or PATHOLOGICAL GAMBLING"
                       655 "OBSESSIVE COMPULSIVE DISORDER (OCD)"
                       656 "PANIC ATTACKS DISORDER"
                       657 "PERSONALITY DISORDER" 658 "PHOBIA"
                       659 "POSTTRAUMATIC STRESS DISORDERS (PTSD)"
                       660 "SLEEP DISORDER (INSOMNIA)" 661 "SOMATIZATION"
                       662 "DEPRESSION (MILD DEPRESSION)" 663 "DYSTHYMIA"
                       762 "BIOCHEMICAL PROBLEM" 763 "BRAIN DISORDER"
                       764 "BREAKDOWN" 765 "CHEMICAL IMBALANCE"
                       766 "EMOTIONAL PROBLEM DISORDER" 767 "MANIC"
                       768 "MENTAL BREAKDOWN" 769 "MOOD PROBLEM DISORDER"
                       770 "MENTALLY ILL" 771 "MENTAL HEALTH PROBLEMS"
                       772 "NERVES NERVOUS CONDITION" 773 "PARANOID"
                       774 "PSYCHOLOGICAL PROBLEMS"
                       779 "SUICIDAL SUICIDE ATTEMPT" 875 "DEPRESSION"
                       976 "OTHER UNFAMILIAR CONDITION"
                       977 "OTHER FAMILIAR CONDITION" 997 "DON'T KNOW"
                       998 "REFUSED" 999 "INAPP" ;
label define B1PCDP15  1 "SINGLE EPISODE" 2 "LONG-TERM PROBLEM"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDA15  0 "0 TO 95 YEARS OLD" 95 "DON'T KNOW" 97 "REFUSED"
                       98 "INAPP" ;
label define B1PCDX15  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCXT15  1 "MAJOR DEPRESSION" 2 "SCHIZOPHRENIA"
                       3 "BIPOLAR DISORDER (MANIC DEPRESSION)"
                       4 "OTHER (SPECIFY FOLLOWED BY //)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PCDO15  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHA16  997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PCHX16  1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PCHR16  1 "HUSBANDWIFE SPOUSE"
                       2 "LOVER/PARTNER PARTNER'S FATHERMOTHERPAR"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD (SPECIFY)"
                       9 "SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW"
                       10 "FATHERMOTHERPARENT" 11 "STEP-FATHERMOTHERPARENT"
                       12 "FATHERMOTHERPARENT-IN-LAW OR"
                       13 "GRANDFATHERMOTHERPARENT" 14 "BROTHERSISTERSIBLING"
                       15 "STEP-BROTHERSTEP-SISTERSTEP-SIBLING"
                       16 "HALF-BROTHERHALF-SISTERHALF-SIBLING"
                       17 "BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW"
                       18 "GRANDSONDAUGHTERCHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define B1PCMB16  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PCYB16  1900 "1900-2004" 2004 "DON'T KNOW" 9997 "REFUSED"
                       9998 "INAPP" ;
label define B1PHHA16  0 "0 TO 120 YEARS OLD" 120 "DON'T KNOW" 997 "REFUSED"
                       998 "INAPP" ;
label define B1PCHC16  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHH16  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDD16  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDT16  101 "ASPERGERS SYNDROME" 102 "AUTISM"
                       103 "CEREBRAL PALSY (CP)" 104 "COGNITIVE DISABILITY"
                       105 "DEVELOPMENTAL DISABILITY (DD)"
                       106 "DOWN SYNDROME" 107 "FETAL ALCOHOL SYNDROME"
                       108 "FRAGILE X SYNDROME" 109 "HYDROCEPHALUS"
                       110 "INTELLECTUAL DISABILITY"
                       111 "INTELLECTUAL IMPAIRMENT" 112 "MENTAL HANDICAP"
                       113 "MENTAL RETARDATION (MR)" 114 "MENTAL DISABILITY"
                       115 "MENTAL IMPAIRMENT" 116 "MICROCEPHALY"
                       117 "MUSCULAR DYSTROPHY"
                       118 "PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)"
                       119 "PRADER WILLI SYNDROME" 120 "RETARDATION"
                       121 "SPINA BIFIDA" 178 "RETTS DISORDER"
                       222 "ATTENTION DEFICIT DISORDER (ADD)"
                       223 "ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)"
                       224 "HANDICAPPED" 225 "HYPERACTIVITY"
                       226 "LEARNING DISABILITY PROBLEMS (LD)"
                       227 "MENTAL PROBLEMS"
                       228 "SLOW IN SCHOOL SLOW LEARNER SLOW"
                       229 "SPECIAL EDUCATION SPECIAL ED"
                       230 "SPEECH PROBLEMS" 331 "EPILEPSY"
                       332 "SEIZURE DISORDER" 433 "BRAIN DAMAGE"
                       434 "BRAIN INJURY BRAIN INJURED"
                       435 "CLOSED HEAD INJURY" 436 "HEAD INJURY"
                       437 "TRAUMATIC BRAIN INJURY BRAIN INJURY"
                       538 "BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)"
                       539 "CYCLOTHYMIA" 540 "DELUSIONAL DISORDER"
                       542 "SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER"
                       543 "PSYCHOTIC DISORDER PSYCHOSIS"
                       586 "CLINICAL DEPRESSION" 587 "MAJOR DEPRESSION"
                       588 "SEVERE DEPRESSION" 644 "AGORAPHOBIA"
                       645 "ALCOHOLISM" 646 "ALZHEIMERS"
                       647 "ANOREXIA or ANOREXIA NERVOSA" 648 "BULIMIA"
                       649 "EATING DISORDER"
                       650 "ANXIETY or ANXIETY DISORDER"
                       651 "BORDERLINE PERSONALITY DISORDER" 652 "DEMENTIA"
                       653 "DRUG ABUSE"
                       654 "GAMBLING PROBLEM or PATHOLOGICAL GAMBLING"
                       655 "OBSESSIVE COMPULSIVE DISORDER (OCD)"
                       656 "PANIC ATTACKS DISORDER"
                       657 "PERSONALITY DISORDER" 658 "PHOBIA"
                       659 "POSTTRAUMATIC STRESS DISORDERS (PTSD)"
                       660 "SLEEP DISORDER (INSOMNIA)" 661 "SOMATIZATION"
                       662 "DEPRESSION (MILD DEPRESSION)" 663 "DYSTHYMIA"
                       762 "BIOCHEMICAL PROBLEM" 763 "BRAIN DISORDER"
                       764 "BREAKDOWN" 765 "CHEMICAL IMBALANCE"
                       766 "EMOTIONAL PROBLEM DISORDER" 767 "MANIC"
                       768 "MENTAL BREAKDOWN" 769 "MOOD PROBLEM DISORDER"
                       770 "MENTALLY ILL" 771 "MENTAL HEALTH PROBLEMS"
                       772 "NERVES NERVOUS CONDITION" 773 "PARANOID"
                       774 "PSYCHOLOGICAL PROBLEMS"
                       779 "SUICIDAL SUICIDE ATTEMPT" 875 "DEPRESSION"
                       976 "OTHER UNFAMILIAR CONDITION"
                       977 "OTHER FAMILIAR CONDITION" 997 "DON'T KNOW"
                       998 "REFUSED" 999 "INAPP" ;
label define B1PCDP16  1 "SINGLE EPISODE" 2 "LONG-TERM PROBLEM"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDA16  0 "0 TO 95 YEARS OLD" 95 "DON'T KNOW" 97 "REFUSED"
                       98 "INAPP" ;
label define B1PCDX16  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCXT16  1 "MAJOR DEPRESSION" 2 "SCHIZOPHRENIA"
                       3 "BIPOLAR DISORDER (MANIC DEPRESSION)"
                       4 "OTHER (SPECIFY FOLLOWED BY //)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PCDO16  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHA17  997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PCHX17  1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PCHR17  1 "HUSBANDWIFE SPOUSE"
                       2 "LOVER/PARTNER PARTNER'S FATHERMOTHERPAR"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD (SPECIFY)"
                       9 "SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW"
                       10 "FATHERMOTHERPARENT" 11 "STEP-FATHERMOTHERPARENT"
                       12 "FATHERMOTHERPARENT-IN-LAW OR"
                       13 "GRANDFATHERMOTHERPARENT" 14 "BROTHERSISTERSIBLING"
                       15 "STEP-BROTHERSTEP-SISTERSTEP-SIBLING"
                       16 "HALF-BROTHERHALF-SISTERHALF-SIBLING"
                       17 "BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW"
                       18 "GRANDSONDAUGHTERCHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define B1PCMB17  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PCYB17  1900 "1900-2004" 2004 "DON'T KNOW" 9997 "REFUSED"
                       9998 "INAPP" ;
label define B1PHHA17  0 "0 TO 120 YEARS OLD" 120 "DON'T KNOW" 997 "REFUSED"
                       998 "INAPP" ;
label define B1PCHC17  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHH17  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDD17  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDT17  101 "ASPERGERS SYNDROME" 102 "AUTISM"
                       103 "CEREBRAL PALSY (CP)" 104 "COGNITIVE DISABILITY"
                       105 "DEVELOPMENTAL DISABILITY (DD)"
                       106 "DOWN SYNDROME" 107 "FETAL ALCOHOL SYNDROME"
                       108 "FRAGILE X SYNDROME" 109 "HYDROCEPHALUS"
                       110 "INTELLECTUAL DISABILITY"
                       111 "INTELLECTUAL IMPAIRMENT" 112 "MENTAL HANDICAP"
                       113 "MENTAL RETARDATION (MR)" 114 "MENTAL DISABILITY"
                       115 "MENTAL IMPAIRMENT" 116 "MICROCEPHALY"
                       117 "MUSCULAR DYSTROPHY"
                       118 "PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)"
                       119 "PRADER WILLI SYNDROME" 120 "RETARDATION"
                       121 "SPINA BIFIDA" 178 "RETTS DISORDER"
                       222 "ATTENTION DEFICIT DISORDER (ADD)"
                       223 "ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)"
                       224 "HANDICAPPED" 225 "HYPERACTIVITY"
                       226 "LEARNING DISABILITY PROBLEMS (LD)"
                       227 "MENTAL PROBLEMS"
                       228 "SLOW IN SCHOOL SLOW LEARNER SLOW"
                       229 "SPECIAL EDUCATION SPECIAL ED"
                       230 "SPEECH PROBLEMS" 331 "EPILEPSY"
                       332 "SEIZURE DISORDER" 433 "BRAIN DAMAGE"
                       434 "BRAIN INJURY BRAIN INJURED"
                       435 "CLOSED HEAD INJURY" 436 "HEAD INJURY"
                       437 "TRAUMATIC BRAIN INJURY BRAIN INJURY"
                       538 "BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)"
                       539 "CYCLOTHYMIA" 540 "DELUSIONAL DISORDER"
                       542 "SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER"
                       543 "PSYCHOTIC DISORDER PSYCHOSIS"
                       586 "CLINICAL DEPRESSION" 587 "MAJOR DEPRESSION"
                       588 "SEVERE DEPRESSION" 644 "AGORAPHOBIA"
                       645 "ALCOHOLISM" 646 "ALZHEIMERS"
                       647 "ANOREXIA or ANOREXIA NERVOSA" 648 "BULIMIA"
                       649 "EATING DISORDER"
                       650 "ANXIETY or ANXIETY DISORDER"
                       651 "BORDERLINE PERSONALITY DISORDER" 652 "DEMENTIA"
                       653 "DRUG ABUSE"
                       654 "GAMBLING PROBLEM or PATHOLOGICAL GAMBLING"
                       655 "OBSESSIVE COMPULSIVE DISORDER (OCD)"
                       656 "PANIC ATTACKS DISORDER"
                       657 "PERSONALITY DISORDER" 658 "PHOBIA"
                       659 "POSTTRAUMATIC STRESS DISORDERS (PTSD)"
                       660 "SLEEP DISORDER (INSOMNIA)" 661 "SOMATIZATION"
                       662 "DEPRESSION (MILD DEPRESSION)" 663 "DYSTHYMIA"
                       762 "BIOCHEMICAL PROBLEM" 763 "BRAIN DISORDER"
                       764 "BREAKDOWN" 765 "CHEMICAL IMBALANCE"
                       766 "EMOTIONAL PROBLEM DISORDER" 767 "MANIC"
                       768 "MENTAL BREAKDOWN" 769 "MOOD PROBLEM DISORDER"
                       770 "MENTALLY ILL" 771 "MENTAL HEALTH PROBLEMS"
                       772 "NERVES NERVOUS CONDITION" 773 "PARANOID"
                       774 "PSYCHOLOGICAL PROBLEMS"
                       779 "SUICIDAL SUICIDE ATTEMPT" 875 "DEPRESSION"
                       976 "OTHER UNFAMILIAR CONDITION"
                       977 "OTHER FAMILIAR CONDITION" 997 "DON'T KNOW"
                       998 "REFUSED" 999 "INAPP" ;
label define B1PCDP17  1 "SINGLE EPISODE" 2 "LONG-TERM PROBLEM"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDA17  0 "0 TO 95 YEARS OLD" 95 "DON'T KNOW" 97 "REFUSED"
                       98 "INAPP" ;
label define B1PCDX17  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCXT17  1 "MAJOR DEPRESSION" 2 "SCHIZOPHRENIA"
                       3 "BIPOLAR DISORDER (MANIC DEPRESSION)"
                       4 "OTHER (SPECIFY FOLLOWED BY //)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PCDO17  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHA18  997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PCHX18  1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PCHR18  1 "HUSBANDWIFE SPOUSE"
                       2 "LOVER/PARTNER PARTNER'S FATHERMOTHERPAR"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD (SPECIFY)"
                       9 "SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW"
                       10 "FATHERMOTHERPARENT" 11 "STEP-FATHERMOTHERPARENT"
                       12 "FATHERMOTHERPARENT-IN-LAW OR"
                       13 "GRANDFATHERMOTHERPARENT" 14 "BROTHERSISTERSIBLING"
                       15 "STEP-BROTHERSTEP-SISTERSTEP-SIBLING"
                       16 "HALF-BROTHERHALF-SISTERHALF-SIBLING"
                       17 "BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW"
                       18 "GRANDSONDAUGHTERCHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define B1PCMB18  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PCYB18  1900 "1900-2004" 2004 "DON'T KNOW" 9997 "REFUSED"
                       9998 "INAPP" ;
label define B1PHHA18  0 "0 TO 120 YEARS OLD" 120 "DON'T KNOW" 997 "REFUSED"
                       998 "INAPP" ;
label define B1PCHC18  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHH18  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDD18  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDT18  101 "ASPERGERS SYNDROME" 102 "AUTISM"
                       103 "CEREBRAL PALSY (CP)" 104 "COGNITIVE DISABILITY"
                       105 "DEVELOPMENTAL DISABILITY (DD)"
                       106 "DOWN SYNDROME" 107 "FETAL ALCOHOL SYNDROME"
                       108 "FRAGILE X SYNDROME" 109 "HYDROCEPHALUS"
                       110 "INTELLECTUAL DISABILITY"
                       111 "INTELLECTUAL IMPAIRMENT" 112 "MENTAL HANDICAP"
                       113 "MENTAL RETARDATION (MR)" 114 "MENTAL DISABILITY"
                       115 "MENTAL IMPAIRMENT" 116 "MICROCEPHALY"
                       117 "MUSCULAR DYSTROPHY"
                       118 "PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)"
                       119 "PRADER WILLI SYNDROME" 120 "RETARDATION"
                       121 "SPINA BIFIDA" 178 "RETTS DISORDER"
                       222 "ATTENTION DEFICIT DISORDER (ADD)"
                       223 "ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)"
                       224 "HANDICAPPED" 225 "HYPERACTIVITY"
                       226 "LEARNING DISABILITY PROBLEMS (LD)"
                       227 "MENTAL PROBLEMS"
                       228 "SLOW IN SCHOOL SLOW LEARNER SLOW"
                       229 "SPECIAL EDUCATION SPECIAL ED"
                       230 "SPEECH PROBLEMS" 331 "EPILEPSY"
                       332 "SEIZURE DISORDER" 433 "BRAIN DAMAGE"
                       434 "BRAIN INJURY BRAIN INJURED"
                       435 "CLOSED HEAD INJURY" 436 "HEAD INJURY"
                       437 "TRAUMATIC BRAIN INJURY BRAIN INJURY"
                       538 "BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)"
                       539 "CYCLOTHYMIA" 540 "DELUSIONAL DISORDER"
                       542 "SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER"
                       543 "PSYCHOTIC DISORDER PSYCHOSIS"
                       586 "CLINICAL DEPRESSION" 587 "MAJOR DEPRESSION"
                       588 "SEVERE DEPRESSION" 644 "AGORAPHOBIA"
                       645 "ALCOHOLISM" 646 "ALZHEIMERS"
                       647 "ANOREXIA or ANOREXIA NERVOSA" 648 "BULIMIA"
                       649 "EATING DISORDER"
                       650 "ANXIETY or ANXIETY DISORDER"
                       651 "BORDERLINE PERSONALITY DISORDER" 652 "DEMENTIA"
                       653 "DRUG ABUSE"
                       654 "GAMBLING PROBLEM or PATHOLOGICAL GAMBLING"
                       655 "OBSESSIVE COMPULSIVE DISORDER (OCD)"
                       656 "PANIC ATTACKS DISORDER"
                       657 "PERSONALITY DISORDER" 658 "PHOBIA"
                       659 "POSTTRAUMATIC STRESS DISORDERS (PTSD)"
                       660 "SLEEP DISORDER (INSOMNIA)" 661 "SOMATIZATION"
                       662 "DEPRESSION (MILD DEPRESSION)" 663 "DYSTHYMIA"
                       762 "BIOCHEMICAL PROBLEM" 763 "BRAIN DISORDER"
                       764 "BREAKDOWN" 765 "CHEMICAL IMBALANCE"
                       766 "EMOTIONAL PROBLEM DISORDER" 767 "MANIC"
                       768 "MENTAL BREAKDOWN" 769 "MOOD PROBLEM DISORDER"
                       770 "MENTALLY ILL" 771 "MENTAL HEALTH PROBLEMS"
                       772 "NERVES NERVOUS CONDITION" 773 "PARANOID"
                       774 "PSYCHOLOGICAL PROBLEMS"
                       779 "SUICIDAL SUICIDE ATTEMPT" 875 "DEPRESSION"
                       976 "OTHER UNFAMILIAR CONDITION"
                       977 "OTHER FAMILIAR CONDITION" 997 "DON'T KNOW"
                       998 "REFUSED" 999 "INAPP" ;
label define B1PCDP18  1 "SINGLE EPISODE" 2 "LONG-TERM PROBLEM"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDA18  0 "0 TO 95 YEARS OLD" 95 "DON'T KNOW" 97 "REFUSED"
                       98 "INAPP" ;
label define B1PCDX18  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCXT18  1 "MAJOR DEPRESSION" 2 "SCHIZOPHRENIA"
                       3 "BIPOLAR DISORDER (MANIC DEPRESSION)"
                       4 "OTHER (SPECIFY FOLLOWED BY //)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PCDO18  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHA19  997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PCHX19  1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PCHR19  1 "HUSBANDWIFE SPOUSE"
                       2 "LOVER/PARTNER PARTNER'S FATHERMOTHERPAR"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD (SPECIFY)"
                       9 "SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW"
                       10 "FATHERMOTHERPARENT" 11 "STEP-FATHERMOTHERPARENT"
                       12 "FATHERMOTHERPARENT-IN-LAW OR"
                       13 "GRANDFATHERMOTHERPARENT" 14 "BROTHERSISTERSIBLING"
                       15 "STEP-BROTHERSTEP-SISTERSTEP-SIBLING"
                       16 "HALF-BROTHERHALF-SISTERHALF-SIBLING"
                       17 "BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW"
                       18 "GRANDSONDAUGHTERCHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define B1PCMB19  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PCYB19  1900 "1900-2004" 2004 "DON'T KNOW" 9997 "REFUSED"
                       9998 "INAPP" ;
label define B1PHHA19  0 "0 TO 120 YEARS OLD" 120 "DON'T KNOW" 997 "REFUSED"
                       998 "INAPP" ;
label define B1PCHC19  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHH19  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDD19  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDT19  101 "ASPERGERS SYNDROME" 102 "AUTISM"
                       103 "CEREBRAL PALSY (CP)" 104 "COGNITIVE DISABILITY"
                       105 "DEVELOPMENTAL DISABILITY (DD)"
                       106 "DOWN SYNDROME" 107 "FETAL ALCOHOL SYNDROME"
                       108 "FRAGILE X SYNDROME" 109 "HYDROCEPHALUS"
                       110 "INTELLECTUAL DISABILITY"
                       111 "INTELLECTUAL IMPAIRMENT" 112 "MENTAL HANDICAP"
                       113 "MENTAL RETARDATION (MR)" 114 "MENTAL DISABILITY"
                       115 "MENTAL IMPAIRMENT" 116 "MICROCEPHALY"
                       117 "MUSCULAR DYSTROPHY"
                       118 "PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)"
                       119 "PRADER WILLI SYNDROME" 120 "RETARDATION"
                       121 "SPINA BIFIDA" 178 "RETTS DISORDER"
                       222 "ATTENTION DEFICIT DISORDER (ADD)"
                       223 "ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)"
                       224 "HANDICAPPED" 225 "HYPERACTIVITY"
                       226 "LEARNING DISABILITY PROBLEMS (LD)"
                       227 "MENTAL PROBLEMS"
                       228 "SLOW IN SCHOOL SLOW LEARNER SLOW"
                       229 "SPECIAL EDUCATION SPECIAL ED"
                       230 "SPEECH PROBLEMS" 331 "EPILEPSY"
                       332 "SEIZURE DISORDER" 433 "BRAIN DAMAGE"
                       434 "BRAIN INJURY BRAIN INJURED"
                       435 "CLOSED HEAD INJURY" 436 "HEAD INJURY"
                       437 "TRAUMATIC BRAIN INJURY BRAIN INJURY"
                       538 "BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)"
                       539 "CYCLOTHYMIA" 540 "DELUSIONAL DISORDER"
                       542 "SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER"
                       543 "PSYCHOTIC DISORDER PSYCHOSIS"
                       586 "CLINICAL DEPRESSION" 587 "MAJOR DEPRESSION"
                       588 "SEVERE DEPRESSION" 644 "AGORAPHOBIA"
                       645 "ALCOHOLISM" 646 "ALZHEIMERS"
                       647 "ANOREXIA or ANOREXIA NERVOSA" 648 "BULIMIA"
                       649 "EATING DISORDER"
                       650 "ANXIETY or ANXIETY DISORDER"
                       651 "BORDERLINE PERSONALITY DISORDER" 652 "DEMENTIA"
                       653 "DRUG ABUSE"
                       654 "GAMBLING PROBLEM or PATHOLOGICAL GAMBLING"
                       655 "OBSESSIVE COMPULSIVE DISORDER (OCD)"
                       656 "PANIC ATTACKS DISORDER"
                       657 "PERSONALITY DISORDER" 658 "PHOBIA"
                       659 "POSTTRAUMATIC STRESS DISORDERS (PTSD)"
                       660 "SLEEP DISORDER (INSOMNIA)" 661 "SOMATIZATION"
                       662 "DEPRESSION (MILD DEPRESSION)" 663 "DYSTHYMIA"
                       762 "BIOCHEMICAL PROBLEM" 763 "BRAIN DISORDER"
                       764 "BREAKDOWN" 765 "CHEMICAL IMBALANCE"
                       766 "EMOTIONAL PROBLEM DISORDER" 767 "MANIC"
                       768 "MENTAL BREAKDOWN" 769 "MOOD PROBLEM DISORDER"
                       770 "MENTALLY ILL" 771 "MENTAL HEALTH PROBLEMS"
                       772 "NERVES NERVOUS CONDITION" 773 "PARANOID"
                       774 "PSYCHOLOGICAL PROBLEMS"
                       779 "SUICIDAL SUICIDE ATTEMPT" 875 "DEPRESSION"
                       976 "OTHER UNFAMILIAR CONDITION"
                       977 "OTHER FAMILIAR CONDITION" 997 "DON'T KNOW"
                       998 "REFUSED" 999 "INAPP" ;
label define B1PCDP19  1 "SINGLE EPISODE" 2 "LONG-TERM PROBLEM"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDA19  0 "0 TO 95 YEARS OLD" 95 "DON'T KNOW" 97 "REFUSED"
                       98 "INAPP" ;
label define B1PCDX19  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCXT19  1 "MAJOR DEPRESSION" 2 "SCHIZOPHRENIA"
                       3 "BIPOLAR DISORDER (MANIC DEPRESSION)"
                       4 "OTHER (SPECIFY FOLLOWED BY //)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PCDO19  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHA20  997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PCHX20  1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PCHR20  1 "HUSBANDWIFE SPOUSE"
                       2 "LOVER/PARTNER PARTNER'S FATHERMOTHERPAR"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD (SPECIFY)"
                       9 "SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW"
                       10 "FATHERMOTHERPARENT" 11 "STEP-FATHERMOTHERPARENT"
                       12 "FATHERMOTHERPARENT-IN-LAW OR"
                       13 "GRANDFATHERMOTHERPARENT" 14 "BROTHERSISTERSIBLING"
                       15 "STEP-BROTHERSTEP-SISTERSTEP-SIBLING"
                       16 "HALF-BROTHERHALF-SISTERHALF-SIBLING"
                       17 "BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW"
                       18 "GRANDSONDAUGHTERCHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define B1PCMB20  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PCYB20  1900 "1900-2004" 2004 "DON'T KNOW" 9997 "REFUSED"
                       9998 "INAPP" ;
label define B1PHHA20  0 "0 TO 120 YEARS OLD" 120 "DON'T KNOW" 997 "REFUSED"
                       998 "INAPP" ;
label define B1PCHC20  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHH20  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDD20  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDT20  101 "ASPERGERS SYNDROME" 102 "AUTISM"
                       103 "CEREBRAL PALSY (CP)" 104 "COGNITIVE DISABILITY"
                       105 "DEVELOPMENTAL DISABILITY (DD)"
                       106 "DOWN SYNDROME" 107 "FETAL ALCOHOL SYNDROME"
                       108 "FRAGILE X SYNDROME" 109 "HYDROCEPHALUS"
                       110 "INTELLECTUAL DISABILITY"
                       111 "INTELLECTUAL IMPAIRMENT" 112 "MENTAL HANDICAP"
                       113 "MENTAL RETARDATION (MR)" 114 "MENTAL DISABILITY"
                       115 "MENTAL IMPAIRMENT" 116 "MICROCEPHALY"
                       117 "MUSCULAR DYSTROPHY"
                       118 "PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)"
                       119 "PRADER WILLI SYNDROME" 120 "RETARDATION"
                       121 "SPINA BIFIDA" 178 "RETTS DISORDER"
                       222 "ATTENTION DEFICIT DISORDER (ADD)"
                       223 "ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)"
                       224 "HANDICAPPED" 225 "HYPERACTIVITY"
                       226 "LEARNING DISABILITY PROBLEMS (LD)"
                       227 "MENTAL PROBLEMS"
                       228 "SLOW IN SCHOOL SLOW LEARNER SLOW"
                       229 "SPECIAL EDUCATION SPECIAL ED"
                       230 "SPEECH PROBLEMS" 331 "EPILEPSY"
                       332 "SEIZURE DISORDER" 433 "BRAIN DAMAGE"
                       434 "BRAIN INJURY BRAIN INJURED"
                       435 "CLOSED HEAD INJURY" 436 "HEAD INJURY"
                       437 "TRAUMATIC BRAIN INJURY BRAIN INJURY"
                       538 "BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)"
                       539 "CYCLOTHYMIA" 540 "DELUSIONAL DISORDER"
                       542 "SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER"
                       543 "PSYCHOTIC DISORDER PSYCHOSIS"
                       586 "CLINICAL DEPRESSION" 587 "MAJOR DEPRESSION"
                       588 "SEVERE DEPRESSION" 644 "AGORAPHOBIA"
                       645 "ALCOHOLISM" 646 "ALZHEIMERS"
                       647 "ANOREXIA or ANOREXIA NERVOSA" 648 "BULIMIA"
                       649 "EATING DISORDER"
                       650 "ANXIETY or ANXIETY DISORDER"
                       651 "BORDERLINE PERSONALITY DISORDER" 652 "DEMENTIA"
                       653 "DRUG ABUSE"
                       654 "GAMBLING PROBLEM or PATHOLOGICAL GAMBLING"
                       655 "OBSESSIVE COMPULSIVE DISORDER (OCD)"
                       656 "PANIC ATTACKS DISORDER"
                       657 "PERSONALITY DISORDER" 658 "PHOBIA"
                       659 "POSTTRAUMATIC STRESS DISORDERS (PTSD)"
                       660 "SLEEP DISORDER (INSOMNIA)" 661 "SOMATIZATION"
                       662 "DEPRESSION (MILD DEPRESSION)" 663 "DYSTHYMIA"
                       762 "BIOCHEMICAL PROBLEM" 763 "BRAIN DISORDER"
                       764 "BREAKDOWN" 765 "CHEMICAL IMBALANCE"
                       766 "EMOTIONAL PROBLEM DISORDER" 767 "MANIC"
                       768 "MENTAL BREAKDOWN" 769 "MOOD PROBLEM DISORDER"
                       770 "MENTALLY ILL" 771 "MENTAL HEALTH PROBLEMS"
                       772 "NERVES NERVOUS CONDITION" 773 "PARANOID"
                       774 "PSYCHOLOGICAL PROBLEMS"
                       779 "SUICIDAL SUICIDE ATTEMPT" 875 "DEPRESSION"
                       976 "OTHER UNFAMILIAR CONDITION"
                       977 "OTHER FAMILIAR CONDITION" 997 "DON'T KNOW"
                       998 "REFUSED" 999 "INAPP" ;
label define B1PCDP20  1 "SINGLE EPISODE" 2 "LONG-TERM PROBLEM"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDA20  0 "0 TO 95 YEARS OLD" 95 "DON'T KNOW" 97 "REFUSED"
                       98 "INAPP" ;
label define B1PCDX20  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCXT20  1 "MAJOR DEPRESSION" 2 "SCHIZOPHRENIA"
                       3 "BIPOLAR DISORDER (MANIC DEPRESSION)"
                       4 "OTHER (SPECIFY FOLLOWED BY //)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PCDO20  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHA21  997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PCHX21  1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PCHR21  1 "HUSBANDWIFE SPOUSE"
                       2 "LOVER/PARTNER PARTNER'S FATHERMOTHERPAR"
                       3 "BIOLOGICAL CHILD" 4 "ADOPTED CHILD" 5 "STEP-CHILD"
                       6 "FOSTER CHILD" 7 "CHILD OF LOVER/PARTNER"
                       8 "OTHER CHILD (SPECIFY)"
                       9 "SON-IN-LAW DAUGHTER-IN-LAWCHILD-IN-LAW"
                       10 "FATHERMOTHERPARENT" 11 "STEP-FATHERMOTHERPARENT"
                       12 "FATHERMOTHERPARENT-IN-LAW OR"
                       13 "GRANDFATHERMOTHERPARENT" 14 "BROTHERSISTERSIBLING"
                       15 "STEP-BROTHERSTEP-SISTERSTEP-SIBLING"
                       16 "HALF-BROTHERHALF-SISTERHALF-SIBLING"
                       17 "BROTHER-IN-LAWSISTER-IN-LAWSIBLING-IN-LAW"
                       18 "GRANDSONDAUGHTERCHILD" 19 "OTHER RELATIVE"
                       20 "ROOMMATE" 21 "FRIEND" 22 "OTHER NON-RELATIVE"
                       23 "SAME-SEX LOVER/PARTNER" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define B1PCMB21  1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PCYB21  1900 "1900-2004" 2004 "DON'T KNOW" 9997 "REFUSED"
                       9998 "INAPP" ;
label define B1PHHA21  0 "0 TO 120 YEARS OLD" 120 "DON'T KNOW" 997 "REFUSED"
                       998 "INAPP" ;
label define B1PCHC21  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCHH21  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDD21  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDT21  101 "ASPERGERS SYNDROME" 102 "AUTISM"
                       103 "CEREBRAL PALSY (CP)" 104 "COGNITIVE DISABILITY"
                       105 "DEVELOPMENTAL DISABILITY (DD)"
                       106 "DOWN SYNDROME" 107 "FETAL ALCOHOL SYNDROME"
                       108 "FRAGILE X SYNDROME" 109 "HYDROCEPHALUS"
                       110 "INTELLECTUAL DISABILITY"
                       111 "INTELLECTUAL IMPAIRMENT" 112 "MENTAL HANDICAP"
                       113 "MENTAL RETARDATION (MR)" 114 "MENTAL DISABILITY"
                       115 "MENTAL IMPAIRMENT" 116 "MICROCEPHALY"
                       117 "MUSCULAR DYSTROPHY"
                       118 "PERVASIVE DEVELOPMENTAL DISORDER (PDD-NOS)"
                       119 "PRADER WILLI SYNDROME" 120 "RETARDATION"
                       121 "SPINA BIFIDA" 178 "RETTS DISORDER"
                       222 "ATTENTION DEFICIT DISORDER (ADD)"
                       223 "ATTENTION DEFICIT HYPERACTIVITY DISORDER (ADHD)"
                       224 "HANDICAPPED" 225 "HYPERACTIVITY"
                       226 "LEARNING DISABILITY PROBLEMS (LD)"
                       227 "MENTAL PROBLEMS"
                       228 "SLOW IN SCHOOL SLOW LEARNER SLOW"
                       229 "SPECIAL EDUCATION SPECIAL ED"
                       230 "SPEECH PROBLEMS" 331 "EPILEPSY"
                       332 "SEIZURE DISORDER" 433 "BRAIN DAMAGE"
                       434 "BRAIN INJURY BRAIN INJURED"
                       435 "CLOSED HEAD INJURY" 436 "HEAD INJURY"
                       437 "TRAUMATIC BRAIN INJURY BRAIN INJURY"
                       538 "BIPOLAR DISORDER (MANIC DEPRESSIVE DISORDER)"
                       539 "CYCLOTHYMIA" 540 "DELUSIONAL DISORDER"
                       542 "SCHIZOPHRENIA / SCHIZOAFFECTIVE SCHIZOPHRENIFORM DISORDER"
                       543 "PSYCHOTIC DISORDER PSYCHOSIS"
                       586 "CLINICAL DEPRESSION" 587 "MAJOR DEPRESSION"
                       588 "SEVERE DEPRESSION" 644 "AGORAPHOBIA"
                       645 "ALCOHOLISM" 646 "ALZHEIMERS"
                       647 "ANOREXIA or ANOREXIA NERVOSA" 648 "BULIMIA"
                       649 "EATING DISORDER"
                       650 "ANXIETY or ANXIETY DISORDER"
                       651 "BORDERLINE PERSONALITY DISORDER" 652 "DEMENTIA"
                       653 "DRUG ABUSE"
                       654 "GAMBLING PROBLEM or PATHOLOGICAL GAMBLING"
                       655 "OBSESSIVE COMPULSIVE DISORDER (OCD)"
                       656 "PANIC ATTACKS DISORDER"
                       657 "PERSONALITY DISORDER" 658 "PHOBIA"
                       659 "POSTTRAUMATIC STRESS DISORDERS (PTSD)"
                       660 "SLEEP DISORDER (INSOMNIA)" 661 "SOMATIZATION"
                       662 "DEPRESSION (MILD DEPRESSION)" 663 "DYSTHYMIA"
                       762 "BIOCHEMICAL PROBLEM" 763 "BRAIN DISORDER"
                       764 "BREAKDOWN" 765 "CHEMICAL IMBALANCE"
                       766 "EMOTIONAL PROBLEM DISORDER" 767 "MANIC"
                       768 "MENTAL BREAKDOWN" 769 "MOOD PROBLEM DISORDER"
                       770 "MENTALLY ILL" 771 "MENTAL HEALTH PROBLEMS"
                       772 "NERVES NERVOUS CONDITION" 773 "PARANOID"
                       774 "PSYCHOLOGICAL PROBLEMS"
                       779 "SUICIDAL SUICIDE ATTEMPT" 875 "DEPRESSION"
                       976 "OTHER UNFAMILIAR CONDITION"
                       977 "OTHER FAMILIAR CONDITION" 997 "DON'T KNOW"
                       998 "REFUSED" 999 "INAPP" ;
label define B1PCDP21  1 "SINGLE EPISODE" 2 "LONG-TERM PROBLEM"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCDA21  0 "0 TO 95 YEARS OLD" 95 "DON'T KNOW" 97 "REFUSED"
                       98 "INAPP" ;
label define B1PCDX21  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PCXT21  1 "MAJOR DEPRESSION" 2 "SCHIZOPHRENIA"
                       3 "BIPOLAR DISORDER (MANIC DEPRESSION)"
                       4 "OTHER (SPECIFY FOLLOWED BY //)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PCDO21  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PC5     97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PKHSIZ  97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PC6     1 "YES (SPECIFY)" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PCHM1N  9 "INAPP" ;
label define B1PCHM2N  9 "INAPP" ;
label define B1PCHM1X  0 "NO" 1 "YES" 9 "INAPP" ;
label define B1PCHM2X  0 "NO" 1 "YES" 9 "INAPP" ;
label define B1PDCSX   7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PD1     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PD2     1 "HUSBAND" 2 "WIFE" 3 "SON" 4 "DAUGHTER" 5 "FATHER"
                       6 "MOTHER" 7 "BROTHER" 8 "SISTER" 9 "GRANDFATHER"
                       10 "GRANDMOTHER" 11 "FATHER-IN-LAW" 12 "MOTHER-IN-LAW"
                       13 "OTHER (SPECIFY)" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define B1PD3     1 "MALE" 2 "FEMALE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PD4     1 "CONDITION(S) GIVEN (SPECIFY)"
                       2 "NO SPECIFIC CONDITION" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PD5M    1 "JANUARY" 2 "FEBRUARY" 3 "MARCH" 4 "APRIL" 5 "MAY"
                       6 "JUNE" 7 "JULY" 8 "AUGUST" 9 "SEPTEMBER"
                       10 "OCTOBER" 11 "NOVEMBER" 12 "DECEMBER"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PD5Y    9997 "DON'T KNOW" 9998 "REFUSED" 9999 "INAPP" ;
label define B1PD7     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PD8A    1 "SHE NO LONGER NEEDS CARE"
                       2 "SOMEONE ELSE IS HELPING"
                       3 "THIS PERSON IS DECEASED"
                       4 "SOME OTHER REASON (SPECIFY)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PD8B    1 "SHE NO LONGER NEEDS CARE"
                       2 "SOMEONE ELSE IS HELPING"
                       3 "THIS PERSON IS DECEASED"
                       4 "SOME OTHER REASON (SPECIFY)" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PD9     1 "YES" 2 "NO" 3 "SOME OF THE TIME" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PD10    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PD11    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PD12    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PD13    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PD14    97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PD15    96 "96 OR MORE HOURS" 97 "DON'T KNOW" 98 "REFUSED"
                       99 "INAPP" ;
label define B1PD16    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PD17    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PD18    997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PD19N   97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PD19M   1 "MONTHS" 2 "YEARS" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PD20    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PD21    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PD22    97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PE1     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PE1A1   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PE1A2   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PE1A3   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PE1A4   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PE1A5   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PE1A6   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PE1A7   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PE1BN   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PE1BM   1 "DAYS" 2 "WEEKS" 3 "MONTHS" 4 "YEARS" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PE2     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PE2AN   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PE2AM   1 "DAYS" 2 "WEEKS" 3 "MONTHS" 4 "YEARS" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PE3     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PE3AN   997 "DON'T KNOW" 998 "REFUSED" 999 "INAPP" ;
label define B1PE3AM   1 "DAYS" 2 "WEEKS" 3 "MONTHS" 4 "YEARS" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1PF1     1 "NOT SPANISH/HISPANIC" 2 "MEXICAN"
                       3 "MEXICAN AMERICAN" 4 "CHICANO" 5 "PUERTO RICAN"
                       6 "CUBAN" 7 "OTHER SPANISH (SPECIFY)" 97 "DON'T KNOW"
                       98 "REFUSED" 99 "INAPP" ;
label define B1PF2A    1 "AMIND-NAM" 2 "BAHAMAS" 3 "CANADA" 4 "COSTARICA"
                       5 "CUBA" 6 "DOMREP" 7 "ELSALVADOR" 8 "GUATEMALA"
                       9 "HAITI" 10 "HONDURAS" 11 "JAMAICA" 12 "MEXICO"
                       13 "NICARAGUA" 14 "PANAMA" 15 "PUERTORICO"
                       16 "ST.VINCENT" 17 "TRINIDAD" 18 "CENTAL AM-CARIB"
                       20 "ARGENTINA" 21 "BOLIVIA" 22 "BRAZIL" 23 "CHILE"
                       24 "COLOMBIA" 25 "ECUADOR" 26 "PERU" 27 "VENEZUELA"
                       28 "SOUTH AMERICA" 30 "CZECH" 31 "ENGLAND" 32 "FRANCE"
                       33 "GERMANY" 34 "GREECE" 35 "HUNGARY" 36 "IRELAND"
                       37 "ITALY" 38 "NORWAY" 39 "POLAND" 40 "PORTUGAL"
                       41 "USSR-RUSSIA" 42 "SCOTLAND" 43 "SPAIN" 44 "SWEDEN"
                       45 "NETHERLAND" 46 "YUGOSLAV" 47 "EAST EUROPE"
                       48 "WEST EUROPE" 50 "CHINA" 51 "INDIA" 52 "JAPAN"
                       53 "KOREA" 54 "PHILIPPINE" 55 "SINGAPORE" 56 "TAIWAN"
                       57 "THAILAND" 58 "ASIA" 60 "EGYPT" 61 "KENYA"
                       62 "NIGERIA" 63 "SOUTH AFRICA" 64 "ZAIRE"
                       65 "ZIMBABWE" 66 "AFRICA" 68 "IRAN" 69 "IRAQ"
                       70 "ISRAEL" 71 "LEBANON" 72 "PAKISTAN"
                       73 "SAUDI ARABIA" 74 "MIDEAST" 96 "OTHER (SPECIFY)"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PF2B    1 "AMIND-NAM" 2 "BAHAMAS" 3 "CANADA" 4 "COSTARICA"
                       5 "CUBA" 6 "DOMREP" 7 "ELSALVADOR" 8 "GUATEMALA"
                       9 "HAITI" 10 "HONDURAS" 11 "JAMAICA" 12 "MEXICO"
                       13 "NICARAGUA" 14 "PANAMA" 15 "PUERTORICO"
                       16 "ST.VINCENT" 17 "TRINIDAD" 18 "CENTAL AM-CARIB"
                       20 "ARGENTINA" 21 "BOLIVIA" 22 "BRAZIL" 23 "CHILE"
                       24 "COLOMBIA" 25 "ECUADOR" 26 "PERU" 27 "VENEZUELA"
                       28 "SOUTH AMERICA" 30 "CZECH" 31 "ENGLAND" 32 "FRANCE"
                       33 "GERMANY" 34 "GREECE" 35 "HUNGARY" 36 "IRELAND"
                       37 "ITALY" 38 "NORWAY" 39 "POLAND" 40 "PORTUGAL"
                       41 "USSR-RUSSIA" 42 "SCOTLAND" 43 "SPAIN" 44 "SWEDEN"
                       45 "NETHERLAND" 46 "YUGOSLAV" 47 "EAST EUROPE"
                       48 "WEST EUROPE" 50 "CHINA" 51 "INDIA" 52 "JAPAN"
                       53 "KOREA" 54 "PHILIPPINE" 55 "SINGAPORE" 56 "TAIWAN"
                       57 "THAILAND" 58 "ASIA" 60 "EGYPT" 61 "KENYA"
                       62 "NIGERIA" 63 "SOUTH AFRICA" 64 "ZAIRE"
                       65 "ZIMBABWE" 66 "AFRICA" 68 "IRAN" 69 "IRAQ"
                       70 "ISRAEL" 71 "LEBANON" 72 "PAKISTAN"
                       73 "SAUDI ARABIA" 74 "MIDEAST" 96 "OTHER (SPECIFY)"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PF2C    1 "AMIND-NAM" 2 "BAHAMAS" 3 "CANADA" 4 "COSTARICA"
                       5 "CUBA" 6 "DOMREP" 7 "ELSALVADOR" 8 "GUATEMALA"
                       9 "HAITI" 10 "HONDURAS" 11 "JAMAICA" 12 "MEXICO"
                       13 "NICARAGUA" 14 "PANAMA" 15 "PUERTORICO"
                       16 "ST.VINCENT" 17 "TRINIDAD" 18 "CENTAL AM-CARIB"
                       20 "ARGENTINA" 21 "BOLIVIA" 22 "BRAZIL" 23 "CHILE"
                       24 "COLOMBIA" 25 "ECUADOR" 26 "PERU" 27 "VENEZUELA"
                       28 "SOUTH AMERICA" 30 "CZECH" 31 "ENGLAND" 32 "FRANCE"
                       33 "GERMANY" 34 "GREECE" 35 "HUNGARY" 36 "IRELAND"
                       37 "ITALY" 38 "NORWAY" 39 "POLAND" 40 "PORTUGAL"
                       41 "USSR-RUSSIA" 42 "SCOTLAND" 43 "SPAIN" 44 "SWEDEN"
                       45 "NETHERLAND" 46 "YUGOSLAV" 47 "EAST EUROPE"
                       48 "WEST EUROPE" 50 "CHINA" 51 "INDIA" 52 "JAPAN"
                       53 "KOREA" 54 "PHILIPPINE" 55 "SINGAPORE" 56 "TAIWAN"
                       57 "THAILAND" 58 "ASIA" 60 "EGYPT" 61 "KENYA"
                       62 "NIGERIA" 63 "SOUTH AFRICA" 64 "ZAIRE"
                       65 "ZIMBABWE" 66 "AFRICA" 68 "IRAN" 69 "IRAQ"
                       70 "ISRAEL" 71 "LEBANON" 72 "PAKISTAN"
                       73 "SAUDI ARABIA" 74 "MIDEAST" 96 "OTHER (SPECIFY)"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PF2_1   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_3   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_4   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_5   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_6   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_7   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_9   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_10  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_11  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_12  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_13  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_14  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_15  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_17  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_18  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_22  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_24  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_30  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_31  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_32  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_33  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_34  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_35  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_36  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_37  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_38  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_39  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_40  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_41  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_42  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_43  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_44  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_45  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_46  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_47  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_48  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_50  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_51  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_52  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_53  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_54  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_56  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_57  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_58  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_66  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_69  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_70  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_71  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_74  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF2_96  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF3     1 "b1pf2a" 2 "b1f2b" 3 "b1f2c" 4 "OTHER"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF3_1   1 "AMERICAN INDIAN/NATIVE AMERICAN" 3 "CANADA"
                       4 "COSTA RICA" 5 "CUBA" 6 "DOMINICAN REPUBLIC"
                       7 "EL SALVADOR" 9 "HAITI" 10 "HONDURAS" 11 "JAMAICA"
                       12 "MEXICO" 13 "NICARAGUA" 14 "PANAMA"
                       15 "PUERTO RICO" 17 "TRINIDAD"
                       18 "CENTRAL AMERICAN/CARIBBEAN" 22 "BRAZIL"
                       24 "COLOMBIA" 30 "CZECH" 31 "ENGLAND" 32 "FRANCE"
                       33 "GERMANY" 34 "GREECE" 35 "HUNGARY" 36 "IRELAND"
                       37 "ITALY" 38 "NORWAY" 39 "POLAND" 40 "PORTUGAL"
                       41 "USSR-RUSSIA" 42 "SCOTLAND" 43 "SPAIN" 44 "SWEDEN"
                       45 "NETHERLANDS" 46 "YUGOSLAVIA" 47 "EAST EUROPE"
                       48 "WEST EUROPE" 50 "CHINA" 51 "INDIA" 52 "JAPAN"
                       53 "KOREA" 54 "PHILLIPINES" 56 "TAIWAN" 57 "THAILAND"
                       58 "ASIA" 66 "AFRICA" 69 "IRAQ" 70 "ISRAEL"
                       71 "LEBANON" 74 "MIDEAST" 96 "OTHER (SPECIFY)"
                       97 "DON'T KNOW" 98 "REFUSED" 99 "INAPP" ;
label define B1PF4     1 "VERY CLOSELY" 2 "SOMEWHAT CLOSELY"
                       3 "NOT VERY CLOSELY" 4 "NOT AT ALL CLOSELY"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF5     1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF6     1 "VERY IMPORTANT" 2 "SOMEWHAT IMPORTANT"
                       3 "NOT VERY IMPORTANT" 4 "NOT AT ALL IMPORTANT"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF7A    1 "WHITE" 2 "BLACK AND/OR AFRICAN AMERICAN"
                       3 "NATIVE AMERICAN OR ALASKA NATIVE ALEUTIAN ISLANDER/ESKIMO"
                       4 "ASIAN" 5 "NATIVE HAWAIIAN OR PACIFIC ISLANDER"
                       6 "OTHER (SPECIFY)" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PF7B    1 "WHITE" 2 "BLACK AND/OR AFRICAN AMERICAN"
                       3 "NATIVE AMERICAN OR ALASKA NATIVE ALEUTIAN ISLANDER/ESKIMO"
                       4 "ASIAN" 5 "NATIVE HAWAIIAN OR PACIFIC ISLANDER"
                       6 "OTHER (SPECIFY)" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PF7C    1 "WHITE" 2 "BLACK AND/OR AFRICAN AMERICAN"
                       3 "NATIVE AMERICAN OR ALASKA NATIVE ALEUTIAN ISLANDER/ESKIMO"
                       4 "ASIAN" 5 "NATIVE HAWAIIAN OR PACIFIC ISLANDER"
                       6 "OTHER (SPECIFY)" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PF7D    1 "WHITE" 2 "BLACK AND/OR AFRICAN AMERICAN"
                       3 "NATIVE AMERICAN OR ALASKA NATIVE ALEUTIAN ISLANDER/ESKIMO"
                       4 "ASIAN" 5 "NATIVE HAWAIIAN OR PACIFIC ISLANDER"
                       6 "OTHER (SPECIFY)" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PF8A    1 "WHITE" 2 "BLACK AND/OR AFRICAN AMERICAN"
                       3 "NATIVE AMERICAN OR ALASKA NATIVE ALEUTIAN ISLANDER/ESKIMO"
                       4 "ASIAN" 5 "NATIVE HAWAIIAN OR PACIFIC ISLANDER"
                       6 "OTHER (SPECIFY)" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PF8B    1 "WHITE" 2 "BLACK AND/OR AFRICAN AMERICAN"
                       3 "NATIVE AMERICAN OR ALASKA NATIVE ALEUTIAN ISLANDER/ESKIMO"
                       4 "ASIAN" 5 "NATIVE HAWAIIAN OR PACIFIC ISLANDER"
                       6 "OTHER (SPECIFY)" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PF8_A   1 "WHITE" 2 "BLACK AND/OR AFRICAN AMERICAN"
                       3 "NATIVE AMERICAN OR ALASKA NATIVE ALEUTIAN ISLANDER/ESKIMO"
                       4 "ASIAN" 5 "NATIVE HAWAIIAN OR PACIFIC ISLANDER"
                       6 "OTHER (SPECIFY)" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PF9     1 "VERY CLOSELY" 2 "SOMEWHAT CLOSELY"
                       3 "NOT VERY CLOSELY" 4 "NOT AT ALL CLOSELY"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF10    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF11    1 "VERY IMPORTANT" 2 "SOMEWHAT IMPORTANT"
                       3 "NOT VERY IMPORTANT" 4 "NOT AT ALL IMPORTANT"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF12    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF12A   1 "VERY CLOSELY" 2 "SOMEWHAT CLOSELY"
                       3 "NOT VERY CLOSELY" 4 "NOT AT ALL CLOSELY"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PF12B   1 "ENTER COUNTRY" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PG1     1 "VERY" 2 "SOMEWHAT" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PG2     1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NONE AT ALL"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PG3     1 "VERY" 2 "SOMEWHAT" 3 "A LITTLE" 4 "NOT AT ALL"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PG4     1 "EXCELLENT" 2 "VERY GOOD" 3 "GOOD" 4 "FAIR" 5 "POOR"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PG5     1 "AGREE" 2 "DISAGREE" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PG5A    1 "STRONGLY" 2 "SOMEWHAT" 3 "ONLY A LITTLE"
                       7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1PG6     1 "A LOT" 2 "SOMEWHAT" 3 "A LITTLE"
                       4 "NOT AT ALL/NONE AT ALL" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PG7     1 "A LOT" 2 "SOMEWHAT" 3 "A LITTLE"
                       4 "NOT AT ALL/NONE AT ALL" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PG8     1 "A LOT" 2 "SOMEWHAT" 3 "A LITTLE"
                       4 "NOT AT ALL/NONE AT ALL" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1PG9     1 "A LOT" 2 "SOMEWHAT" 3 "A LITTLE"
                       4 "NOT AT ALL/NONE AT ALL" 7 "DON'T KNOW" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SA1     0 "WORST" 10 "BEST" 98 "REFUSED" 99 "INAPP" ;
label define B1SA2     0 "WORST" 10 "BEST" 98 "REFUSED" 99 "INAPP" ;
label define B1SA3     0 "WORST" 10 "BEST" 98 "REFUSED" 99 "INAPP" ;
label define B1SA4     0 "WORST" 10 "VERYMUCH" 98 "REFUSED" 99 "INAPP" ;
label define B1SA5     0 "WORST" 10 "VERYMUCH" 98 "REFUSED" 99 "INAPP" ;
label define B1SSATIS  98 "NOT CALCULATED - Due to missing data" ;
label define B1SSATIS2 98 "NOT CALCULATED - Due to missing data" ;
label define B1SA6A    1 "IMPROVED A LOT" 2 "IMPROVED A LITTLE"
                       3 "STAYED THE SAME" 4 "GOTTEN A LITTLE WORSE"
                       5 "GOTTEN A LOT WORSE" 8 "REFUSED" ;
label define B1SA6B    1 "IMPROVED A LOT" 2 "IMPROVED A LITTLE"
                       3 "STAYED THE SAME" 4 "GOTTEN A LITTLE WORSE"
                       5 "GOTTEN A LOT WORSE" 8 "REFUSED" ;
label define B1SA6C    1 "IMPROVED A LOT" 2 "IMPROVED A LITTLE"
                       3 "STAYED THE SAME" 4 "GOTTEN A LITTLE WORSE"
                       5 "GOTTEN A LOT WORSE" 8 "REFUSED" ;
label define B1SA6D    1 "IMPROVED A LOT" 2 "IMPROVED A LITTLE"
                       3 "STAYED THE SAME" 4 "GOTTEN A LITTLE WORSE"
                       5 "GOTTEN A LOT WORSE" 8 "REFUSED" ;
label define B1SA6E    1 "IMPROVED A LOT" 2 "IMPROVED A LITTLE"
                       3 "STAYED THE SAME" 4 "GOTTEN A LITTLE WORSE"
                       5 "GOTTEN A LOT WORSE" 8 "REFUSED" ;
label define B1SA7A    1 "EXCELLENT" 2 "GOOD" 3 "AVERAGE" 4 "FAIR" 5 "POOR"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA7B    1 "EXCELLENT" 2 "GOOD" 3 "AVERAGE" 4 "FAIR" 5 "POOR"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA7C    1 "EXCELLENT" 2 "GOOD" 3 "AVERAGE" 4 "FAIR" 5 "POOR"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA7D    1 "EXCELLENT" 2 "GOOD" 3 "AVERAGE" 4 "FAIR" 5 "POOR"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA8A    1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "SOMEWHAT DISAGREE"
                       7 "STRONGLY DISAGREE" 8 "REFUSED" 9 "INAPP" ;
label define B1SA8B    1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "SOMEWHAT DISAGREE"
                       7 "STRONGLY DISAGREE" 8 "REFUSED" 9 "INAPP" ;
label define B1SA8C    1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "SOMEWHAT DISAGREE"
                       7 "STRONGLY DISAGREE" 8 "REFUSED" 9 "INAPP" ;
label define B1SA8D    1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "SOMEWHAT DISAGREE"
                       7 "STRONGLY DISAGREE" 8 "REFUSED" 9 "INAPP" ;
label define B1SA8E    1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "SOMEWHAT DISAGREE"
                       7 "STRONGLY DISAGREE" 8 "REFUSED" 9 "INAPP" ;
label define B1SA8F    1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "SOMEWHAT DISAGREE"
                       7 "STRONGLY DISAGREE" 8 "REFUSED" 9 "INAPP" ;
label define B1SHLOCS  8 "NOT CALCULATED (Due to missing data)" ;
label define B1SHLOCO  8 "NOT CALCULATED (Due to missing data)" ;
label define B1SA9A    1 "NOT AT ALL TRUE" 2 "A LITTLE TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SA9B    1 "NOT AT ALL TRUE" 2 "A LITTLE TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SA9C    1 "NOT AT ALL TRUE" 2 "A LITTLE TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SA9D    1 "NOT AT ALL TRUE" 2 "A LITTLE TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SA9E    1 "NOT AT ALL TRUE" 2 "A LITTLE TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SAMPLI  8 "NOT CALCULATED (Due to missing data)" ;
label define B1SA10A   1 "ALMOST EVERY DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "SEVERAL TIMES A MONTH"
                       5 "ONCE A MONTH" 6 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SA10B   1 "ALMOST EVERY DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "SEVERAL TIMES A MONTH"
                       5 "ONCE A MONTH" 6 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SA10C   1 "ALMOST EVERY DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "SEVERAL TIMES A MONTH"
                       5 "ONCE A MONTH" 6 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SA10D   1 "ALMOST EVERY DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "SEVERAL TIMES A MONTH"
                       5 "ONCE A MONTH" 6 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SA10E   1 "ALMOST EVERY DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "SEVERAL TIMES A MONTH"
                       5 "ONCE A MONTH" 6 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SA10F   1 "ALMOST EVERY DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "SEVERAL TIMES A MONTH"
                       5 "ONCE A MONTH" 6 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SA10G   1 "ALMOST EVERY DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "SEVERAL TIMES A MONTH"
                       5 "ONCE A MONTH" 6 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SA10H   1 "ALMOST EVERY DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "SEVERAL TIMES A MONTH"
                       5 "ONCE A MONTH" 6 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SA10I   1 "ALMOST EVERY DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "SEVERAL TIMES A MONTH"
                       5 "ONCE A MONTH" 6 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SA10J   1 "ALMOST EVERY DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "SEVERAL TIMES A MONTH"
                       5 "ONCE A MONTH" 6 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SA11A   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA11B   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA11C   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA11D   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA11E   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA11F   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA11G   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA11H   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA11I   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA11J   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA11K   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA11L   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA11M   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA11N   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA11O   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA11P   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA11Q   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA11R   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA11S   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA11T   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA11U   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA11V   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA11W   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA11X   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA11Y   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA11Z   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA11AA  1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA11BB  1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA11CC  1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA11DD  1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SCHROX  0 "NO" 1 "YES" ;
label define B1SA12A   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA12AY  1 "DAILY" 2 "A FEW TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "A FEW TIMES A MONTH" 5 "ONCE THIS MONTH"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA12B   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA12BY  1 "DAILY" 2 "A FEW TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "A FEW TIMES A MONTH" 5 "ONCE THIS MONTH"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA12C   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA12CY  1 "DAILY" 2 "A FEW TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "A FEW TIMES A MONTH" 5 "ONCE THIS MONTH"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA12D   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA12DY  1 "DAILY" 2 "A FEW TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "A FEW TIMES A MONTH" 5 "ONCE THIS MONTH"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA12E   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA12EY  1 "DAILY" 2 "A FEW TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "A FEW TIMES A MONTH" 5 "ONCE THIS MONTH"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA12F   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA12FY  1 "DAILY" 2 "A FEW TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "A FEW TIMES A MONTH" 5 "ONCE THIS MONTH"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA12G   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA12GY  1 "DAILY" 2 "A FEW TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "A FEW TIMES A MONTH" 5 "ONCE THIS MONTH"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA12H   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA12HY  1 "DAILY" 2 "A FEW TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "A FEW TIMES A MONTH" 5 "ONCE THIS MONTH"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA12I   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA12IY  1 "DAILY" 2 "A FEW TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "A FEW TIMES A MONTH" 5 "ONCE THIS MONTH"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA12J   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA12JY  1 "DAILY" 2 "A FEW TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "A FEW TIMES A MONTH" 5 "ONCE THIS MONTH"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA12K   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA12KY  1 "DAILY" 2 "A FEW TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "A FEW TIMES A MONTH" 5 "ONCE THIS MONTH"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA12L   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA12LY  1 "DAILY" 2 "A FEW TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "A FEW TIMES A MONTH" 5 "ONCE THIS MONTH"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SRXMEX  0 "NO" 1 "YES"
                       8 "NOT CALCULATED (Due to missing data)" ;
label define B1SRXMED  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SA13A   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA13AY  1 "DAILY" 2 "A FEW TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "A FEW TIMES A MONTH" 5 "ONCE THIS MONTH"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA13B   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA13BY  1 "DAILY" 2 "A FEW TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "A FEW TIMES A MONTH" 5 "ONCE THIS MONTH"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA13C   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA13CY  1 "DAILY" 2 "A FEW TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "A FEW TIMES A MONTH" 5 "ONCE THIS MONTH"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA13D   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA13DY  1 "DAILY" 2 "A FEW TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "A FEW TIMES A MONTH" 5 "ONCE THIS MONTH"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA14A   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA14B   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA14C   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA14D   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA14E   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA14F   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA14G   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA14H   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA14I   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA14J   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA14K   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA14L   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA14M   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA14N   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA14O   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SSPLMX  0 "NO" 1 "YES" ;
label define B1SA15    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA16    0 "DID NOT INTERFERE" 10 "COMPLETELY INTERFERED"
                       98 "REFUSED" 99 "INAPP" ;
label define B1SA17    0 "DID NOT INTERFERE" 10 "COMPLETELY INTERFERED"
                       98 "REFUSED" 99 "INAPP" ;
label define B1SA18    0 "DID NOT INTERFERE" 10 "COMPLETELY INTERFERED"
                       98 "REFUSED" 99 "INAPP" ;
label define B1SA19    0 "DID NOT INTERFERE" 10 "COMPLETELY INTERFERED"
                       98 "REFUSED" 99 "INAPP" ;
label define B1SA20    0 "DID NOT INTERFERE" 10 "COMPLETELY INTERFERED"
                       98 "REFUSED" 99 "INAPP" ;
label define B1SA21A   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA21B   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA21C   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA21D   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA21E   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA21F   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA21G   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA21H   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA21I   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA22    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA23    1 "SPECIFY" 2 "BLANK" 8 "REFUSED" 9 "INAPP" ;
label define B1SA24A   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" 9 "INAPP" ;
label define B1SA24B   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" 9 "INAPP" ;
label define B1SA24C   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" 9 "INAPP" ;
label define B1SA24D   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" 9 "INAPP" ;
label define B1SA24E   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" 9 "INAPP" ;
label define B1SA24F   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" 9 "INAPP" ;
label define B1SA24G   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" 9 "INAPP" ;
label define B1SA24H   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" 9 "INAPP" ;
label define B1SA24I   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" 9 "INAPP" ;
label define B1SA24J   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" 9 "INAPP" ;
label define B1SA24K   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" 9 "INAPP" ;
label define B1SA24L   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" 9 "INAPP" ;
label define B1SA24M   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" 9 "INAPP" ;
label define B1SA24N   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" 9 "INAPP" ;
label define B1SA25    1 "A LOT MORE NEGATIVE THAN USUAL"
                       2 "SOMEWHAT MORE NEGATIVE THAN USUAL"
                       3 "A LITTLE MORE NEGATIVE THAN USUAL"
                       4 "ABOUT THE SAME AS USUAL"
                       5 "A LITTLE LESS NEGATIVE THAN USUAL"
                       6 "SOMEWHAT LESS NEGATIVE THAN USUAL"
                       7 "A LOT LESS NEGATIVE THAN USUAL" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SNEGAF  8 "NOT CALCULATED (Due to missing data)" ;
label define B1SNEGPA  8 "NOT CALCULATED (Due to missing data)" ;
label define B1SA26A   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" 9 "INAPP" ;
label define B1SA26B   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" 9 "INAPP" ;
label define B1SA26C   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" 9 "INAPP" ;
label define B1SA26D   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" 9 "INAPP" ;
label define B1SA26E   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" 9 "INAPP" ;
label define B1SA26F   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" 9 "INAPP" ;
label define B1SA26G   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" 9 "INAPP" ;
label define B1SA26H   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" 9 "INAPP" ;
label define B1SA26I   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" 9 "INAPP" ;
label define B1SA26J   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" 9 "INAPP" ;
label define B1SA26K   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" 9 "INAPP" ;
label define B1SA26L   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" 9 "INAPP" ;
label define B1SA26M   1 "ALL THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "A LITTLE OF THE TIME"
                       5 "NONE OF THE TIME" 8 "REFUSED" 9 "INAPP" ;
label define B1SA27    1 "A LOT MORE POSITIVE THAN USUAL"
                       2 "SOMEWHAT MORE POSITIVE THAN USUAL"
                       3 "A LITTLE MORE POSITIVE THAN USUAL"
                       4 "ABOUT THE SAME AS USUAL"
                       5 "A LITTLE LESS POSITIVE THAN USUAL"
                       6 "SOMEWHAT LESS POSITIVE THAN USUAL"
                       7 "A LOT LESS POSITIVE THAN USUAL" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SPOSAF  8 "NOT CALCULATED (Due to missing data)" ;
label define B1SPOSPA  8 "NOT CALCULATED (Due to missing data)" ;
label define B1SA28A   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA28B   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA28C   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA28D   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA28E   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA28F   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA28G   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA28H   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA28I   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA28J   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SBADL1  8 "NOT CALCULATED (Due to missing data)" ;
label define B1SBADL2  8 "NOT CALCULATED (Due to missing data)" ;
label define B1SIADL   8 "NOT CALCULATED (Due to missing data)" ;
label define B1SA29A   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA29B   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA29C   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA29D   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SDYSPN  8 "NOT CALCULATED (Due to missing data)" ;
label define B1SA30A   1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SA30B   1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SA30C   1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SA30D   1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SA30E   1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SA30F   1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SA31A   1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SA31B   1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SA31C   1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SA31D   1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SA31E   1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SA31F   1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SA32A   1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SA32B   1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SA32C   1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SA32D   1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SA32E   1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SA32F   1 "SEVERAL TIMES A WEEK" 2 "ONCE A WEEK"
                       3 "SEVERAL TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SA33A   1 "DAILY" 2 "SEVERAL TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "SEVERAL TIMES A MONTH" 5 "ONCE A MONTH" 6 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA33B   1 "DAILY" 2 "SEVERAL TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "SEVERAL TIMES A MONTH" 5 "ONCE A MONTH" 6 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA33C   1 "DAILY" 2 "SEVERAL TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "SEVERAL TIMES A MONTH" 5 "ONCE A MONTH" 6 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA33D   1 "DAILY" 2 "SEVERAL TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "SEVERAL TIMES A MONTH" 5 "ONCE A MONTH" 6 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA33E   1 "DAILY" 2 "SEVERAL TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "SEVERAL TIMES A MONTH" 5 "ONCE A MONTH" 6 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA33F   1 "DAILY" 2 "SEVERAL TIMES A WEEK" 3 "ONCE A WEEK"
                       4 "SEVERAL TIMES A MONTH" 5 "ONCE A MONTH" 6 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA34A   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SA34B   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SA34C   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SA34D   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SA34E   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SA34F   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SA34G   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SA34H   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SA34I   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SINTAG  8 "NOT CALCULATED (Due to missing data)" ;
label define B1SA35    98 "REFUSED" 99 "INAPP" ;
label define B1SA36    98 "REFUSED" 99 "INAPP" ;
label define B1SWSTHI  9 "EXTREME CASES: +- 4 SD OVER MEAN" ;
label define B1SA37A   98 "REFUSED" 99 "INAPP" ;
label define B1SA37B   98 "REFUSED" 99 "INAPP" ;
label define B1SA38    1 "VERY OVERWEIGHT" 2 "SOMEWHAT OVERWEIGHT"
                       3 "ABOUT THE RIGHT WEIGHT" 4 "SOMEWHAT UNDERWEIGHT"
                       5 "VERY UNDERWEIGHT" 8 "REFUSED" 9 "INAPP" ;
label define B1SA39    998 "REFUSED" 999 "INAPP" ;
label define B1SA40    998 "REFUSED" 999 "INAPP" ;
label define B1SA41    998 "REFUSED" 999 "INAPP" ;
label define B1SA42    98 "REFUSED" 99 "INAPP" ;
label define B1SA43A   1 "YES" 2 "NO" 4 "NONE OF THE ABOVE" 8 "REFUSED"
                       9 "INAPPP" ;
label define B1SA43B   1 "YES" 2 "NO" 4 "NONE OF THE ABOVE" 8 "REFUSED"
                       9 "INAPPP" ;
label define B1SA43C   1 "YES" 2 "NO" 4 "NONE OF THE ABOVE" 8 "REFUSED"
                       9 "INAPPP" ;
label define B1SBMI    98 "NOT CALCULATED (Due to missing data)" ;
label define B1SA44    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA45    9998 "REFUSED" 9999 "INAPP" ;
label define B1SA46    998 "REFUSED" 999 "INAPP" ;
label define B1SA47    998 "REFUSED" 999 "INAPP" ;
label define B1SA48A   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA48B   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA48C   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA48D   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA48E   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA48F   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA48G   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA48H   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA49    1 "PRIVATE CLINIC OR DOCTORS OFFICE" 2 "HMO CLINIC"
                       3 "PUBLIC HEALTH CLINIC OR COMMUNITY HEALTH CENTER"
                       4 "HOSPITAL OUTPATIENT DEPARTMENT"
                       5 "HOSPITAL EMERGENCY ROOM" 6 "URGENT CARE CENTER"
                       7 "SOME OTHER KIND OF PLACE" 8 "NO USUAL PLACE"
                       98 "REFUSED" 99 "INAPP" ;
label define B1SA50A   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA50B   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA50C   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA50D   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA50E   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA50F   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA50G   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA50H   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA51    1 "FAMILY DOCTOR OR GENERALIST"
                       2 "OBSTETRICIAN OR GYNECOLOGIST" 3 "INTERNIST"
                       4 "CHIROPRACTOR"
                       5 "PHYSICIANS ASSISTANT OR NURSE PRACTITIONER"
                       6 "OTHER HEALTHCARE PROFESSIONAL"
                       7 "NONTRADITIONAL HEALTH PRACTITIONER"
                       8 "NO ONE IN PARTICULAR" 98 "REFUSED" 99 "INAPP" ;
label define B1SA52    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA53A   998 "REFUSED" 999 "INAPP" ;
label define B1SA53B   998 "REFUSED" 999 "INAPP" ;
label define B1SA53C   998 "REFUSED" 999 "INAPP" ;
label define B1SA53D   998 "REFUSED" 999 "INAPP" ;
label define B1SA53E   998 "REFUSED" 999 "INAPP" ;
label define B1SUSEMD  998 "NOT CALCULATED (Due to missing data)" ;
label define B1SA54A   998 "REFUSED" 999 "INAPP" ;
label define B1SA54B   998 "REFUSED" 999 "INAPP" ;
label define B1SA54C   998 "REFUSED" 999 "INAPP" ;
label define B1SA54D   998 "REFUSED" 999 "INAPP" ;
label define B1SUSEMH  998 "NOT CALCULATED (Due to missing data)" ;
label define B1SA55A   1 "YES" 2 "NO" 8 "REFUSED" ;
label define B1SA55AY  998 "REFUSED" 999 "INAPP" ;
label define B1SA55AZ  998 "REFUSED" 999 "INAPP" ;
label define B1SA55B   1 "YES" 2 "NO" 8 "REFUSED" ;
label define B1SA55BY  998 "REFUSED" 999 "INAPP" ;
label define B1SA55BZ  998 "REFUSED" 999 "INAPP" ;
label define B1SA55C   1 "YES" 2 "NO" 8 "REFUSED" ;
label define B1SA55CY  998 "REFUSED" 999 "INAPP" ;
label define B1SA55CZ  998 "REFUSED" 999 "INAPP" ;
label define B1SA55D   1 "YES" 2 "NO" 8 "REFUSED" ;
label define B1SA55DY  998 "REFUSED" 999 "INAPP" ;
label define B1SA55DZ  998 "REFUSED" 999 "INAPP" ;
label define B1SA55E   1 "YES" 2 "NO" 8 "REFUSED" ;
label define B1SA55EY  998 "REFUSED" 999 "INAPP" ;
label define B1SA55EZ  998 "REFUSED" 999 "INAPP" ;
label define B1SA55F   1 "YES" 2 "NO" 8 "REFUSED" ;
label define B1SA55FY  998 "REFUSED" 999 "INAPP" ;
label define B1SA55FZ  998 "REFUSED" 999 "INAPP" ;
label define B1SA55G   1 "YES" 2 "NO" 8 "REFUSED" ;
label define B1SA55GY  998 "REFUSED" 999 "INAPP" ;
label define B1SA55GZ  998 "REFUSED" 999 "INAPP" ;
label define B1SA55H   1 "YES" 2 "NO" 8 "REFUSED" ;
label define B1SA55HY  998 "REFUSED" 999 "INAPP" ;
label define B1SA55HZ  998 "REFUSED" 999 "INAPP" ;
label define B1SA55I   1 "YES" 2 "NO" 8 "REFUSED" ;
label define B1SA55IY  998 "REFUSED" 999 "INAPP" ;
label define B1SA55IZ  998 "REFUSED" 999 "INAPP" ;
label define B1SA55J   1 "YES" 2 "NO" 8 "REFUSED" ;
label define B1SA55JY  998 "REFUSED" 999 "INAPP" ;
label define B1SA55JZ  998 "REFUSED" 999 "INAPP" ;
label define B1SA55K   1 "YES" 2 "NO" 8 "REFUSED" ;
label define B1SA55KY  998 "REFUSED" 999 "INAPP" ;
label define B1SA55KZ  998 "REFUSED" 999 "INAPP" ;
label define B1SA56A   1 "A LOT" 2 "OFTEN" 3 "SOME" 4 "A LITTLE" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA56B   1 "A LOT" 2 "OFTEN" 3 "SOME" 4 "A LITTLE" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA56C   1 "A LOT" 2 "OFTEN" 3 "SOME" 4 "A LITTLE" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA56D   1 "A LOT" 2 "OFTEN" 3 "SOME" 4 "A LITTLE" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA56E   1 "A LOT" 2 "OFTEN" 3 "SOME" 4 "A LITTLE" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA56F   1 "A LOT" 2 "OFTEN" 3 "SOME" 4 "A LITTLE" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA56G   1 "A LOT" 2 "OFTEN" 3 "SOME" 4 "A LITTLE" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA56H   1 "A LOT" 2 "OFTEN" 3 "SOME" 4 "A LITTLE" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA56I   1 "A LOT" 2 "OFTEN" 3 "SOME" 4 "A LITTLE" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA56J   1 "A LOT" 2 "OFTEN" 3 "SOME" 4 "A LITTLE" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA56K   1 "A LOT" 2 "OFTEN" 3 "SOME" 4 "A LITTLE" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA56L   1 "A LOT" 2 "OFTEN" 3 "SOME" 4 "A LITTLE" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA56M   1 "A LOT" 2 "OFTEN" 3 "SOME" 4 "A LITTLE" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA56N   1 "A LOT" 2 "OFTEN" 3 "SOME" 4 "A LITTLE" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA56O   1 "A LOT" 2 "OFTEN" 3 "SOME" 4 "A LITTLE" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA56P   1 "A LOT" 2 "OFTEN" 3 "SOME" 4 "A LITTLE" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA56Q   1 "A LOT" 2 "OFTEN" 3 "SOME" 4 "A LITTLE" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA56R   1 "A LOT" 2 "OFTEN" 3 "SOME" 4 "A LITTLE" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA56S   1 "A LOT" 2 "OFTEN" 3 "SOME" 4 "A LITTLE" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SA57A   98 "REFUSED" 99 "INAPP" ;
label define B1SA57B   98 "REFUSED" 99 "INAPP" ;
label define B1SA58A   98 "REFUSED" 99 "INAPP" ;
label define B1SA58B   98 "REFUSED" 99 "INAPP" ;
label define B1SA59A   98 "REFUSED" 99 "INAPP" ;
label define B1SA59B   98 "REFUSED" 99 "INAPP" ;
label define B1SA60    998 "REFUSED" 999 "INAPP" ;
label define B1SA61A   1 "NEVER" 2 "RARELY" 3 "SOMETIMES" 4 "OFTEN"
                       5 "ALMOST ALWAYS" 8 "REFUSED" 9 "INAPP" ;
label define B1SA61B   1 "NEVER" 2 "RARELY" 3 "SOMETIMES" 4 "OFTEN"
                       5 "ALMOST ALWAYS" 8 "REFUSED" 9 "INAPP" ;
label define B1SA61C   1 "NEVER" 2 "RARELY" 3 "SOMETIMES" 4 "OFTEN"
                       5 "ALMOST ALWAYS" 8 "REFUSED" 9 "INAPP" ;
label define B1SA61D   1 "NEVER" 2 "RARELY" 3 "SOMETIMES" 4 "OFTEN"
                       5 "ALMOST ALWAYS" 8 "REFUSED" 9 "INAPP" ;
label define B1SA62A   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA62B   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA62C   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA62D   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA62E   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA62F   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA62G   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA62H   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA62I   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA62J   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA63    1 "NEVER" 2 "ONCE OR TWICE" 3 "3 TO 5 TIMES"
                       4 "6 TO 10 TIMES" 5 "11 TO 20 TIMES"
                       6 "MORE THAN 20 TIMES" 8 "REFUSED" 9 "INAPP" ;
label define B1SA64    1 "NEVER" 2 "ONCE OR TWICE" 3 "3 TO 5 TIMES"
                       4 "6 TO 10 TIMES" 5 "11 TO 20 TIMES"
                       6 "MORE THAN 20 TIMES" 8 "REFUSED" 9 "INAPP" ;
label define B1SA65A   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA65B   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA65C   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA65D   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA65E   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA66A   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA66B   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA66C   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SA66D   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SALCOH  0 "NO ALCOHOL PROBLEM" 1 "ALCOHOL PROBLEM"
                       8 "NOT CALCULATED (DUE TO MISSING DATA)" ;
label define B1SA67    1 "NEVER" 2 "ONCE OR TWICE" 3 "3 TO 5 TIMES"
                       4 "6 TO 10 TIMES" 5 "11 TO 20 TIMES"
                       6 "MORE THAN 20 TIMES" 8 "REFUSED" 9 "INAPP" ;
label define B1SA68    1 "NEVER" 2 "ONCE OR TWICE" 3 "3 TO 5 TIMES"
                       4 "6 TO 10 TIMES" 5 "11 TO 20 TIMES"
                       6 "MORE THAN 20 TIMES" 8 "REFUSED" 9 "INAPP" ;
label define B1SB1     1 "YES ALL OF THE YEAR" 2 "YES PART OF THE YEAR"
                       3 "NO NONE OF THE YEAR" 8 "REFUSED" 9 "INAPP" ;
label define B1SB2A    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB2B    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB2C    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB2D    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB2E    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB3     9998 "REFUSED" 9999 "INAPP" ;
label define B1SB4     1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB5A    1 "JAN" 2 "FEB" 3 "MAR" 4 "APR" 5 "MAY" 6 "JUN"
                       7 "JUL" 8 "AUG" 9 "SEP" 10 "OCT" 11 "NOV" 12 "DEC"
                       98 "REFUSED" 99 "INAPP" ;
label define B1SB5B    98 "REFUSED" 99 "INAPP" ;
label define B1SB5C    9998 "REFUSED" 9999 "INAPP" ;
label define B1SB6     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SB7     1 "LIGHTER" 2 "HEAVIER" 3 "ABOUT THE SAME" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SB8A1   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB8A2   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB8A3   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB8A4   998 "REFUSED" 999 "INAPP" ;
label define B1SB8B1   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB8B2   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB8B3   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB8B4   998 "REFUSED" 999 "INAPP" ;
label define B1SB8C1   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB8C2   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB8C3   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB8C4   998 "REFUSED" 999 "INAPP" ;
label define B1SB9     1 "SPECIFY NAME" 8 "REFUSED" 9 "INAPP" ;
label define B1SB10    1 "MALE" 2 "FEMALE" 8 "REFUSED" 9 "INAPP" ;
label define B1SB11A   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB11B   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB11C   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB11D   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB11E   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB11F   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB11G   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB11H   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB11I   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB12A   1 "JAN" 2 "FEB" 3 "MAR" 4 "APR" 5 "MAY" 6 "JUN"
                       7 "JUL" 8 "AUG" 9 "SEP" 10 "OCT" 11 "NOV" 12 "DEC"
                       98 "REFUSED" 99 "INAPP" ;
label define B1SB12B   9998 "REFUSED" 9999 "INAPP" ;
label define B1SB13A   1 "JAN" 2 "FEB" 3 "MAR" 4 "APR" 5 "MAY" 6 "JUN"
                       7 "JUL" 8 "AUG" 9 "SEP" 10 "OCT" 11 "NOV" 12 "DEC"
                       98 "REFUSED" 99 "INAPP" ;
label define B1SB13B   9998 "REFUSED" 9999 "INAPP" ;
label define B1SB14A   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB14B   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB14C   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB14D   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB15    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB16    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB17A   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB17B   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB17C   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB17D   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB17E   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB17F   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB17G   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SB18    1 "GREAT RELIEF" 2 "SOME RELIEF"
                       3 "MIXED FEELINGS BOTH RELIEF AND REGRET"
                       4 "SOME REGRET" 5 "GREAT REGRET"
                       6 "NO PARTICULAR FEELING ONE WAY OR THE OTHER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SB19A   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SB19B   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SB19C   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SC1     1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SC2A    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPPP" ;
label define B1SC2B    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPPP" ;
label define B1SC2C    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPPP" ;
label define B1SC2D    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPPP" ;
label define B1SC2E    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPPP" ;
label define B1SC2F    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPPP" ;
label define B1SC2G    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPPP" ;
label define B1SC2H    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPPP" ;
label define B1SC2I    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPPP" ;
label define B1SC2J    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPPP" ;
label define B1SC2K    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPPP" ;
label define B1SC2L    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPPP" ;
label define B1SC3A    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SC3B    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SC3C    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SC3D    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SC3E    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SC3F    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SC3G    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SC3H    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SC4     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SC5     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SC6     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SC7A    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SC7B    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SC7C    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SC7D    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SC8A    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SC8B    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SC8C    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SC9A    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SC9B    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SC9C    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SC9D    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SC9E    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SC9F    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SC9G    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SC9H    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SC10    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SC11    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SC12    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SD1     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define B1SD1A    998 "REFUSED" 999 "INAPP" ;
label define B1SD1B    1 "EXCELLENT" 2 "VERY GOOD" 3 "GOOD" 4 "FAIR" 5 "POOR"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SD1C    9998 "REFUSED" 9999 "INAPP" ;
label define B1SD1D    998 "REFUSED" 999 "INAPP" ;
label define B1SD2     1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" ;
label define B1SD2A    998 "REFUSED" 999 "INAPP" ;
label define B1SD2B    1 "EXCELLENT" 2 "VERY GOOD" 3 "GOOD" 4 "FAIR" 5 "POOR"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SD2C    9998 "REFUSED" 9999 "INAPP" ;
label define B1SD2D    998 "REFUSED" 999 "INAPP" ;
label define B1SE1A    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1B    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1C    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1D    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1E    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1F    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1G    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1H    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1I    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1J    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1K    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1L    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1M    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1N    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1O    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1P    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1Q    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1R    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1S    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1T    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1U    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1V    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1W    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1X    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1Y    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1Z    1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1AA   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1BB   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1CC   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1DD   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1EE   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1FF   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1GG   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1HH   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1II   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1JJ   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1KK   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1LL   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1MM   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1NN   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1OO   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1PP   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE1QQ   1 "AGREE STRONGLY" 2 "AGREE SOMEWHAT"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SPWBA1  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SPWBE1  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SPWBG1  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SPWBR1  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SPWBU1  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SPWBS1  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SPWBA2  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SPWBE2  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SPWBG2  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SPWBR2  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SPWBU2  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SPWBS2  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SE2A    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SE2B    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SE2C    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SE2D    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SE2E    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SE2F    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SE2G    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SE2H    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SE2I    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SE2J    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SE2K    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SE2L    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SE2M    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SE2N    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SE2O    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SE2P    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SE2Q    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SE3     1 "TOP RUNG" 10 "BOTTOM RUNG" 98 "REFUSED" 99 "INAPP" ;
label define B1SE4A    1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE4B    1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE4C    1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE4D    1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE4E    1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE4F    1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE4G    1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE4H    1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE4I    1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE4J    1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE4K    1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE4L    1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SMASTE  8 "NOT CALCULATED (Due to missing data)" ;
label define B1SCONST  8 "NOT CALCULATED (Due to missing data)" ;
label define B1SCTRL   8 "NOT CALCULATED (Due to missing data)" ;
label define B1SE4M    1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE4N    1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE4O    1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE4P    1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE4Q    1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE4R    1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE4S    1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SESTEE  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SE4T    1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE4U    1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE4V    1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE4W    1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE4X    1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE4Y    1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SINTER  8 "NOT CALCULATED (Due to missing data)" ;
label define B1SINDEP  8 "NOT CALCULATED (Due to missing data)" ;
label define B1SE5A    1 "A LOT MORE LIKE A" 2 "SOME MORE LIKE A"
                       3 "A LITTLE MORE LIKE A" 4 "A LITTLE MORE LIKE B"
                       5 "SOME MORE LIKE B" 6 "A LOT MORE LIKE B" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SE5B    1 "A LOT MORE LIKE A" 2 "SOME MORE LIKE A"
                       3 "A LITTLE MORE LIKE A" 4 "A LITTLE MORE LIKE B"
                       5 "SOME MORE LIKE B" 6 "A LOT MORE LIKE B" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SE5C    1 "A LOT MORE LIKE A" 2 "SOME MORE LIKE A"
                       3 "A LITTLE MORE LIKE A" 4 "A LITTLE MORE LIKE B"
                       5 "SOME MORE LIKE B" 6 "A LOT MORE LIKE B" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SE5D    1 "A LOT MORE LIKE A" 2 "SOME MORE LIKE A"
                       3 "A LITTLE MORE LIKE A" 4 "A LITTLE MORE LIKE B"
                       5 "SOME MORE LIKE B" 6 "A LOT MORE LIKE B" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SE5E    1 "A LOT MORE LIKE A" 2 "SOME MORE LIKE A"
                       3 "A LITTLE MORE LIKE A" 4 "A LITTLE MORE LIKE B"
                       5 "SOME MORE LIKE B" 6 "A LOT MORE LIKE B" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SE6A    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE6B    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE6C    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE6D    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE6E    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE6F    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE6G    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE6H    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE6I    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE6J    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE6K    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE6L    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE6M    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE6N    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE6O    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE6P    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE6Q    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE6R    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE6S    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE6T    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE6U    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE6V    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE6W    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE6X    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE6Y    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE6Z    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE6AA   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE6BB   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE6CC   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE6DD   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE6EE   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SAGENC  8 "NOT CALCULATED (Due to missing data)" ;
label define B1SAGREE  8 "NOT CALCULATED (Due to missing data)" ;
label define B1SEXTRA  8 "NOT CALCULATED (Due to missing data)" ;
label define B1SNEURO  8 "NOT CALCULATED (Due to missing data)" ;
label define B1SCONS1  8 "NOT CALCULATED (Due to missing data)" ;
label define B1SCONS2  8 "NOT CALCULATED (Due to missing data)" ;
label define B1SOPEN   8 "NOT CALCULATED (Due to missing data)" ;
label define B1SE7A    1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE7B    1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE7C    1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE7D    1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE7E    1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE7F    1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE7G    1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE7H    1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE7I    1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE7J    1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE7K    1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE7L    1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE7M    1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE7N    1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE7O    1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE7P    1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE7Q    1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE7R    1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE7S    1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE7T    1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE7U    1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE7V    1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE7W    1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE7X    1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE7Y    1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE7Z    1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE7AA   1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE7BB   1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE7CC   1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE7DD   1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE7EE   1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE7FF   1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE7GG   1 "TRUE OF YOU" 2 "SOMEWHAT TRUE" 3 "SOMEWHAT FALSE"
                       4 "FALSE" 8 "REFUSED" 9 "INAPP" ;
label define B1SE8     1 "SITUATION 1 RIDING RAPIDS"
                       2 "SITUATION 2 WAITING FOR SOMEONE WHO IS LATE"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE8A    1 "I WOULD DEFINITELY DISLIKE IT"
                       2 "I WOULD DISLIKE IT SOMEWHAT" 8 "REFUSED" 9 "INAPP" ;
label define B1SE9     1 "SITUATION 1 LIONS LOOSE AT CIRCUS"
                       2 "SITUATION 2 CLERK SOLD WRONG TICKETS" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SE9A    1 "I WOULD DEFINITELY DISLIKE IT"
                       2 "I WOULD DISLIKE IT SOMEWHAT" 8 "REFUSED" 9 "INAPP" ;
label define B1SMPQWB  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SMPQSP  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SMPQAC  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SMPQSC  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SMPQSR  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SMPQAG  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SMPQAL  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SMPQCN  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SMPQTR  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SMPQHA  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SE10A   1 "AGREE A LOT" 2 "AGREE A LITTLE"
                       3 "NEITHER AGREE OR DISAGREE" 4 "DISAGREE A LITTLE"
                       5 "DISAGREE A LOT" 8 "REFUSED" 9 "INAPP" ;
label define B1SE10B   1 "AGREE A LOT" 2 "AGREE A LITTLE"
                       3 "NEITHER AGREE OR DISAGREE" 4 "DISAGREE A LITTLE"
                       5 "DISAGREE A LOT" 8 "REFUSED" 9 "INAPP" ;
label define B1SE10C   1 "AGREE A LOT" 2 "AGREE A LITTLE"
                       3 "NEITHER AGREE OR DISAGREE" 4 "DISAGREE A LITTLE"
                       5 "DISAGREE A LOT" 8 "REFUSED" 9 "INAPP" ;
label define B1SE10D   1 "AGREE A LOT" 2 "AGREE A LITTLE"
                       3 "NEITHER AGREE OR DISAGREE" 4 "DISAGREE A LITTLE"
                       5 "DISAGREE A LOT" 8 "REFUSED" 9 "INAPP" ;
label define B1SE10E   1 "AGREE A LOT" 2 "AGREE A LITTLE"
                       3 "NEITHER AGREE OR DISAGREE" 4 "DISAGREE A LITTLE"
                       5 "DISAGREE A LOT" 8 "REFUSED" 9 "INAPP" ;
label define B1SE10F   1 "AGREE A LOT" 2 "AGREE A LITTLE"
                       3 "NEITHER AGREE OR DISAGREE" 4 "DISAGREE A LITTLE"
                       5 "DISAGREE A LOT" 8 "REFUSED" 9 "INAPP" ;
label define B1SOPTIM  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SPESSI  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SORIEN  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SE11A   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11B   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11C   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11D   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11E   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11F   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11G   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11H   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11I   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11J   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11K   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11L   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11M   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11N   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11O   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11P   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11Q   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11R   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11S   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11T   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11U   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11V   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11W   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11X   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11Y   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11Z   1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11AA  1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11A1  998 "REFUSED" 999 "INAPP" ;
label define B1SE11A3  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11A4  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11B1  998 "REFUSED" 999 "INAPP" ;
label define B1SE11B3  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11B4  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11C1  998 "REFUSED" 999 "INAPP" ;
label define B1SE11C3  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11C4  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11D1  998 "REFUSED" 999 "INAPP" ;
label define B1SE11D3  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11D4  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11E1  998 "REFUSED" 999 "INAPP" ;
label define B1SE11E3  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11E4  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11F1  998 "REFUSED" 999 "INAPP" ;
label define B1SE11F3  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11F4  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11G1  998 "REFUSED" 999 "INAPP" ;
label define B1SE11G3  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11G4  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11H1  998 "REFUSED" 999 "INAPP" ;
label define B1SE11H3  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11H4  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11I1  998 "REFUSED" 999 "INAPP" ;
label define B1SE11I3  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11I4  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11J1  998 "REFUSED" 999 "INAPP" ;
label define B1SE11J3  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11J4  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11K1  998 "REFUSED" 999 "INAPP" ;
label define B1SE11K3  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11K4  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11L1  998 "REFUSED" 999 "INAPP" ;
label define B1SE11L3  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11L4  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11M1  998 "REFUSED" 999 "INAPP" ;
label define B1SE11M3  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11M4  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11N1  998 "REFUSED" 999 "INAPP" ;
label define B1SE11N3  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11N4  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11O1  998 "REFUSED" 999 "INAPP" ;
label define B1SE11O3  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11O4  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11P1  998 "REFUSED" 999 "INAPP" ;
label define B1SE11P3  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11P4  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11Q1  998 "REFUSED" 999 "INAPP" ;
label define B1SE11Q3  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11Q4  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11R1  998 "REFUSED" 999 "INAPP" ;
label define B1SE11R3  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11R4  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11S1  998 "REFUSED" 999 "INAPP" ;
label define B1SE11S3  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11S4  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11T1  998 "REFUSED" 999 "INAPP" ;
label define B1SE11T3  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11T4  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11U1  998 "REFUSED" 999 "INAPP" ;
label define B1SE11U3  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11U4  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11V1  998 "REFUSED" 999 "INAPP" ;
label define B1SE11V3  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11V4  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11W1  998 "REFUSED" 999 "INAPP" ;
label define B1SE11W3  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11W4  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11X1  998 "REFUSED" 999 "INAPP" ;
label define B1SE11X3  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11X4  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11Y1  998 "REFUSED" 999 "INAPP" ;
label define B1SE11Y3  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11Y4  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11Z1  998 "REFUSED" 999 "INAPP" ;
label define B1SE11Z3  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11Z4  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11AW  998 "REFUSED" 999 "INAPP" ;
label define B1SE11AY  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE11AZ  -2 "VERY NEGATIVELY" 0 "NOT AT ALL"
                       2 "VERY POSITIVELY" 8 "REFUSED" 9 "INAPP" ;
label define B1SE12A   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12B   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12C   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12D   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12E   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12F   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12G   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12H   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12I   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12J   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12K   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12L   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12M   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12N   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12O   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12P   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12Q   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12R   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12S   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12T   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12U   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12V   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12W   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12X   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12Y   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12Z   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12AA  1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12BB  1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12CC  1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12DD  1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12EE  1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12FF  1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12GG  1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12HH  1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12II  1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12JJ  1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12KK  1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12LL  1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SE12MM  1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SPERSI  8 "NOT CALCULATED (Due to missing data)" ;
label define B1SREAPP  8 "NOT CALCULATED (Due to missing data)" ;
label define B1SCHANG  8 "NOT CALCULATED (Due to missing data)" ;
label define B1SSPCTR  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SCPCTR  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SSSCTR  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SCSCDE  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SCSCSP  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SCSCAG  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SDIREC  8 "NOT CALCULATED (Due to missing data)" ;
label define B1STODAY  8 "NOT CALCULATED (Due to missing data)" ;
label define B1SINSGH  8 "NOT CALCULATED (Due to missing data)" ;
label define B1SFORSG  8 "Refusal" ;
label define B1SSUFFI  8 "NOT CALCULATED (Due to missing data)" ;
label define B1SE13A   1 "A LOT" 2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE"
                       4 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SE13B   1 "A LOT" 2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE"
                       4 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SE13C   1 "A LOT" 2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE"
                       4 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SE13D   1 "A LOT" 2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE"
                       4 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SE13E   1 "A LOT" 2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE"
                       4 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SE13F   1 "A LOT" 2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE"
                       4 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SE13G   1 "A LOT" 2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE"
                       4 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SE13H   1 "A LOT" 2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE"
                       4 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SE13I   1 "A LOT" 2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE"
                       4 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SE13J   1 "A LOT" 2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE"
                       4 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SE13K   1 "A LOT" 2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE"
                       4 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SE13L   1 "A LOT" 2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE"
                       4 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SE13M   1 "A LOT" 2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE"
                       4 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SE13N   1 "A LOT" 2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE"
                       4 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SE13O   1 "A LOT" 2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE"
                       4 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SE13P   1 "A LOT" 2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE"
                       4 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SE13Q   1 "A LOT" 2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE"
                       4 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SE13R   1 "A LOT" 2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE"
                       4 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SE13S   1 "A LOT" 2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE"
                       4 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SE13T   1 "A LOT" 2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE"
                       4 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SE13U   1 "A LOT" 2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE"
                       4 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SE13V   1 "A LOT" 2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE"
                       4 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SE13W   1 "A LOT" 2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE"
                       4 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SE13X   1 "A LOT" 2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE"
                       4 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SE13Y   1 "A LOT" 2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE"
                       4 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SE13Z   1 "A LOT" 2 "A MEDIUM AMOUNT" 3 "ONLY A LITTLE"
                       4 "NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SREINT  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SACTIV  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SPLAN   98 "NOT CALCULATED (Due to missing data)" ;
label define B1SVENT   98 "NOT CALCULATED (Due to missing data)" ;
label define B1SDENIA  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SDISEN  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SFDCOP  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SPRCOP  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SEMCOP  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SE14    998 "REFUSED" 999 "INAPP" ;
label define B1SE15    998 "REFUSED" 999 "INAPP" ;
label define B1SE16    998 "REFUSED" 999 "INAPP" ;
label define B1SE17    998 "REFUSED" 999 "INAPP" ;
label define B1SE18    998 "REFUSED" 999 "INAPP" ;
label define B1SE19    998 "REFUSED" 999 "INAPP" ;
label define B1SF1     0 "WORST" 10 "BEST" 98 "REFUSED" 99 "INAPP" ;
label define B1SF2     0 "WORST" 10 "BEST" 98 "REFUSED" 99 "INAPP" ;
label define B1SF3     0 "WORST" 10 "BEST" 98 "REFUSED" 99 "INAPP" ;
label define B1SF4     0 "NONE" 10 "VERY MUCH" 98 "REFUSED" 99 "INAPP" ;
label define B1SF5     0 "NONE" 10 "VERY MUCH" 98 "REFUSED" 99 "INAPP" ;
label define B1SF6     998 "REFUSED" 999 "INAPP" ;
label define B1SF7     998 "REFUSED" 999 "INAPP" ;
label define B1SF8     998 "REFUSED" 999 "INAPP" ;
label define B1SF9A    998 "REFUSED" 999 "INAPP" ;
label define B1SF9B    1 "WEEKS" 2 "MONTHS" 3 "YEARS" 8 "REFUSED" 9 "INAPP" ;
label define B1SF10    1 "COULD NOT FIND JOB" 2 "PHYSICAL INJURY ILLNESS"
                       3 "MENTAL EMOTIONAL PROB" 4 "ALCOHOL SUBSTANCE ABUSE"
                       5 "FAMILY RESPONSIBILITIES" 6 "STUDENT"
                       7 "PERSONAL INTERESTS" 8 "REFUSED" 9 "INAPP" ;
label define B1SF11A   1 "FULL TIME" 2 "PART TIME" 3 "NO WORK" 4 "STUDENT"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF11AS  1 "FULL TIME" 2 "PART TIME" 3 "NO WORK" 4 "STUDENT"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF11B   1 "FULL TIME" 2 "PART TIME" 3 "NO WORK" 4 "STUDENT"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF11BS  1 "FULL TIME" 2 "PART TIME" 3 "NO WORK" 4 "STUDENT"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF11C   1 "FULL TIME" 2 "PART TIME" 3 "NO WORK" 4 "STUDENT"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF11CS  1 "FULL TIME" 2 "PART TIME" 3 "NO WORK" 4 "STUDENT"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF11D   1 "FULL TIME" 2 "PART TIME" 3 "NO WORK" 4 "STUDENT"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF11DS  1 "FULL TIME" 2 "PART TIME" 3 "NO WORK" 4 "STUDENT"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF11E   1 "FULL TIME" 2 "PART TIME" 3 "NO WORK" 4 "STUDENT"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF11ES  1 "FULL TIME" 2 "PART TIME" 3 "NO WORK" 4 "STUDENT"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF11F   1 "FULL TIME" 2 "PART TIME" 3 "NO WORK" 4 "STUDENT"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF11FS  1 "FULL TIME" 2 "PART TIME" 3 "NO WORK" 4 "STUDENT"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF11G   1 "FULL TIME" 2 "PART TIME" 3 "NO WORK" 4 "STUDENT"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF11GS  1 "FULL TIME" 2 "PART TIME" 3 "NO WORK" 4 "STUDENT"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF11H   1 "FULL TIME" 2 "PART TIME" 3 "NO WORK" 4 "STUDENT"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF11HS  1 "FULL TIME" 2 "PART TIME" 3 "NO WORK" 4 "STUDENT"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF11I   1 "FULL TIME" 2 "PART TIME" 3 "NO WORK" 4 "STUDENT"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF11IS  1 "FULL TIME" 2 "PART TIME" 3 "NO WORK" 4 "STUDENT"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF11J   1 "FULL TIME" 2 "PART TIME" 3 "NO WORK" 4 "STUDENT"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF11JS  1 "FULL TIME" 2 "PART TIME" 3 "NO WORK" 4 "STUDENT"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF12A   98 "REFUSED" 99 "INAPP" ;
label define B1SF12B   98 "REFUSED" 99 "INAPP" ;
label define B1SF12C   98 "REFUSED" 99 "INAPP" ;
label define B1SF12D   98 "REFUSED" 99 "INAPP" ;
label define B1SF13    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SF14A   1 "4+ PER WEEK" 2 "2 TO 3 PER WEEK" 3 "ONCE PER WEEK"
                       4 "1 TO 3 PER MONTH" 5 "LESS THAN ONCE PER MONTH"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF14B   1 "4+ PER WEEK" 2 "2 TO 3 PER WEEK" 3 "ONCE PER WEEK"
                       4 "1 TO 3 PER MONTH" 5 "LESS THAN ONCE PER MONTH"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF14C   1 "4+ PER WEEK" 2 "2 TO 3 PER WEEK" 3 "ONCE PER WEEK"
                       4 "1 TO 3 PER MONTH" 5 "LESS THAN ONCE PER MONTH"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF14D   1 "4+ PER WEEK" 2 "2 TO 3 PER WEEK" 3 "ONCE PER WEEK"
                       4 "1 TO 3 PER MONTH" 5 "LESS THAN ONCE PER MONTH"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF15A   98 "REFUSED" 99 "INAPP" ;
label define B1SF15B   98 "REFUSED" 99 "INAPP" ;
label define B1SF15C   1 "AM" 2 "PM" 3 "MIDNIGHT" 4 "NOON" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF16A   98 "REFUSED" 99 "INAPP" ;
label define B1SF16B   98 "REFUSED" 99 "INAPP" ;
label define B1SF16C   1 "AM" 2 "PM" 3 "MIDNIGHT" 4 "NOON" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF17A   98 "REFUSED" 99 "INAPP" ;
label define B1SF17B   98 "REFUSED" 99 "INAPP" ;
label define B1SF18    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SF19    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SF20    1 "EXCELLENT" 2 "VERY GOOD" 3 "GOOD" 4 "FAIR" 5 "POOR"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF21    1 "VERY POSITIVE" 2 "SOMEWHAT POSITIVE" 3 "NEITHER"
                       4 "SOMEWHAT NEGATIVE" 5 "VERY NEGATIVE" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF22    1 "VERY POSITIVE" 2 "SOMEWHAT POSITIVE" 3 "NEITHER"
                       4 "SOMEWHAT NEGATIVE" 5 "VERY NEGATIVE" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF23A   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "LITTLE OF THE TIME" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF23B   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "LITTLE OF THE TIME" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF23C   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "LITTLE OF THE TIME" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF23D   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "LITTLE OF THE TIME" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF23E   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "LITTLE OF THE TIME" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF23F   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "LITTLE OF THE TIME" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF23G   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "LITTLE OF THE TIME" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF23H   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "LITTLE OF THE TIME" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF23I   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "LITTLE OF THE TIME" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF23J   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "LITTLE OF THE TIME" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF23K   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "LITTLE OF THE TIME" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF23L   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "LITTLE OF THE TIME" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF23M   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "LITTLE OF THE TIME" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF23N   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "LITTLE OF THE TIME" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF24    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF25    998 "REFUSED" 999 "INAPP" ;
label define B1SF26    1 "VERY SERIOUS" 2 "MODERATELY SERIOUS"
                       3 "SOMEWHAT SERIOUS" 4 "A LITTLE SERIOUS"
                       5 "NOT VERY SERIOUS AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SF27A   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF27B   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF27C   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF27D   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF27E   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF27F   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF27G   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF27H   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF27I   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF27J   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF27K   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF27L   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF27M   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF27N   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF27O   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF27P   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SPOSWF  98 "NOT CALCULATED (Due to missing data)"
                       99 "NOT CALCULATED (Does not apply)" ;
label define B1SNEGWF  98 "NOT CALCULATED (Due to missing data)"
                       99 "NOT CALCULATED (Does not apply)" ;
label define B1SPOSFW  98 "NOT CALCULATED (Due to missing data)"
                       99 "NOT CALCULATED (Does not apply)" ;
label define B1SNEGFW  98 "NOT CALCULATED (Due to missing data)"
                       99 "NOT CALCULATED (Does not apply)" ;
label define B1SF28A   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF28B   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF28C   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF28D   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF28E   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF28F   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF28G   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF28H   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF28I   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF28J   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF28K   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF29A   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF29B   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF29C   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF29D   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SJCSD   98 "NOT CALCULATED (Due to missing data)"
                       99 "NOT CALCULATED (Does not apply)" ;
label define B1SJCDA   98 "NOT CALCULATED (Due to missing data)"
                       99 "NOT CALCULATED (Does not apply)" ;
label define B1SJCDS   98 "NOT CALCULATED (Due to missing data)"
                       99 "NOT CALCULATED (Does not apply)" ;
label define B1SF30A   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER"
                       6 "DOES NOT APPLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SF30B   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER"
                       6 "DOES NOT APPLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SF30C   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER"
                       6 "DOES NOT APPLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SF30D   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER"
                       6 "DOES NOT APPLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SF30E   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER"
                       6 "DOES NOT APPLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SJCCS   98 "NOT CALCULATED (Due to missing data)"
                       99 "NOT CALCULATED (Due to Does not apply)" ;
label define B1SJCSS   98 "NOT CALCULATED (Due to missing data)"
                       99 "NOT CALCULATED (Due to Does not apply)" ;
label define B1SF31A   1 "ONCE A WEEK+" 2 "FEW TIMES A MONTH"
                       3 "FEW TIMES A YEAR" 4 "LESS ONCE A YEAR" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF31B   1 "ONCE A WEEK+" 2 "FEW TIMES A MONTH"
                       3 "FEW TIMES A YEAR" 4 "LESS ONCE A YEAR" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF31C   1 "ONCE A WEEK+" 2 "FEW TIMES A MONTH"
                       3 "FEW TIMES A YEAR" 4 "LESS ONCE A YEAR" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF31D   1 "ONCE A WEEK+" 2 "FEW TIMES A MONTH"
                       3 "FEW TIMES A YEAR" 4 "LESS ONCE A YEAR" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF31E   1 "ONCE A WEEK+" 2 "FEW TIMES A MONTH"
                       3 "FEW TIMES A YEAR" 4 "LESS ONCE A YEAR" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF31F   1 "ONCE A WEEK+" 2 "FEW TIMES A MONTH"
                       3 "FEW TIMES A YEAR" 4 "LESS ONCE A YEAR" 5 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SJOBDI  98 "NOT CALCULATED (Due to missing data)"
                       99 "NOT CALCULATED (Does not apply)" ;
label define B1SF32A   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF32B   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF32C   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF32D   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF32E   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF32F   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SPIWOR  8 "Not calculated (Due to missing data)"
                       9 "NOT CALCULATED (Does not apply)" ;
label define B1SF33A   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF33B   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF33C   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF33D   1 "ALL OF THE TIME" 2 "MOST OF THE TIME"
                       3 "SOME OF THE TIME" 4 "RARELY" 5 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SF34A   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF34B   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF34C   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SF35A   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       5 "DOES NOT APPLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SF35B   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       5 "DOES NOT APPLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SF35C   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       5 "DOES NOT APPLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SG1     0 "WORST" 10 "BEST" 98 "REFUSED" 99 "INAPP" ;
label define B1SG2     0 "WORST" 10 "BEST" 98 "REFUSED" 99 "INAPP" ;
label define B1SG3     0 "WORST" 10 "BEST" 98 "REFUSED" 99 "INAPP" ;
label define B1SG4     0 "NONE" 10 "VERY MUCH" 98 "REFUSED" 99 "INAPP" ;
label define B1SG5     0 "NONE" 10 "VERY MUCH" 98 "REFUSED" 99 "INAPP" ;
label define B1SG6     1 "MORE MONEY" 2 "JUST ENOUGH MONEY"
                       3 "NOT ENOUGH MONEY" 8 "REFUSED" 9 "INAPP" ;
label define B1SG7     1 "VERY DIFFICULT" 2 "SOMEWHAT DIFFICULT"
                       3 "NOT VERY DIFFICULT" 4 "NOT AT ALL DIFFICULT"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SG8A    1 "LESS THAN $0" 2 "$O (NONE)" 3 "$1 - $1,999"
                       4 "$2,000 - $3,999" 5 "$4,000 - $5,999"
                       6 "$6,000 - $7,999" 7 "$8,000 - $9,999"
                       8 "$10,000 - $11,999" 9 "$12,000 - $13,999"
                       10 "$14,000 - $15,999" 11 "$16,000 - $17,999"
                       12 "$18,000 - $19,999" 13 "$20,000 - $22,499"
                       14 "$22,500 - $24,499" 15 "$25,000 - $27,499"
                       16 "$27,500 - $29,999" 17 "$30,000 - $32,499"
                       18 "$32,500 - $34,999" 19 "$35,000 - $37,499"
                       20 "$37,500 - $39,999" 21 "$40,000 - $42,499"
                       22 "$42,500 - $44,999" 23 "$45,000 - $47,499"
                       24 "$47,500 - $49,999" 25 "$50,000 - $54,999"
                       26 "$55,000 - $59,999" 27 "$60,000 - $64,999"
                       28 "$65,000 - $69,999" 29 "$70,000 - $74,999"
                       30 "$75,000 - $79,999" 31 "$80,000 - $84,999"
                       32 "$85,000 - $89,999" 33 "$90,000 - $94,999"
                       34 "$95,000 - $99,999" 35 "$100,000 - $109,999"
                       36 "$110,000 - $119,999" 37 "$120,000 - $129,999"
                       38 "$130,000 - $139,999" 39 "$140,000 - $149,999"
                       40 "$150,000 - $174,999" 41 "$175,000 - $199,999"
                       42 "$200,000 OR MORE" 98 "REFUSED" 99 "INAPP" ;
label define B1SG8B    1 "LESS THAN $0" 2 "$O (NONE)" 3 "$1 - $1,999"
                       4 "$2,000 - $3,999" 5 "$4,000 - $5,999"
                       6 "$6,000 - $7,999" 7 "$8,000 - $9,999"
                       8 "$10,000 - $11,999" 9 "$12,000 - $13,999"
                       10 "$14,000 - $15,999" 11 "$16,000 - $17,999"
                       12 "$18,000 - $19,999" 13 "$20,000 - $22,499"
                       14 "$22,500 - $24,499" 15 "$25,000 - $27,499"
                       16 "$27,500 - $29,999" 17 "$30,000 - $32,499"
                       18 "$32,500 - $34,999" 19 "$35,000 - $37,499"
                       20 "$37,500 - $39,999" 21 "$40,000 - $42,499"
                       22 "$42,500 - $44,999" 23 "$45,000 - $47,499"
                       24 "$47,500 - $49,999" 25 "$50,000 - $54,999"
                       26 "$55,000 - $59,999" 27 "$60,000 - $64,999"
                       28 "$65,000 - $69,999" 29 "$70,000 - $74,999"
                       30 "$75,000 - $79,999" 31 "$80,000 - $84,999"
                       32 "$85,000 - $89,999" 33 "$90,000 - $94,999"
                       34 "$95,000 - $99,999" 35 "$100,000 - $109,999"
                       36 "$110,000 - $119,999" 37 "$120,000 - $129,999"
                       38 "$130,000 - $139,999" 39 "$140,000 - $149,999"
                       40 "$150,000 - $174,999" 41 "$175,000 - $199,999"
                       42 "$200,000 OR MORE" 98 "REFUSED" 99 "INAPP" ;
label define B1SG8C    1 "LESS THAN $0" 2 "$O (NONE)" 3 "$1 - $1,999"
                       4 "$2,000 - $3,999" 5 "$4,000 - $5,999"
                       6 "$6,000 - $7,999" 7 "$8,000 - $9,999"
                       8 "$10,000 - $11,999" 9 "$12,000 - $13,999"
                       10 "$14,000 - $15,999" 11 "$16,000 - $17,999"
                       12 "$18,000 - $19,999" 13 "$20,000 - $22,499"
                       14 "$22,500 - $24,499" 15 "$25,000 - $27,499"
                       16 "$27,500 - $29,999" 17 "$30,000 - $32,499"
                       18 "$32,500 - $34,999" 19 "$35,000 - $37,499"
                       20 "$37,500 - $39,999" 21 "$40,000 - $42,499"
                       22 "$42,500 - $44,999" 23 "$45,000 - $47,499"
                       24 "$47,500 - $49,999" 25 "$50,000 - $54,999"
                       26 "$55,000 - $59,999" 27 "$60,000 - $64,999"
                       28 "$65,000 - $69,999" 29 "$70,000 - $74,999"
                       30 "$75,000 - $79,999" 31 "$80,000 - $84,999"
                       32 "$85,000 - $89,999" 33 "$90,000 - $94,999"
                       34 "$95,000 - $99,999" 35 "$100,000 - $109,999"
                       36 "$110,000 - $119,999" 37 "$120,000 - $129,999"
                       38 "$130,000 - $139,999" 39 "$140,000 - $149,999"
                       40 "$150,000 - $174,999" 41 "$175,000 - $199,999"
                       42 "$200,000 OR MORE" 98 "REFUSED" 99 "INAPP" ;
label define B1SG9A    1 "LESS THAN $0" 2 "$O (NONE)" 3 "$1 - $1,999"
                       4 "$2,000 - $3,999" 5 "$4,000 - $5,999"
                       6 "$6,000 - $7,999" 7 "$8,000 - $9,999"
                       8 "$10,000 - $11,999" 9 "$12,000 - $13,999"
                       10 "$14,000 - $15,999" 11 "$16,000 - $17,999"
                       12 "$18,000 - $19,999" 13 "$20,000 - $22,499"
                       14 "$22,500 - $24,499" 15 "$25,000 - $27,499"
                       16 "$27,500 - $29,999" 17 "$30,000 - $32,499"
                       18 "$32,500 - $34,999" 19 "$35,000 - $37,499"
                       20 "$37,500 - $39,999" 21 "$40,000 - $42,499"
                       22 "$42,500 - $44,999" 23 "$45,000 - $47,499"
                       24 "$47,500 - $49,999" 25 "$50,000 - $54,999"
                       26 "$55,000 - $59,999" 27 "$60,000 - $64,999"
                       28 "$65,000 - $69,999" 29 "$70,000 - $74,999"
                       30 "$75,000 - $79,999" 31 "$80,000 - $84,999"
                       32 "$85,000 - $89,999" 33 "$90,000 - $94,999"
                       34 "$95,000 - $99,999" 35 "$100,000 - $109,999"
                       36 "$110,000 - $119,999" 37 "$120,000 - $129,999"
                       38 "$130,000 - $139,999" 39 "$140,000 - $149,999"
                       40 "$150,000 - $174,999" 41 "$175,000 - $199,999"
                       42 "$200,000 OR MORE" 98 "REFUSED" 99 "INAPP" ;
label define B1SG9B    1 "LESS THAN $0" 2 "$O (NONE)" 3 "$1 - $1,999"
                       4 "$2,000 - $3,999" 5 "$4,000 - $5,999"
                       6 "$6,000 - $7,999" 7 "$8,000 - $9,999"
                       8 "$10,000 - $11,999" 9 "$12,000 - $13,999"
                       10 "$14,000 - $15,999" 11 "$16,000 - $17,999"
                       12 "$18,000 - $19,999" 13 "$20,000 - $22,499"
                       14 "$22,500 - $24,499" 15 "$25,000 - $27,499"
                       16 "$27,500 - $29,999" 17 "$30,000 - $32,499"
                       18 "$32,500 - $34,999" 19 "$35,000 - $37,499"
                       20 "$37,500 - $39,999" 21 "$40,000 - $42,499"
                       22 "$42,500 - $44,999" 23 "$45,000 - $47,499"
                       24 "$47,500 - $49,999" 25 "$50,000 - $54,999"
                       26 "$55,000 - $59,999" 27 "$60,000 - $64,999"
                       28 "$65,000 - $69,999" 29 "$70,000 - $74,999"
                       30 "$75,000 - $79,999" 31 "$80,000 - $84,999"
                       32 "$85,000 - $89,999" 33 "$90,000 - $94,999"
                       34 "$95,000 - $99,999" 35 "$100,000 - $109,999"
                       36 "$110,000 - $119,999" 37 "$120,000 - $129,999"
                       38 "$130,000 - $139,999" 39 "$140,000 - $149,999"
                       40 "$150,000 - $174,999" 41 "$175,000 - $199,999"
                       42 "$200,000 OR MORE" 98 "REFUSED" 99 "INAPP" ;
label define B1SG9C    1 "LESS THAN $0" 2 "$O (NONE)" 3 "$1 - $1,999"
                       4 "$2,000 - $3,999" 5 "$4,000 - $5,999"
                       6 "$6,000 - $7,999" 7 "$8,000 - $9,999"
                       8 "$10,000 - $11,999" 9 "$12,000 - $13,999"
                       10 "$14,000 - $15,999" 11 "$16,000 - $17,999"
                       12 "$18,000 - $19,999" 13 "$20,000 - $22,499"
                       14 "$22,500 - $24,499" 15 "$25,000 - $27,499"
                       16 "$27,500 - $29,999" 17 "$30,000 - $32,499"
                       18 "$32,500 - $34,999" 19 "$35,000 - $37,499"
                       20 "$37,500 - $39,999" 21 "$40,000 - $42,499"
                       22 "$42,500 - $44,999" 23 "$45,000 - $47,499"
                       24 "$47,500 - $49,999" 25 "$50,000 - $54,999"
                       26 "$55,000 - $59,999" 27 "$60,000 - $64,999"
                       28 "$65,000 - $69,999" 29 "$70,000 - $74,999"
                       30 "$75,000 - $79,999" 31 "$80,000 - $84,999"
                       32 "$85,000 - $89,999" 33 "$90,000 - $94,999"
                       34 "$95,000 - $99,999" 35 "$100,000 - $109,999"
                       36 "$110,000 - $119,999" 37 "$120,000 - $129,999"
                       38 "$130,000 - $139,999" 39 "$140,000 - $149,999"
                       40 "$150,000 - $174,999" 41 "$175,000 - $199,999"
                       42 "$200,000 OR MORE" 98 "REFUSED" 99 "INAPP" ;
label define B1SG10A   1 "LESS THAN $0" 2 "$O (NONE)" 3 "$1 - $1,999"
                       4 "$2,000 - $3,999" 5 "$4,000 - $5,999"
                       6 "$6,000 - $7,999" 7 "$8,000 - $9,999"
                       8 "$10,000 - $11,999" 9 "$12,000 - $13,999"
                       10 "$14,000 - $15,999" 11 "$16,000 - $17,999"
                       12 "$18,000 - $19,999" 13 "$20,000 - $22,499"
                       14 "$22,500 - $24,499" 15 "$25,000 - $27,499"
                       16 "$27,500 - $29,999" 17 "$30,000 - $32,499"
                       18 "$32,500 - $34,999" 19 "$35,000 - $37,499"
                       20 "$37,500 - $39,999" 21 "$40,000 - $42,499"
                       22 "$42,500 - $44,999" 23 "$45,000 - $47,499"
                       24 "$47,500 - $49,999" 25 "$50,000 - $54,999"
                       26 "$55,000 - $59,999" 27 "$60,000 - $64,999"
                       28 "$65,000 - $69,999" 29 "$70,000 - $74,999"
                       30 "$75,000 - $79,999" 31 "$80,000 - $84,999"
                       32 "$85,000 - $89,999" 33 "$90,000 - $94,999"
                       34 "$95,000 - $99,999" 35 "$100,000 - $109,999"
                       36 "$110,000 - $119,999" 37 "$120,000 - $129,999"
                       38 "$130,000 - $139,999" 39 "$140,000 - $149,999"
                       40 "$150,000 - $174,999" 41 "$175,000 - $199,999"
                       42 "$200,000 OR MORE" 98 "REFUSED" 99 "INAPP" ;
label define B1SG10B   1 "LESS THAN $0" 2 "$O (NONE)" 3 "$1 - $1,999"
                       4 "$2,000 - $3,999" 5 "$4,000 - $5,999"
                       6 "$6,000 - $7,999" 7 "$8,000 - $9,999"
                       8 "$10,000 - $11,999" 9 "$12,000 - $13,999"
                       10 "$14,000 - $15,999" 11 "$16,000 - $17,999"
                       12 "$18,000 - $19,999" 13 "$20,000 - $22,499"
                       14 "$22,500 - $24,499" 15 "$25,000 - $27,499"
                       16 "$27,500 - $29,999" 17 "$30,000 - $32,499"
                       18 "$32,500 - $34,999" 19 "$35,000 - $37,499"
                       20 "$37,500 - $39,999" 21 "$40,000 - $42,499"
                       22 "$42,500 - $44,999" 23 "$45,000 - $47,499"
                       24 "$47,500 - $49,999" 25 "$50,000 - $54,999"
                       26 "$55,000 - $59,999" 27 "$60,000 - $64,999"
                       28 "$65,000 - $69,999" 29 "$70,000 - $74,999"
                       30 "$75,000 - $79,999" 31 "$80,000 - $84,999"
                       32 "$85,000 - $89,999" 33 "$90,000 - $94,999"
                       34 "$95,000 - $99,999" 35 "$100,000 - $109,999"
                       36 "$110,000 - $119,999" 37 "$120,000 - $129,999"
                       38 "$130,000 - $139,999" 39 "$140,000 - $149,999"
                       40 "$150,000 - $174,999" 41 "$175,000 - $199,999"
                       42 "$200,000 OR MORE" 98 "REFUSED" 99 "INAPP" ;
label define B1SG10C   1 "LESS THAN $0" 2 "$O (NONE)" 3 "$1 - $1,999"
                       4 "$2,000 - $3,999" 5 "$4,000 - $5,999"
                       6 "$6,000 - $7,999" 7 "$8,000 - $9,999"
                       8 "$10,000 - $11,999" 9 "$12,000 - $13,999"
                       10 "$14,000 - $15,999" 11 "$16,000 - $17,999"
                       12 "$18,000 - $19,999" 13 "$20,000 - $22,499"
                       14 "$22,500 - $24,499" 15 "$25,000 - $27,499"
                       16 "$27,500 - $29,999" 17 "$30,000 - $32,499"
                       18 "$32,500 - $34,999" 19 "$35,000 - $37,499"
                       20 "$37,500 - $39,999" 21 "$40,000 - $42,499"
                       22 "$42,500 - $44,999" 23 "$45,000 - $47,499"
                       24 "$47,500 - $49,999" 25 "$50,000 - $54,999"
                       26 "$55,000 - $59,999" 27 "$60,000 - $64,999"
                       28 "$65,000 - $69,999" 29 "$70,000 - $74,999"
                       30 "$75,000 - $79,999" 31 "$80,000 - $84,999"
                       32 "$85,000 - $89,999" 33 "$90,000 - $94,999"
                       34 "$95,000 - $99,999" 35 "$100,000 - $109,999"
                       36 "$110,000 - $119,999" 37 "$120,000 - $129,999"
                       38 "$130,000 - $139,999" 39 "$140,000 - $149,999"
                       40 "$150,000 - $174,999" 41 "$175,000 - $199,999"
                       42 "$200,000 OR MORE" 98 "REFUSED" 99 "INAPP" ;
label define B1SG11A   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SG11B   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SG11C   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SG11D   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SG11E   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SG11F   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SG11G   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SG11H   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SG11I   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SG11J   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SG12    99999998 "REFUSED" 99999999 "INAPP" ;
label define B1SRINC1  9999998 "NOT CALCULATED (Due to missing data)" ;
label define B1SSINC1  9999998 "NOT CALCULATED (Due to missing data)" ;
label define B1SHINC1  9999998 "NOT CALCULATED (Due to missing data)" ;
label define B1SEARN1  9999998 "NOT CALCULATED (Due to missing data)" ;
label define B1SPNSN1  9999998 "NOT CALCULATED (Due to missing data)" ;
label define B1SSEC1   9999998 "NOT CALCULATED (Due to missing data)" ;
label define B1STINC1  9999998 "NOT CALCULATED (Due to missing data)" ;
label define B1SG13    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SG13A   99999998 "REFUSED" 99999999 "INAPP" ;
label define B1SG14    1 "YES" 2 "NO" 7 "DONT KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SG14A   99999998 "REFUSED" 99999999 "INAPP" ;
label define B1SG15    1 "YES" 2 "NO" 7 "DON'T KNOW" 8 "REFUSED" 9 "INAPP" ;
label define B1SG15A   99999998 "REFUSED" 99999999 "INAPP" ;
label define B1SG16    1 "YES" 2 "NO" 4 "DOES NOT APPLY" 7 "DON'T KNOW"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SG16A   99999998 "REFUSED" 99999999 "INAPP" ;
label define B1SG17    1 "OWN MY OWN HOME" 2 "RENTING" 8 "REFUSED" 9 "INAPP" ;
label define B1SG17A   99999998 "REFUSED" 99999999 "INAPP" ;
label define B1SG17B   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SG18    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SG18A   99999998 "REFUSED" 99999999 "INAPP" ;
label define B1SG18B   99999998 "REFUSED" 99999999 "INAPP" ;
label define B1SG19    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SG19A   99999998 "REFUSED" 99999999 "INAPP" ;
label define B1SG20    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SG20A   99999998 "REFUSED" 99999999 "INAPP" ;
label define B1SG21    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SG21A   9998 "REFUSED" 9999 "INAPP" ;
label define B1SG21B   99999998 "REFUSED" 99999999 "INAPP" ;
label define B1SG22    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SG22A   99999998 "REFUSED" 99999999 "INAPP" ;
label define B1SG23    1 "WOULD HAVE MONEY LEFT OVER"
                       2 "WOULD STILL OWE MONEY" 3 "DEBTS EQUAL ASSETS"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SG24A   99999998 "REFUSED" 99999999 "INAPP" ;
label define B1SG24B   1 "MONEY LEFT OVER" 2 "MONEY OWED" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SG25A   99999998 "REFUSED" 99999999 "INAPP" ;
label define B1SG25B   99999998 "REFUSED" 99999999 "INAPP" ;
label define B1SG25C   99999998 "REFUSED" 99999999 "INAPP" ;
label define B1SG25D   99999998 "REFUSED" 99999999 "INAPP" ;
label define B1SG25E   99999998 "REFUSED" 99999999 "INAPP" ;
label define B1SG25F   99999998 "REFUSED" 99999999 "INAPP" ;
label define B1SG25G   99999998 "REFUSED" 99999999 "INAPP" ;
label define B1SG25H   99999998 "REFUSED" 99999999 "INAPP" ;
label define B1SG25I   99999998 "REFUSED" 99999999 "INAPP" ;
label define B1SH1     0 "WORST" 10 "BEST" 98 "REFUSED" 99 "INAPP" ;
label define B1SH2     0 "WORST" 10 "BEST" 98 "REFUSED" 99 "INAPP" ;
label define B1SH3     0 "WORST" 10 "BEST" 98 "REFUSED" 99 "INAPP" ;
label define B1SH4     0 "NONE" 10 "VERY MUCH" 98 "REFUSED" 99 "INAPP" ;
label define B1SH5     0 "NONE" 10 "VERY MUCH" 98 "REFUSED" 99 "INAPP" ;
label define B1SH6A    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SH6B    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SH6C    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SH6D    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SH6E    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SH6F    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SGENER  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SH7A    998 "REFUSED" 999 "INAPP" ;
label define B1SH7B    998 "REFUSED" 999 "INAPP" ;
label define B1SH7C    998 "REFUSED" 999 "INAPP" ;
label define B1SH7D    998 "REFUSED" 999 "INAPP" ;
label define B1SH8A    998 "REFUSED" 999 "INAPP" ;
label define B1SH8B    998 "REFUSED" 999 "INAPP" ;
label define B1SH8C    998 "REFUSED" 999 "INAPP" ;
label define B1SH9A    998 "REFUSED" 999 "INAPP" ;
label define B1SH9B    998 "REFUSED" 999 "INAPP" ;
label define B1SH9C    998 "REFUSED" 999 "INAPP" ;
label define B1SH9D    998 "REFUSED" 999 "INAPP" ;
label define B1SH9E    998 "REFUSED" 999 "INAPP" ;
label define B1SH9F    998 "REFUSED" 999 "INAPP" ;
label define B1SH10A   998 "REFUSED" 999 "INAPP" ;
label define B1SH10B   998 "REFUSED" 999 "INAPP" ;
label define B1SH10C   998 "REFUSED" 999 "INAPP" ;
label define B1SH10D   998 "REFUSED" 999 "INAPP" ;
label define B1SH10E   998 "REFUSED" 999 "INAPP" ;
label define B1SH10F   998 "REFUSED" 999 "INAPP" ;
label define B1SH11A   998 "REFUSED" 999 "INAPP" ;
label define B1SH11B   998 "REFUSED" 999 "INAPP" ;
label define B1SH11C   998 "REFUSED" 999 "INAPP" ;
label define B1SH11D   998 "REFUSED" 999 "INAPP" ;
label define B1SH11E   998 "REFUSED" 999 "INAPP" ;
label define B1SH12A   998 "REFUSED" 999 "INAPP" ;
label define B1SH12B   998 "REFUSED" 999 "INAPP" ;
label define B1SH12C   998 "REFUSED" 999 "INAPP" ;
label define B1SH12D   998 "REFUSED" 999 "INAPP" ;
label define B1SH12E   998 "REFUSED" 999 "INAPP" ;
label define B1SH12F   998 "REFUSED" 999 "INAPP" ;
label define B1SH12G   998 "REFUSED" 999 "INAPP" ;
label define B1SH12H   998 "REFUSED" 999 "INAPP" ;
label define B1SH13A   9999998 "REFUSED" 9999999 "INAPP" ;
label define B1SH13B   9999998 "REFUSED" 9999999 "INAPP" ;
label define B1SH13C   9999998 "REFUSED" 9999999 "INAPP" ;
label define B1SH13D   9999998 "REFUSED" 9999999 "INAPP" ;
label define B1SH13E   9999998 "REFUSED" 9999999 "INAPP" ;
label define B1SH13F   9999998 "REFUSED" 9999999 "INAPP" ;
label define B1SH13G   9999998 "REFUSED" 9999999 "INAPP" ;
label define B1SH13H   9999998 "REFUSED" 9999999 "INAPP" ;
label define B1SH14A   9999998 "REFUSED" 9999999 "INAPP" ;
label define B1SH14B   9999998 "REFUSED" 9999999 "INAPP" ;
label define B1SH14C   9999998 "REFUSED" 9999999 "INAPP" ;
label define B1SH14D   9999998 "REFUSED" 9999999 "INAPP" ;
label define B1SH14E   9999998 "REFUSED" 9999999 "INAPP" ;
label define B1SH14F   9999998 "REFUSED" 9999999 "INAPP" ;
label define B1SH14G   9999998 "REFUSED" 9999999 "INAPP" ;
label define B1SH15A   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SH15B   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SH15C   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SH15D   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SH16A   1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SH16B   1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SH16C   1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SH16D   1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SH16E   1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SH16F   1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SH16G   1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SH16H   1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SH16I   1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SH16J   1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SH16K   1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SH16L   1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SH16M   1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SH16N   1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SH16O   1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SSWBMS  98 "Not calculated (Due to missing data)" ;
label define B1SSWBSI  98 "Not calculated (Due to missing data)" ;
label define B1SSWBAO  98 "Not calculated (Due to missing data)" ;
label define B1SSWBSC  98 "Not calculated (Due to missing data)" ;
label define B1SSWBSA  98 "Not calculated (Due to missing data)" ;
label define B1SH16P   1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SH16Q   1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SH16R   1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SH16S   1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SH16T   1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DISAGREE"
                       5 "DISAGREE A LITTLE" 6 "DISAGREE SOMEWHAT"
                       7 "DISAGREE STRONGLY" 8 "REFUSED" 9 "INAPP" ;
label define B1SSYMP   8 "NOT CALCULATED (Due to missing data)" ;
label define B1SI1     1 "ALMOST EVERY DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ABOUT ONCE A WEEK" 4 "1-3 TIMES A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER OR HARDLY EVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SI2     1 "ALMOST EVERY DAY" 2 "SEVERAL TIMES A WEEK"
                       3 "ABOUT ONCE A WEEK" 4 "1-3 TIMES A MONTH"
                       5 "LESS THAN ONCE A MONTH" 6 "NEVER OR HARDLY EVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SI3     998 "REFUSED" 999 "INAPP" ;
label define B1SI4     998 "REFUSED" 999 "INAPP" ;
label define B1SI5     1 "OWN HOME OUTRIGHT" 2 "PAYING ON A MORTGAGE"
                       3 "RENT" 8 "REFUSED" 9 "INAPP" ;
label define B1SI6A    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SI6B    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SI6C    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SI6D    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SI6E    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SI6F    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SI6G    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SI6H    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SI6I    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SI6J    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SI6K    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SI6L    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SHOMET  8 "Not calculated (Due to missing data)" ;
label define B1SPIHOM  8 "Not calculated (Due to missing data)" ;
label define B1SI7     0 "FOREIGN" 1 "ALABAMA" 2 "ALASKA" 4 "ARIZONA"
                       5 "ARKANSAS" 6 "CALIFORNIA" 8 "COLORADO"
                       9 "CONNECTICUT" 10 "DELAWARE" 11 "DIST. OF COLUMBIA"
                       12 "FLORIDA" 13 "GEORGIA" 15 "HAWAII" 16 "IDAHO"
                       17 "ILLINOIS" 18 "INDIANA" 19 "IOWA" 20 "KANSAS"
                       21 "KENTUCKY" 22 "LOUISIANA" 23 "MAINE" 24 "MARYLAND"
                       25 "MASSACHUSETTS" 26 "MICHIGAN" 27 "MINNESOTA"
                       28 "MISSISSIPPI" 29 "MISSOURI" 30 "MONTANA"
                       31 "NEBRASKA" 32 "NEVADA" 33 "NEW HAMPSHIRE"
                       34 "NEW JERSEY" 35 "NEW MEXICO" 36 "NEW YORK"
                       37 "NORTH CAROLINA" 38 "NORTH DAKOTA" 39 "OHIO"
                       40 "OKLAHOMA" 41 "OREGON" 42 "PENNSYLVANIA"
                       44 "RHODE ISLAND" 45 "SOUTH CAROLINA"
                       46 "SOUTH DAKOTA" 47 "TENNESSEE" 48 "TEXAS" 49 "UTAH"
                       50 "VERMONT" 51 "VIRGINIA" 53 "WASHINGTON"
                       54 "WEST VIRGINIA" 55 "WISCONSIN" 56 "WYOMING"
                       98 "REFUSED" 99 "INAPP" ;
label define B1SJ1     1 "SEVERAL TIMES A DAY" 2 "ABOUT ONCE A DAY"
                       3 "SEVERAL TIMES A WEEK" 4 "ABOUT ONCE A WEEK"
                       5 "2 OR 3 TIMES A MONTH" 6 "ABOUT ONCE A MONTH"
                       7 "LESS THAN ONCE A MONTH" 8 "NEVER OR HARDLY EVER"
                       98 "REFUSED" 99 "INAPP" ;
label define B1SJ2A    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SJ2B    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SJ2C    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SJ2D    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SJ2E    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SJ2F    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SJ2G    1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SJ2H    1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SJ2I    1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SJ2J    1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SKINPO  8 "Not calculated (Due to missing data)" ;
label define B1SKINNE  8 "Not calculated (Due to missing data)" ;
label define B1SFAMSO  8 "Not calculated (Due to missing data)" ;
label define B1SPKINS  8 "Not calculated (Due to missing data)" ;
label define B1SJ3     1 "SEVERAL TIMES A DAY" 2 "ABOUT ONCE A DAY"
                       3 "SEVERAL TIMES A WEEK" 4 "ABOUT ONCE A WEEK"
                       5 "2 OR 3 TIMES A MONTH" 6 "ABOUT ONCE A MONTH"
                       7 "LESS THAN ONCE A MONTH" 8 "NEVER OR HARDLY EVER"
                       98 "REFUSED" 99 "INAPP" ;
label define B1SJ4A    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SJ4B    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SJ4C    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SJ4D    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SJ4E    1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SJ4F    1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SJ4G    1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SJ4H    1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SFDSPO  8 "Not calculated (Due to missing data)" ;
label define B1SFDSNE  8 "Not calculated (Due to missing data)" ;
label define B1SFDSOL  8 "Not calculated (Due to missing data)" ;
label define B1SJ5     1 "NEVER" 2 "LESS THAN ONCE A MONTH"
                       3 "ONCE OR TWICE A MONTH" 4 "THREE OR FOUR A MONTH"
                       5 "COUPLE TIMES A WEEK"
                       6 "MORE THAN COUPLE TIMES A WEEK" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SJ6     1 "NEVER" 2 "LESS THAN ONCE A MONTH"
                       3 "ONCE OR TWICE A MONTH" 4 "THREE OR FOUR A MONTH"
                       5 "COUPLE TIMES A WEEK"
                       6 "MORE THAN COUPLE TIMES A WEEK" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SJ7SA   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SJ7SB   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SJ7SC   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SJ7SD   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SJ7SE   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SJ7SF   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SJ7SG   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SJ7SH   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SJ7SI   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SJ7SJ   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SJ7PA   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SJ7PB   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SJ7PC   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SJ7PD   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SJ7PE   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SJ7PF   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SJ7PG   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SJ7PH   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SJ7PI   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SJ7PJ   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SJ7CA   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SJ7CB   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SJ7CC   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SJ7CD   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SJ7CE   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SJ7CF   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SJ7CG   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SJ7CH   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SJ7CI   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SJ7CJ   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SK1     0 "WORST" 10 "BEST" 98 "REFUSED" 99 "INAPP" ;
label define B1SK2     0 "WORST" 10 "BEST" 98 "DOES NOT APPLY" 998 "REFUSED"
                       999 "INAPP" ;
label define B1SK3     0 "WORST" 10 "BEST" 98 "REFUSED" 99 "INAPP" ;
label define B1SK4     0 "NONE" 10 "VERY MUCH" 98 "REFUSED" 99 "INAPP" ;
label define B1SK5     0 "NONE" 10 "VERY MUCH" 98 "REFUSED" 99 "INAPP" ;
label define B1SK6A    1 "NOT TRUE AT ALL" 2 "A LITTLE BIT TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SK6B    1 "NOT TRUE AT ALL" 2 "A LITTLE BIT TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SK6C    1 "NOT TRUE AT ALL" 2 "A LITTLE BIT TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SK6D    1 "NOT TRUE AT ALL" 2 "A LITTLE BIT TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SK6E    1 "NOT TRUE AT ALL" 2 "A LITTLE BIT TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SK6F    1 "NOT TRUE AT ALL" 2 "A LITTLE BIT TRUE"
                       3 "MODERATELY TRUE" 4 "EXTREMELY TRUE" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SPIFAM  8 "Not calculated (Due to missing data)"
                       9 "NOT CALCULATED (Does not apply)" ;
label define B1SK7A1   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SK7A2   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SK7B1   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SK7B2   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SK7C1   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SK7C2   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SK7D1   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SK7D2   1 "YES" 2 "NO" 3 "DOES NOT APPLY" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SK8     98 "REFUSED" 99 "INAPP" ;
label define B1SK9     98 "REFUSED" 99 "INAPP" ;
label define B1SK10    1 "VERY SERIOUS/STRESSFUL"
                       2 "SOMEWHAT SERIOUS/STRESSFUL"
                       3 "A LITTLE SERIOUS/STRESSFUL"
                       4 "NOT AT ALL SERIOUS/STRESSFUL" 8 "REFUSED" 9 "INAPP" ;
label define B1SK11    1 "VERY SERIOUS/STRESSFUL"
                       2 "SOMEWHAT SERIOUS/STRESSFUL"
                       3 "A LITTLE SERIOUS/STRESSFUL"
                       4 "NOT AT ALL SERIOUS/STRESSFUL" 8 "REFUSED" 9 "INAPP" ;
label define B1SL1     0 "WORST" 10 "BEST" 98 "REFUSED" 99 "INAPP" ;
label define B1SL2     0 "WORST" 10 "BEST" 98 "REFUSED" 99 "INAPP" ;
label define B1SL3     0 "WORST" 10 "BEST" 98 "REFUSED" 99 "INAPP" ;
label define B1SL4     0 "NONE" 10 "VERY MUCH" 98 "REFUSED" 99 "INAPP" ;
label define B1SL5     0 "NONE" 10 "VERY MUCH" 98 "REFUSED" 99 "INAPP" ;
label define B1SL6     1 "EXCELLENT" 2 "VERY GOOD" 3 "GOOD" 4 "FAIR" 5 "POOR"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SL7     1 "NEVER" 2 "ONCE" 3 "A FEW TIMES"
                       4 "MOST OF THE TIME" 5 "ALL OF THE TIME" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SL8     1 "VERY LIKELY" 2 "SOMEWHAT LIKELY"
                       3 "NOT VERY LIKELY" 4 "NOT LIKELY AT ALL" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SL9A    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SL9B    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SL9C    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SMARRS  98 "Not calculated (Due to missing data)"
                       99 "NOT CALCULATED (Does not apply)" ;
label define B1SSPDIS  98 "Not calculated (Due to missing data)"
                       99 "NOT CALCULATED (Does not apply)" ;
label define B1SL10    1 "AT LEAST ONCE A DAY" 2 "A FEW TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "A FEW TIMES A MONTH"
                       5 "LESS OFTEN THAN THAT" 8 "REFUSED" 9 "INAPP" ;
label define B1SL11A   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SL11B   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SL11C   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SL11D   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SL11E   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SL11F   1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SL11G   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SL11H   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SL11I   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SL11J   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SL11K   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SL11L   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SSPEMP  8 "Not calculated (Due to missing data)"
                       9 "NOT CALCULATED (Does not apply)" ;
label define B1SSPCRI  8 "Not calculated (Due to missing data)"
                       9 "NOT CALCULATED (Does not apply)" ;
label define B1SSPSOL  8 "Not calculated (Due to missing data)"
                       9 "NOT CALCULATED (Does not apply)" ;
label define B1SL12    1 "YOU DO A LOT MORE" 2 "YOU DO SOMEWHAT MORE"
                       3 "YOU DO A LITTLE MORE" 4 "CHORES SPLIT EVENLY"
                       5 "SPOUSE DOES A LITTLE MORE"
                       6 "SPOUSE DOES SOMEWHAT MORE"
                       7 "SPOUSE DOES A LOT MORE" 8 "REFUSED" 9 "INAPP" ;
label define B1SL13    998 "REFUSED" 999 "INAPP" ;
label define B1SL14    998 "REFUSED" 999 "INAPP" ;
label define B1SL15    1 "VERY FAIR" 2 "SOMEWHAT FAIR" 3 "SOMEWHAT UNFAIR"
                       4 "VERY UNFAIR" 8 "REFUSED" 9 "INAPP" ;
label define B1SL16    1 "VERY FAIR" 2 "SOMEWHAT FAIR" 3 "SOMEWHAT UNFAIR"
                       4 "VERY UNFAIR" 8 "REFUSED" 9 "INAPP" ;
label define B1SL17A   1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DIAGREE"
                       5 "DISAGREE A LITTLE" 6 "SOMEWHAT DISAGREE"
                       7 "STRONGLY DISAGREE" 8 "REFUSED" 9 "INAPP" ;
label define B1SL17B   1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DIAGREE"
                       5 "DISAGREE A LITTLE" 6 "SOMEWHAT DISAGREE"
                       7 "STRONGLY DISAGREE" 8 "REFUSED" 9 "INAPP" ;
label define B1SL17C   1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DIAGREE"
                       5 "DISAGREE A LITTLE" 6 "SOMEWHAT DISAGREE"
                       7 "STRONGLY DISAGREE" 8 "REFUSED" 9 "INAPP" ;
label define B1SL17D   1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "AGREE A LITTLE" 4 "NEITHER AGREE OR DIAGREE"
                       5 "DISAGREE A LITTLE" 6 "SOMEWHAT DISAGREE"
                       7 "STRONGLY DISAGREE" 8 "REFUSED" 9 "INAPP" ;
label define B1SSPDEC  98 "NOT CALCULATED (Due to missing data)"
                       99 "NOT CALCULATED (Does not apply)" ;
label define B1SL18    1 "EXCELLENT" 2 "VERY GOOD" 3 "GOOD" 4 "FAIR" 5 "POOR"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SL19    1 "EXCELLENT" 2 "VERY GOOD" 3 "GOOD" 4 "FAIR" 5 "POOR"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SL20    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SL21    998 "REFUSED" 999 "INAPP" ;
label define B1SL22    998 "REFUSED" 999 "INAPP" ;
label define B1SL23A   1 "4 OR MORE TIMES PER WEEK" 2 "2-3 TIMES PER WEEK"
                       3 "ONCE A WEEK" 4 "1-3 TIMES PER MONTH"
                       5 "LESS THAN ONCE A MONTH OR NEVER" 98 "REFUSED"
                       99 "INAPP" ;
label define B1SL23B   1 "4 OR MORE TIMES PER WEEK" 2 "2-3 TIMES PER WEEK"
                       3 "ONCE A WEEK" 4 "1-3 TIMES PER MONTH"
                       5 "LESS THAN ONCE A MONTH OR NEVER" 98 "REFUSED"
                       99 "INAPP" ;
label define B1SL23C   1 "4 OR MORE TIMES PER WEEK" 2 "2-3 TIMES PER WEEK"
                       3 "ONCE A WEEK" 4 "1-3 TIMES PER MONTH"
                       5 "LESS THAN ONCE A MONTH OR NEVER" 98 "REFUSED"
                       99 "INAPP" ;
label define B1SL23D   1 "4 OR MORE TIMES PER WEEK" 2 "2-3 TIMES PER WEEK"
                       3 "ONCE A WEEK" 4 "1-3 TIMES PER MONTH"
                       5 "LESS THAN ONCE A MONTH OR NEVER" 98 "REFUSED"
                       99 "INAPP" ;
label define B1SL24A   98 "REFUSED" 99 "INAPP" ;
label define B1SL24B   98 "REFUSED" 99 "INAPP" ;
label define B1SL24C   1 "AM" 2 "PM" 3 "MIDNIGHT" 4 "NOON" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SL25A   98 "REFUSED" 99 "INAPP" ;
label define B1SL25B   98 "REFUSED" 99 "INAPP" ;
label define B1SL25C   1 "AM" 2 "PM" 3 "MIDNIGHT" 4 "NOON" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SL26A   98 "REFUSED" 99 "INAPP" ;
label define B1SL26B   98 "REFUSED" 99 "INAPP" ;
label define B1SL27    1 "EXCELLENT" 2 "VERY GOOD" 3 "GOOD" 4 "FAIR" 5 "POOR"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SM1     0 "WORST" 10 "BEST" 98 "REFUSED" 99 "INAPP" ;
label define B1SM2     0 "WORST" 10 "BEST" 98 "REFUSED" 99 "INAPP" ;
label define B1SM3     0 "WORST" 10 "BEST" 98 "REFUSED" 99 "INAPP" ;
label define B1SM4     0 "NONE" 10 "VERY MUCH" 98 "REFUSED" 99 "INAPP" ;
label define B1SM5     0 "NONE" 10 "VERY MUCH" 98 "REFUSED" 99 "INAPP" ;
label define B1SM6     1 "HETEROSEXUAL" 2 "HOMOSEXUAL" 3 "BISEXUAL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SM7     6 "SIX OR MORE" 8 "REFUSED" 9 "INAPP" ;
label define B1SM8     1 "TWO OR MORE TIMES A MONTH" 2 "ONCE A WEEK"
                       3 "TWO OR THREE TIMES A MONTH" 4 "ONCE A MONTH"
                       5 "LESS OFTEN THAN ONCE A MONTH"
                       6 "NEVER OR NOT AT ALL" 8 "REFUSED" 9 "INAPP" ;
label define B1SM9     1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SM10    1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SM11    1 "NEVER" 2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALWAYS" 8 "REFUSED" 9 "INAPP" ;
label define B1SM12    1 "NEVER" 2 "SOME OF THE TIME" 3 "MOST OF THE TIME"
                       4 "ALWAYS" 8 "REFUSED" 9 "INAPP" ;
label define B1SN1A    1 "NO RELIGIOUS PREF" 2 "AGNOSTIC" 3 "ATHEIST"
                       4 "PROTESTANT" 5 "PROTESTANT NO DENOM" 6 "APOSTOLIC"
                       7 "ASSEMBLY OF GOD" 8 "BAPTIST ALL TYPES"
                       9 "BORN AGAIN CHRISTIAN" 10 "BRETHREN"
                       11 "DISCIPLES OF CHRIST" 12 "CHRISTIAN REFORMED"
                       13 "CHURCH OF GOD" 14 "CONGREGATIONAL"
                       15 "EPISCOPALIAN" 16 "EVANGELICAL" 17 "HOLINESS"
                       18 "JEHOVAHS WITNESS" 19 "LUTHERAN" 20 "MENNONITE"
                       21 "METHODIST" 22 "MORMON LATTER DAY ST" 23 "NAZARENE"
                       24 "PENTECOSTAL" 25 "PRESBYTERIAN"
                       26 "QUAKER SOCIETY OF FR" 27 "SALVATION ARMY"
                       28 "SANCTIFIED" 29 "SEVENTH DAY ADVENTIST"
                       30 "SPIRITUAL" 31 "UNITARIAN"
                       32 "UNITED CHURCH CHRIST" 33 "PROTESTANT SPECIFY"
                       34 "CATHOLIC ROMAN" 35 "CATHOLIC UKRAINIAN"
                       36 "ORTHODOX" 37 "CATHOLIC OTHER" 38 "JEWISH ORTHODOX"
                       39 "JEWISH CONSERVATIVE" 40 "JEWISH REFORM"
                       41 "JEWISH RECONST" 42 "JEWISH OTHER" 43 "BUDDHIST"
                       44 "HINDU" 45 "MUSLIM" 46 "RASTAFARIAN"
                       47 "OTHER SPECIFY" 98 "REFUSED" 99 "INAPP" ;
label define B1SN1B    1 "NO RELIGIOUS PREF" 2 "AGNOSTIC" 3 "ATHEIST"
                       4 "PROTESTANT" 5 "PROTESTANT NO DENOM" 6 "APOSTOLIC"
                       7 "ASSEMBLY OF GOD" 8 "BAPTIST ALL TYPES"
                       9 "BORN AGAIN CHRISTIAN" 10 "BRETHREN"
                       11 "DISCIPLES OF CHRIST" 12 "CHRISTIAN REFORMED"
                       13 "CHURCH OF GOD" 14 "CONGREGATIONAL"
                       15 "EPISCOPALIAN" 16 "EVANGELICAL" 17 "HOLINESS"
                       18 "JEHOVAHS WITNESS" 19 "LUTHERAN" 20 "MENNONITE"
                       21 "METHODIST" 22 "MORMON LATTER DAY ST" 23 "NAZARENE"
                       24 "PENTECOSTAL" 25 "PRESBYTERIAN"
                       26 "QUAKER SOCIETY OF FR" 27 "SALVATION ARMY"
                       28 "SANCTIFIED" 29 "SEVENTH DAY ADVENTIST"
                       30 "SPIRITUAL" 31 "UNITARIAN"
                       32 "UNITED CHURCH CHRIST" 33 "PROTESTANT SPECIFY"
                       34 "CATHOLIC ROMAN" 35 "CATHOLIC UKRAINIAN"
                       36 "ORTHODOX" 37 "CATHOLIC OTHER" 38 "JEWISH ORTHODOX"
                       39 "JEWISH CONSERVATIVE" 40 "JEWISH REFORM"
                       41 "JEWISH RECONST" 42 "JEWISH OTHER" 43 "BUDDHIST"
                       44 "HINDU" 45 "MUSLIM" 46 "RASTAFARIAN"
                       47 "OTHER SPECIFY" 98 "REFUSED" 99 "INAPP" ;
label define B1SN1C    1 "NO RELIGIOUS PREF" 2 "AGNOSTIC" 3 "ATHEIST"
                       4 "PROTESTANT" 5 "PROTESTANT NO DENOM" 6 "APOSTOLIC"
                       7 "ASSEMBLY OF GOD" 8 "BAPTIST ALL TYPES"
                       9 "BORN AGAIN CHRISTIAN" 10 "BRETHREN"
                       11 "DISCIPLES OF CHRIST" 12 "CHRISTIAN REFORMED"
                       13 "CHURCH OF GOD" 14 "CONGREGATIONAL"
                       15 "EPISCOPALIAN" 16 "EVANGELICAL" 17 "HOLINESS"
                       18 "JEHOVAHS WITNESS" 19 "LUTHERAN" 20 "MENNONITE"
                       21 "METHODIST" 22 "MORMON LATTER DAY ST" 23 "NAZARENE"
                       24 "PENTECOSTAL" 25 "PRESBYTERIAN"
                       26 "QUAKER SOCIETY OF FR" 27 "SALVATION ARMY"
                       28 "SANCTIFIED" 29 "SEVENTH DAY ADVENTIST"
                       30 "SPIRITUAL" 31 "UNITARIAN"
                       32 "UNITED CHURCH CHRIST" 33 "PROTESTANT SPECIFY"
                       34 "CATHOLIC ROMAN" 35 "CATHOLIC UKRAINIAN"
                       36 "ORTHODOX" 37 "CATHOLIC OTHER" 38 "JEWISH ORTHODOX"
                       39 "JEWISH CONSERVATIVE" 40 "JEWISH REFORM"
                       41 "JEWISH RECONST" 42 "JEWISH OTHER" 43 "BUDDHIST"
                       44 "HINDU" 45 "MUSLIM" 46 "RASTAFARIAN"
                       47 "OTHER SPECIFY" 98 "REFUSED" 99 "INAPP" ;
label define B1SN1AX   1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SN2A    1 "VERY" 2 "SOMEWHAT" 3 "NOT VERY" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SN2B    1 "VERY" 2 "SOMEWHAT" 3 "NOT VERY" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SN2C    1 "VERY" 2 "SOMEWHAT" 3 "NOT VERY" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SN2D    1 "VERY" 2 "SOMEWHAT" 3 "NOT VERY" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SN2E    1 "VERY" 2 "SOMEWHAT" 3 "NOT VERY" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SN2F    1 "VERY" 2 "SOMEWHAT" 3 "NOT VERY" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SN2G    1 "VERY" 2 "SOMEWHAT" 3 "NOT VERY" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SN2H    1 "VERY" 2 "SOMEWHAT" 3 "NOT VERY" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SN2I    1 "VERY" 2 "SOMEWHAT" 3 "NOT VERY" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SSPIRI  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SRELID  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SN3A    1 "ONCE A DAY OR MORE" 2 "A FEW TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "1-3 TIMES PER MONTH"
                       5 "LESS THAN ONCE PER MONTH" 6 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SN3B    1 "ONCE A DAY OR MORE" 2 "A FEW TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "1-3 TIMES PER MONTH"
                       5 "LESS THAN ONCE PER MONTH" 6 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SN3C    1 "ONCE A DAY OR MORE" 2 "A FEW TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "1-3 TIMES PER MONTH"
                       5 "LESS THAN ONCE PER MONTH" 6 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SRELPR  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SN3D    1 "ONCE A DAY OR MORE" 2 "A FEW TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "1-3 TIMES PER MONTH"
                       5 "LESS THAN ONCE PER MONTH" 6 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SN3E    1 "ONCE A DAY OR MORE" 2 "A FEW TIMES A WEEK"
                       3 "ONCE A WEEK" 4 "1-3 TIMES PER MONTH"
                       5 "LESS THAN ONCE PER MONTH" 6 "NEVER" 8 "REFUSED"
                       9 "INAPP" ;
label define B1SN4     1 "EXPLORE DIFFERENT TEACHINGS" 2 "STICK TO ONE FAITH"
                       3 "NEITHER" 8 "REFUSED" 9 "INAPP" ;
label define B1SN5     1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SN6     1 "STRONGLY AGREE" 2 "SOMEWHAT AGREE"
                       3 "NEITHER AGREE NOR DISAGREE" 4 "SOMEWHAT DISAGREE"
                       5 "STRONGLY DISAGREE" 8 "REFUSED" 9 "INAPP" ;
label define B1SN7     1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SN8A    1 "A GREAT DEAL" 2 "SOME" 3 "A LITTLE" 4 "NONE"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SN8B    1 "A GREAT DEAL" 2 "SOME" 3 "A LITTLE" 4 "NONE"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SN8C    1 "A GREAT DEAL" 2 "SOME" 3 "A LITTLE" 4 "NONE"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SN8D    1 "A GREAT DEAL" 2 "SOME" 3 "A LITTLE" 4 "NONE"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SRELSU  98 "NOT CALCULATED (Due to missing data)"
                       99 "NOT CALCULATED (Does not apply)" ;
label define B1SN9A    1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SN9B    1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SN9C    1 "A GREAT DEAL" 2 "SOME" 3 "A LITTLE" 4 "NONE"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SN9D    1 "A GREAT DEAL" 2 "SOME" 3 "A LITTLE" 4 "NONE"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SN9E    1 "A GREAT DEAL" 2 "SOME" 3 "A LITTLE" 4 "NONE"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SN9F    1 "A GREAT DEAL" 2 "SOME" 3 "A LITTLE" 4 "NONE"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SN9G    1 "A GREAT DEAL" 2 "SOME" 3 "A LITTLE" 4 "NONE"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SN9H    1 "A GREAT DEAL" 2 "SOME" 3 "A LITTLE" 4 "NONE"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SRELCA  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SRELCB  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SN10A   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SN10B   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SN10C   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SN10D   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SN10E   1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SSPRTE  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SN11A   1 "STRONGLY AGREE" 2 "AGREE"
                       3 "NEITHER AGREE NOR DISAGREE" 4 "DISAGREE"
                       5 "STRONGLY DISAGREE" 8 "REFUSED" 9 "INAPP" ;
label define B1SN11B   1 "STRONGLY AGREE" 2 "AGREE"
                       3 "NEITHER AGREE NOR DISAGREE" 4 "DISAGREE"
                       5 "STRONGLY DISAGREE" 8 "REFUSED" 9 "INAPP" ;
label define B1SN11C   1 "STRONGLY AGREE" 2 "AGREE"
                       3 "NEITHER AGREE NOR DISAGREE" 4 "DISAGREE"
                       5 "STRONGLY DISAGREE" 8 "REFUSED" 9 "INAPP" ;
label define B1SN11D   1 "STRONGLY AGREE" 2 "AGREE"
                       3 "NEITHER AGREE NOR DISAGREE" 4 "DISAGREE"
                       5 "STRONGLY DISAGREE" 8 "REFUSED" 9 "INAPP" ;
label define B1SN11E   1 "STRONGLY AGREE" 2 "AGREE"
                       3 "NEITHER AGREE NOR DISAGREE" 4 "DISAGREE"
                       5 "STRONGLY DISAGREE" 8 "REFUSED" 9 "INAPP" ;
label define B1SN11F   1 "STRONGLY AGREE" 2 "AGREE"
                       3 "NEITHER AGREE NOR DISAGREE" 4 "DISAGREE"
                       5 "STRONGLY DISAGREE" 8 "REFUSED" 9 "INAPP" ;
label define B1SN11G   1 "STRONGLY AGREE" 2 "AGREE"
                       3 "NEITHER AGREE NOR DISAGREE" 4 "DISAGREE"
                       5 "STRONGLY DISAGREE" 8 "REFUSED" 9 "INAPP" ;
label define B1SN11H   1 "STRONGLY AGREE" 2 "AGREE"
                       3 "NEITHER AGREE NOR DISAGREE" 4 "DISAGREE"
                       5 "STRONGLY DISAGREE" 8 "REFUSED" 9 "INAPP" ;
label define B1SN11I   1 "STRONGLY AGREE" 2 "AGREE"
                       3 "NEITHER AGREE NOR DISAGREE" 4 "DISAGREE"
                       5 "STRONGLY DISAGREE" 8 "REFUSED" 9 "INAPP" ;
label define B1SMNDFU  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SP1A    99998 "REFUSED" 99999 "INAPP" ;
label define B1SP1B    99998 "REFUSED" 99999 "INAPP" ;
label define B1SP1C    99998 "REFUSED" 99999 "INAPP" ;
label define B1SP1D    99998 "REFUSED" 99999 "INAPP" ;
label define B1SP1E    99998 "REFUSED" 99999 "INAPP" ;
label define B1SP1F    99998 "REFUSED" 99999 "INAPP" ;
label define B1SP1G    99998 "REFUSED" 99999 "INAPP" ;
label define B1SP1H    99998 "REFUSED" 99999 "INAPP" ;
label define B1SP1I    99998 "REFUSED" 99999 "INAPP" ;
label define B1SP1J    99998 "REFUSED" 99999 "INAPP" ;
label define B1SP1K    99998 "REFUSED" 99999 "INAPP" ;
label define B1SLFEDI  99998 "NOT CALCULATED (Due to missing data)" ;
label define B1SP2A    1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SP2B    1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SP2C    1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SP2D    1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SP2E    1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SP2F    1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SP2G    1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SP2H    1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SP2I    1 "OFTEN" 2 "SOMETIMES" 3 "RARELY" 4 "NEVER"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SDAYDI  98 "NOT CALCULATED (Due to missing data)" ;
label define B1SP3A    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SP3B    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SP3C    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SP3D    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SP3E    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SP3F    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SP3G    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SP3H    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SP3I    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SP3J    1 "YES" 2 "NO" 8 "REFUSED" 9 "INAPP" ;
label define B1SP4     1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SP5     1 "A LOT" 2 "SOME" 3 "A LITTLE" 4 "NOT AT ALL"
                       8 "REFUSED" 9 "INAPP" ;
label define B1SQ1     0 "WORST" 10 "BEST" 98 "REFUSED" 99 "INAPP" ;
label define B1SQ2     0 "WORST" 10 "BEST" 98 "REFUSED" 99 "INAPP" ;
label define B1SQ3     0 "WORST" 10 "BEST" 98 "REFUSED" 99 "INAPP" ;
label define B1SQ4     0 "NONE" 10 "VERY MUCH" 98 "REFUSED" 99 "INAPP" ;
label define B1SQ5     0 "NONE" 10 "VERY MUCH" 98 "REFUSED" 99 "INAPP" ;
label define B1SQ6     0 "WORST" 10 "BEST" 98 "REFUSED" 99 "INAPP" ;


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
replace B1PBYEAR = . if (B1PBYEAR == 9998)
replace B1PRSEX = . if (B1PRSEX == 7 | B1PRSEX == 8 | B1PRSEX == 9)
replace B1PA1 = . if (B1PA1 == 7 | B1PA1 == 8 | B1PA1 == 9)
replace B1PA2 = . if (B1PA2 == 7 | B1PA2 == 8 | B1PA2 == 9)
replace B1PA3 = . if (B1PA3 == 7 | B1PA3 == 8 | B1PA3 == 9)
replace B1PA4 = . if (B1PA4 == 97 | B1PA4 == 98 | B1PA4 == 99)
replace B1PA4A = . if (B1PA4A == 7 | B1PA4A == 8 | B1PA4A == 9)
replace B1PA4BA = . if (B1PA4BA == 97 | B1PA4BA == 98 | B1PA4BA == 99)
replace B1PA4BB = . if (B1PA4BB == 97 | B1PA4BB == 98 | B1PA4BB == 99)
replace B1PA4BC = . if (B1PA4BC == 97 | B1PA4BC == 98 | B1PA4BC == 99)
replace B1PA5 = . if (B1PA5 == 97 | B1PA5 == 98 | B1PA5 == 99)
replace B1PA5A = . if (B1PA5A == 7 | B1PA5A == 8 | B1PA5A == 9)
replace B1PA5BA = . if (B1PA5BA == 97 | B1PA5BA == 98 | B1PA5BA == 99)
replace B1PA5BB = . if (B1PA5BB == 97 | B1PA5BB == 98 | B1PA5BB == 99)
replace B1PA5BC = . if (B1PA5BC == 97 | B1PA5BC == 98 | B1PA5BC == 99)
replace B1PA6A = . if (B1PA6A == 7 | B1PA6A == 8 | B1PA6A == 9)
replace B1PA6B = . if (B1PA6B == 7 | B1PA6B == 8 | B1PA6B == 9)
replace B1PA6C = . if (B1PA6C == 7 | B1PA6C == 8 | B1PA6C == 9)
replace B1PA6D = . if (B1PA6D == 7 | B1PA6D == 8 | B1PA6D == 9)
replace B1PA7 = . if (B1PA7 == 7 | B1PA7 == 8 | B1PA7 == 9)
replace B1PA7A = . if (B1PA7A == 97 | B1PA7A == 98 | B1PA7A == 99)
replace B1PA7BA = . if (B1PA7BA == 97 | B1PA7BA == 98 | B1PA7BA == 99)
replace B1PA7BB = . if (B1PA7BB == 97 | B1PA7BB == 98 | B1PA7BB == 99)
replace B1PA7BC = . if (B1PA7BC == 97 | B1PA7BC == 98 | B1PA7BC == 99)
replace B1PA7BD = . if (B1PA7BD == 97 | B1PA7BD == 98 | B1PA7BD == 99)
replace B1PA7BE = . if (B1PA7BE == 97 | B1PA7BE == 98 | B1PA7BE == 99)
replace B1PA7BF = . if (B1PA7BF == 97 | B1PA7BF == 98 | B1PA7BF == 99)
replace B1PA7BG = . if (B1PA7BG == 97 | B1PA7BG == 98 | B1PA7BG == 99)
replace B1PA7BH = . if (B1PA7BH == 97 | B1PA7BH == 98 | B1PA7BH == 99)
replace B1PA7BI = . if (B1PA7BI == 97 | B1PA7BI == 98 | B1PA7BI == 99)
replace B1PA7BJ = . if (B1PA7BJ == 97 | B1PA7BJ == 98 | B1PA7BJ == 99)
replace B1PA7C = . if (B1PA7C == 7 | B1PA7C == 8 | B1PA7C == 9)
replace B1PA7D = . if (B1PA7D == 7 | B1PA7D == 8 | B1PA7D == 9)
replace B1PA8 = . if (B1PA8 == 7 | B1PA8 == 8 | B1PA8 == 9)
replace B1PA8A = . if (B1PA8A == 9997 | B1PA8A == 9998 | B1PA8A == 9999)
replace B1PA9 = . if (B1PA9 == 7 | B1PA9 == 8 | B1PA9 == 9)
replace B1PA9A = . if (B1PA9A == 7 | B1PA9A == 8 | B1PA9A == 9)
replace B1PA9B = . if (B1PA9B == 7 | B1PA9B == 8 | B1PA9B == 9)
replace B1PA10A = . if (B1PA10A == 7 | B1PA10A == 8 | B1PA10A == 9)
replace B1PA10B = . if (B1PA10B == 7 | B1PA10B == 8 | B1PA10B == 9)
replace B1PA10C = . if (B1PA10C == 7 | B1PA10C == 8 | B1PA10C == 9)
replace B1PA10D = . if (B1PA10D == 7 | B1PA10D == 8 | B1PA10D == 9)
replace B1PA10E = . if (B1PA10E == 7 | B1PA10E == 8 | B1PA10E == 9)
replace B1PA10F = . if (B1PA10F == 7 | B1PA10F == 8 | B1PA10F == 9)
replace B1PA10G = . if (B1PA10G == 7 | B1PA10G == 8 | B1PA10G == 9)
replace B1PA10H = . if (B1PA10H == 7 | B1PA10H == 8 | B1PA10H == 9)
replace B1PA11 = . if (B1PA11 == 7 | B1PA11 == 8 | B1PA11 == 9)
replace B1PA12 = . if (B1PA12 == 7 | B1PA12 == 8 | B1PA12 == 9)
replace B1PA13 = . if (B1PA13 == 7 | B1PA13 == 8 | B1PA13 == 9)
replace B1PA14 = . if (B1PA14 == 7 | B1PA14 == 8 | B1PA14 == 9)
replace B1PA15 = . if (B1PA15 == 7 | B1PA15 == 8 | B1PA15 == 9)
replace B1PA16 = . if (B1PA16 == 7 | B1PA16 == 8 | B1PA16 == 9)
replace B1PA17 = . if (B1PA17 == 7 | B1PA17 == 8 | B1PA17 == 9)
replace B1PA18 = . if (B1PA18 == 7 | B1PA18 == 8 | B1PA18 == 9)
replace B1PA19 = . if (B1PA19 == 7 | B1PA19 == 8 | B1PA19 == 9)
replace B1PA20 = . if (B1PA20 == 7 | B1PA20 == 8 | B1PA20 == 9)
replace B1PA21 = . if (B1PA21 == 7 | B1PA21 == 8 | B1PA21 == 9)
replace B1PA22 = . if (B1PA22 == 7 | B1PA22 == 8 | B1PA22 == 9)
replace B1PA23 = . if (B1PA23 == 7 | B1PA23 == 8 | B1PA23 == 9)
replace B1PA23A = . if (B1PA23A == 97 | B1PA23A == 98 | B1PA23A == 99)
replace B1PA23B = . if (B1PA23B == 7 | B1PA23B == 8 | B1PA23B == 9)
replace B1PA23CA = . if (B1PA23CA == 97 | B1PA23CA == 98 | B1PA23CA == 99)
replace B1PA23CB = . if (B1PA23CB == 97 | B1PA23CB == 98 | B1PA23CB == 99)
replace B1PA23CC = . if (B1PA23CC == 97 | B1PA23CC == 98 | B1PA23CC == 99)
replace B1PA23CD = . if (B1PA23CD == 97 | B1PA23CD == 98 | B1PA23CD == 99)
replace B1PA23CE = . if (B1PA23CE == 97 | B1PA23CE == 98 | B1PA23CE == 99)
replace B1PA23CF = . if (B1PA23CF == 97 | B1PA23CF == 98 | B1PA23CF == 99)
replace B1PA23CG = . if (B1PA23CG == 97 | B1PA23CG == 98 | B1PA23CG == 99)
replace B1PA23CH = . if (B1PA23CH == 97 | B1PA23CH == 98 | B1PA23CH == 99)
replace B1PA23CI = . if (B1PA23CI == 97 | B1PA23CI == 98 | B1PA23CI == 99)
replace B1PA23CJ = . if (B1PA23CJ == 97 | B1PA23CJ == 98 | B1PA23CJ == 99)
replace B1PA24 = . if (B1PA24 == 7 | B1PA24 == 8 | B1PA24 == 9)
replace B1PA24A = . if (B1PA24A == 97 | B1PA24A == 98 | B1PA24A == 99)
replace B1PA24B = . if (B1PA24B == 7 | B1PA24B == 8 | B1PA24B == 9)
replace B1PA24C = . if (B1PA24C == 7 | B1PA24C == 8 | B1PA24C == 9)
replace B1PA24D = . if (B1PA24D == 7 | B1PA24D == 8 | B1PA24D == 9)
replace B1PA24EA = . if (B1PA24EA == 7 | B1PA24EA == 8 | B1PA24EA == 9)
replace B1PA24EB = . if (B1PA24EB == 7 | B1PA24EB == 8 | B1PA24EB == 9)
replace B1PA24EC = . if (B1PA24EC == 7 | B1PA24EC == 8 | B1PA24EC == 9)
replace B1PA24ED = . if (B1PA24ED == 7 | B1PA24ED == 8 | B1PA24ED == 9)
replace B1PA24EE = . if (B1PA24EE == 7 | B1PA24EE == 8 | B1PA24EE == 9)
replace B1PA24EF = . if (B1PA24EF == 7 | B1PA24EF == 8 | B1PA24EF == 9)
replace B1PA25NM = . if (B1PA25NM == 96 | B1PA25NM == 97)
replace B1PA25IN = . if (B1PA25IN == 7 | B1PA25IN == 8 | B1PA25IN == 9)
replace B1PA25A = . if (B1PA25A == 7 | B1PA25A == 8 | B1PA25A == 9)
replace B1PA25BS = . if (B1PA25BS == 997 | B1PA25BS == 998 | B1PA25BS == 999)
replace B1PA25BD = . if (B1PA25BD == 997 | B1PA25BD == 998 | B1PA25BD == 999)
replace B1PA26 = . if (B1PA26 == 7 | B1PA26 == 8 | B1PA26 == 9)
replace B1PA27 = . if (B1PA27 == 7 | B1PA27 == 8 | B1PA27 == 9)
replace B1PA27A = . if (B1PA27A == 7 | B1PA27A == 8 | B1PA27A == 9)
replace B1PA27B = . if (B1PA27B == 7 | B1PA27B == 8 | B1PA27B == 9)
replace B1PA28A = . if (B1PA28A == 7 | B1PA28A == 8 | B1PA28A == 9)
replace B1PA28B = . if (B1PA28B == 7 | B1PA28B == 8 | B1PA28B == 9)
replace B1PA28C = . if (B1PA28C == 7 | B1PA28C == 8 | B1PA28C == 9)
replace B1PA28D = . if (B1PA28D == 7 | B1PA28D == 8 | B1PA28D == 9)
replace B1PA28E = . if (B1PA28E == 7 | B1PA28E == 8 | B1PA28E == 9)
replace B1PA28F = . if (B1PA28F == 7 | B1PA28F == 8 | B1PA28F == 9)
replace B1PA28G = . if (B1PA28G == 7 | B1PA28G == 8 | B1PA28G == 9)
replace B1PA28H = . if (B1PA28H == 7 | B1PA28H == 8 | B1PA28H == 9)
replace B1PA28I = . if (B1PA28I == 7 | B1PA28I == 8 | B1PA28I == 9)
replace B1PA28J = . if (B1PA28J == 7 | B1PA28J == 8 | B1PA28J == 9)
replace B1PA28AA = . if (B1PA28AA == 97 | B1PA28AA == 98 | B1PA28AA == 99)
replace B1PA28BB = . if (B1PA28BB == 97 | B1PA28BB == 98 | B1PA28BB == 99)
replace B1PA28CC = . if (B1PA28CC == 97 | B1PA28CC == 98 | B1PA28CC == 99)
replace B1PA28DD = . if (B1PA28DD == 97 | B1PA28DD == 98 | B1PA28DD == 99)
replace B1PA28EE = . if (B1PA28EE == 97 | B1PA28EE == 98 | B1PA28EE == 99)
replace B1PA28FF = . if (B1PA28FF == 97 | B1PA28FF == 98 | B1PA28FF == 99)
replace B1PA28GG = . if (B1PA28GG == 97 | B1PA28GG == 98 | B1PA28GG == 99)
replace B1PA28HH = . if (B1PA28HH == 97 | B1PA28HH == 98 | B1PA28HH == 99)
replace B1PA28II = . if (B1PA28II == 97 | B1PA28II == 98 | B1PA28II == 99)
replace B1PA28JJ = . if (B1PA28JJ == 97 | B1PA28JJ == 98 | B1PA28JJ == 99)
replace B1PA29 = . if (B1PA29 == 7 | B1PA29 == 8 | B1PA29 == 9)
replace B1PA29AA = . if (B1PA29AA == 7 | B1PA29AA == 8 | B1PA29AA == 9)
replace B1PA29AB = . if (B1PA29AB == 7 | B1PA29AB == 8 | B1PA29AB == 9)
replace B1PA29AC = . if (B1PA29AC == 7 | B1PA29AC == 8 | B1PA29AC == 9)
replace B1PA29AD = . if (B1PA29AD == 7 | B1PA29AD == 8 | B1PA29AD == 9)
replace B1PA29AE = . if (B1PA29AE == 7 | B1PA29AE == 8 | B1PA29AE == 9)
replace B1PA29AF = . if (B1PA29AF == 7 | B1PA29AF == 8 | B1PA29AF == 9)
replace B1PA29AG = . if (B1PA29AG == 7 | B1PA29AG == 8 | B1PA29AG == 9)
replace B1PA29AH = . if (B1PA29AH == 7 | B1PA29AH == 8 | B1PA29AH == 9)
replace B1PA29AI = . if (B1PA29AI == 7 | B1PA29AI == 8 | B1PA29AI == 9)
replace B1PA30A = . if (B1PA30A == 7 | B1PA30A == 8 | B1PA30A == 9)
replace B1PA30B = . if (B1PA30B == 7 | B1PA30B == 8 | B1PA30B == 9)
replace B1PA30C = . if (B1PA30C == 7 | B1PA30C == 8 | B1PA30C == 9)
replace B1PA30D = . if (B1PA30D == 7 | B1PA30D == 8 | B1PA30D == 9)
replace B1PA30E = . if (B1PA30E == 7 | B1PA30E == 8 | B1PA30E == 9)
replace B1PA30F = . if (B1PA30F == 7 | B1PA30F == 8 | B1PA30F == 9)
replace B1PA31A = . if (B1PA31A == 7 | B1PA31A == 8 | B1PA31A == 9)
replace B1PA31B = . if (B1PA31B == 7 | B1PA31B == 8 | B1PA31B == 9)
replace B1PA31C = . if (B1PA31C == 7 | B1PA31C == 8 | B1PA31C == 9)
replace B1PA31D = . if (B1PA31D == 7 | B1PA31D == 8 | B1PA31D == 9)
replace B1PA31E = . if (B1PA31E == 7 | B1PA31E == 8 | B1PA31E == 9)
replace B1PA31F = . if (B1PA31F == 7 | B1PA31F == 8 | B1PA31F == 9)
replace B1PA31H = . if (B1PA31H == 7 | B1PA31H == 8 | B1PA31H == 9)
replace B1PA31I = . if (B1PA31I == 7 | B1PA31I == 8 | B1PA31I == 9)
replace B1PA31J = . if (B1PA31J == 7 | B1PA31J == 8 | B1PA31J == 9)
replace B1PA32A = . if (B1PA32A == 7 | B1PA32A == 8 | B1PA32A == 9)
replace B1PA32C = . if (B1PA32C == 7 | B1PA32C == 8 | B1PA32C == 9)
replace B1PA32D = . if (B1PA32D == 7 | B1PA32D == 8 | B1PA32D == 9)
replace B1PA32E = . if (B1PA32E == 7 | B1PA32E == 8 | B1PA32E == 9)
replace B1PA32G = . if (B1PA32G == 7 | B1PA32G == 8 | B1PA32G == 9)
replace B1PA32H = . if (B1PA32H == 7 | B1PA32H == 8 | B1PA32H == 9)
replace B1PA32J = . if (B1PA32J == 7 | B1PA32J == 8 | B1PA32J == 9)
replace B1PA33A = . if (B1PA33A == 7 | B1PA33A == 8 | B1PA33A == 9)
replace B1PA33C = . if (B1PA33C == 7 | B1PA33C == 8 | B1PA33C == 9)
replace B1PA33D = . if (B1PA33D == 7 | B1PA33D == 8 | B1PA33D == 9)
replace B1PA33E = . if (B1PA33E == 7 | B1PA33E == 8 | B1PA33E == 9)
replace B1PA33G = . if (B1PA33G == 7 | B1PA33G == 8 | B1PA33G == 9)
replace B1PA33H = . if (B1PA33H == 7 | B1PA33H == 8 | B1PA33H == 9)
replace B1PA33J = . if (B1PA33J == 7 | B1PA33J == 8 | B1PA33J == 9)
replace B1PA34A = . if (B1PA34A == 7 | B1PA34A == 8 | B1PA34A == 9)
replace B1PA34B = . if (B1PA34B == 7 | B1PA34B == 8 | B1PA34B == 9)
replace B1PA34C = . if (B1PA34C == 7 | B1PA34C == 8 | B1PA34C == 9)
replace B1PA34D = . if (B1PA34D == 7 | B1PA34D == 8 | B1PA34D == 9)
replace B1PA34E = . if (B1PA34E == 7 | B1PA34E == 8 | B1PA34E == 9)
replace B1PA34F = . if (B1PA34F == 7 | B1PA34F == 8 | B1PA34F == 9)
replace B1PA34H = . if (B1PA34H == 7 | B1PA34H == 8 | B1PA34H == 9)
replace B1PA34I = . if (B1PA34I == 7 | B1PA34I == 8 | B1PA34I == 9)
replace B1PA34J = . if (B1PA34J == 7 | B1PA34J == 8 | B1PA34J == 9)
replace B1PA35A = . if (B1PA35A == 7 | B1PA35A == 8 | B1PA35A == 9)
replace B1PA35B = . if (B1PA35B == 7 | B1PA35B == 8 | B1PA35B == 9)
replace B1PA35C = . if (B1PA35C == 7 | B1PA35C == 8 | B1PA35C == 9)
replace B1PA35D = . if (B1PA35D == 7 | B1PA35D == 8 | B1PA35D == 9)
replace B1PA35E = . if (B1PA35E == 7 | B1PA35E == 8 | B1PA35E == 9)
replace B1PA35F = . if (B1PA35F == 7 | B1PA35F == 8 | B1PA35F == 9)
replace B1PA35G = . if (B1PA35G == 7 | B1PA35G == 8 | B1PA35G == 9)
replace B1PA35H = . if (B1PA35H == 7 | B1PA35H == 8 | B1PA35H == 9)
replace B1PA35I = . if (B1PA35I == 7 | B1PA35I == 8 | B1PA35I == 9)
replace B1PA35J = . if (B1PA35J == 7 | B1PA35J == 8 | B1PA35J == 9)
replace B1PA36A = . if (B1PA36A == 7 | B1PA36A == 8 | B1PA36A == 9)
replace B1PA36AM = . if (B1PA36AM == 97 | B1PA36AM == 98 | B1PA36AM == 99)
replace B1PA36AY = . if (B1PA36AY == 9997 | B1PA36AY == 9998 | B1PA36AY == 9999)
replace B1PA36B = . if (B1PA36B == 7 | B1PA36B == 8 | B1PA36B == 9)
replace B1PA36C = . if (B1PA36C == 7 | B1PA36C == 8 | B1PA36C == 9)
replace B1PA36DM = . if (B1PA36DM == 97 | B1PA36DM == 98 | B1PA36DM == 99)
replace B1PA36DY = . if (B1PA36DY == 9997 | B1PA36DY == 9998 | B1PA36DY == 9999)
replace B1PA36EM = . if (B1PA36EM == 97 | B1PA36EM == 98 | B1PA36EM == 99)
replace B1PA36EY = . if (B1PA36EY == 9997 | B1PA36EY == 9998 | B1PA36EY == 9999)
replace B1PA37 = . if (B1PA37 == 96 | B1PA37 == 97 | B1PA37 == 98)
replace B1PA38A = . if (B1PA38A == 7 | B1PA38A == 8 | B1PA38A == 9)
replace B1PA38B = . if (B1PA38B == 97 | B1PA38B == 98 | B1PA38B == 99)
replace B1PA39 = . if (B1PA39 == 7 | B1PA39 == 8 | B1PA39 == 9)
replace B1PA40 = . if (B1PA40 == 97 | B1PA40 == 98 | B1PA40 == 99)
replace B1PA41 = . if (B1PA41 == 7 | B1PA41 == 8 | B1PA41 == 9)
replace B1PA42 = . if (B1PA42 == 97 | B1PA42 == 98 | B1PA42 == 99)
replace B1PA43 = . if (B1PA43 == 97 | B1PA43 == 98 | B1PA43 == 99)
replace B1PA44 = . if (B1PA44 == 7 | B1PA44 == 8 | B1PA44 == 9)
replace B1PA45A = . if (B1PA45A == 7 | B1PA45A == 8 | B1PA45A == 9)
replace B1PA45B = . if (B1PA45B == 7 | B1PA45B == 8 | B1PA45B == 9)
replace B1PA45C = . if (B1PA45C == 7 | B1PA45C == 8 | B1PA45C == 9)
replace B1PA46 = . if (B1PA46 == 7 | B1PA46 == 8 | B1PA46 == 9)
replace B1PA47 = . if (B1PA47 == 7 | B1PA47 == 8 | B1PA47 == 9)
replace B1PA48 = . if (B1PA48 == 7 | B1PA48 == 8 | B1PA48 == 9)
replace B1PA49 = . if (B1PA49 == 97 | B1PA49 == 98 | B1PA49 == 99)
replace B1PA50 = . if (B1PA50 == 7 | B1PA50 == 8 | B1PA50 == 9)
replace B1PA51 = . if (B1PA51 == 7 | B1PA51 == 8 | B1PA51 == 9)
replace B1PA51A = . if (B1PA51A == 7 | B1PA51A == 8 | B1PA51A == 9)
replace B1PA52 = . if (B1PA52 == 97 | B1PA52 == 98 | B1PA52 == 99)
replace B1PA53 = . if (B1PA53 == 97 | B1PA53 == 98 | B1PA53 == 99)
replace B1PA54 = . if (B1PA54 == 7 | B1PA54 == 8 | B1PA54 == 9)
replace B1PA54A = . if (B1PA54A == 7 | B1PA54A == 8 | B1PA54A == 9)
replace B1PA55 = . if (B1PA55 == 99997.0 | B1PA55 == 99998.0 | B1PA55 == 99999.0)
replace B1PA56 = . if (B1PA56 == 97 | B1PA56 == 98 | B1PA56 == 99)
replace B1PA57 = . if (B1PA57 == 97 | B1PA57 == 98 | B1PA57 == 99)
replace B1PA58 = . if (B1PA58 == 7 | B1PA58 == 8 | B1PA58 == 9)
replace B1PA59 = . if (B1PA59 == 7 | B1PA59 == 8 | B1PA59 == 9)
replace B1PA60 = . if (B1PA60 == 7 | B1PA60 == 8 | B1PA60 == 9)
replace B1PA61 = . if (B1PA61 == 7 | B1PA61 == 8 | B1PA61 == 9)
replace B1PA62 = . if (B1PA62 == 7 | B1PA62 == 8 | B1PA62 == 9)
replace B1PA63 = . if (B1PA63 == 7 | B1PA63 == 8 | B1PA63 == 9)
replace B1PA64 = . if (B1PA64 == 7 | B1PA64 == 8 | B1PA64 == 9)
replace B1PA65 = . if (B1PA65 == 7 | B1PA65 == 8 | B1PA65 == 9)
replace B1PA65A = . if (B1PA65A == 7 | B1PA65A == 8 | B1PA65A == 9)
replace B1PA66 = . if (B1PA66 == 7 | B1PA66 == 8 | B1PA66 == 9)
replace B1PA66A = . if (B1PA66A == 7 | B1PA66A == 8 | B1PA66A == 9)
replace B1PA67 = . if (B1PA67 == 7 | B1PA67 == 8 | B1PA67 == 9)
replace B1PA68 = . if (B1PA68 == 7 | B1PA68 == 8 | B1PA68 == 9)
replace B1PA69 = . if (B1PA69 == 7 | B1PA69 == 8 | B1PA69 == 9)
replace B1PA70 = . if (B1PA70 == 97 | B1PA70 == 98 | B1PA70 == 99)
replace B1PA71MO = . if (B1PA71MO == 97 | B1PA71MO == 98 | B1PA71MO == 99)
replace B1PA71YR = . if (B1PA71YR == 9997 | B1PA71YR == 9998 | B1PA71YR == 9999)
replace B1PA72 = . if (B1PA72 == 7 | B1PA72 == 8 | B1PA72 == 9)
replace B1PA73 = . if (B1PA73 == 7 | B1PA73 == 8 | B1PA73 == 9)
replace B1PA74 = . if (B1PA74 == 7 | B1PA74 == 8 | B1PA74 == 9)
replace B1PA75 = . if (B1PA75 == 7 | B1PA75 == 8 | B1PA75 == 9)
replace B1PA76 = . if (B1PA76 == 7 | B1PA76 == 8 | B1PA76 == 9)
replace B1PA76A = . if (B1PA76A == 7 | B1PA76A == 8 | B1PA76A == 9)
replace B1PA77 = . if (B1PA77 == 7 | B1PA77 == 8 | B1PA77 == 9)
replace B1PA77A = . if (B1PA77A == 7 | B1PA77A == 8 | B1PA77A == 9)
replace B1PA78 = . if (B1PA78 == 7 | B1PA78 == 8 | B1PA78 == 9)
replace B1PA79 = . if (B1PA79 == 7 | B1PA79 == 8 | B1PA79 == 9)
replace B1PA80 = . if (B1PA80 == 7 | B1PA80 == 8 | B1PA80 == 9)
replace B1PA81 = . if (B1PA81 == 97 | B1PA81 == 98 | B1PA81 == 99)
replace B1PA82MO = . if (B1PA82MO == 97 | B1PA82MO == 98 | B1PA82MO == 99)
replace B1PA82YR = . if (B1PA82YR == 9997 | B1PA82YR == 9998 | B1PA82YR == 9999)
replace B1PA83 = . if (B1PA83 == 7 | B1PA83 == 8 | B1PA83 == 9)
replace B1PA83A = . if (B1PA83A == 7 | B1PA83A == 8 | B1PA83A == 9)
replace B1PA84 = . if (B1PA84 == 7 | B1PA84 == 8 | B1PA84 == 9)
replace B1PA84A = . if (B1PA84A == 7 | B1PA84A == 8 | B1PA84A == 9)
replace B1PA85 = . if (B1PA85 == 7 | B1PA85 == 8 | B1PA85 == 9)
replace B1PA85A = . if (B1PA85A == 7 | B1PA85A == 8 | B1PA85A == 9)
replace B1PA86 = . if (B1PA86 == 7 | B1PA86 == 8 | B1PA86 == 9)
replace B1PA86A = . if (B1PA86A == 7 | B1PA86A == 8 | B1PA86A == 9)
replace B1PA87 = . if (B1PA87 == 7 | B1PA87 == 8 | B1PA87 == 9)
replace B1PA87A = . if (B1PA87A == 7 | B1PA87A == 8 | B1PA87A == 9)
replace B1PA88A = . if (B1PA88A == 7 | B1PA88A == 8 | B1PA88A == 9)
replace B1PA88B = . if (B1PA88B == 7 | B1PA88B == 8 | B1PA88B == 9)
replace B1PA88C = . if (B1PA88C == 7 | B1PA88C == 8 | B1PA88C == 9)
replace B1PA88D = . if (B1PA88D == 7 | B1PA88D == 8 | B1PA88D == 9)
replace B1PA88E = . if (B1PA88E == 7 | B1PA88E == 8 | B1PA88E == 9)
replace B1PA88F = . if (B1PA88F == 7 | B1PA88F == 8 | B1PA88F == 9)
replace B1PA88G = . if (B1PA88G == 7 | B1PA88G == 8 | B1PA88G == 9)
replace B1PA88H = . if (B1PA88H == 7 | B1PA88H == 8 | B1PA88H == 9)
replace B1PA88I = . if (B1PA88I == 7 | B1PA88I == 8 | B1PA88I == 9)
replace B1PA88J = . if (B1PA88J == 7 | B1PA88J == 8 | B1PA88J == 9)
replace B1PA89 = . if (B1PA89 == 7 | B1PA89 == 8 | B1PA89 == 9)
replace B1PA90 = . if (B1PA90 == 7 | B1PA90 == 8 | B1PA90 == 9)
replace B1PA90A = . if (B1PA90A == 7 | B1PA90A == 8 | B1PA90A == 9)
replace B1PA91 = . if (B1PA91 == 997 | B1PA91 == 998 | B1PA91 == 999)
replace B1PA92 = . if (B1PA92 == 7 | B1PA92 == 8 | B1PA92 == 9)
replace B1PA92A = . if (B1PA92A == 7 | B1PA92A == 8 | B1PA92A == 9)
replace B1PA92B = . if (B1PA92B == 7 | B1PA92B == 8 | B1PA92B == 9)
replace B1PA92C = . if (B1PA92C == 7 | B1PA92C == 8 | B1PA92C == 9)
replace B1PA92D = . if (B1PA92D == 7 | B1PA92D == 8 | B1PA92D == 9)
replace B1PA92E = . if (B1PA92E == 7 | B1PA92E == 8 | B1PA92E == 9)
replace B1PA92F = . if (B1PA92F == 7 | B1PA92F == 8 | B1PA92F == 9)
replace B1PB1 = . if (B1PB1 == 97 | B1PB1 == 98 | B1PB1 == 99)
replace B1PB2 = . if (B1PB2 == 96 | B1PB2 == 97)
replace B1PB3A = . if (B1PB3A == 7 | B1PB3A == 8 | B1PB3A == 9)
replace B1PB3B = . if (B1PB3B == 7 | B1PB3B == 8 | B1PB3B == 9)
replace B1PB3C = . if (B1PB3C == 7 | B1PB3C == 8 | B1PB3C == 9)
replace B1PB3D = . if (B1PB3D == 7 | B1PB3D == 8 | B1PB3D == 9)
replace B1PB3E = . if (B1PB3E == 7 | B1PB3E == 8 | B1PB3E == 9)
replace B1PB3F = . if (B1PB3F == 7 | B1PB3F == 8 | B1PB3F == 9)
replace B1PB3G = . if (B1PB3G == 7 | B1PB3G == 8 | B1PB3G == 9)
replace B1PB3H = . if (B1PB3H == 7 | B1PB3H == 8 | B1PB3H == 9)
replace B1PB3I = . if (B1PB3I == 7 | B1PB3I == 8 | B1PB3I == 9)
replace B1PB3J = . if (B1PB3J == 7 | B1PB3J == 8 | B1PB3J == 9)
replace B1PB3K = . if (B1PB3K == 7 | B1PB3K == 8 | B1PB3K == 9)
replace B1PBWORK = . if (B1PBWORK == 97 | B1PBWORK == 98 | B1PBWORK == 99)
replace B1PB4N = . if (B1PB4N == 997 | B1PB4N == 998 | B1PB4N == 999)
replace B1PB4M = . if (B1PB4M == 7 | B1PB4M == 8 | B1PB4M == 9)
replace B1PB5 = . if (B1PB5 == 97 | B1PB5 == 98 | B1PB5 == 99)
replace B1PB6 = . if (B1PB6 == 7 | B1PB6 == 8 | B1PB6 == 9)
replace B1PB7 = . if (B1PB7 == 7 | B1PB7 == 8 | B1PB7 == 9)
replace B1PB7A = . if (B1PB7A == 997 | B1PB7A == 998 | B1PB7A == 999)
replace B1PB8 = . if (B1PB8 == 7 | B1PB8 == 8 | B1PB8 == 9)
replace B1POCC = . if (B1POCC >= 995 & B1POCC <= 999)
replace B1PIND = . if (B1PIND >= 995 & B1PIND <= 999)
replace B1PTEDU = . if (B1PTEDU == 9.00)
replace B1PTEARN = . if (B1PTEARN == 9.00)
replace B1PTSEI = . if (B1PTSEI == 999.00)
replace B1PMEDU = . if (B1PMEDU == 9.00)
replace B1PMEARN = . if (B1PMEARN == 9.00)
replace B1PMSEI = . if (B1PMSEI == 999.00)
replace B1PFEDU = . if (B1PFEDU == 9.00)
replace B1PFEARN = . if (B1PFEARN == 9.00)
replace B1PFSEI = . if (B1PFSEI == 999.00)
replace B1POCMAJ = . if (B1POCMAJ == 99)
replace B1PINDMJ = . if (B1PINDMJ == 99)
replace B1PB12 = . if (B1PB12 == 997 | B1PB12 == 998 | B1PB12 == 999)
replace B1PB12A = . if (B1PB12A == 997 | B1PB12A == 998 | B1PB12A == 999)
replace B1PB13 = . if (B1PB13 == 997 | B1PB13 == 998 | B1PB13 == 999)
replace B1PB14 = . if (B1PB14 == 7 | B1PB14 == 8 | B1PB14 == 9)
replace B1PB14A = . if (B1PB14A == 997 | B1PB14A == 998 | B1PB14A == 999)
replace B1PB15 = . if (B1PB15 == 7 | B1PB15 == 8 | B1PB15 == 9)
replace B1POCCP = . if (B1POCCP >= 995 & B1POCCP <= 999)
replace B1PINDP = . if (B1PINDP >= 995 & B1PINDP <= 999)
replace B1PTEDUP = . if (B1PTEDUP == 9.00)
replace B1PTEARP = . if (B1PTEARP == 9.00)
replace B1PTSEIP = . if (B1PTSEIP == 999.00)
replace B1PMEDUP = . if (B1PMEDUP == 9.00)
replace B1PMEARP = . if (B1PMEARP == 9.00)
replace B1PMSEIP = . if (B1PMSEIP == 999.00)
replace B1PFEDUP = . if (B1PFEDUP == 9.00)
replace B1PFEARP = . if (B1PFEARP == 9.00)
replace B1PFSEIP = . if (B1PFSEIP == 999.00)
replace B1POCPMJ = . if (B1POCPMJ == 99)
replace B1PPINMJ = . if (B1PPINMJ == 99)
replace B1PB19 = . if (B1PB19 == 7 | B1PB19 == 8 | B1PB19 == 9)
replace B1PB20 = . if (B1PB20 == 97 | B1PB20 == 98 | B1PB20 == 99)
replace B1PB21M = . if (B1PB21M == 97 | B1PB21M == 98 | B1PB21M == 99)
replace B1PB21Y = . if (B1PB21Y == 9997 | B1PB21Y == 9998 | B1PB21Y == 9999)
replace B1PB22 = . if (B1PB22 == 7 | B1PB22 == 8 | B1PB22 == 9)
replace B1PB23M = . if (B1PB23M == 97 | B1PB23M == 98 | B1PB23M == 99)
replace B1PB23Y = . if (B1PB23Y == 9997 | B1PB23Y == 9998 | B1PB23Y == 9999)
replace B1PB24M = . if (B1PB24M == 97 | B1PB24M == 98 | B1PB24M == 99)
replace B1PB24Y = . if (B1PB24Y == 9997 | B1PB24Y == 9998 | B1PB24Y == 9999)
replace B1PB25M = . if (B1PB25M == 97 | B1PB25M == 98 | B1PB25M == 99)
replace B1PB25Y = . if (B1PB25Y == 9997 | B1PB25Y == 9998 | B1PB25Y == 9999)
replace B1PB26M = . if (B1PB26M == 97 | B1PB26M == 98 | B1PB26M == 99)
replace B1PB26Y = . if (B1PB26Y == 9997 | B1PB26Y == 9998 | B1PB26Y == 9999)
replace B1PB27M = . if (B1PB27M == 97 | B1PB27M == 98 | B1PB27M == 99)
replace B1PB27Y = . if (B1PB27Y == 9997 | B1PB27Y == 9998 | B1PB27Y == 9999)
replace B1PB28M = . if (B1PB28M == 97 | B1PB28M == 98 | B1PB28M == 99)
replace B1PB28Y = . if (B1PB28Y == 9997 | B1PB28Y == 9998 | B1PB28Y == 9999)
replace B1PB29M = . if (B1PB29M == 97 | B1PB29M == 98 | B1PB29M == 99)
replace B1PB29Y = . if (B1PB29Y == 9997 | B1PB29Y == 9998 | B1PB29Y == 9999)
replace B1PB30 = . if (B1PB30 == 7 | B1PB30 == 8 | B1PB30 == 9)
replace B1PB31N = . if (B1PB31N == 997 | B1PB31N == 998 | B1PB31N == 999)
replace B1PB31M = . if (B1PB31M == 7 | B1PB31M == 8 | B1PB31M == 9)
replace B1PB32Y = . if (B1PB32Y == 9997 | B1PB32Y == 9998 | B1PB32Y == 9999)
replace B1PSAGE = . if (B1PSAGE == 97 | B1PSAGE == 98 | B1PSAGE == 99)
replace B1PB33 = . if (B1PB33 == 97 | B1PB33 == 98 | B1PB33 == 99)
replace B1PB34A = . if (B1PB34A == 7 | B1PB34A == 8 | B1PB34A == 9)
replace B1PB34B = . if (B1PB34B == 7 | B1PB34B == 8 | B1PB34B == 9)
replace B1PB34C = . if (B1PB34C == 7 | B1PB34C == 8 | B1PB34C == 9)
replace B1PB34D = . if (B1PB34D == 7 | B1PB34D == 8 | B1PB34D == 9)
replace B1PB34E = . if (B1PB34E == 7 | B1PB34E == 8 | B1PB34E == 9)
replace B1PB34F = . if (B1PB34F == 7 | B1PB34F == 8 | B1PB34F == 9)
replace B1PB34G = . if (B1PB34G == 7 | B1PB34G == 8 | B1PB34G == 9)
replace B1PB34H = . if (B1PB34H == 7 | B1PB34H == 8 | B1PB34H == 9)
replace B1PB34I = . if (B1PB34I == 7 | B1PB34I == 8 | B1PB34I == 9)
replace B1PB34J = . if (B1PB34J == 7 | B1PB34J == 8 | B1PB34J == 9)
replace B1PB34K = . if (B1PB34K == 7 | B1PB34K == 8 | B1PB34K == 9)
replace B1PB34WK = . if (B1PB34WK == 97 | B1PB34WK == 98 | B1PB34WK == 99)
replace B1PB35N = . if (B1PB35N >= 996 & B1PB35N <= 999)
replace B1PB35M = . if (B1PB35M == 997 | B1PB35M == 998 | B1PB35M == 999)
replace B1PB36 = . if (B1PB36 == 97 | B1PB36 == 98 | B1PB36 == 99)
replace B1PB37 = . if (B1PB37 == 7 | B1PB37 == 8 | B1PB37 == 9)
replace B1PB38 = . if (B1PB38 == 7 | B1PB38 == 8 | B1PB38 == 9)
replace B1PB39 = . if (B1PB39 == 7 | B1PB39 == 8 | B1PB39 == 9)
replace B1POCCS = . if (B1POCCS >= 995 & B1POCCS <= 999)
replace B1PINDS = . if (B1PINDS >= 995 & B1PINDS <= 999)
replace B1PTEDUS = . if (B1PTEDUS == 9.00)
replace B1PTEARS = . if (B1PTEARS == 9.00)
replace B1PTSEIS = . if (B1PTSEIS == 999.00)
replace B1PMEDUS = . if (B1PMEDUS == 9.00)
replace B1PMEARS = . if (B1PMEARS == 9.00)
replace B1PMSEIS = . if (B1PMSEIS == 999.00)
replace B1PFEDUS = . if (B1PFEDUS == 9.00)
replace B1PFEARS = . if (B1PFEARS == 9.00)
replace B1PFSEIS = . if (B1PFSEIS == 999.00)
replace B1PSOCMJ = . if (B1PSOCMJ == 99)
replace B1PSINMJ = . if (B1PSINMJ == 99)
replace B1PC1 = . if (B1PC1 == 7 | B1PC1 == 8 | B1PC1 == 9)
replace B1PC2 = . if (B1PC2 == 97 | B1PC2 == 98 | B1PC2 == 99)
replace B1PC3 = . if (B1PC3 == 7 | B1PC3 == 8 | B1PC3 == 9)
replace B1PC4 = . if (B1PC4 == 97 | B1PC4 == 98 | B1PC4 == 99)
replace B1PCHA1 = . if (B1PCHA1 == 997 | B1PCHA1 == 998 | B1PCHA1 == 999)
replace B1PCHX1 = . if (B1PCHX1 == 7 | B1PCHX1 == 8 | B1PCHX1 == 9)
replace B1PCHR1 = . if (B1PCHR1 == 97 | B1PCHR1 == 98 | B1PCHR1 == 99)
replace B1PCMB1 = . if (B1PCMB1 == 97 | B1PCMB1 == 98 | B1PCMB1 == 99)
replace B1PCYB1 = . if (B1PCYB1 == 9997 | B1PCYB1 == 9998 | B1PCYB1 == 9999)
replace B1PHHA1 = . if (B1PHHA1 == 997 | B1PHHA1 == 998 | B1PHHA1 == 999)
replace B1PCHC1 = . if (B1PCHC1 == 7 | B1PCHC1 == 8 | B1PCHC1 == 9)
replace B1PCHH1 = . if (B1PCHH1 == 7 | B1PCHH1 == 8 | B1PCHH1 == 9)
replace B1PCDD1 = . if (B1PCDD1 == 7 | B1PCDD1 == 8 | B1PCDD1 == 9)
replace B1PCDT1 = . if (B1PCDT1 == 997 | B1PCDT1 == 998 | B1PCDT1 == 999)
replace B1PCDP1 = . if (B1PCDP1 == 7 | B1PCDP1 == 8 | B1PCDP1 == 9)
replace B1PCDA1 = . if (B1PCDA1 == 97 | B1PCDA1 == 98 | B1PCDA1 == 99)
replace B1PCDX1 = . if (B1PCDX1 == 7 | B1PCDX1 == 8 | B1PCDX1 == 9)
replace B1PCXT1 = . if (B1PCXT1 == 7 | B1PCXT1 == 8 | B1PCXT1 == 9)
replace B1PCDO1 = . if (B1PCDO1 == 7 | B1PCDO1 == 8 | B1PCDO1 == 9)
replace B1PCHA2 = . if (B1PCHA2 == 997 | B1PCHA2 == 998 | B1PCHA2 == 999)
replace B1PCHX2 = . if (B1PCHX2 == 7 | B1PCHX2 == 8 | B1PCHX2 == 9)
replace B1PCHR2 = . if (B1PCHR2 == 97 | B1PCHR2 == 98 | B1PCHR2 == 99)
replace B1PCMB2 = . if (B1PCMB2 == 97 | B1PCMB2 == 98 | B1PCMB2 == 99)
replace B1PCYB2 = . if (B1PCYB2 == 9997 | B1PCYB2 == 9998 | B1PCYB2 == 9999)
replace B1PHHA2 = . if (B1PHHA2 == 997 | B1PHHA2 == 998 | B1PHHA2 == 999)
replace B1PCHC2 = . if (B1PCHC2 == 7 | B1PCHC2 == 8 | B1PCHC2 == 9)
replace B1PCHH2 = . if (B1PCHH2 == 7 | B1PCHH2 == 8 | B1PCHH2 == 9)
replace B1PCDD2 = . if (B1PCDD2 == 7 | B1PCDD2 == 8 | B1PCDD2 == 9)
replace B1PCDT2 = . if (B1PCDT2 == 997 | B1PCDT2 == 998 | B1PCDT2 == 999)
replace B1PCDP2 = . if (B1PCDP2 == 7 | B1PCDP2 == 8 | B1PCDP2 == 9)
replace B1PCDA2 = . if (B1PCDA2 == 97 | B1PCDA2 == 98 | B1PCDA2 == 99)
replace B1PCDX2 = . if (B1PCDX2 == 7 | B1PCDX2 == 8 | B1PCDX2 == 9)
replace B1PCXT2 = . if (B1PCXT2 == 7 | B1PCXT2 == 8 | B1PCXT2 == 9)
replace B1PCDO2 = . if (B1PCDO2 == 7 | B1PCDO2 == 8 | B1PCDO2 == 9)
replace B1PCHA3 = . if (B1PCHA3 == 997 | B1PCHA3 == 998 | B1PCHA3 == 999)
replace B1PCHX3 = . if (B1PCHX3 == 7 | B1PCHX3 == 8 | B1PCHX3 == 9)
replace B1PCHR3 = . if (B1PCHR3 == 97 | B1PCHR3 == 98 | B1PCHR3 == 99)
replace B1PCMB3 = . if (B1PCMB3 == 97 | B1PCMB3 == 98 | B1PCMB3 == 99)
replace B1PCYB3 = . if (B1PCYB3 == 9997 | B1PCYB3 == 9998 | B1PCYB3 == 9999)
replace B1PHHA3 = . if (B1PHHA3 == 997 | B1PHHA3 == 998 | B1PHHA3 == 999)
replace B1PCHC3 = . if (B1PCHC3 == 7 | B1PCHC3 == 8 | B1PCHC3 == 9)
replace B1PCHH3 = . if (B1PCHH3 == 7 | B1PCHH3 == 8 | B1PCHH3 == 9)
replace B1PCDD3 = . if (B1PCDD3 == 7 | B1PCDD3 == 8 | B1PCDD3 == 9)
replace B1PCDT3 = . if (B1PCDT3 == 997 | B1PCDT3 == 998 | B1PCDT3 == 999)
replace B1PCDP3 = . if (B1PCDP3 == 7 | B1PCDP3 == 8 | B1PCDP3 == 9)
replace B1PCDA3 = . if (B1PCDA3 == 97 | B1PCDA3 == 98 | B1PCDA3 == 99)
replace B1PCDX3 = . if (B1PCDX3 == 7 | B1PCDX3 == 8 | B1PCDX3 == 9)
replace B1PCXT3 = . if (B1PCXT3 == 7 | B1PCXT3 == 8 | B1PCXT3 == 9)
replace B1PCDO3 = . if (B1PCDO3 == 7 | B1PCDO3 == 8 | B1PCDO3 == 9)
replace B1PCHA4 = . if (B1PCHA4 == 997 | B1PCHA4 == 998 | B1PCHA4 == 999)
replace B1PCHX4 = . if (B1PCHX4 == 7 | B1PCHX4 == 8 | B1PCHX4 == 9)
replace B1PCHR4 = . if (B1PCHR4 == 97 | B1PCHR4 == 98 | B1PCHR4 == 99)
replace B1PCMB4 = . if (B1PCMB4 == 97 | B1PCMB4 == 98 | B1PCMB4 == 99)
replace B1PCYB4 = . if (B1PCYB4 == 9997 | B1PCYB4 == 9998 | B1PCYB4 == 9999)
replace B1PHHA4 = . if (B1PHHA4 == 997 | B1PHHA4 == 998 | B1PHHA4 == 999)
replace B1PCHC4 = . if (B1PCHC4 == 7 | B1PCHC4 == 8 | B1PCHC4 == 9)
replace B1PCHH4 = . if (B1PCHH4 == 7 | B1PCHH4 == 8 | B1PCHH4 == 9)
replace B1PCDD4 = . if (B1PCDD4 == 7 | B1PCDD4 == 8 | B1PCDD4 == 9)
replace B1PCDT4 = . if (B1PCDT4 == 997 | B1PCDT4 == 998 | B1PCDT4 == 999)
replace B1PCDP4 = . if (B1PCDP4 == 7 | B1PCDP4 == 8 | B1PCDP4 == 9)
replace B1PCDA4 = . if (B1PCDA4 == 97 | B1PCDA4 == 98 | B1PCDA4 == 99)
replace B1PCDX4 = . if (B1PCDX4 == 7 | B1PCDX4 == 8 | B1PCDX4 == 9)
replace B1PCXT4 = . if (B1PCXT4 == 7 | B1PCXT4 == 8 | B1PCXT4 == 9)
replace B1PCDO4 = . if (B1PCDO4 == 7 | B1PCDO4 == 8 | B1PCDO4 == 9)
replace B1PCHA5 = . if (B1PCHA5 == 997 | B1PCHA5 == 998 | B1PCHA5 == 999)
replace B1PCHX5 = . if (B1PCHX5 == 7 | B1PCHX5 == 8 | B1PCHX5 == 9)
replace B1PCHR5 = . if (B1PCHR5 == 97 | B1PCHR5 == 98 | B1PCHR5 == 99)
replace B1PCMB5 = . if (B1PCMB5 == 97 | B1PCMB5 == 98 | B1PCMB5 == 99)
replace B1PCYB5 = . if (B1PCYB5 == 9997 | B1PCYB5 == 9998 | B1PCYB5 == 9999)
replace B1PHHA5 = . if (B1PHHA5 == 997 | B1PHHA5 == 998 | B1PHHA5 == 999)
replace B1PCHC5 = . if (B1PCHC5 == 7 | B1PCHC5 == 8 | B1PCHC5 == 9)
replace B1PCHH5 = . if (B1PCHH5 == 7 | B1PCHH5 == 8 | B1PCHH5 == 9)
replace B1PCDD5 = . if (B1PCDD5 == 7 | B1PCDD5 == 8 | B1PCDD5 == 9)
replace B1PCDT5 = . if (B1PCDT5 == 997 | B1PCDT5 == 998 | B1PCDT5 == 999)
replace B1PCDP5 = . if (B1PCDP5 == 7 | B1PCDP5 == 8 | B1PCDP5 == 9)
replace B1PCDA5 = . if (B1PCDA5 == 97 | B1PCDA5 == 98 | B1PCDA5 == 99)
replace B1PCDX5 = . if (B1PCDX5 == 7 | B1PCDX5 == 8 | B1PCDX5 == 9)
replace B1PCXT5 = . if (B1PCXT5 == 7 | B1PCXT5 == 8 | B1PCXT5 == 9)
replace B1PCDO5 = . if (B1PCDO5 == 7 | B1PCDO5 == 8 | B1PCDO5 == 9)
replace B1PCHA6 = . if (B1PCHA6 == 997 | B1PCHA6 == 998 | B1PCHA6 == 999)
replace B1PCHX6 = . if (B1PCHX6 == 7 | B1PCHX6 == 8 | B1PCHX6 == 9)
replace B1PCHR6 = . if (B1PCHR6 == 97 | B1PCHR6 == 98 | B1PCHR6 == 99)
replace B1PCMB6 = . if (B1PCMB6 == 97 | B1PCMB6 == 98 | B1PCMB6 == 99)
replace B1PCYB6 = . if (B1PCYB6 == 9997 | B1PCYB6 == 9998 | B1PCYB6 == 9999)
replace B1PHHA6 = . if (B1PHHA6 == 997 | B1PHHA6 == 998 | B1PHHA6 == 999)
replace B1PCHC6 = . if (B1PCHC6 == 7 | B1PCHC6 == 8 | B1PCHC6 == 9)
replace B1PCHH6 = . if (B1PCHH6 == 7 | B1PCHH6 == 8 | B1PCHH6 == 9)
replace B1PCDD6 = . if (B1PCDD6 == 7 | B1PCDD6 == 8 | B1PCDD6 == 9)
replace B1PCDT6 = . if (B1PCDT6 == 997 | B1PCDT6 == 998 | B1PCDT6 == 999)
replace B1PCDP6 = . if (B1PCDP6 == 7 | B1PCDP6 == 8 | B1PCDP6 == 9)
replace B1PCDA6 = . if (B1PCDA6 == 97 | B1PCDA6 == 98 | B1PCDA6 == 99)
replace B1PCDX6 = . if (B1PCDX6 == 7 | B1PCDX6 == 8 | B1PCDX6 == 9)
replace B1PCXT6 = . if (B1PCXT6 == 7 | B1PCXT6 == 8 | B1PCXT6 == 9)
replace B1PCDO6 = . if (B1PCDO6 == 7 | B1PCDO6 == 8 | B1PCDO6 == 9)
replace B1PCHA7 = . if (B1PCHA7 == 997 | B1PCHA7 == 998 | B1PCHA7 == 999)
replace B1PCHX7 = . if (B1PCHX7 == 7 | B1PCHX7 == 8 | B1PCHX7 == 9)
replace B1PCHR7 = . if (B1PCHR7 == 97 | B1PCHR7 == 98 | B1PCHR7 == 99)
replace B1PCMB7 = . if (B1PCMB7 == 97 | B1PCMB7 == 98 | B1PCMB7 == 99)
replace B1PCYB7 = . if (B1PCYB7 == 9997 | B1PCYB7 == 9998 | B1PCYB7 == 9999)
replace B1PHHA7 = . if (B1PHHA7 == 997 | B1PHHA7 == 998 | B1PHHA7 == 999)
replace B1PCHC7 = . if (B1PCHC7 == 7 | B1PCHC7 == 8 | B1PCHC7 == 9)
replace B1PCHH7 = . if (B1PCHH7 == 7 | B1PCHH7 == 8 | B1PCHH7 == 9)
replace B1PCDD7 = . if (B1PCDD7 == 7 | B1PCDD7 == 8 | B1PCDD7 == 9)
replace B1PCDT7 = . if (B1PCDT7 == 997 | B1PCDT7 == 998 | B1PCDT7 == 999)
replace B1PCDP7 = . if (B1PCDP7 == 7 | B1PCDP7 == 8 | B1PCDP7 == 9)
replace B1PCDA7 = . if (B1PCDA7 == 97 | B1PCDA7 == 98 | B1PCDA7 == 99)
replace B1PCDX7 = . if (B1PCDX7 == 7 | B1PCDX7 == 8 | B1PCDX7 == 9)
replace B1PCXT7 = . if (B1PCXT7 == 7 | B1PCXT7 == 8 | B1PCXT7 == 9)
replace B1PCDO7 = . if (B1PCDO7 == 7 | B1PCDO7 == 8 | B1PCDO7 == 9)
replace B1PCHA8 = . if (B1PCHA8 == 997 | B1PCHA8 == 998 | B1PCHA8 == 999)
replace B1PCHX8 = . if (B1PCHX8 == 7 | B1PCHX8 == 8 | B1PCHX8 == 9)
replace B1PCHR8 = . if (B1PCHR8 == 97 | B1PCHR8 == 98 | B1PCHR8 == 99)
replace B1PCMB8 = . if (B1PCMB8 == 97 | B1PCMB8 == 98 | B1PCMB8 == 99)
replace B1PCYB8 = . if (B1PCYB8 == 9997 | B1PCYB8 == 9998 | B1PCYB8 == 9999)
replace B1PHHA8 = . if (B1PHHA8 == 997 | B1PHHA8 == 998 | B1PHHA8 == 999)
replace B1PCHC8 = . if (B1PCHC8 == 7 | B1PCHC8 == 8 | B1PCHC8 == 9)
replace B1PCHH8 = . if (B1PCHH8 == 7 | B1PCHH8 == 8 | B1PCHH8 == 9)
replace B1PCDD8 = . if (B1PCDD8 == 7 | B1PCDD8 == 8 | B1PCDD8 == 9)
replace B1PCDT8 = . if (B1PCDT8 == 997 | B1PCDT8 == 998 | B1PCDT8 == 999)
replace B1PCDP8 = . if (B1PCDP8 == 7 | B1PCDP8 == 8 | B1PCDP8 == 9)
replace B1PCDA8 = . if (B1PCDA8 == 97 | B1PCDA8 == 98 | B1PCDA8 == 99)
replace B1PCDX8 = . if (B1PCDX8 == 7 | B1PCDX8 == 8 | B1PCDX8 == 9)
replace B1PCXT8 = . if (B1PCXT8 == 7 | B1PCXT8 == 8 | B1PCXT8 == 9)
replace B1PCDO8 = . if (B1PCDO8 == 7 | B1PCDO8 == 8 | B1PCDO8 == 9)
replace B1PCHA9 = . if (B1PCHA9 == 997 | B1PCHA9 == 998 | B1PCHA9 == 999)
replace B1PCHX9 = . if (B1PCHX9 == 7 | B1PCHX9 == 8 | B1PCHX9 == 9)
replace B1PCHR9 = . if (B1PCHR9 == 97 | B1PCHR9 == 98 | B1PCHR9 == 99)
replace B1PCMB9 = . if (B1PCMB9 == 97 | B1PCMB9 == 98 | B1PCMB9 == 99)
replace B1PCYB9 = . if (B1PCYB9 == 9997 | B1PCYB9 == 9998 | B1PCYB9 == 9999)
replace B1PHHA9 = . if (B1PHHA9 == 997 | B1PHHA9 == 998 | B1PHHA9 == 999)
replace B1PCHC9 = . if (B1PCHC9 == 7 | B1PCHC9 == 8 | B1PCHC9 == 9)
replace B1PCHH9 = . if (B1PCHH9 == 7 | B1PCHH9 == 8 | B1PCHH9 == 9)
replace B1PCDD9 = . if (B1PCDD9 == 7 | B1PCDD9 == 8 | B1PCDD9 == 9)
replace B1PCDT9 = . if (B1PCDT9 == 997 | B1PCDT9 == 998 | B1PCDT9 == 999)
replace B1PCDP9 = . if (B1PCDP9 == 7 | B1PCDP9 == 8 | B1PCDP9 == 9)
replace B1PCDA9 = . if (B1PCDA9 == 97 | B1PCDA9 == 98 | B1PCDA9 == 99)
replace B1PCDX9 = . if (B1PCDX9 == 7 | B1PCDX9 == 8 | B1PCDX9 == 9)
replace B1PCXT9 = . if (B1PCXT9 == 7 | B1PCXT9 == 8 | B1PCXT9 == 9)
replace B1PCDO9 = . if (B1PCDO9 == 7 | B1PCDO9 == 8 | B1PCDO9 == 9)
replace B1PCHA10 = . if (B1PCHA10 == 997 | B1PCHA10 == 998 | B1PCHA10 == 999)
replace B1PCHX10 = . if (B1PCHX10 == 7 | B1PCHX10 == 8 | B1PCHX10 == 9)
replace B1PCHR10 = . if (B1PCHR10 == 97 | B1PCHR10 == 98 | B1PCHR10 == 99)
replace B1PCMB10 = . if (B1PCMB10 == 97 | B1PCMB10 == 98 | B1PCMB10 == 99)
replace B1PCYB10 = . if (B1PCYB10 == 9997 | B1PCYB10 == 9998 | B1PCYB10 == 9999)
replace B1PHHA10 = . if (B1PHHA10 == 997 | B1PHHA10 == 998 | B1PHHA10 == 999)
replace B1PCHC10 = . if (B1PCHC10 == 7 | B1PCHC10 == 8 | B1PCHC10 == 9)
replace B1PCHH10 = . if (B1PCHH10 == 7 | B1PCHH10 == 8 | B1PCHH10 == 9)
replace B1PCDD10 = . if (B1PCDD10 == 7 | B1PCDD10 == 8 | B1PCDD10 == 9)
replace B1PCDT10 = . if (B1PCDT10 == 997 | B1PCDT10 == 998 | B1PCDT10 == 999)
replace B1PCDP10 = . if (B1PCDP10 == 7 | B1PCDP10 == 8 | B1PCDP10 == 9)
replace B1PCDA10 = . if (B1PCDA10 == 97 | B1PCDA10 == 98 | B1PCDA10 == 99)
replace B1PCDX10 = . if (B1PCDX10 == 7 | B1PCDX10 == 8 | B1PCDX10 == 9)
replace B1PCXT10 = . if (B1PCXT10 == 7 | B1PCXT10 == 8 | B1PCXT10 == 9)
replace B1PCDO10 = . if (B1PCDO10 == 7 | B1PCDO10 == 8 | B1PCDO10 == 9)
replace B1PCHA11 = . if (B1PCHA11 == 997 | B1PCHA11 == 998 | B1PCHA11 == 999)
replace B1PCHX11 = . if (B1PCHX11 == 7 | B1PCHX11 == 8 | B1PCHX11 == 9)
replace B1PCHR11 = . if (B1PCHR11 == 97 | B1PCHR11 == 98 | B1PCHR11 == 99)
replace B1PCMB11 = . if (B1PCMB11 == 97 | B1PCMB11 == 98 | B1PCMB11 == 99)
replace B1PCYB11 = . if (B1PCYB11 == 9997 | B1PCYB11 == 9998 | B1PCYB11 == 9999)
replace B1PHHA11 = . if (B1PHHA11 == 997 | B1PHHA11 == 998 | B1PHHA11 == 999)
replace B1PCHC11 = . if (B1PCHC11 == 7 | B1PCHC11 == 8 | B1PCHC11 == 9)
replace B1PCHH11 = . if (B1PCHH11 == 7 | B1PCHH11 == 8 | B1PCHH11 == 9)
replace B1PCDD11 = . if (B1PCDD11 == 7 | B1PCDD11 == 8 | B1PCDD11 == 9)
replace B1PCDT11 = . if (B1PCDT11 == 997 | B1PCDT11 == 998 | B1PCDT11 == 999)
replace B1PCDP11 = . if (B1PCDP11 == 7 | B1PCDP11 == 8 | B1PCDP11 == 9)
replace B1PCDA11 = . if (B1PCDA11 == 97 | B1PCDA11 == 98 | B1PCDA11 == 99)
replace B1PCDX11 = . if (B1PCDX11 == 7 | B1PCDX11 == 8 | B1PCDX11 == 9)
replace B1PCXT11 = . if (B1PCXT11 == 7 | B1PCXT11 == 8 | B1PCXT11 == 9)
replace B1PCDO11 = . if (B1PCDO11 == 7 | B1PCDO11 == 8 | B1PCDO11 == 9)
replace B1PCHA12 = . if (B1PCHA12 == 997 | B1PCHA12 == 998 | B1PCHA12 == 999)
replace B1PCHX12 = . if (B1PCHX12 == 7 | B1PCHX12 == 8 | B1PCHX12 == 9)
replace B1PCHR12 = . if (B1PCHR12 == 97 | B1PCHR12 == 98 | B1PCHR12 == 99)
replace B1PCMB12 = . if (B1PCMB12 == 97 | B1PCMB12 == 98 | B1PCMB12 == 99)
replace B1PCYB12 = . if (B1PCYB12 == 9997 | B1PCYB12 == 9998 | B1PCYB12 == 9999)
replace B1PHHA12 = . if (B1PHHA12 == 997 | B1PHHA12 == 998 | B1PHHA12 == 999)
replace B1PCHC12 = . if (B1PCHC12 == 7 | B1PCHC12 == 8 | B1PCHC12 == 9)
replace B1PCHH12 = . if (B1PCHH12 == 7 | B1PCHH12 == 8 | B1PCHH12 == 9)
replace B1PCDD12 = . if (B1PCDD12 == 7 | B1PCDD12 == 8 | B1PCDD12 == 9)
replace B1PCDT12 = . if (B1PCDT12 == 997 | B1PCDT12 == 998 | B1PCDT12 == 999)
replace B1PCDP12 = . if (B1PCDP12 == 7 | B1PCDP12 == 8 | B1PCDP12 == 9)
replace B1PCDA12 = . if (B1PCDA12 == 97 | B1PCDA12 == 98 | B1PCDA12 == 99)
replace B1PCDX12 = . if (B1PCDX12 == 7 | B1PCDX12 == 8 | B1PCDX12 == 9)
replace B1PCXT12 = . if (B1PCXT12 == 7 | B1PCXT12 == 8 | B1PCXT12 == 9)
replace B1PCDO12 = . if (B1PCDO12 == 7 | B1PCDO12 == 8 | B1PCDO12 == 9)
replace B1PCHA13 = . if (B1PCHA13 == 997 | B1PCHA13 == 998 | B1PCHA13 == 999)
replace B1PCHX13 = . if (B1PCHX13 == 7 | B1PCHX13 == 8 | B1PCHX13 == 9)
replace B1PCHR13 = . if (B1PCHR13 == 97 | B1PCHR13 == 98 | B1PCHR13 == 99)
replace B1PCMB13 = . if (B1PCMB13 == 97 | B1PCMB13 == 98 | B1PCMB13 == 99)
replace B1PCYB13 = . if (B1PCYB13 == 9997 | B1PCYB13 == 9998 | B1PCYB13 == 9999)
replace B1PHHA13 = . if (B1PHHA13 == 997 | B1PHHA13 == 998 | B1PHHA13 == 999)
replace B1PCHC13 = . if (B1PCHC13 == 7 | B1PCHC13 == 8 | B1PCHC13 == 9)
replace B1PCHH13 = . if (B1PCHH13 == 7 | B1PCHH13 == 8 | B1PCHH13 == 9)
replace B1PCDD13 = . if (B1PCDD13 == 7 | B1PCDD13 == 8 | B1PCDD13 == 9)
replace B1PCDT13 = . if (B1PCDT13 == 997 | B1PCDT13 == 998 | B1PCDT13 == 999)
replace B1PCDP13 = . if (B1PCDP13 == 7 | B1PCDP13 == 8 | B1PCDP13 == 9)
replace B1PCDA13 = . if (B1PCDA13 == 97 | B1PCDA13 == 98 | B1PCDA13 == 99)
replace B1PCDX13 = . if (B1PCDX13 == 7 | B1PCDX13 == 8 | B1PCDX13 == 9)
replace B1PCXT13 = . if (B1PCXT13 == 7 | B1PCXT13 == 8 | B1PCXT13 == 9)
replace B1PCDO13 = . if (B1PCDO13 == 7 | B1PCDO13 == 8 | B1PCDO13 == 9)
replace B1PCHA14 = . if (B1PCHA14 == 997 | B1PCHA14 == 998 | B1PCHA14 == 999)
replace B1PCHX14 = . if (B1PCHX14 == 7 | B1PCHX14 == 8 | B1PCHX14 == 9)
replace B1PCHR14 = . if (B1PCHR14 == 97 | B1PCHR14 == 98 | B1PCHR14 == 99)
replace B1PCMB14 = . if (B1PCMB14 == 97 | B1PCMB14 == 98 | B1PCMB14 == 99)
replace B1PCYB14 = . if (B1PCYB14 == 9997 | B1PCYB14 == 9998 | B1PCYB14 == 9999)
replace B1PHHA14 = . if (B1PHHA14 == 997 | B1PHHA14 == 998 | B1PHHA14 == 999)
replace B1PCHC14 = . if (B1PCHC14 == 7 | B1PCHC14 == 8 | B1PCHC14 == 9)
replace B1PCHH14 = . if (B1PCHH14 == 7 | B1PCHH14 == 8 | B1PCHH14 == 9)
replace B1PCDD14 = . if (B1PCDD14 == 7 | B1PCDD14 == 8 | B1PCDD14 == 9)
replace B1PCDT14 = . if (B1PCDT14 == 997 | B1PCDT14 == 998 | B1PCDT14 == 999)
replace B1PCDP14 = . if (B1PCDP14 == 7 | B1PCDP14 == 8 | B1PCDP14 == 9)
replace B1PCDA14 = . if (B1PCDA14 == 97 | B1PCDA14 == 98 | B1PCDA14 == 99)
replace B1PCDX14 = . if (B1PCDX14 == 7 | B1PCDX14 == 8 | B1PCDX14 == 9)
replace B1PCXT14 = . if (B1PCXT14 == 7 | B1PCXT14 == 8 | B1PCXT14 == 9)
replace B1PCDO14 = . if (B1PCDO14 == 7 | B1PCDO14 == 8 | B1PCDO14 == 9)
replace B1PCHA15 = . if (B1PCHA15 == 997 | B1PCHA15 == 998 | B1PCHA15 == 999)
replace B1PCHX15 = . if (B1PCHX15 == 7 | B1PCHX15 == 8 | B1PCHX15 == 9)
replace B1PCHR15 = . if (B1PCHR15 == 97 | B1PCHR15 == 98 | B1PCHR15 == 99)
replace B1PCMB15 = . if (B1PCMB15 == 97 | B1PCMB15 == 98 | B1PCMB15 == 99)
replace B1PCYB15 = . if (B1PCYB15 == 9997 | B1PCYB15 == 9998 | B1PCYB15 == 9999)
replace B1PHHA15 = . if (B1PHHA15 == 997 | B1PHHA15 == 998 | B1PHHA15 == 999)
replace B1PCHC15 = . if (B1PCHC15 == 7 | B1PCHC15 == 8 | B1PCHC15 == 9)
replace B1PCHH15 = . if (B1PCHH15 == 7 | B1PCHH15 == 8 | B1PCHH15 == 9)
replace B1PCDD15 = . if (B1PCDD15 == 7 | B1PCDD15 == 8 | B1PCDD15 == 9)
replace B1PCDT15 = . if (B1PCDT15 == 997 | B1PCDT15 == 998 | B1PCDT15 == 999)
replace B1PCDP15 = . if (B1PCDP15 == 7 | B1PCDP15 == 8 | B1PCDP15 == 9)
replace B1PCDA15 = . if (B1PCDA15 == 97 | B1PCDA15 == 98 | B1PCDA15 == 99)
replace B1PCDX15 = . if (B1PCDX15 == 7 | B1PCDX15 == 8 | B1PCDX15 == 9)
replace B1PCXT15 = . if (B1PCXT15 == 7 | B1PCXT15 == 8 | B1PCXT15 == 9)
replace B1PCDO15 = . if (B1PCDO15 == 7 | B1PCDO15 == 8 | B1PCDO15 == 9)
replace B1PCHA16 = . if (B1PCHA16 == 997 | B1PCHA16 == 998 | B1PCHA16 == 999)
replace B1PCHX16 = . if (B1PCHX16 == 7 | B1PCHX16 == 8 | B1PCHX16 == 9)
replace B1PCHR16 = . if (B1PCHR16 == 97 | B1PCHR16 == 98 | B1PCHR16 == 99)
replace B1PCMB16 = . if (B1PCMB16 == 97 | B1PCMB16 == 98 | B1PCMB16 == 99)
replace B1PCYB16 = . if (B1PCYB16 == 9997 | B1PCYB16 == 9998 | B1PCYB16 == 9999)
replace B1PHHA16 = . if (B1PHHA16 == 997 | B1PHHA16 == 998 | B1PHHA16 == 999)
replace B1PCHC16 = . if (B1PCHC16 == 7 | B1PCHC16 == 8 | B1PCHC16 == 9)
replace B1PCHH16 = . if (B1PCHH16 == 7 | B1PCHH16 == 8 | B1PCHH16 == 9)
replace B1PCDD16 = . if (B1PCDD16 == 7 | B1PCDD16 == 8 | B1PCDD16 == 9)
replace B1PCDT16 = . if (B1PCDT16 == 997 | B1PCDT16 == 998 | B1PCDT16 == 999)
replace B1PCDP16 = . if (B1PCDP16 == 7 | B1PCDP16 == 8 | B1PCDP16 == 9)
replace B1PCDA16 = . if (B1PCDA16 == 97 | B1PCDA16 == 98 | B1PCDA16 == 99)
replace B1PCDX16 = . if (B1PCDX16 == 7 | B1PCDX16 == 8 | B1PCDX16 == 9)
replace B1PCXT16 = . if (B1PCXT16 == 7 | B1PCXT16 == 8 | B1PCXT16 == 9)
replace B1PCDO16 = . if (B1PCDO16 == 7 | B1PCDO16 == 8 | B1PCDO16 == 9)
replace B1PCHA17 = . if (B1PCHA17 == 997 | B1PCHA17 == 998 | B1PCHA17 == 999)
replace B1PCHX17 = . if (B1PCHX17 == 7 | B1PCHX17 == 8 | B1PCHX17 == 9)
replace B1PCHR17 = . if (B1PCHR17 == 97 | B1PCHR17 == 98 | B1PCHR17 == 99)
replace B1PCMB17 = . if (B1PCMB17 == 97 | B1PCMB17 == 98 | B1PCMB17 == 99)
replace B1PCYB17 = . if (B1PCYB17 == 9997 | B1PCYB17 == 9998 | B1PCYB17 == 9999)
replace B1PHHA17 = . if (B1PHHA17 == 997 | B1PHHA17 == 998 | B1PHHA17 == 999)
replace B1PCHC17 = . if (B1PCHC17 == 7 | B1PCHC17 == 8 | B1PCHC17 == 9)
replace B1PCHH17 = . if (B1PCHH17 == 7 | B1PCHH17 == 8 | B1PCHH17 == 9)
replace B1PCDD17 = . if (B1PCDD17 == 7 | B1PCDD17 == 8 | B1PCDD17 == 9)
replace B1PCDT17 = . if (B1PCDT17 == 997 | B1PCDT17 == 998 | B1PCDT17 == 999)
replace B1PCDP17 = . if (B1PCDP17 == 7 | B1PCDP17 == 8 | B1PCDP17 == 9)
replace B1PCDA17 = . if (B1PCDA17 == 97 | B1PCDA17 == 98 | B1PCDA17 == 99)
replace B1PCDX17 = . if (B1PCDX17 == 7 | B1PCDX17 == 8 | B1PCDX17 == 9)
replace B1PCXT17 = . if (B1PCXT17 == 7 | B1PCXT17 == 8 | B1PCXT17 == 9)
replace B1PCDO17 = . if (B1PCDO17 == 7 | B1PCDO17 == 8 | B1PCDO17 == 9)
replace B1PCHA18 = . if (B1PCHA18 == 997 | B1PCHA18 == 998 | B1PCHA18 == 999)
replace B1PCHX18 = . if (B1PCHX18 == 7 | B1PCHX18 == 8 | B1PCHX18 == 9)
replace B1PCHR18 = . if (B1PCHR18 == 97 | B1PCHR18 == 98 | B1PCHR18 == 99)
replace B1PCMB18 = . if (B1PCMB18 == 97 | B1PCMB18 == 98 | B1PCMB18 == 99)
replace B1PCYB18 = . if (B1PCYB18 == 9997 | B1PCYB18 == 9998 | B1PCYB18 == 9999)
replace B1PHHA18 = . if (B1PHHA18 == 997 | B1PHHA18 == 998 | B1PHHA18 == 999)
replace B1PCHC18 = . if (B1PCHC18 == 7 | B1PCHC18 == 8 | B1PCHC18 == 9)
replace B1PCHH18 = . if (B1PCHH18 == 7 | B1PCHH18 == 8 | B1PCHH18 == 9)
replace B1PCDD18 = . if (B1PCDD18 == 7 | B1PCDD18 == 8 | B1PCDD18 == 9)
replace B1PCDT18 = . if (B1PCDT18 == 997 | B1PCDT18 == 998 | B1PCDT18 == 999)
replace B1PCDP18 = . if (B1PCDP18 == 7 | B1PCDP18 == 8 | B1PCDP18 == 9)
replace B1PCDA18 = . if (B1PCDA18 == 97 | B1PCDA18 == 98 | B1PCDA18 == 99)
replace B1PCDX18 = . if (B1PCDX18 == 7 | B1PCDX18 == 8 | B1PCDX18 == 9)
replace B1PCXT18 = . if (B1PCXT18 == 7 | B1PCXT18 == 8 | B1PCXT18 == 9)
replace B1PCDO18 = . if (B1PCDO18 == 7 | B1PCDO18 == 8 | B1PCDO18 == 9)
replace B1PCHA19 = . if (B1PCHA19 == 997 | B1PCHA19 == 998 | B1PCHA19 == 999)
replace B1PCHX19 = . if (B1PCHX19 == 7 | B1PCHX19 == 8 | B1PCHX19 == 9)
replace B1PCHR19 = . if (B1PCHR19 == 97 | B1PCHR19 == 98 | B1PCHR19 == 99)
replace B1PCMB19 = . if (B1PCMB19 == 97 | B1PCMB19 == 98 | B1PCMB19 == 99)
replace B1PCYB19 = . if (B1PCYB19 == 9997 | B1PCYB19 == 9998 | B1PCYB19 == 9999)
replace B1PHHA19 = . if (B1PHHA19 == 997 | B1PHHA19 == 998 | B1PHHA19 == 999)
replace B1PCHC19 = . if (B1PCHC19 == 7 | B1PCHC19 == 8 | B1PCHC19 == 9)
replace B1PCHH19 = . if (B1PCHH19 == 7 | B1PCHH19 == 8 | B1PCHH19 == 9)
replace B1PCDD19 = . if (B1PCDD19 == 7 | B1PCDD19 == 8 | B1PCDD19 == 9)
replace B1PCDT19 = . if (B1PCDT19 == 997 | B1PCDT19 == 998 | B1PCDT19 == 999)
replace B1PCDP19 = . if (B1PCDP19 == 7 | B1PCDP19 == 8 | B1PCDP19 == 9)
replace B1PCDA19 = . if (B1PCDA19 == 97 | B1PCDA19 == 98 | B1PCDA19 == 99)
replace B1PCDX19 = . if (B1PCDX19 == 7 | B1PCDX19 == 8 | B1PCDX19 == 9)
replace B1PCXT19 = . if (B1PCXT19 == 7 | B1PCXT19 == 8 | B1PCXT19 == 9)
replace B1PCDO19 = . if (B1PCDO19 == 7 | B1PCDO19 == 8 | B1PCDO19 == 9)
replace B1PCHA20 = . if (B1PCHA20 == 997 | B1PCHA20 == 998 | B1PCHA20 == 999)
replace B1PCHX20 = . if (B1PCHX20 == 7 | B1PCHX20 == 8 | B1PCHX20 == 9)
replace B1PCHR20 = . if (B1PCHR20 == 97 | B1PCHR20 == 98 | B1PCHR20 == 99)
replace B1PCMB20 = . if (B1PCMB20 == 97 | B1PCMB20 == 98 | B1PCMB20 == 99)
replace B1PCYB20 = . if (B1PCYB20 == 9997 | B1PCYB20 == 9998 | B1PCYB20 == 9999)
replace B1PHHA20 = . if (B1PHHA20 == 997 | B1PHHA20 == 998 | B1PHHA20 == 999)
replace B1PCHC20 = . if (B1PCHC20 == 7 | B1PCHC20 == 8 | B1PCHC20 == 9)
replace B1PCHH20 = . if (B1PCHH20 == 7 | B1PCHH20 == 8 | B1PCHH20 == 9)
replace B1PCDD20 = . if (B1PCDD20 == 7 | B1PCDD20 == 8 | B1PCDD20 == 9)
replace B1PCDT20 = . if (B1PCDT20 == 997 | B1PCDT20 == 998 | B1PCDT20 == 999)
replace B1PCDP20 = . if (B1PCDP20 == 7 | B1PCDP20 == 8 | B1PCDP20 == 9)
replace B1PCDA20 = . if (B1PCDA20 == 97 | B1PCDA20 == 98 | B1PCDA20 == 99)
replace B1PCDX20 = . if (B1PCDX20 == 7 | B1PCDX20 == 8 | B1PCDX20 == 9)
replace B1PCXT20 = . if (B1PCXT20 == 7 | B1PCXT20 == 8 | B1PCXT20 == 9)
replace B1PCDO20 = . if (B1PCDO20 == 7 | B1PCDO20 == 8 | B1PCDO20 == 9)
replace B1PCHA21 = . if (B1PCHA21 == 997 | B1PCHA21 == 998 | B1PCHA21 == 999)
replace B1PCHX21 = . if (B1PCHX21 == 7 | B1PCHX21 == 8 | B1PCHX21 == 9)
replace B1PCHR21 = . if (B1PCHR21 == 97 | B1PCHR21 == 98 | B1PCHR21 == 99)
replace B1PCMB21 = . if (B1PCMB21 == 97 | B1PCMB21 == 98 | B1PCMB21 == 99)
replace B1PCYB21 = . if (B1PCYB21 == 9997 | B1PCYB21 == 9998 | B1PCYB21 == 9999)
replace B1PHHA21 = . if (B1PHHA21 == 997 | B1PHHA21 == 998 | B1PHHA21 == 999)
replace B1PCHC21 = . if (B1PCHC21 == 7 | B1PCHC21 == 8 | B1PCHC21 == 9)
replace B1PCHH21 = . if (B1PCHH21 == 7 | B1PCHH21 == 8 | B1PCHH21 == 9)
replace B1PCDD21 = . if (B1PCDD21 == 7 | B1PCDD21 == 8 | B1PCDD21 == 9)
replace B1PCDT21 = . if (B1PCDT21 == 997 | B1PCDT21 == 998 | B1PCDT21 == 999)
replace B1PCDP21 = . if (B1PCDP21 == 7 | B1PCDP21 == 8 | B1PCDP21 == 9)
replace B1PCDA21 = . if (B1PCDA21 == 97 | B1PCDA21 == 98 | B1PCDA21 == 99)
replace B1PCDX21 = . if (B1PCDX21 == 7 | B1PCDX21 == 8 | B1PCDX21 == 9)
replace B1PCXT21 = . if (B1PCXT21 == 7 | B1PCXT21 == 8 | B1PCXT21 == 9)
replace B1PCDO21 = . if (B1PCDO21 == 7 | B1PCDO21 == 8 | B1PCDO21 == 9)
replace B1PC5 = . if (B1PC5 == 997 | B1PC5 == 998 | B1PC5 == 999)
replace B1PKHSIZ = . if (B1PKHSIZ == 97 | B1PKHSIZ == 98 | B1PKHSIZ == 99)
replace B1PC6 = . if (B1PC6 == 7 | B1PC6 == 8 | B1PC6 == 9)
replace B1PCHM1N = . if (B1PCHM1N == 9)
replace B1PCHM2N = . if (B1PCHM2N == 9)
replace B1PCHM1X = . if (B1PCHM1X == 9)
replace B1PCHM2X = . if (B1PCHM2X == 9)
replace B1PDCSX = . if (B1PDCSX == 7 | B1PDCSX == 8 | B1PDCSX == 9)
replace B1PD1 = . if (B1PD1 == 7 | B1PD1 == 8 | B1PD1 == 9)
replace B1PD2 = . if (B1PD2 == 97 | B1PD2 == 98 | B1PD2 == 99)
replace B1PD3 = . if (B1PD3 == 7 | B1PD3 == 8 | B1PD3 == 9)
replace B1PD4 = . if (B1PD4 == 7 | B1PD4 == 8 | B1PD4 == 9)
replace B1PD5M = . if (B1PD5M == 97 | B1PD5M == 98 | B1PD5M == 99)
replace B1PD5Y = . if (B1PD5Y == 9997 | B1PD5Y == 9998 | B1PD5Y == 9999)
replace B1PD7 = . if (B1PD7 == 7 | B1PD7 == 8 | B1PD7 == 9)
replace B1PD8A = . if (B1PD8A == 7 | B1PD8A == 8 | B1PD8A == 9)
replace B1PD8B = . if (B1PD8B == 7 | B1PD8B == 8 | B1PD8B == 9)
replace B1PD9 = . if (B1PD9 == 7 | B1PD9 == 8 | B1PD9 == 9)
replace B1PD10 = . if (B1PD10 == 7 | B1PD10 == 8 | B1PD10 == 9)
replace B1PD11 = . if (B1PD11 == 7 | B1PD11 == 8 | B1PD11 == 9)
replace B1PD12 = . if (B1PD12 == 7 | B1PD12 == 8 | B1PD12 == 9)
replace B1PD13 = . if (B1PD13 == 7 | B1PD13 == 8 | B1PD13 == 9)
replace B1PD14 = . if (B1PD14 == 97 | B1PD14 == 98 | B1PD14 == 99)
replace B1PD15 = . if (B1PD15 == 97 | B1PD15 == 98 | B1PD15 == 99)
replace B1PD16 = . if (B1PD16 == 7 | B1PD16 == 8 | B1PD16 == 9)
replace B1PD17 = . if (B1PD17 == 7 | B1PD17 == 8 | B1PD17 == 9)
replace B1PD18 = . if (B1PD18 == 997 | B1PD18 == 998 | B1PD18 == 999)
replace B1PD19N = . if (B1PD19N == 97 | B1PD19N == 98 | B1PD19N == 99)
replace B1PD19M = . if (B1PD19M == 7 | B1PD19M == 8 | B1PD19M == 9)
replace B1PD20 = . if (B1PD20 == 7 | B1PD20 == 8 | B1PD20 == 9)
replace B1PD21 = . if (B1PD21 == 7 | B1PD21 == 8 | B1PD21 == 9)
replace B1PD22 = . if (B1PD22 == 97 | B1PD22 == 98 | B1PD22 == 99)
replace B1PE1 = . if (B1PE1 == 7 | B1PE1 == 8 | B1PE1 == 9)
replace B1PE1A1 = . if (B1PE1A1 == 7 | B1PE1A1 == 8 | B1PE1A1 == 9)
replace B1PE1A2 = . if (B1PE1A2 == 7 | B1PE1A2 == 8 | B1PE1A2 == 9)
replace B1PE1A3 = . if (B1PE1A3 == 7 | B1PE1A3 == 8 | B1PE1A3 == 9)
replace B1PE1A4 = . if (B1PE1A4 == 7 | B1PE1A4 == 8 | B1PE1A4 == 9)
replace B1PE1A5 = . if (B1PE1A5 == 7 | B1PE1A5 == 8 | B1PE1A5 == 9)
replace B1PE1A6 = . if (B1PE1A6 == 7 | B1PE1A6 == 8 | B1PE1A6 == 9)
replace B1PE1A7 = . if (B1PE1A7 == 7 | B1PE1A7 == 8 | B1PE1A7 == 9)
replace B1PE1BN = . if (B1PE1BN == 997 | B1PE1BN == 998 | B1PE1BN == 999)
replace B1PE1BM = . if (B1PE1BM == 7 | B1PE1BM == 8 | B1PE1BM == 9)
replace B1PE2 = . if (B1PE2 == 7 | B1PE2 == 8 | B1PE2 == 9)
replace B1PE2AN = . if (B1PE2AN == 997 | B1PE2AN == 998 | B1PE2AN == 999)
replace B1PE2AM = . if (B1PE2AM == 97 | B1PE2AM == 98 | B1PE2AM == 99)
replace B1PE3 = . if (B1PE3 == 7 | B1PE3 == 8 | B1PE3 == 9)
replace B1PE3AN = . if (B1PE3AN == 997 | B1PE3AN == 998 | B1PE3AN == 999)
replace B1PE3AM = . if (B1PE3AM == 7 | B1PE3AM == 8 | B1PE3AM == 9)
replace B1PF1 = . if (B1PF1 == 97 | B1PF1 == 98 | B1PF1 == 99)
replace B1PF2A = . if (B1PF2A == 97 | B1PF2A == 98 | B1PF2A == 99)
replace B1PF2B = . if (B1PF2B == 97 | B1PF2B == 98 | B1PF2B == 99)
replace B1PF2C = . if (B1PF2C == 97 | B1PF2C == 98 | B1PF2C == 99)
replace B1PF2_1 = . if (B1PF2_1 == 7 | B1PF2_1 == 8 | B1PF2_1 == 9)
replace B1PF2_3 = . if (B1PF2_3 == 7 | B1PF2_3 == 8 | B1PF2_3 == 9)
replace B1PF2_4 = . if (B1PF2_4 == 7 | B1PF2_4 == 8 | B1PF2_4 == 9)
replace B1PF2_5 = . if (B1PF2_5 == 7 | B1PF2_5 == 8 | B1PF2_5 == 9)
replace B1PF2_6 = . if (B1PF2_6 == 7 | B1PF2_6 == 8 | B1PF2_6 == 9)
replace B1PF2_7 = . if (B1PF2_7 == 7 | B1PF2_7 == 8 | B1PF2_7 == 9)
replace B1PF2_9 = . if (B1PF2_9 == 7 | B1PF2_9 == 8 | B1PF2_9 == 9)
replace B1PF2_10 = . if (B1PF2_10 == 7 | B1PF2_10 == 8 | B1PF2_10 == 9)
replace B1PF2_11 = . if (B1PF2_11 == 7 | B1PF2_11 == 8 | B1PF2_11 == 9)
replace B1PF2_12 = . if (B1PF2_12 == 7 | B1PF2_12 == 8 | B1PF2_12 == 9)
replace B1PF2_13 = . if (B1PF2_13 == 7 | B1PF2_13 == 8 | B1PF2_13 == 9)
replace B1PF2_14 = . if (B1PF2_14 == 7 | B1PF2_14 == 8 | B1PF2_14 == 9)
replace B1PF2_15 = . if (B1PF2_15 == 7 | B1PF2_15 == 8 | B1PF2_15 == 9)
replace B1PF2_17 = . if (B1PF2_17 == 7 | B1PF2_17 == 8 | B1PF2_17 == 9)
replace B1PF2_18 = . if (B1PF2_18 == 7 | B1PF2_18 == 8 | B1PF2_18 == 9)
replace B1PF2_22 = . if (B1PF2_22 == 7 | B1PF2_22 == 8 | B1PF2_22 == 9)
replace B1PF2_24 = . if (B1PF2_24 == 7 | B1PF2_24 == 8 | B1PF2_24 == 9)
replace B1PF2_30 = . if (B1PF2_30 == 7 | B1PF2_30 == 8 | B1PF2_30 == 9)
replace B1PF2_31 = . if (B1PF2_31 == 7 | B1PF2_31 == 8 | B1PF2_31 == 9)
replace B1PF2_32 = . if (B1PF2_32 == 7 | B1PF2_32 == 8 | B1PF2_32 == 9)
replace B1PF2_33 = . if (B1PF2_33 == 7 | B1PF2_33 == 8 | B1PF2_33 == 9)
replace B1PF2_34 = . if (B1PF2_34 == 7 | B1PF2_34 == 8 | B1PF2_34 == 9)
replace B1PF2_35 = . if (B1PF2_35 == 7 | B1PF2_35 == 8 | B1PF2_35 == 9)
replace B1PF2_36 = . if (B1PF2_36 == 7 | B1PF2_36 == 8 | B1PF2_36 == 9)
replace B1PF2_37 = . if (B1PF2_37 == 7 | B1PF2_37 == 8 | B1PF2_37 == 9)
replace B1PF2_38 = . if (B1PF2_38 == 7 | B1PF2_38 == 8 | B1PF2_38 == 9)
replace B1PF2_39 = . if (B1PF2_39 == 7 | B1PF2_39 == 8 | B1PF2_39 == 9)
replace B1PF2_40 = . if (B1PF2_40 == 7 | B1PF2_40 == 8 | B1PF2_40 == 9)
replace B1PF2_41 = . if (B1PF2_41 == 7 | B1PF2_41 == 8 | B1PF2_41 == 9)
replace B1PF2_42 = . if (B1PF2_42 == 7 | B1PF2_42 == 8 | B1PF2_42 == 9)
replace B1PF2_43 = . if (B1PF2_43 == 7 | B1PF2_43 == 8 | B1PF2_43 == 9)
replace B1PF2_44 = . if (B1PF2_44 == 7 | B1PF2_44 == 8 | B1PF2_44 == 9)
replace B1PF2_45 = . if (B1PF2_45 == 7 | B1PF2_45 == 8 | B1PF2_45 == 9)
replace B1PF2_46 = . if (B1PF2_46 == 7 | B1PF2_46 == 8 | B1PF2_46 == 9)
replace B1PF2_47 = . if (B1PF2_47 == 7 | B1PF2_47 == 8 | B1PF2_47 == 9)
replace B1PF2_48 = . if (B1PF2_48 == 7 | B1PF2_48 == 8 | B1PF2_48 == 9)
replace B1PF2_50 = . if (B1PF2_50 == 7 | B1PF2_50 == 8 | B1PF2_50 == 9)
replace B1PF2_51 = . if (B1PF2_51 == 7 | B1PF2_51 == 8 | B1PF2_51 == 9)
replace B1PF2_52 = . if (B1PF2_52 == 7 | B1PF2_52 == 8 | B1PF2_52 == 9)
replace B1PF2_53 = . if (B1PF2_53 == 7 | B1PF2_53 == 8 | B1PF2_53 == 9)
replace B1PF2_54 = . if (B1PF2_54 == 7 | B1PF2_54 == 8 | B1PF2_54 == 9)
replace B1PF2_56 = . if (B1PF2_56 == 7 | B1PF2_56 == 8 | B1PF2_56 == 9)
replace B1PF2_57 = . if (B1PF2_57 == 7 | B1PF2_57 == 8 | B1PF2_57 == 9)
replace B1PF2_58 = . if (B1PF2_58 == 7 | B1PF2_58 == 8 | B1PF2_58 == 9)
replace B1PF2_66 = . if (B1PF2_66 == 7 | B1PF2_66 == 8 | B1PF2_66 == 9)
replace B1PF2_69 = . if (B1PF2_69 == 7 | B1PF2_69 == 8 | B1PF2_69 == 9)
replace B1PF2_70 = . if (B1PF2_70 == 7 | B1PF2_70 == 8 | B1PF2_70 == 9)
replace B1PF2_71 = . if (B1PF2_71 == 7 | B1PF2_71 == 8 | B1PF2_71 == 9)
replace B1PF2_74 = . if (B1PF2_74 == 7 | B1PF2_74 == 8 | B1PF2_74 == 9)
replace B1PF2_96 = . if (B1PF2_96 == 7 | B1PF2_96 == 8 | B1PF2_96 == 9)
replace B1PF3 = . if (B1PF3 == 7 | B1PF3 == 8 | B1PF3 == 9)
replace B1PF3_1 = . if (B1PF3_1 == 97 | B1PF3_1 == 98 | B1PF3_1 == 99)
replace B1PF4 = . if (B1PF4 == 7 | B1PF4 == 8 | B1PF4 == 9)
replace B1PF5 = . if (B1PF5 == 7 | B1PF5 == 8 | B1PF5 == 9)
replace B1PF6 = . if (B1PF6 == 7 | B1PF6 == 8 | B1PF6 == 9)
replace B1PF7C = . if (B1PF7C == 7 | B1PF7C == 8 | B1PF7C == 9)
replace B1PF7D = . if (B1PF7D == 7 | B1PF7D == 8 | B1PF7D == 9)
replace B1PF8_A = . if (B1PF8_A == 7 | B1PF8_A == 8 | B1PF8_A == 9)
replace B1PF9 = . if (B1PF9 == 7 | B1PF9 == 8 | B1PF9 == 9)
replace B1PF10 = . if (B1PF10 == 7 | B1PF10 == 8 | B1PF10 == 9)
replace B1PF11 = . if (B1PF11 == 7 | B1PF11 == 8 | B1PF11 == 9)
replace B1PF12 = . if (B1PF12 == 7 | B1PF12 == 8 | B1PF12 == 9)
replace B1PF12A = . if (B1PF12A == 7 | B1PF12A == 8 | B1PF12A == 9)
replace B1PF12B = . if (B1PF12B == 7 | B1PF12B == 8 | B1PF12B == 9)
replace B1PG1 = . if (B1PG1 == 7 | B1PG1 == 8 | B1PG1 == 9)
replace B1PG2 = . if (B1PG2 == 7 | B1PG2 == 8 | B1PG2 == 9)
replace B1PG3 = . if (B1PG3 == 7 | B1PG3 == 8 | B1PG3 == 9)
replace B1PG4 = . if (B1PG4 == 7 | B1PG4 == 8 | B1PG4 == 9)
replace B1PG5 = . if (B1PG5 == 7 | B1PG5 == 8 | B1PG5 == 9)
replace B1PG5A = . if (B1PG5A == 7 | B1PG5A == 8 | B1PG5A == 9)
replace B1PG6 = . if (B1PG6 == 7 | B1PG6 == 8 | B1PG6 == 9)
replace B1PG7 = . if (B1PG7 == 7 | B1PG7 == 8 | B1PG7 == 9)
replace B1PG8 = . if (B1PG8 == 7 | B1PG8 == 8 | B1PG8 == 9)
replace B1PG9 = . if (B1PG9 == 7 | B1PG9 == 8 | B1PG9 == 9)
replace B1SA1 = . if (B1SA1 == 97 | B1SA1 == 98 | B1SA1 == 99)
replace B1SA2 = . if (B1SA2 == 97 | B1SA2 == 98 | B1SA2 == 99)
replace B1SA3 = . if (B1SA3 == 97 | B1SA3 == 98 | B1SA3 == 99)
replace B1SA4 = . if (B1SA4 == 97 | B1SA4 == 98 | B1SA4 == 99)
replace B1SA5 = . if (B1SA5 == 97 | B1SA5 == 98 | B1SA5 == 99)
replace B1SSATIS = . if (B1SSATIS == 98.000)
replace B1SSATIS2 = . if (B1SSATIS2 == 98.000)
replace B1SA6A = . if (B1SA6A == 7 | B1SA6A == 8 | B1SA6A == 9)
replace B1SA6B = . if (B1SA6B == 7 | B1SA6B == 8 | B1SA6B == 9)
replace B1SA6C = . if (B1SA6C == 7 | B1SA6C == 8 | B1SA6C == 9)
replace B1SA6D = . if (B1SA6D == 7 | B1SA6D == 8 | B1SA6D == 9)
replace B1SA6E = . if (B1SA6E == 7 | B1SA6E == 8 | B1SA6E == 9)
replace B1SA7A = . if (B1SA7A == 7 | B1SA7A == 8 | B1SA7A == 9)
replace B1SA7B = . if (B1SA7B == 7 | B1SA7B == 8 | B1SA7B == 9)
replace B1SA7C = . if (B1SA7C == 7 | B1SA7C == 8 | B1SA7C == 9)
replace B1SA7D = . if (B1SA7D == 7 | B1SA7D == 8 | B1SA7D == 9)
replace B1SA8A = . if (B1SA8A == 8 | B1SA8A == 9)
replace B1SA8B = . if (B1SA8B == 8 | B1SA8B == 9)
replace B1SA8C = . if (B1SA8C == 8 | B1SA8C == 9)
replace B1SA8D = . if (B1SA8D == 8 | B1SA8D == 9)
replace B1SA8E = . if (B1SA8E == 8 | B1SA8E == 9)
replace B1SA8F = . if (B1SA8F == 8 | B1SA8F == 9)
replace B1SHLOCS = . if (B1SHLOCS == 8.000)
replace B1SHLOCO = . if (B1SHLOCO == 8.00)
replace B1SA9A = . if (B1SA9A == 7 | B1SA9A == 8 | B1SA9A == 9)
replace B1SA9B = . if (B1SA9B == 7 | B1SA9B == 8 | B1SA9B == 9)
replace B1SA9C = . if (B1SA9C == 7 | B1SA9C == 8 | B1SA9C == 9)
replace B1SA9D = . if (B1SA9D == 7 | B1SA9D == 8 | B1SA9D == 9)
replace B1SA9E = . if (B1SA9E == 7 | B1SA9E == 8 | B1SA9E == 9)
replace B1SAMPLI = . if (B1SAMPLI == 8.000)
replace B1SA10A = . if (B1SA10A == 7 | B1SA10A == 8 | B1SA10A == 9)
replace B1SA10B = . if (B1SA10B == 7 | B1SA10B == 8 | B1SA10B == 9)
replace B1SA10C = . if (B1SA10C == 7 | B1SA10C == 8 | B1SA10C == 9)
replace B1SA10D = . if (B1SA10D == 7 | B1SA10D == 8 | B1SA10D == 9)
replace B1SA10E = . if (B1SA10E == 7 | B1SA10E == 8 | B1SA10E == 9)
replace B1SA10F = . if (B1SA10F == 7 | B1SA10F == 8 | B1SA10F == 9)
replace B1SA10G = . if (B1SA10G == 7 | B1SA10G == 8 | B1SA10G == 9)
replace B1SA10H = . if (B1SA10H == 7 | B1SA10H == 8 | B1SA10H == 9)
replace B1SA10I = . if (B1SA10I == 7 | B1SA10I == 8 | B1SA10I == 9)
replace B1SA10J = . if (B1SA10J == 7 | B1SA10J == 8 | B1SA10J == 9)
replace B1SA11A = . if (B1SA11A == 7 | B1SA11A == 8 | B1SA11A == 9)
replace B1SA11B = . if (B1SA11B == 7 | B1SA11B == 8 | B1SA11B == 9)
replace B1SA11C = . if (B1SA11C == 7 | B1SA11C == 8 | B1SA11C == 9)
replace B1SA11D = . if (B1SA11D == 7 | B1SA11D == 8 | B1SA11D == 9)
replace B1SA11E = . if (B1SA11E == 7 | B1SA11E == 8 | B1SA11E == 9)
replace B1SA11F = . if (B1SA11F == 7 | B1SA11F == 8 | B1SA11F == 9)
replace B1SA11G = . if (B1SA11G == 7 | B1SA11G == 8 | B1SA11G == 9)
replace B1SA11H = . if (B1SA11H == 7 | B1SA11H == 8 | B1SA11H == 9)
replace B1SA11I = . if (B1SA11I == 7 | B1SA11I == 8 | B1SA11I == 9)
replace B1SA11J = . if (B1SA11J == 7 | B1SA11J == 8 | B1SA11J == 9)
replace B1SA11K = . if (B1SA11K == 7 | B1SA11K == 8 | B1SA11K == 9)
replace B1SA11L = . if (B1SA11L == 7 | B1SA11L == 8 | B1SA11L == 9)
replace B1SA11M = . if (B1SA11M == 7 | B1SA11M == 8 | B1SA11M == 9)
replace B1SA11N = . if (B1SA11N == 7 | B1SA11N == 8 | B1SA11N == 9)
replace B1SA11O = . if (B1SA11O == 7 | B1SA11O == 8 | B1SA11O == 9)
replace B1SA11P = . if (B1SA11P == 7 | B1SA11P == 8 | B1SA11P == 9)
replace B1SA11Q = . if (B1SA11Q == 7 | B1SA11Q == 8 | B1SA11Q == 9)
replace B1SA11R = . if (B1SA11R == 7 | B1SA11R == 8 | B1SA11R == 9)
replace B1SA11S = . if (B1SA11S == 7 | B1SA11S == 8 | B1SA11S == 9)
replace B1SA11T = . if (B1SA11T == 7 | B1SA11T == 8 | B1SA11T == 9)
replace B1SA11U = . if (B1SA11U == 7 | B1SA11U == 8 | B1SA11U == 9)
replace B1SA11V = . if (B1SA11V == 7 | B1SA11V == 8 | B1SA11V == 9)
replace B1SA11W = . if (B1SA11W == 7 | B1SA11W == 8 | B1SA11W == 9)
replace B1SA11X = . if (B1SA11X == 7 | B1SA11X == 8 | B1SA11X == 9)
replace B1SA11Y = . if (B1SA11Y == 7 | B1SA11Y == 8 | B1SA11Y == 9)
replace B1SA11Z = . if (B1SA11Z == 7 | B1SA11Z == 8 | B1SA11Z == 9)
replace B1SA11AA = . if (B1SA11AA == 7 | B1SA11AA == 8 | B1SA11AA == 9)
replace B1SA11BB = . if (B1SA11BB == 7 | B1SA11BB == 8 | B1SA11BB == 9)
replace B1SA11CC = . if (B1SA11CC == 7 | B1SA11CC == 8 | B1SA11CC == 9)
replace B1SA11DD = . if (B1SA11DD == 7 | B1SA11DD == 8 | B1SA11DD == 9)
replace B1SA12A = . if (B1SA12A == 7 | B1SA12A == 8 | B1SA12A == 9)
replace B1SA12AY = . if (B1SA12AY == 7 | B1SA12AY == 8 | B1SA12AY == 9)
replace B1SA12B = . if (B1SA12B == 7 | B1SA12B == 8 | B1SA12B == 9)
replace B1SA12BY = . if (B1SA12BY == 7 | B1SA12BY == 8 | B1SA12BY == 9)
replace B1SA12C = . if (B1SA12C == 7 | B1SA12C == 8 | B1SA12C == 9)
replace B1SA12CY = . if (B1SA12CY == 7 | B1SA12CY == 8 | B1SA12CY == 9)
replace B1SA12D = . if (B1SA12D == 7 | B1SA12D == 8 | B1SA12D == 9)
replace B1SA12DY = . if (B1SA12DY == 7 | B1SA12DY == 8 | B1SA12DY == 9)
replace B1SA12E = . if (B1SA12E == 7 | B1SA12E == 8 | B1SA12E == 9)
replace B1SA12EY = . if (B1SA12EY == 7 | B1SA12EY == 8 | B1SA12EY == 9)
replace B1SA12F = . if (B1SA12F == 7 | B1SA12F == 8 | B1SA12F == 9)
replace B1SA12FY = . if (B1SA12FY == 7 | B1SA12FY == 8 | B1SA12FY == 9)
replace B1SA12G = . if (B1SA12G == 7 | B1SA12G == 8 | B1SA12G == 9)
replace B1SA12GY = . if (B1SA12GY == 7 | B1SA12GY == 8 | B1SA12GY == 9)
replace B1SA12H = . if (B1SA12H == 7 | B1SA12H == 8 | B1SA12H == 9)
replace B1SA12HY = . if (B1SA12HY == 7 | B1SA12HY == 8 | B1SA12HY == 9)
replace B1SA12I = . if (B1SA12I == 7 | B1SA12I == 8 | B1SA12I == 9)
replace B1SA12IY = . if (B1SA12IY == 7 | B1SA12IY == 8 | B1SA12IY == 9)
replace B1SA12J = . if (B1SA12J == 7 | B1SA12J == 8 | B1SA12J == 9)
replace B1SA12JY = . if (B1SA12JY == 7 | B1SA12JY == 8 | B1SA12JY == 9)
replace B1SA12K = . if (B1SA12K == 7 | B1SA12K == 8 | B1SA12K == 9)
replace B1SA12KY = . if (B1SA12KY == 7 | B1SA12KY == 8 | B1SA12KY == 9)
replace B1SA12L = . if (B1SA12L == 7 | B1SA12L == 8 | B1SA12L == 9)
replace B1SA12LY = . if (B1SA12LY == 7 | B1SA12LY == 8 | B1SA12LY == 9)
replace B1SRXMEX = . if (B1SRXMEX == 8)
replace B1SRXMED = . if (B1SRXMED == 98)
replace B1SA13A = . if (B1SA13A == 7 | B1SA13A == 8 | B1SA13A == 9)
replace B1SA13AY = . if (B1SA13AY == 7 | B1SA13AY == 8 | B1SA13AY == 9)
replace B1SA13B = . if (B1SA13B == 7 | B1SA13B == 8 | B1SA13B == 9)
replace B1SA13BY = . if (B1SA13BY == 7 | B1SA13BY == 8 | B1SA13BY == 9)
replace B1SA13C = . if (B1SA13C == 7 | B1SA13C == 8 | B1SA13C == 9)
replace B1SA13CY = . if (B1SA13CY == 7 | B1SA13CY == 8 | B1SA13CY == 9)
replace B1SA13D = . if (B1SA13D == 7 | B1SA13D == 8 | B1SA13D == 9)
replace B1SA13DY = . if (B1SA13DY == 7 | B1SA13DY == 8 | B1SA13DY == 9)
replace B1SA14A = . if (B1SA14A == 7 | B1SA14A == 8 | B1SA14A == 9)
replace B1SA14B = . if (B1SA14B == 7 | B1SA14B == 8 | B1SA14B == 9)
replace B1SA14C = . if (B1SA14C == 7 | B1SA14C == 8 | B1SA14C == 9)
replace B1SA14D = . if (B1SA14D == 7 | B1SA14D == 8 | B1SA14D == 9)
replace B1SA14E = . if (B1SA14E == 7 | B1SA14E == 8 | B1SA14E == 9)
replace B1SA14F = . if (B1SA14F == 7 | B1SA14F == 8 | B1SA14F == 9)
replace B1SA14G = . if (B1SA14G == 7 | B1SA14G == 8 | B1SA14G == 9)
replace B1SA14H = . if (B1SA14H == 7 | B1SA14H == 8 | B1SA14H == 9)
replace B1SA14I = . if (B1SA14I == 7 | B1SA14I == 8 | B1SA14I == 9)
replace B1SA14J = . if (B1SA14J == 7 | B1SA14J == 8 | B1SA14J == 9)
replace B1SA14K = . if (B1SA14K == 7 | B1SA14K == 8 | B1SA14K == 9)
replace B1SA14L = . if (B1SA14L == 7 | B1SA14L == 8 | B1SA14L == 9)
replace B1SA14M = . if (B1SA14M == 7 | B1SA14M == 8 | B1SA14M == 9)
replace B1SA14N = . if (B1SA14N == 7 | B1SA14N == 8 | B1SA14N == 9)
replace B1SA14O = . if (B1SA14O == 7 | B1SA14O == 8 | B1SA14O == 9)
replace B1SA15 = . if (B1SA15 == 7 | B1SA15 == 8 | B1SA15 == 9)
replace B1SA16 = . if (B1SA16 == 97 | B1SA16 == 98 | B1SA16 == 99)
replace B1SA17 = . if (B1SA17 == 97 | B1SA17 == 98 | B1SA17 == 99)
replace B1SA18 = . if (B1SA18 == 97 | B1SA18 == 98 | B1SA18 == 99)
replace B1SA19 = . if (B1SA19 == 97 | B1SA19 == 98 | B1SA19 == 99)
replace B1SA20 = . if (B1SA20 == 97 | B1SA20 == 98 | B1SA20 == 99)
replace B1SA21A = . if (B1SA21A == 7 | B1SA21A == 8 | B1SA21A == 9)
replace B1SA21B = . if (B1SA21B == 7 | B1SA21B == 8 | B1SA21B == 9)
replace B1SA21C = . if (B1SA21C == 7 | B1SA21C == 8 | B1SA21C == 9)
replace B1SA21D = . if (B1SA21D == 7 | B1SA21D == 8 | B1SA21D == 9)
replace B1SA21E = . if (B1SA21E == 7 | B1SA21E == 8 | B1SA21E == 9)
replace B1SA21F = . if (B1SA21F == 7 | B1SA21F == 8 | B1SA21F == 9)
replace B1SA21G = . if (B1SA21G == 7 | B1SA21G == 8 | B1SA21G == 9)
replace B1SA21H = . if (B1SA21H == 7 | B1SA21H == 8 | B1SA21H == 9)
replace B1SA21I = . if (B1SA21I == 7 | B1SA21I == 8 | B1SA21I == 9)
replace B1SA22 = . if (B1SA22 == 7 | B1SA22 == 8 | B1SA22 == 9)
replace B1SA23 = . if (B1SA23 == 7 | B1SA23 == 8 | B1SA23 == 9)
replace B1SA24A = . if (B1SA24A == 7 | B1SA24A == 8 | B1SA24A == 9)
replace B1SA24B = . if (B1SA24B == 7 | B1SA24B == 8 | B1SA24B == 9)
replace B1SA24C = . if (B1SA24C == 7 | B1SA24C == 8 | B1SA24C == 9)
replace B1SA24D = . if (B1SA24D == 7 | B1SA24D == 8 | B1SA24D == 9)
replace B1SA24E = . if (B1SA24E == 7 | B1SA24E == 8 | B1SA24E == 9)
replace B1SA24F = . if (B1SA24F == 7 | B1SA24F == 8 | B1SA24F == 9)
replace B1SA24G = . if (B1SA24G == 7 | B1SA24G == 8 | B1SA24G == 9)
replace B1SA24H = . if (B1SA24H == 7 | B1SA24H == 8 | B1SA24H == 9)
replace B1SA24I = . if (B1SA24I == 7 | B1SA24I == 8 | B1SA24I == 9)
replace B1SA24J = . if (B1SA24J == 7 | B1SA24J == 8 | B1SA24J == 9)
replace B1SA24K = . if (B1SA24K == 7 | B1SA24K == 8 | B1SA24K == 9)
replace B1SA24L = . if (B1SA24L == 7 | B1SA24L == 8 | B1SA24L == 9)
replace B1SA24M = . if (B1SA24M == 7 | B1SA24M == 8 | B1SA24M == 9)
replace B1SA24N = . if (B1SA24N == 7 | B1SA24N == 8 | B1SA24N == 9)
replace B1SA25 = . if (B1SA25 == 8 | B1SA25 == 9)
replace B1SNEGAF = . if (B1SNEGAF == 8.000)
replace B1SNEGPA = . if (B1SNEGPA == 8.000)
replace B1SA26A = . if (B1SA26A == 7 | B1SA26A == 8 | B1SA26A == 9)
replace B1SA26B = . if (B1SA26B == 7 | B1SA26B == 8 | B1SA26B == 9)
replace B1SA26C = . if (B1SA26C == 7 | B1SA26C == 8 | B1SA26C == 9)
replace B1SA26D = . if (B1SA26D == 7 | B1SA26D == 8 | B1SA26D == 9)
replace B1SA26E = . if (B1SA26E == 7 | B1SA26E == 8 | B1SA26E == 9)
replace B1SA26F = . if (B1SA26F == 7 | B1SA26F == 8 | B1SA26F == 9)
replace B1SA26G = . if (B1SA26G == 7 | B1SA26G == 8 | B1SA26G == 9)
replace B1SA26H = . if (B1SA26H == 7 | B1SA26H == 8 | B1SA26H == 9)
replace B1SA26I = . if (B1SA26I == 7 | B1SA26I == 8 | B1SA26I == 9)
replace B1SA26J = . if (B1SA26J == 7 | B1SA26J == 8 | B1SA26J == 9)
replace B1SA26K = . if (B1SA26K == 7 | B1SA26K == 8 | B1SA26K == 9)
replace B1SA26L = . if (B1SA26L == 7 | B1SA26L == 8 | B1SA26L == 9)
replace B1SA26M = . if (B1SA26M == 7 | B1SA26M == 8 | B1SA26M == 9)
replace B1SA27 = . if (B1SA27 == 8 | B1SA27 == 9)
replace B1SPOSAF = . if (B1SPOSAF == 8.000)
replace B1SPOSPA = . if (B1SPOSPA == 8.000)
replace B1SA28A = . if (B1SA28A == 7 | B1SA28A == 8 | B1SA28A == 9)
replace B1SA28B = . if (B1SA28B == 7 | B1SA28B == 8 | B1SA28B == 9)
replace B1SA28C = . if (B1SA28C == 7 | B1SA28C == 8 | B1SA28C == 9)
replace B1SA28D = . if (B1SA28D == 7 | B1SA28D == 8 | B1SA28D == 9)
replace B1SA28E = . if (B1SA28E == 7 | B1SA28E == 8 | B1SA28E == 9)
replace B1SA28F = . if (B1SA28F == 7 | B1SA28F == 8 | B1SA28F == 9)
replace B1SA28G = . if (B1SA28G == 7 | B1SA28G == 8 | B1SA28G == 9)
replace B1SA28H = . if (B1SA28H == 7 | B1SA28H == 8 | B1SA28H == 9)
replace B1SA28I = . if (B1SA28I == 7 | B1SA28I == 8 | B1SA28I == 9)
replace B1SA28J = . if (B1SA28J == 7 | B1SA28J == 8 | B1SA28J == 9)
replace B1SBADL1 = . if (B1SBADL1 == 8.00)
replace B1SBADL2 = . if (B1SBADL2 == 8.000)
replace B1SIADL = . if (B1SIADL == 8.000)
replace B1SA29A = . if (B1SA29A == 7 | B1SA29A == 8 | B1SA29A == 9)
replace B1SA29B = . if (B1SA29B == 7 | B1SA29B == 8 | B1SA29B == 9)
replace B1SA29C = . if (B1SA29C == 7 | B1SA29C == 8 | B1SA29C == 9)
replace B1SA29D = . if (B1SA29D == 7 | B1SA29D == 8 | B1SA29D == 9)
replace B1SA30A = . if (B1SA30A == 7 | B1SA30A == 8 | B1SA30A == 9)
replace B1SA30B = . if (B1SA30B == 7 | B1SA30B == 8 | B1SA30B == 9)
replace B1SA30C = . if (B1SA30C == 7 | B1SA30C == 8 | B1SA30C == 9)
replace B1SA30D = . if (B1SA30D == 7 | B1SA30D == 8 | B1SA30D == 9)
replace B1SA30E = . if (B1SA30E == 7 | B1SA30E == 8 | B1SA30E == 9)
replace B1SA30F = . if (B1SA30F == 7 | B1SA30F == 8 | B1SA30F == 9)
replace B1SA31A = . if (B1SA31A == 7 | B1SA31A == 8 | B1SA31A == 9)
replace B1SA31B = . if (B1SA31B == 7 | B1SA31B == 8 | B1SA31B == 9)
replace B1SA31C = . if (B1SA31C == 7 | B1SA31C == 8 | B1SA31C == 9)
replace B1SA31D = . if (B1SA31D == 7 | B1SA31D == 8 | B1SA31D == 9)
replace B1SA31E = . if (B1SA31E == 7 | B1SA31E == 8 | B1SA31E == 9)
replace B1SA31F = . if (B1SA31F == 7 | B1SA31F == 8 | B1SA31F == 9)
replace B1SA32A = . if (B1SA32A == 7 | B1SA32A == 8 | B1SA32A == 9)
replace B1SA32B = . if (B1SA32B == 7 | B1SA32B == 8 | B1SA32B == 9)
replace B1SA32C = . if (B1SA32C == 7 | B1SA32C == 8 | B1SA32C == 9)
replace B1SA32D = . if (B1SA32D == 7 | B1SA32D == 8 | B1SA32D == 9)
replace B1SA32E = . if (B1SA32E == 7 | B1SA32E == 8 | B1SA32E == 9)
replace B1SA32F = . if (B1SA32F == 7 | B1SA32F == 8 | B1SA32F == 9)
replace B1SA33A = . if (B1SA33A == 7 | B1SA33A == 8 | B1SA33A == 9)
replace B1SA33B = . if (B1SA33B == 7 | B1SA33B == 8 | B1SA33B == 9)
replace B1SA33C = . if (B1SA33C == 7 | B1SA33C == 8 | B1SA33C == 9)
replace B1SA33D = . if (B1SA33D == 7 | B1SA33D == 8 | B1SA33D == 9)
replace B1SA33E = . if (B1SA33E == 7 | B1SA33E == 8 | B1SA33E == 9)
replace B1SA33F = . if (B1SA33F == 7 | B1SA33F == 8 | B1SA33F == 9)
replace B1SA34A = . if (B1SA34A == 8 | B1SA34A == 9)
replace B1SA34B = . if (B1SA34B == 8 | B1SA34B == 9)
replace B1SA34C = . if (B1SA34C == 8 | B1SA34C == 9)
replace B1SA34D = . if (B1SA34D == 8 | B1SA34D == 9)
replace B1SA34E = . if (B1SA34E == 8 | B1SA34E == 9)
replace B1SA34F = . if (B1SA34F == 8 | B1SA34F == 9)
replace B1SA34G = . if (B1SA34G == 8 | B1SA34G == 9)
replace B1SA34H = . if (B1SA34H == 8 | B1SA34H == 9)
replace B1SA34I = . if (B1SA34I == 8 | B1SA34I == 9)
replace B1SINTAG = . if (B1SINTAG == 8.000)
replace B1SA35 = . if (B1SA35 == 98.00)
replace B1SA36 = . if (B1SA36 == 98.00)
replace B1SWSTHI = . if (B1SWSTHI == 9.000)
replace B1SA37A = . if (B1SA37A == 98)
replace B1SA37B = . if (B1SA37B == 98.00)
replace B1SA38 = . if (B1SA38 == 7 | B1SA38 == 8 | B1SA38 == 9)
replace B1SA39 = . if (B1SA39 == 997 | B1SA39 == 998 | B1SA39 == 999)
replace B1SA40 = . if (B1SA40 == 997 | B1SA40 == 998 | B1SA40 == 999)
replace B1SA41 = . if (B1SA41 == 997 | B1SA41 == 998 | B1SA41 == 999)
replace B1SA42 = . if (B1SA42 == 997 | B1SA42 == 998 | B1SA42 == 999)
replace B1SA43A = . if (B1SA43A == 7 | B1SA43A == 8 | B1SA43A == 9)
replace B1SA43B = . if (B1SA43B == 7 | B1SA43B == 8 | B1SA43B == 9)
replace B1SA43C = . if (B1SA43C == 7 | B1SA43C == 8 | B1SA43C == 9)
replace B1SBMI = . if (B1SBMI == 98.000)
replace B1SA44 = . if (B1SA44 == 7 | B1SA44 == 8 | B1SA44 == 9)
replace B1SA45 = . if (B1SA45 == 9997 | B1SA45 == 9998 | B1SA45 == 9999)
replace B1SA46 = . if (B1SA46 == 997 | B1SA46 == 998 | B1SA46 == 999)
replace B1SA47 = . if (B1SA47 == 997 | B1SA47 == 998 | B1SA47 == 999)
replace B1SA48A = . if (B1SA48A == 7 | B1SA48A == 8 | B1SA48A == 9)
replace B1SA48B = . if (B1SA48B == 7 | B1SA48B == 8 | B1SA48B == 9)
replace B1SA48C = . if (B1SA48C == 7 | B1SA48C == 8 | B1SA48C == 9)
replace B1SA48D = . if (B1SA48D == 7 | B1SA48D == 8 | B1SA48D == 9)
replace B1SA48E = . if (B1SA48E == 7 | B1SA48E == 8 | B1SA48E == 9)
replace B1SA48F = . if (B1SA48F == 7 | B1SA48F == 8 | B1SA48F == 9)
replace B1SA48G = . if (B1SA48G == 7 | B1SA48G == 8 | B1SA48G == 9)
replace B1SA48H = . if (B1SA48H == 7 | B1SA48H == 8 | B1SA48H == 9)
replace B1SA49 = . if (B1SA49 == 97 | B1SA49 == 98 | B1SA49 == 99)
replace B1SA50A = . if (B1SA50A == 7 | B1SA50A == 8 | B1SA50A == 9)
replace B1SA50B = . if (B1SA50B == 7 | B1SA50B == 8 | B1SA50B == 9)
replace B1SA50C = . if (B1SA50C == 7 | B1SA50C == 8 | B1SA50C == 9)
replace B1SA50D = . if (B1SA50D == 7 | B1SA50D == 8 | B1SA50D == 9)
replace B1SA50E = . if (B1SA50E == 7 | B1SA50E == 8 | B1SA50E == 9)
replace B1SA50F = . if (B1SA50F == 7 | B1SA50F == 8 | B1SA50F == 9)
replace B1SA50G = . if (B1SA50G == 7 | B1SA50G == 8 | B1SA50G == 9)
replace B1SA50H = . if (B1SA50H == 7 | B1SA50H == 8 | B1SA50H == 9)
replace B1SA51 = . if (B1SA51 == 97 | B1SA51 == 98 | B1SA51 == 99)
replace B1SA52 = . if (B1SA52 == 7 | B1SA52 == 8 | B1SA52 == 9)
replace B1SA53A = . if (B1SA53A == 997 | B1SA53A == 998 | B1SA53A == 999)
replace B1SA53B = . if (B1SA53B == 997 | B1SA53B == 998 | B1SA53B == 999)
replace B1SA53C = . if (B1SA53C == 997 | B1SA53C == 998 | B1SA53C == 999)
replace B1SA53D = . if (B1SA53D == 997 | B1SA53D == 998 | B1SA53D == 999)
replace B1SA53E = . if (B1SA53E == 997 | B1SA53E == 998 | B1SA53E == 999)
replace B1SUSEMD = . if (B1SUSEMD == 998)
replace B1SA54A = . if (B1SA54A == 997 | B1SA54A == 998 | B1SA54A == 999)
replace B1SA54B = . if (B1SA54B == 997 | B1SA54B == 998 | B1SA54B == 999)
replace B1SA54C = . if (B1SA54C == 997 | B1SA54C == 998 | B1SA54C == 999)
replace B1SA54D = . if (B1SA54D == 997 | B1SA54D == 998 | B1SA54D == 999)
replace B1SUSEMH = . if (B1SUSEMH == 998)
replace B1SA55A = . if (B1SA55A == 7 | B1SA55A == 8 | B1SA55A == 9)
replace B1SA55AY = . if (B1SA55AY == 997 | B1SA55AY == 998 | B1SA55AY == 999)
replace B1SA55AZ = . if (B1SA55AZ == 997 | B1SA55AZ == 998 | B1SA55AZ == 999)
replace B1SA55B = . if (B1SA55B == 7 | B1SA55B == 8 | B1SA55B == 9)
replace B1SA55BY = . if (B1SA55BY == 997 | B1SA55BY == 998 | B1SA55BY == 999)
replace B1SA55BZ = . if (B1SA55BZ == 997 | B1SA55BZ == 998 | B1SA55BZ == 999)
replace B1SA55C = . if (B1SA55C == 7 | B1SA55C == 8 | B1SA55C == 9)
replace B1SA55CY = . if (B1SA55CY == 997 | B1SA55CY == 998 | B1SA55CY == 999)
replace B1SA55CZ = . if (B1SA55CZ == 997 | B1SA55CZ == 998 | B1SA55CZ == 999)
replace B1SA55D = . if (B1SA55D == 7 | B1SA55D == 8 | B1SA55D == 9)
replace B1SA55DY = . if (B1SA55DY == 997 | B1SA55DY == 998 | B1SA55DY == 999)
replace B1SA55DZ = . if (B1SA55DZ == 997 | B1SA55DZ == 998 | B1SA55DZ == 999)
replace B1SA55E = . if (B1SA55E == 7 | B1SA55E == 8 | B1SA55E == 9)
replace B1SA55EY = . if (B1SA55EY == 997 | B1SA55EY == 998 | B1SA55EY == 999)
replace B1SA55EZ = . if (B1SA55EZ == 997 | B1SA55EZ == 998 | B1SA55EZ == 999)
replace B1SA55F = . if (B1SA55F == 7 | B1SA55F == 8 | B1SA55F == 9)
replace B1SA55FY = . if (B1SA55FY == 997 | B1SA55FY == 998 | B1SA55FY == 999)
replace B1SA55FZ = . if (B1SA55FZ == 997 | B1SA55FZ == 998 | B1SA55FZ == 999)
replace B1SA55G = . if (B1SA55G == 7 | B1SA55G == 8 | B1SA55G == 9)
replace B1SA55GY = . if (B1SA55GY == 997 | B1SA55GY == 998 | B1SA55GY == 999)
replace B1SA55GZ = . if (B1SA55GZ == 997 | B1SA55GZ == 998 | B1SA55GZ == 999)
replace B1SA55H = . if (B1SA55H == 7 | B1SA55H == 8 | B1SA55H == 9)
replace B1SA55HY = . if (B1SA55HY == 997 | B1SA55HY == 998 | B1SA55HY == 999)
replace B1SA55HZ = . if (B1SA55HZ == 997 | B1SA55HZ == 998 | B1SA55HZ == 999)
replace B1SA55I = . if (B1SA55I == 7 | B1SA55I == 8 | B1SA55I == 9)
replace B1SA55IY = . if (B1SA55IY == 997 | B1SA55IY == 998 | B1SA55IY == 999)
replace B1SA55IZ = . if (B1SA55IZ == 997 | B1SA55IZ == 998 | B1SA55IZ == 999)
replace B1SA55J = . if (B1SA55J == 7 | B1SA55J == 8 | B1SA55J == 9)
replace B1SA55JY = . if (B1SA55JY == 997 | B1SA55JY == 998 | B1SA55JY == 999)
replace B1SA55JZ = . if (B1SA55JZ == 997 | B1SA55JZ == 998 | B1SA55JZ == 999)
replace B1SA55K = . if (B1SA55K == 7 | B1SA55K == 8 | B1SA55K == 9)
replace B1SA55KY = . if (B1SA55KY == 997 | B1SA55KY == 998 | B1SA55KY == 999)
replace B1SA55KZ = . if (B1SA55KZ == 997 | B1SA55KZ == 998 | B1SA55KZ == 999)
replace B1SA56A = . if (B1SA56A == 8 | B1SA56A == 9)
replace B1SA56B = . if (B1SA56B == 8 | B1SA56B == 9)
replace B1SA56C = . if (B1SA56C == 8 | B1SA56C == 9)
replace B1SA56D = . if (B1SA56D == 8 | B1SA56D == 9)
replace B1SA56E = . if (B1SA56E == 8 | B1SA56E == 9)
replace B1SA56F = . if (B1SA56F == 8 | B1SA56F == 9)
replace B1SA56G = . if (B1SA56G == 8 | B1SA56G == 9)
replace B1SA56H = . if (B1SA56H == 8 | B1SA56H == 9)
replace B1SA56I = . if (B1SA56I == 8 | B1SA56I == 9)
replace B1SA56J = . if (B1SA56J == 8 | B1SA56J == 9)
replace B1SA56K = . if (B1SA56K == 8 | B1SA56K == 9)
replace B1SA56L = . if (B1SA56L == 8 | B1SA56L == 9)
replace B1SA56M = . if (B1SA56M == 8 | B1SA56M == 9)
replace B1SA56N = . if (B1SA56N == 8 | B1SA56N == 9)
replace B1SA56O = . if (B1SA56O == 8 | B1SA56O == 9)
replace B1SA56P = . if (B1SA56P == 8 | B1SA56P == 9)
replace B1SA56Q = . if (B1SA56Q == 8 | B1SA56Q == 9)
replace B1SA56R = . if (B1SA56R == 8 | B1SA56R == 9)
replace B1SA56S = . if (B1SA56S == 8 | B1SA56S == 9)
replace B1SA57A = . if (B1SA57A == 97 | B1SA57A == 98 | B1SA57A == 99)
replace B1SA57B = . if (B1SA57B == 97 | B1SA57B == 98 | B1SA57B == 99)
replace B1SA58A = . if (B1SA58A == 97 | B1SA58A == 98 | B1SA58A == 99)
replace B1SA58B = . if (B1SA58B == 97 | B1SA58B == 98 | B1SA58B == 99)
replace B1SA59A = . if (B1SA59A == 97 | B1SA59A == 98 | B1SA59A == 99)
replace B1SA59B = . if (B1SA59B == 97 | B1SA59B == 98 | B1SA59B == 99)
replace B1SA60 = . if (B1SA60 == 997 | B1SA60 == 998 | B1SA60 == 999)
replace B1SA61A = . if (B1SA61A == 8 | B1SA61A == 9)
replace B1SA61B = . if (B1SA61B == 8 | B1SA61B == 9)
replace B1SA61C = . if (B1SA61C == 8 | B1SA61C == 9)
replace B1SA61D = . if (B1SA61D == 8 | B1SA61D == 9)
replace B1SA62A = . if (B1SA62A == 8 | B1SA62A == 9)
replace B1SA62B = . if (B1SA62B == 8 | B1SA62B == 9)
replace B1SA62C = . if (B1SA62C == 8 | B1SA62C == 9)
replace B1SA62D = . if (B1SA62D == 8 | B1SA62D == 9)
replace B1SA62E = . if (B1SA62E == 8 | B1SA62E == 9)
replace B1SA62F = . if (B1SA62F == 8 | B1SA62F == 9)
replace B1SA62G = . if (B1SA62G == 8 | B1SA62G == 9)
replace B1SA62H = . if (B1SA62H == 8 | B1SA62H == 9)
replace B1SA62I = . if (B1SA62I == 8 | B1SA62I == 9)
replace B1SA62J = . if (B1SA62J == 8 | B1SA62J == 9)
replace B1SA63 = . if (B1SA63 == 8 | B1SA63 == 9)
replace B1SA64 = . if (B1SA64 == 8 | B1SA64 == 9)
replace B1SA65A = . if (B1SA65A == 8 | B1SA65A == 9)
replace B1SA65B = . if (B1SA65B == 8 | B1SA65B == 9)
replace B1SA65C = . if (B1SA65C == 8 | B1SA65C == 9)
replace B1SA65D = . if (B1SA65D == 8 | B1SA65D == 9)
replace B1SA65E = . if (B1SA65E == 8 | B1SA65E == 9)
replace B1SA66A = . if (B1SA66A == 8 | B1SA66A == 9)
replace B1SA66B = . if (B1SA66B == 8 | B1SA66B == 9)
replace B1SA66C = . if (B1SA66C == 8 | B1SA66C == 9)
replace B1SA66D = . if (B1SA66D == 8 | B1SA66D == 9)
replace B1SALCOH = . if (B1SALCOH == 8)
replace B1SA67 = . if (B1SA67 == 8 | B1SA67 == 9)
replace B1SA68 = . if (B1SA68 == 8 | B1SA68 == 9)
replace B1SB1 = . if (B1SB1 == 7 | B1SB1 == 8 | B1SB1 == 9)
replace B1SB2A = . if (B1SB2A == 7 | B1SB2A == 8 | B1SB2A == 9)
replace B1SB2B = . if (B1SB2B == 7 | B1SB2B == 8 | B1SB2B == 9)
replace B1SB2C = . if (B1SB2C == 7 | B1SB2C == 8 | B1SB2C == 9)
replace B1SB2D = . if (B1SB2D == 7 | B1SB2D == 8 | B1SB2D == 9)
replace B1SB2E = . if (B1SB2E == 7 | B1SB2E == 8 | B1SB2E == 9)
replace B1SB3 = . if (B1SB3 == 9997 | B1SB3 == 9998 | B1SB3 == 9999)
replace B1SB4 = . if (B1SB4 == 7 | B1SB4 == 8 | B1SB4 == 9)
replace B1SB5A = . if (B1SB5A == 97 | B1SB5A == 98 | B1SB5A == 99)
replace B1SB5B = . if (B1SB5B == 97 | B1SB5B == 98 | B1SB5B == 99)
replace B1SB5C = . if (B1SB5C == 9997 | B1SB5C == 9998 | B1SB5C == 9999)
replace B1SB6 = . if (B1SB6 == 7 | B1SB6 == 8 | B1SB6 == 9)
replace B1SB7 = . if (B1SB7 == 7 | B1SB7 == 8 | B1SB7 == 9)
replace B1SB8A1 = . if (B1SB8A1 == 7 | B1SB8A1 == 8 | B1SB8A1 == 9)
replace B1SB8A2 = . if (B1SB8A2 == 7 | B1SB8A2 == 8 | B1SB8A2 == 9)
replace B1SB8A3 = . if (B1SB8A3 == 7 | B1SB8A3 == 8 | B1SB8A3 == 9)
replace B1SB8A4 = . if (B1SB8A4 == 997 | B1SB8A4 == 998 | B1SB8A4 == 999)
replace B1SB8B1 = . if (B1SB8B1 == 7 | B1SB8B1 == 8 | B1SB8B1 == 9)
replace B1SB8B2 = . if (B1SB8B2 == 7 | B1SB8B2 == 8 | B1SB8B2 == 9)
replace B1SB8B3 = . if (B1SB8B3 == 7 | B1SB8B3 == 8 | B1SB8B3 == 9)
replace B1SB8B4 = . if (B1SB8B4 == 997 | B1SB8B4 == 998 | B1SB8B4 == 999)
replace B1SB8C1 = . if (B1SB8C1 == 7 | B1SB8C1 == 8 | B1SB8C1 == 9)
replace B1SB8C2 = . if (B1SB8C2 == 7 | B1SB8C2 == 8 | B1SB8C2 == 9)
replace B1SB8C3 = . if (B1SB8C3 == 7 | B1SB8C3 == 8 | B1SB8C3 == 9)
replace B1SB8C4 = . if (B1SB8C4 == 997 | B1SB8C4 == 998 | B1SB8C4 == 999)
replace B1SB9 = . if (B1SB9 == 7 | B1SB9 == 8 | B1SB9 == 9)
replace B1SB10 = . if (B1SB10 == 7 | B1SB10 == 8 | B1SB10 == 9)
replace B1SB11A = . if (B1SB11A == 7 | B1SB11A == 8 | B1SB11A == 9)
replace B1SB11B = . if (B1SB11B == 7 | B1SB11B == 8 | B1SB11B == 9)
replace B1SB11C = . if (B1SB11C == 7 | B1SB11C == 8 | B1SB11C == 9)
replace B1SB11D = . if (B1SB11D == 7 | B1SB11D == 8 | B1SB11D == 9)
replace B1SB11E = . if (B1SB11E == 7 | B1SB11E == 8 | B1SB11E == 9)
replace B1SB11F = . if (B1SB11F == 7 | B1SB11F == 8 | B1SB11F == 9)
replace B1SB11G = . if (B1SB11G == 7 | B1SB11G == 8 | B1SB11G == 9)
replace B1SB11H = . if (B1SB11H == 7 | B1SB11H == 8 | B1SB11H == 9)
replace B1SB11I = . if (B1SB11I == 7 | B1SB11I == 8 | B1SB11I == 9)
replace B1SB12A = . if (B1SB12A == 97 | B1SB12A == 98 | B1SB12A == 99)
replace B1SB12B = . if (B1SB12B == 9997 | B1SB12B == 9998 | B1SB12B == 9999)
replace B1SB13A = . if (B1SB13A == 97 | B1SB13A == 98 | B1SB13A == 99)
replace B1SB13B = . if (B1SB13B == 9997 | B1SB13B == 9998 | B1SB13B == 9999)
replace B1SB14A = . if (B1SB14A == 7 | B1SB14A == 8 | B1SB14A == 9)
replace B1SB14B = . if (B1SB14B == 7 | B1SB14B == 8 | B1SB14B == 9)
replace B1SB14C = . if (B1SB14C == 7 | B1SB14C == 8 | B1SB14C == 9)
replace B1SB14D = . if (B1SB14D == 7 | B1SB14D == 8 | B1SB14D == 9)
replace B1SB15 = . if (B1SB15 == 7 | B1SB15 == 8 | B1SB15 == 9)
replace B1SB16 = . if (B1SB16 == 7 | B1SB16 == 8 | B1SB16 == 9)
replace B1SB17A = . if (B1SB17A == 7 | B1SB17A == 8 | B1SB17A == 9)
replace B1SB17B = . if (B1SB17B == 7 | B1SB17B == 8 | B1SB17B == 9)
replace B1SB17C = . if (B1SB17C == 7 | B1SB17C == 8 | B1SB17C == 9)
replace B1SB17D = . if (B1SB17D == 7 | B1SB17D == 8 | B1SB17D == 9)
replace B1SB17E = . if (B1SB17E == 7 | B1SB17E == 8 | B1SB17E == 9)
replace B1SB17F = . if (B1SB17F == 7 | B1SB17F == 8 | B1SB17F == 9)
replace B1SB17G = . if (B1SB17G == 7 | B1SB17G == 8 | B1SB17G == 9)
replace B1SB18 = . if (B1SB18 == 7 | B1SB18 == 8 | B1SB18 == 9)
replace B1SB19A = . if (B1SB19A == 7 | B1SB19A == 8 | B1SB19A == 9)
replace B1SB19B = . if (B1SB19B == 7 | B1SB19B == 8 | B1SB19B == 9)
replace B1SB19C = . if (B1SB19C == 7 | B1SB19C == 8 | B1SB19C == 9)
replace B1SC1 = . if (B1SC1 == 7 | B1SC1 == 8 | B1SC1 == 9)
replace B1SC2A = . if (B1SC2A == 7 | B1SC2A == 8 | B1SC2A == 9)
replace B1SC2B = . if (B1SC2B == 7 | B1SC2B == 8 | B1SC2B == 9)
replace B1SC2C = . if (B1SC2C == 7 | B1SC2C == 8 | B1SC2C == 9)
replace B1SC2D = . if (B1SC2D == 7 | B1SC2D == 8 | B1SC2D == 9)
replace B1SC2E = . if (B1SC2E == 7 | B1SC2E == 8 | B1SC2E == 9)
replace B1SC2F = . if (B1SC2F == 7 | B1SC2F == 8 | B1SC2F == 9)
replace B1SC2G = . if (B1SC2G == 7 | B1SC2G == 8 | B1SC2G == 9)
replace B1SC2H = . if (B1SC2H == 7 | B1SC2H == 8 | B1SC2H == 9)
replace B1SC2I = . if (B1SC2I == 7 | B1SC2I == 8 | B1SC2I == 9)
replace B1SC2J = . if (B1SC2J == 7 | B1SC2J == 8 | B1SC2J == 9)
replace B1SC2K = . if (B1SC2K == 7 | B1SC2K == 8 | B1SC2K == 9)
replace B1SC2L = . if (B1SC2L == 7 | B1SC2L == 8 | B1SC2L == 9)
replace B1SC3A = . if (B1SC3A == 7 | B1SC3A == 8 | B1SC3A == 9)
replace B1SC3B = . if (B1SC3B == 7 | B1SC3B == 8 | B1SC3B == 9)
replace B1SC3C = . if (B1SC3C == 7 | B1SC3C == 8 | B1SC3C == 9)
replace B1SC3D = . if (B1SC3D == 7 | B1SC3D == 8 | B1SC3D == 9)
replace B1SC3E = . if (B1SC3E == 7 | B1SC3E == 8 | B1SC3E == 9)
replace B1SC3F = . if (B1SC3F == 7 | B1SC3F == 8 | B1SC3F == 9)
replace B1SC3G = . if (B1SC3G == 7 | B1SC3G == 8 | B1SC3G == 9)
replace B1SC3H = . if (B1SC3H == 7 | B1SC3H == 8 | B1SC3H == 9)
replace B1SC4 = . if (B1SC4 == 7 | B1SC4 == 8 | B1SC4 == 9)
replace B1SC5 = . if (B1SC5 == 7 | B1SC5 == 8 | B1SC5 == 9)
replace B1SC6 = . if (B1SC6 == 7 | B1SC6 == 8 | B1SC6 == 9)
replace B1SC7A = . if (B1SC7A == 7 | B1SC7A == 8 | B1SC7A == 9)
replace B1SC7B = . if (B1SC7B == 7 | B1SC7B == 8 | B1SC7B == 9)
replace B1SC7C = . if (B1SC7C == 7 | B1SC7C == 8 | B1SC7C == 9)
replace B1SC7D = . if (B1SC7D == 7 | B1SC7D == 8 | B1SC7D == 9)
replace B1SC8A = . if (B1SC8A == 7 | B1SC8A == 8 | B1SC8A == 9)
replace B1SC8B = . if (B1SC8B == 7 | B1SC8B == 8 | B1SC8B == 9)
replace B1SC8C = . if (B1SC8C == 7 | B1SC8C == 8 | B1SC8C == 9)
replace B1SC9A = . if (B1SC9A == 7 | B1SC9A == 8 | B1SC9A == 9)
replace B1SC9B = . if (B1SC9B == 7 | B1SC9B == 8 | B1SC9B == 9)
replace B1SC9C = . if (B1SC9C == 7 | B1SC9C == 8 | B1SC9C == 9)
replace B1SC9D = . if (B1SC9D == 7 | B1SC9D == 8 | B1SC9D == 9)
replace B1SC9E = . if (B1SC9E == 7 | B1SC9E == 8 | B1SC9E == 9)
replace B1SC9F = . if (B1SC9F == 7 | B1SC9F == 8 | B1SC9F == 9)
replace B1SC9G = . if (B1SC9G == 7 | B1SC9G == 8 | B1SC9G == 9)
replace B1SC9H = . if (B1SC9H == 7 | B1SC9H == 8 | B1SC9H == 9)
replace B1SC10 = . if (B1SC10 == 7 | B1SC10 == 8 | B1SC10 == 9)
replace B1SC11 = . if (B1SC11 == 7 | B1SC11 == 8 | B1SC11 == 9)
replace B1SC12 = . if (B1SC12 == 7 | B1SC12 == 8 | B1SC12 == 9)
replace B1SD1 = . if (B1SD1 == 7 | B1SD1 == 8 | B1SD1 == 9)
replace B1SD1A = . if (B1SD1A == 997 | B1SD1A == 998 | B1SD1A == 999)
replace B1SD1B = . if (B1SD1B == 7 | B1SD1B == 8 | B1SD1B == 9)
replace B1SD1C = . if (B1SD1C == 9997 | B1SD1C == 9998 | B1SD1C == 9999)
replace B1SD1D = . if (B1SD1D == 997 | B1SD1D == 998 | B1SD1D == 999)
replace B1SD2 = . if (B1SD2 == 7 | B1SD2 == 8 | B1SD2 == 9)
replace B1SD2A = . if (B1SD2A == 997 | B1SD2A == 998 | B1SD2A == 999)
replace B1SD2B = . if (B1SD2B == 7 | B1SD2B == 8 | B1SD2B == 9)
replace B1SD2C = . if (B1SD2C == 9997 | B1SD2C == 9998 | B1SD2C == 9999)
replace B1SD2D = . if (B1SD2D == 997 | B1SD2D == 998 | B1SD2D == 999)
replace B1SE1A = . if (B1SE1A == 8 | B1SE1A == 9)
replace B1SE1B = . if (B1SE1B == 8 | B1SE1B == 9)
replace B1SE1C = . if (B1SE1C == 8 | B1SE1C == 9)
replace B1SE1D = . if (B1SE1D == 8 | B1SE1D == 9)
replace B1SE1E = . if (B1SE1E == 8 | B1SE1E == 9)
replace B1SE1F = . if (B1SE1F == 8 | B1SE1F == 9)
replace B1SE1G = . if (B1SE1G == 8 | B1SE1G == 9)
replace B1SE1H = . if (B1SE1H == 8 | B1SE1H == 9)
replace B1SE1I = . if (B1SE1I == 8 | B1SE1I == 9)
replace B1SE1J = . if (B1SE1J == 8 | B1SE1J == 9)
replace B1SE1K = . if (B1SE1K == 8 | B1SE1K == 9)
replace B1SE1L = . if (B1SE1L == 8 | B1SE1L == 9)
replace B1SE1M = . if (B1SE1M == 8 | B1SE1M == 9)
replace B1SE1N = . if (B1SE1N == 8 | B1SE1N == 9)
replace B1SE1O = . if (B1SE1O == 8 | B1SE1O == 9)
replace B1SE1P = . if (B1SE1P == 8 | B1SE1P == 9)
replace B1SE1Q = . if (B1SE1Q == 8 | B1SE1Q == 9)
replace B1SE1R = . if (B1SE1R == 8 | B1SE1R == 9)
replace B1SE1S = . if (B1SE1S == 8 | B1SE1S == 9)
replace B1SE1T = . if (B1SE1T == 8 | B1SE1T == 9)
replace B1SE1U = . if (B1SE1U == 8 | B1SE1U == 9)
replace B1SE1V = . if (B1SE1V == 8 | B1SE1V == 9)
replace B1SE1W = . if (B1SE1W == 8 | B1SE1W == 9)
replace B1SE1X = . if (B1SE1X == 8 | B1SE1X == 9)
replace B1SE1Y = . if (B1SE1Y == 8 | B1SE1Y == 9)
replace B1SE1Z = . if (B1SE1Z == 8 | B1SE1Z == 9)
replace B1SE1AA = . if (B1SE1AA == 8 | B1SE1AA == 9)
replace B1SE1BB = . if (B1SE1BB == 8 | B1SE1BB == 9)
replace B1SE1CC = . if (B1SE1CC == 8 | B1SE1CC == 9)
replace B1SE1DD = . if (B1SE1DD == 8 | B1SE1DD == 9)
replace B1SE1EE = . if (B1SE1EE == 8 | B1SE1EE == 9)
replace B1SE1FF = . if (B1SE1FF == 8 | B1SE1FF == 9)
replace B1SE1GG = . if (B1SE1GG == 8 | B1SE1GG == 9)
replace B1SE1HH = . if (B1SE1HH == 8 | B1SE1HH == 9)
replace B1SE1II = . if (B1SE1II == 8 | B1SE1II == 9)
replace B1SE1JJ = . if (B1SE1JJ == 8 | B1SE1JJ == 9)
replace B1SE1KK = . if (B1SE1KK == 8 | B1SE1KK == 9)
replace B1SE1LL = . if (B1SE1LL == 8 | B1SE1LL == 9)
replace B1SE1MM = . if (B1SE1MM == 8 | B1SE1MM == 9)
replace B1SE1NN = . if (B1SE1NN == 8 | B1SE1NN == 9)
replace B1SE1OO = . if (B1SE1OO == 8 | B1SE1OO == 9)
replace B1SE1PP = . if (B1SE1PP == 8 | B1SE1PP == 9)
replace B1SE1QQ = . if (B1SE1QQ == 8 | B1SE1QQ == 9)
replace B1SPWBA1 = . if (B1SPWBA1 == 98.0)
replace B1SPWBE1 = . if (B1SPWBE1 == 98.0)
replace B1SPWBG1 = . if (B1SPWBG1 == 98.0)
replace B1SPWBR1 = . if (B1SPWBR1 == 98.0)
replace B1SPWBU1 = . if (B1SPWBU1 == 98.0)
replace B1SPWBS1 = . if (B1SPWBS1 == 98.0)
replace B1SPWBA2 = . if (B1SPWBA2 == 98.000)
replace B1SPWBE2 = . if (B1SPWBE2 == 98.000)
replace B1SPWBG2 = . if (B1SPWBG2 == 98.000)
replace B1SPWBR2 = . if (B1SPWBR2 == 98.000)
replace B1SPWBU2 = . if (B1SPWBU2 == 98.000)
replace B1SPWBS2 = . if (B1SPWBS2 == 98.000)
replace B1SE2A = . if (B1SE2A == 7 | B1SE2A == 8 | B1SE2A == 9)
replace B1SE2B = . if (B1SE2B == 7 | B1SE2B == 8 | B1SE2B == 9)
replace B1SE2C = . if (B1SE2C == 7 | B1SE2C == 8 | B1SE2C == 9)
replace B1SE2D = . if (B1SE2D == 7 | B1SE2D == 8 | B1SE2D == 9)
replace B1SE2E = . if (B1SE2E == 7 | B1SE2E == 8 | B1SE2E == 9)
replace B1SE2F = . if (B1SE2F == 7 | B1SE2F == 8 | B1SE2F == 9)
replace B1SE2G = . if (B1SE2G == 7 | B1SE2G == 8 | B1SE2G == 9)
replace B1SE2H = . if (B1SE2H == 7 | B1SE2H == 8 | B1SE2H == 9)
replace B1SE2I = . if (B1SE2I == 7 | B1SE2I == 8 | B1SE2I == 9)
replace B1SE2J = . if (B1SE2J == 7 | B1SE2J == 8 | B1SE2J == 9)
replace B1SE2K = . if (B1SE2K == 7 | B1SE2K == 8 | B1SE2K == 9)
replace B1SE2L = . if (B1SE2L == 7 | B1SE2L == 8 | B1SE2L == 9)
replace B1SE2M = . if (B1SE2M == 7 | B1SE2M == 8 | B1SE2M == 9)
replace B1SE2N = . if (B1SE2N == 7 | B1SE2N == 8 | B1SE2N == 9)
replace B1SE2O = . if (B1SE2O == 7 | B1SE2O == 8 | B1SE2O == 9)
replace B1SE2P = . if (B1SE2P == 7 | B1SE2P == 8 | B1SE2P == 9)
replace B1SE2Q = . if (B1SE2Q == 7 | B1SE2Q == 8 | B1SE2Q == 9)
replace B1SE3 = . if (B1SE3 == 97 | B1SE3 == 98 | B1SE3 == 99)
replace B1SE4A = . if (B1SE4A == 8 | B1SE4A == 9)
replace B1SE4B = . if (B1SE4B == 8 | B1SE4B == 9)
replace B1SE4C = . if (B1SE4C == 8 | B1SE4C == 9)
replace B1SE4D = . if (B1SE4D == 8 | B1SE4D == 9)
replace B1SE4E = . if (B1SE4E == 8 | B1SE4E == 9)
replace B1SE4F = . if (B1SE4F == 8 | B1SE4F == 9)
replace B1SE4G = . if (B1SE4G == 8 | B1SE4G == 9)
replace B1SE4H = . if (B1SE4H == 8 | B1SE4H == 9)
replace B1SE4I = . if (B1SE4I == 8 | B1SE4I == 9)
replace B1SE4J = . if (B1SE4J == 8 | B1SE4J == 9)
replace B1SE4K = . if (B1SE4K == 8 | B1SE4K == 9)
replace B1SE4L = . if (B1SE4L == 8 | B1SE4L == 9)
replace B1SMASTE = . if (B1SMASTE == 8.000)
replace B1SCONST = . if (B1SCONST == 8.000)
replace B1SCTRL = . if (B1SCTRL == 8.000)
replace B1SE4M = . if (B1SE4M == 8 | B1SE4M == 9)
replace B1SE4N = . if (B1SE4N == 8 | B1SE4N == 9)
replace B1SE4O = . if (B1SE4O == 8 | B1SE4O == 9)
replace B1SE4P = . if (B1SE4P == 8 | B1SE4P == 9)
replace B1SE4Q = . if (B1SE4Q == 8 | B1SE4Q == 9)
replace B1SE4R = . if (B1SE4R == 8 | B1SE4R == 9)
replace B1SE4S = . if (B1SE4S == 8 | B1SE4S == 9)
replace B1SESTEE = . if (B1SESTEE == 98.000)
replace B1SE4T = . if (B1SE4T == 8 | B1SE4T == 9)
replace B1SE4U = . if (B1SE4U == 8 | B1SE4U == 9)
replace B1SE4V = . if (B1SE4V == 8 | B1SE4V == 9)
replace B1SE4W = . if (B1SE4W == 8 | B1SE4W == 9)
replace B1SE4X = . if (B1SE4X == 8 | B1SE4X == 9)
replace B1SE4Y = . if (B1SE4Y == 8 | B1SE4Y == 9)
replace B1SINTER = . if (B1SINTER == 8.000)
replace B1SINDEP = . if (B1SINDEP == 8.000)
replace B1SE5A = . if (B1SE5A == 7 | B1SE5A == 8 | B1SE5A == 9)
replace B1SE5B = . if (B1SE5B == 7 | B1SE5B == 8 | B1SE5B == 9)
replace B1SE5C = . if (B1SE5C == 7 | B1SE5C == 8 | B1SE5C == 9)
replace B1SE5D = . if (B1SE5D == 7 | B1SE5D == 8 | B1SE5D == 9)
replace B1SE5E = . if (B1SE5E == 7 | B1SE5E == 8 | B1SE5E == 9)
replace B1SE6A = . if (B1SE6A == 7 | B1SE6A == 8 | B1SE6A == 9)
replace B1SE6B = . if (B1SE6B == 7 | B1SE6B == 8 | B1SE6B == 9)
replace B1SE6C = . if (B1SE6C == 7 | B1SE6C == 8 | B1SE6C == 9)
replace B1SE6D = . if (B1SE6D == 7 | B1SE6D == 8 | B1SE6D == 9)
replace B1SE6E = . if (B1SE6E == 7 | B1SE6E == 8 | B1SE6E == 9)
replace B1SE6F = . if (B1SE6F == 7 | B1SE6F == 8 | B1SE6F == 9)
replace B1SE6G = . if (B1SE6G == 7 | B1SE6G == 8 | B1SE6G == 9)
replace B1SE6H = . if (B1SE6H == 7 | B1SE6H == 8 | B1SE6H == 9)
replace B1SE6I = . if (B1SE6I == 7 | B1SE6I == 8 | B1SE6I == 9)
replace B1SE6J = . if (B1SE6J == 7 | B1SE6J == 8 | B1SE6J == 9)
replace B1SE6K = . if (B1SE6K == 7 | B1SE6K == 8 | B1SE6K == 9)
replace B1SE6L = . if (B1SE6L == 7 | B1SE6L == 8 | B1SE6L == 9)
replace B1SE6M = . if (B1SE6M == 7 | B1SE6M == 8 | B1SE6M == 9)
replace B1SE6N = . if (B1SE6N == 7 | B1SE6N == 8 | B1SE6N == 9)
replace B1SE6O = . if (B1SE6O == 7 | B1SE6O == 8 | B1SE6O == 9)
replace B1SE6P = . if (B1SE6P == 7 | B1SE6P == 8 | B1SE6P == 9)
replace B1SE6Q = . if (B1SE6Q == 7 | B1SE6Q == 8 | B1SE6Q == 9)
replace B1SE6R = . if (B1SE6R == 7 | B1SE6R == 8 | B1SE6R == 9)
replace B1SE6S = . if (B1SE6S == 7 | B1SE6S == 8 | B1SE6S == 9)
replace B1SE6T = . if (B1SE6T == 7 | B1SE6T == 8 | B1SE6T == 9)
replace B1SE6U = . if (B1SE6U == 7 | B1SE6U == 8 | B1SE6U == 9)
replace B1SE6V = . if (B1SE6V == 7 | B1SE6V == 8 | B1SE6V == 9)
replace B1SE6W = . if (B1SE6W == 7 | B1SE6W == 8 | B1SE6W == 9)
replace B1SE6X = . if (B1SE6X == 7 | B1SE6X == 8 | B1SE6X == 9)
replace B1SE6Y = . if (B1SE6Y == 7 | B1SE6Y == 8 | B1SE6Y == 9)
replace B1SE6Z = . if (B1SE6Z == 7 | B1SE6Z == 8 | B1SE6Z == 9)
replace B1SE6AA = . if (B1SE6AA == 7 | B1SE6AA == 8 | B1SE6AA == 9)
replace B1SE6BB = . if (B1SE6BB == 7 | B1SE6BB == 8 | B1SE6BB == 9)
replace B1SE6CC = . if (B1SE6CC == 7 | B1SE6CC == 8 | B1SE6CC == 9)
replace B1SE6DD = . if (B1SE6DD == 7 | B1SE6DD == 8 | B1SE6DD == 9)
replace B1SE6EE = . if (B1SE6EE == 7 | B1SE6EE == 8 | B1SE6EE == 9)
replace B1SAGENC = . if (B1SAGENC == 8.000)
replace B1SAGREE = . if (B1SAGREE == 8.000)
replace B1SEXTRA = . if (B1SEXTRA == 8.000)
replace B1SNEURO = . if (B1SNEURO == 8.000)
replace B1SCONS1 = . if (B1SCONS1 == 8.000)
replace B1SCONS2 = . if (B1SCONS2 == 8.000)
replace B1SOPEN = . if (B1SOPEN == 8.000)
replace B1SE7A = . if (B1SE7A == 7 | B1SE7A == 8 | B1SE7A == 9)
replace B1SE7B = . if (B1SE7B == 7 | B1SE7B == 8 | B1SE7B == 9)
replace B1SE7C = . if (B1SE7C == 7 | B1SE7C == 8 | B1SE7C == 9)
replace B1SE7D = . if (B1SE7D == 7 | B1SE7D == 8 | B1SE7D == 9)
replace B1SE7E = . if (B1SE7E == 7 | B1SE7E == 8 | B1SE7E == 9)
replace B1SE7F = . if (B1SE7F == 7 | B1SE7F == 8 | B1SE7F == 9)
replace B1SE7G = . if (B1SE7G == 7 | B1SE7G == 8 | B1SE7G == 9)
replace B1SE7H = . if (B1SE7H == 7 | B1SE7H == 8 | B1SE7H == 9)
replace B1SE7I = . if (B1SE7I == 7 | B1SE7I == 8 | B1SE7I == 9)
replace B1SE7J = . if (B1SE7J == 7 | B1SE7J == 8 | B1SE7J == 9)
replace B1SE7K = . if (B1SE7K == 7 | B1SE7K == 8 | B1SE7K == 9)
replace B1SE7L = . if (B1SE7L == 7 | B1SE7L == 8 | B1SE7L == 9)
replace B1SE7M = . if (B1SE7M == 7 | B1SE7M == 8 | B1SE7M == 9)
replace B1SE7N = . if (B1SE7N == 7 | B1SE7N == 8 | B1SE7N == 9)
replace B1SE7O = . if (B1SE7O == 7 | B1SE7O == 8 | B1SE7O == 9)
replace B1SE7P = . if (B1SE7P == 7 | B1SE7P == 8 | B1SE7P == 9)
replace B1SE7Q = . if (B1SE7Q == 7 | B1SE7Q == 8 | B1SE7Q == 9)
replace B1SE7R = . if (B1SE7R == 7 | B1SE7R == 8 | B1SE7R == 9)
replace B1SE7S = . if (B1SE7S == 7 | B1SE7S == 8 | B1SE7S == 9)
replace B1SE7T = . if (B1SE7T == 7 | B1SE7T == 8 | B1SE7T == 9)
replace B1SE7U = . if (B1SE7U == 7 | B1SE7U == 8 | B1SE7U == 9)
replace B1SE7V = . if (B1SE7V == 7 | B1SE7V == 8 | B1SE7V == 9)
replace B1SE7W = . if (B1SE7W == 7 | B1SE7W == 8 | B1SE7W == 9)
replace B1SE7X = . if (B1SE7X == 7 | B1SE7X == 8 | B1SE7X == 9)
replace B1SE7Y = . if (B1SE7Y == 7 | B1SE7Y == 8 | B1SE7Y == 9)
replace B1SE7Z = . if (B1SE7Z == 7 | B1SE7Z == 8 | B1SE7Z == 9)
replace B1SE7AA = . if (B1SE7AA == 7 | B1SE7AA == 8 | B1SE7AA == 9)
replace B1SE7BB = . if (B1SE7BB == 7 | B1SE7BB == 8 | B1SE7BB == 9)
replace B1SE7CC = . if (B1SE7CC == 7 | B1SE7CC == 8 | B1SE7CC == 9)
replace B1SE7DD = . if (B1SE7DD == 7 | B1SE7DD == 8 | B1SE7DD == 9)
replace B1SE7EE = . if (B1SE7EE == 7 | B1SE7EE == 8 | B1SE7EE == 9)
replace B1SE7FF = . if (B1SE7FF == 7 | B1SE7FF == 8 | B1SE7FF == 9)
replace B1SE7GG = . if (B1SE7GG == 7 | B1SE7GG == 8 | B1SE7GG == 9)
replace B1SE8 = . if (B1SE8 == 8)
replace B1SE8A = . if (B1SE8A == 8)
replace B1SE9 = . if (B1SE9 == 8)
replace B1SE9A = . if (B1SE9A == 8)
replace B1SMPQWB = . if (B1SMPQWB == 98.00)
replace B1SMPQSP = . if (B1SMPQSP == 98.000)
replace B1SMPQAC = . if (B1SMPQAC == 98.000)
replace B1SMPQSC = . if (B1SMPQSC == 98.000)
replace B1SMPQSR = . if (B1SMPQSR == 98.00)
replace B1SMPQAG = . if (B1SMPQAG == 98.000)
replace B1SMPQAL = . if (B1SMPQAL == 98.00)
replace B1SMPQCN = . if (B1SMPQCN == 98.00)
replace B1SMPQTR = . if (B1SMPQTR == 98.00)
replace B1SMPQHA = . if (B1SMPQHA == 98.000)
replace B1SE10A = . if (B1SE10A == 7 | B1SE10A == 8 | B1SE10A == 9)
replace B1SE10B = . if (B1SE10B == 7 | B1SE10B == 8 | B1SE10B == 9)
replace B1SE10C = . if (B1SE10C == 7 | B1SE10C == 8 | B1SE10C == 9)
replace B1SE10D = . if (B1SE10D == 7 | B1SE10D == 8 | B1SE10D == 9)
replace B1SE10E = . if (B1SE10E == 7 | B1SE10E == 8 | B1SE10E == 9)
replace B1SE10F = . if (B1SE10F == 7 | B1SE10F == 8 | B1SE10F == 9)
replace B1SOPTIM = . if (B1SOPTIM == 98.00)
replace B1SPESSI = . if (B1SPESSI == 98.00)
replace B1SORIEN = . if (B1SORIEN == 98.000)
replace B1SE11A = . if (B1SE11A == 7 | B1SE11A == 8 | B1SE11A == 9)
replace B1SE11B = . if (B1SE11B == 7 | B1SE11B == 8 | B1SE11B == 9)
replace B1SE11C = . if (B1SE11C == 7 | B1SE11C == 8 | B1SE11C == 9)
replace B1SE11D = . if (B1SE11D == 7 | B1SE11D == 8 | B1SE11D == 9)
replace B1SE11E = . if (B1SE11E == 7 | B1SE11E == 8 | B1SE11E == 9)
replace B1SE11F = . if (B1SE11F == 7 | B1SE11F == 8 | B1SE11F == 9)
replace B1SE11G = . if (B1SE11G == 7 | B1SE11G == 8 | B1SE11G == 9)
replace B1SE11H = . if (B1SE11H == 7 | B1SE11H == 8 | B1SE11H == 9)
replace B1SE11I = . if (B1SE11I == 7 | B1SE11I == 8 | B1SE11I == 9)
replace B1SE11J = . if (B1SE11J == 7 | B1SE11J == 8 | B1SE11J == 9)
replace B1SE11K = . if (B1SE11K == 7 | B1SE11K == 8 | B1SE11K == 9)
replace B1SE11L = . if (B1SE11L == 7 | B1SE11L == 8 | B1SE11L == 9)
replace B1SE11M = . if (B1SE11M == 7 | B1SE11M == 8 | B1SE11M == 9)
replace B1SE11N = . if (B1SE11N == 7 | B1SE11N == 8 | B1SE11N == 9)
replace B1SE11O = . if (B1SE11O == 7 | B1SE11O == 8 | B1SE11O == 9)
replace B1SE11P = . if (B1SE11P == 7 | B1SE11P == 8 | B1SE11P == 9)
replace B1SE11Q = . if (B1SE11Q == 7 | B1SE11Q == 8 | B1SE11Q == 9)
replace B1SE11R = . if (B1SE11R == 7 | B1SE11R == 8 | B1SE11R == 9)
replace B1SE11S = . if (B1SE11S == 7 | B1SE11S == 8 | B1SE11S == 9)
replace B1SE11T = . if (B1SE11T == 7 | B1SE11T == 8 | B1SE11T == 9)
replace B1SE11U = . if (B1SE11U == 7 | B1SE11U == 8 | B1SE11U == 9)
replace B1SE11V = . if (B1SE11V == 7 | B1SE11V == 8 | B1SE11V == 9)
replace B1SE11W = . if (B1SE11W == 7 | B1SE11W == 8 | B1SE11W == 9)
replace B1SE11X = . if (B1SE11X == 7 | B1SE11X == 8 | B1SE11X == 9)
replace B1SE11Y = . if (B1SE11Y == 7 | B1SE11Y == 8 | B1SE11Y == 9)
replace B1SE11Z = . if (B1SE11Z == 7 | B1SE11Z == 8 | B1SE11Z == 9)
replace B1SE11AA = . if (B1SE11AA == 7 | B1SE11AA == 8 | B1SE11AA == 9)
replace B1SE11A1 = . if (B1SE11A1 == 997 | B1SE11A1 == 998 | B1SE11A1 == 999)
replace B1SE11A3 = . if (B1SE11A3 == 7 | B1SE11A3 == 8 | B1SE11A3 == 9)
replace B1SE11A4 = . if (B1SE11A4 == 7 | B1SE11A4 == 8 | B1SE11A4 == 9)
replace B1SE11B1 = . if (B1SE11B1 == 997 | B1SE11B1 == 998 | B1SE11B1 == 999)
replace B1SE11B3 = . if (B1SE11B3 == 7 | B1SE11B3 == 8 | B1SE11B3 == 9)
replace B1SE11B4 = . if (B1SE11B4 == 7 | B1SE11B4 == 8 | B1SE11B4 == 9)
replace B1SE11C1 = . if (B1SE11C1 == 997 | B1SE11C1 == 998 | B1SE11C1 == 999)
replace B1SE11C3 = . if (B1SE11C3 == 7 | B1SE11C3 == 8 | B1SE11C3 == 9)
replace B1SE11C4 = . if (B1SE11C4 == 7 | B1SE11C4 == 8 | B1SE11C4 == 9)
replace B1SE11D1 = . if (B1SE11D1 == 997 | B1SE11D1 == 998 | B1SE11D1 == 999)
replace B1SE11D3 = . if (B1SE11D3 == 7 | B1SE11D3 == 8 | B1SE11D3 == 9)
replace B1SE11D4 = . if (B1SE11D4 == 7 | B1SE11D4 == 8 | B1SE11D4 == 9)
replace B1SE11E1 = . if (B1SE11E1 == 997 | B1SE11E1 == 998 | B1SE11E1 == 999)
replace B1SE11E3 = . if (B1SE11E3 == 7 | B1SE11E3 == 8 | B1SE11E3 == 9)
replace B1SE11E4 = . if (B1SE11E4 == 7 | B1SE11E4 == 8 | B1SE11E4 == 9)
replace B1SE11F1 = . if (B1SE11F1 == 997 | B1SE11F1 == 998 | B1SE11F1 == 999)
replace B1SE11F3 = . if (B1SE11F3 == 7 | B1SE11F3 == 8 | B1SE11F3 == 9)
replace B1SE11F4 = . if (B1SE11F4 == 7 | B1SE11F4 == 8 | B1SE11F4 == 9)
replace B1SE11G1 = . if (B1SE11G1 == 997 | B1SE11G1 == 998 | B1SE11G1 == 999)
replace B1SE11G3 = . if (B1SE11G3 == 7 | B1SE11G3 == 8 | B1SE11G3 == 9)
replace B1SE11G4 = . if (B1SE11G4 == 7 | B1SE11G4 == 8 | B1SE11G4 == 9)
replace B1SE11H1 = . if (B1SE11H1 == 997 | B1SE11H1 == 998 | B1SE11H1 == 999)
replace B1SE11H3 = . if (B1SE11H3 == 7 | B1SE11H3 == 8 | B1SE11H3 == 9)
replace B1SE11H4 = . if (B1SE11H4 == 7 | B1SE11H4 == 8 | B1SE11H4 == 9)
replace B1SE11I1 = . if (B1SE11I1 == 997 | B1SE11I1 == 998 | B1SE11I1 == 999)
replace B1SE11I3 = . if (B1SE11I3 == 7 | B1SE11I3 == 8 | B1SE11I3 == 9)
replace B1SE11I4 = . if (B1SE11I4 == 7 | B1SE11I4 == 8 | B1SE11I4 == 9)
replace B1SE11J1 = . if (B1SE11J1 == 997 | B1SE11J1 == 998 | B1SE11J1 == 999)
replace B1SE11J3 = . if (B1SE11J3 == 7 | B1SE11J3 == 8 | B1SE11J3 == 9)
replace B1SE11J4 = . if (B1SE11J4 == 7 | B1SE11J4 == 8 | B1SE11J4 == 9)
replace B1SE11K1 = . if (B1SE11K1 == 997 | B1SE11K1 == 998 | B1SE11K1 == 999)
replace B1SE11K3 = . if (B1SE11K3 == 7 | B1SE11K3 == 8 | B1SE11K3 == 9)
replace B1SE11K4 = . if (B1SE11K4 == 7 | B1SE11K4 == 8 | B1SE11K4 == 9)
replace B1SE11L1 = . if (B1SE11L1 == 997 | B1SE11L1 == 998 | B1SE11L1 == 999)
replace B1SE11L3 = . if (B1SE11L3 == 7 | B1SE11L3 == 8 | B1SE11L3 == 9)
replace B1SE11L4 = . if (B1SE11L4 == 7 | B1SE11L4 == 8 | B1SE11L4 == 9)
replace B1SE11M1 = . if (B1SE11M1 == 997 | B1SE11M1 == 998 | B1SE11M1 == 999)
replace B1SE11M3 = . if (B1SE11M3 == 7 | B1SE11M3 == 8 | B1SE11M3 == 9)
replace B1SE11M4 = . if (B1SE11M4 == 7 | B1SE11M4 == 8 | B1SE11M4 == 9)
replace B1SE11N1 = . if (B1SE11N1 == 997 | B1SE11N1 == 998 | B1SE11N1 == 999)
replace B1SE11N3 = . if (B1SE11N3 == 7 | B1SE11N3 == 8 | B1SE11N3 == 9)
replace B1SE11N4 = . if (B1SE11N4 == 7 | B1SE11N4 == 8 | B1SE11N4 == 9)
replace B1SE11O1 = . if (B1SE11O1 == 997 | B1SE11O1 == 998 | B1SE11O1 == 999)
replace B1SE11O3 = . if (B1SE11O3 == 7 | B1SE11O3 == 8 | B1SE11O3 == 9)
replace B1SE11O4 = . if (B1SE11O4 == 7 | B1SE11O4 == 8 | B1SE11O4 == 9)
replace B1SE11P1 = . if (B1SE11P1 == 997 | B1SE11P1 == 998 | B1SE11P1 == 999)
replace B1SE11P3 = . if (B1SE11P3 == 7 | B1SE11P3 == 8 | B1SE11P3 == 9)
replace B1SE11P4 = . if (B1SE11P4 == 7 | B1SE11P4 == 8 | B1SE11P4 == 9)
replace B1SE11Q1 = . if (B1SE11Q1 == 997 | B1SE11Q1 == 998 | B1SE11Q1 == 999)
replace B1SE11Q3 = . if (B1SE11Q3 == 7 | B1SE11Q3 == 8 | B1SE11Q3 == 9)
replace B1SE11Q4 = . if (B1SE11Q4 == 7 | B1SE11Q4 == 8 | B1SE11Q4 == 9)
replace B1SE11R1 = . if (B1SE11R1 == 997 | B1SE11R1 == 998 | B1SE11R1 == 999)
replace B1SE11R3 = . if (B1SE11R3 == 7 | B1SE11R3 == 8 | B1SE11R3 == 9)
replace B1SE11R4 = . if (B1SE11R4 == 7 | B1SE11R4 == 8 | B1SE11R4 == 9)
replace B1SE11S1 = . if (B1SE11S1 == 997 | B1SE11S1 == 998 | B1SE11S1 == 999)
replace B1SE11S3 = . if (B1SE11S3 == 7 | B1SE11S3 == 8 | B1SE11S3 == 9)
replace B1SE11S4 = . if (B1SE11S4 == 7 | B1SE11S4 == 8 | B1SE11S4 == 9)
replace B1SE11T1 = . if (B1SE11T1 == 997 | B1SE11T1 == 998 | B1SE11T1 == 999)
replace B1SE11T3 = . if (B1SE11T3 == 7 | B1SE11T3 == 8 | B1SE11T3 == 9)
replace B1SE11T4 = . if (B1SE11T4 == 7 | B1SE11T4 == 8 | B1SE11T4 == 9)
replace B1SE11U1 = . if (B1SE11U1 == 997 | B1SE11U1 == 998 | B1SE11U1 == 999)
replace B1SE11U3 = . if (B1SE11U3 == 7 | B1SE11U3 == 8 | B1SE11U3 == 9)
replace B1SE11U4 = . if (B1SE11U4 == 7 | B1SE11U4 == 8 | B1SE11U4 == 9)
replace B1SE11V1 = . if (B1SE11V1 == 997 | B1SE11V1 == 998 | B1SE11V1 == 999)
replace B1SE11V3 = . if (B1SE11V3 == 7 | B1SE11V3 == 8 | B1SE11V3 == 9)
replace B1SE11V4 = . if (B1SE11V4 == 7 | B1SE11V4 == 8 | B1SE11V4 == 9)
replace B1SE11W1 = . if (B1SE11W1 == 997 | B1SE11W1 == 998 | B1SE11W1 == 999)
replace B1SE11W3 = . if (B1SE11W3 == 7 | B1SE11W3 == 8 | B1SE11W3 == 9)
replace B1SE11W4 = . if (B1SE11W4 == 7 | B1SE11W4 == 8 | B1SE11W4 == 9)
replace B1SE11X1 = . if (B1SE11X1 == 997 | B1SE11X1 == 998 | B1SE11X1 == 999)
replace B1SE11X3 = . if (B1SE11X3 == 7 | B1SE11X3 == 8 | B1SE11X3 == 9)
replace B1SE11X4 = . if (B1SE11X4 == 7 | B1SE11X4 == 8 | B1SE11X4 == 9)
replace B1SE11Y1 = . if (B1SE11Y1 == 997 | B1SE11Y1 == 998 | B1SE11Y1 == 999)
replace B1SE11Y3 = . if (B1SE11Y3 == 7 | B1SE11Y3 == 8 | B1SE11Y3 == 9)
replace B1SE11Y4 = . if (B1SE11Y4 == 7 | B1SE11Y4 == 8 | B1SE11Y4 == 9)
replace B1SE11Z1 = . if (B1SE11Z1 == 997 | B1SE11Z1 == 998 | B1SE11Z1 == 999)
replace B1SE11Z3 = . if (B1SE11Z3 == 7 | B1SE11Z3 == 8 | B1SE11Z3 == 9)
replace B1SE11Z4 = . if (B1SE11Z4 == 7 | B1SE11Z4 == 8 | B1SE11Z4 == 9)
replace B1SE11AW = . if (B1SE11AW == 997 | B1SE11AW == 998 | B1SE11AW == 999)
replace B1SE11AY = . if (B1SE11AY == 7 | B1SE11AY == 8 | B1SE11AY == 9)
replace B1SE11AZ = . if (B1SE11AZ == 7 | B1SE11AZ == 8 | B1SE11AZ == 9)
replace B1SE12A = . if (B1SE12A == 7 | B1SE12A == 8 | B1SE12A == 9)
replace B1SE12B = . if (B1SE12B == 7 | B1SE12B == 8 | B1SE12B == 9)
replace B1SE12C = . if (B1SE12C == 7 | B1SE12C == 8 | B1SE12C == 9)
replace B1SE12D = . if (B1SE12D == 7 | B1SE12D == 8 | B1SE12D == 9)
replace B1SE12E = . if (B1SE12E == 7 | B1SE12E == 8 | B1SE12E == 9)
replace B1SE12F = . if (B1SE12F == 7 | B1SE12F == 8 | B1SE12F == 9)
replace B1SE12G = . if (B1SE12G == 7 | B1SE12G == 8 | B1SE12G == 9)
replace B1SE12H = . if (B1SE12H == 7 | B1SE12H == 8 | B1SE12H == 9)
replace B1SE12I = . if (B1SE12I == 7 | B1SE12I == 8 | B1SE12I == 9)
replace B1SE12J = . if (B1SE12J == 7 | B1SE12J == 8 | B1SE12J == 9)
replace B1SE12K = . if (B1SE12K == 7 | B1SE12K == 8 | B1SE12K == 9)
replace B1SE12L = . if (B1SE12L == 7 | B1SE12L == 8 | B1SE12L == 9)
replace B1SE12M = . if (B1SE12M == 7 | B1SE12M == 8 | B1SE12M == 9)
replace B1SE12N = . if (B1SE12N == 7 | B1SE12N == 8 | B1SE12N == 9)
replace B1SE12O = . if (B1SE12O == 7 | B1SE12O == 8 | B1SE12O == 9)
replace B1SE12P = . if (B1SE12P == 7 | B1SE12P == 8 | B1SE12P == 9)
replace B1SE12Q = . if (B1SE12Q == 7 | B1SE12Q == 8 | B1SE12Q == 9)
replace B1SE12R = . if (B1SE12R == 7 | B1SE12R == 8 | B1SE12R == 9)
replace B1SE12S = . if (B1SE12S == 7 | B1SE12S == 8 | B1SE12S == 9)
replace B1SE12T = . if (B1SE12T == 7 | B1SE12T == 8 | B1SE12T == 9)
replace B1SE12U = . if (B1SE12U == 7 | B1SE12U == 8 | B1SE12U == 9)
replace B1SE12V = . if (B1SE12V == 7 | B1SE12V == 8 | B1SE12V == 9)
replace B1SE12W = . if (B1SE12W == 7 | B1SE12W == 8 | B1SE12W == 9)
replace B1SE12X = . if (B1SE12X == 7 | B1SE12X == 8 | B1SE12X == 9)
replace B1SE12Y = . if (B1SE12Y == 7 | B1SE12Y == 8 | B1SE12Y == 9)
replace B1SE12Z = . if (B1SE12Z == 7 | B1SE12Z == 8 | B1SE12Z == 9)
replace B1SE12AA = . if (B1SE12AA == 7 | B1SE12AA == 8 | B1SE12AA == 9)
replace B1SE12BB = . if (B1SE12BB == 7 | B1SE12BB == 8 | B1SE12BB == 9)
replace B1SE12CC = . if (B1SE12CC == 7 | B1SE12CC == 8 | B1SE12CC == 9)
replace B1SE12DD = . if (B1SE12DD == 7 | B1SE12DD == 8 | B1SE12DD == 9)
replace B1SE12EE = . if (B1SE12EE == 7 | B1SE12EE == 8 | B1SE12EE == 9)
replace B1SE12FF = . if (B1SE12FF == 7 | B1SE12FF == 8 | B1SE12FF == 9)
replace B1SE12GG = . if (B1SE12GG == 7 | B1SE12GG == 8 | B1SE12GG == 9)
replace B1SE12HH = . if (B1SE12HH == 7 | B1SE12HH == 8 | B1SE12HH == 9)
replace B1SE12II = . if (B1SE12II == 7 | B1SE12II == 8 | B1SE12II == 9)
replace B1SE12JJ = . if (B1SE12JJ == 7 | B1SE12JJ == 8 | B1SE12JJ == 9)
replace B1SE12KK = . if (B1SE12KK == 7 | B1SE12KK == 8 | B1SE12KK == 9)
replace B1SE12LL = . if (B1SE12LL == 7 | B1SE12LL == 8 | B1SE12LL == 9)
replace B1SE12MM = . if (B1SE12MM == 7 | B1SE12MM == 8 | B1SE12MM == 9)
replace B1SPERSI = . if (B1SPERSI == 8.000)
replace B1SREAPP = . if (B1SREAPP == 8.000)
replace B1SCHANG = . if (B1SCHANG == 8.000)
replace B1SSPCTR = . if (B1SSPCTR == 98.000)
replace B1SCPCTR = . if (B1SCPCTR == 98.000)
replace B1SSSCTR = . if (B1SSSCTR == 98.000)
replace B1SCSCDE = . if (B1SCSCDE == 98.000)
replace B1SCSCSP = . if (B1SCSCSP == 98.000)
replace B1SCSCAG = . if (B1SCSCAG == 98.000)
replace B1SDIREC = . if (B1SDIREC == 8.000)
replace B1STODAY = . if (B1STODAY == 8.000)
replace B1SINSGH = . if (B1SINSGH == 8.00)
replace B1SFORSG = . if (B1SFORSG == 8)
replace B1SSUFFI = . if (B1SSUFFI == 8.00)
replace B1SE13A = . if (B1SE13A == 7 | B1SE13A == 8 | B1SE13A == 9)
replace B1SE13B = . if (B1SE13B == 7 | B1SE13B == 8 | B1SE13B == 9)
replace B1SE13C = . if (B1SE13C == 7 | B1SE13C == 8 | B1SE13C == 9)
replace B1SE13D = . if (B1SE13D == 7 | B1SE13D == 8 | B1SE13D == 9)
replace B1SE13E = . if (B1SE13E == 7 | B1SE13E == 8 | B1SE13E == 9)
replace B1SE13F = . if (B1SE13F == 7 | B1SE13F == 8 | B1SE13F == 9)
replace B1SE13G = . if (B1SE13G == 7 | B1SE13G == 8 | B1SE13G == 9)
replace B1SE13H = . if (B1SE13H == 7 | B1SE13H == 8 | B1SE13H == 9)
replace B1SE13I = . if (B1SE13I == 7 | B1SE13I == 8 | B1SE13I == 9)
replace B1SE13J = . if (B1SE13J == 7 | B1SE13J == 8 | B1SE13J == 9)
replace B1SE13K = . if (B1SE13K == 7 | B1SE13K == 8 | B1SE13K == 9)
replace B1SE13L = . if (B1SE13L == 7 | B1SE13L == 8 | B1SE13L == 9)
replace B1SE13M = . if (B1SE13M == 7 | B1SE13M == 8 | B1SE13M == 9)
replace B1SE13N = . if (B1SE13N == 7 | B1SE13N == 8 | B1SE13N == 9)
replace B1SE13O = . if (B1SE13O == 7 | B1SE13O == 8 | B1SE13O == 9)
replace B1SE13P = . if (B1SE13P == 7 | B1SE13P == 8 | B1SE13P == 9)
replace B1SE13Q = . if (B1SE13Q == 7 | B1SE13Q == 8 | B1SE13Q == 9)
replace B1SE13R = . if (B1SE13R == 7 | B1SE13R == 8 | B1SE13R == 9)
replace B1SE13S = . if (B1SE13S == 7 | B1SE13S == 8 | B1SE13S == 9)
replace B1SE13T = . if (B1SE13T == 7 | B1SE13T == 8 | B1SE13T == 9)
replace B1SE13U = . if (B1SE13U == 7 | B1SE13U == 8 | B1SE13U == 9)
replace B1SE13V = . if (B1SE13V == 7 | B1SE13V == 8 | B1SE13V == 9)
replace B1SE13W = . if (B1SE13W == 7 | B1SE13W == 8 | B1SE13W == 9)
replace B1SE13X = . if (B1SE13X == 7 | B1SE13X == 8 | B1SE13X == 9)
replace B1SE13Y = . if (B1SE13Y == 7 | B1SE13Y == 8 | B1SE13Y == 9)
replace B1SE13Z = . if (B1SE13Z == 7 | B1SE13Z == 8 | B1SE13Z == 9)
replace B1SREINT = . if (B1SREINT == 98.000)
replace B1SACTIV = . if (B1SACTIV == 98.000)
replace B1SPLAN = . if (B1SPLAN == 98.000)
replace B1SVENT = . if (B1SVENT == 98.000)
replace B1SDENIA = . if (B1SDENIA == 98.000)
replace B1SDISEN = . if (B1SDISEN == 98.000)
replace B1SFDCOP = . if (B1SFDCOP == 98.00)
replace B1SPRCOP = . if (B1SPRCOP == 98.000)
replace B1SEMCOP = . if (B1SEMCOP == 98.000)
replace B1SE14 = . if (B1SE14 == 997 | B1SE14 == 998 | B1SE14 == 999)
replace B1SE15 = . if (B1SE15 == 997 | B1SE15 == 998 | B1SE15 == 999)
replace B1SE16 = . if (B1SE16 == 997 | B1SE16 == 998 | B1SE16 == 999)
replace B1SE17 = . if (B1SE17 == 997 | B1SE17 == 998 | B1SE17 == 999)
replace B1SE18 = . if (B1SE18 == 997 | B1SE18 == 998 | B1SE18 == 999)
replace B1SE19 = . if (B1SE19 == 997 | B1SE19 == 998 | B1SE19 == 999)
replace B1SF1 = . if (B1SF1 == 97 | B1SF1 == 98 | B1SF1 == 99)
replace B1SF2 = . if (B1SF2 == 97 | B1SF2 == 98 | B1SF2 == 99)
replace B1SF3 = . if (B1SF3 == 97 | B1SF3 == 98 | B1SF3 == 99)
replace B1SF4 = . if (B1SF4 == 97 | B1SF4 == 98 | B1SF4 == 99)
replace B1SF5 = . if (B1SF5 == 97 | B1SF5 == 98 | B1SF5 == 99)
replace B1SF6 = . if (B1SF6 == 997 | B1SF6 == 998 | B1SF6 == 999)
replace B1SF7 = . if (B1SF7 == 997 | B1SF7 == 998 | B1SF7 == 999)
replace B1SF8 = . if (B1SF8 == 997 | B1SF8 == 998 | B1SF8 == 999)
replace B1SF9A = . if (B1SF9A == 997 | B1SF9A == 998 | B1SF9A == 999)
replace B1SF9B = . if (B1SF9B == 7 | B1SF9B == 8 | B1SF9B == 9)
replace B1SF10 = . if (B1SF10 == 8 | B1SF10 == 9)
replace B1SF11A = . if (B1SF11A == 7 | B1SF11A == 8 | B1SF11A == 9)
replace B1SF11AS = . if (B1SF11AS == 7 | B1SF11AS == 8 | B1SF11AS == 9)
replace B1SF11B = . if (B1SF11B == 7 | B1SF11B == 8 | B1SF11B == 9)
replace B1SF11BS = . if (B1SF11BS == 7 | B1SF11BS == 8 | B1SF11BS == 9)
replace B1SF11C = . if (B1SF11C == 7 | B1SF11C == 8 | B1SF11C == 9)
replace B1SF11CS = . if (B1SF11CS == 7 | B1SF11CS == 8 | B1SF11CS == 9)
replace B1SF11D = . if (B1SF11D == 7 | B1SF11D == 8 | B1SF11D == 9)
replace B1SF11DS = . if (B1SF11DS == 7 | B1SF11DS == 8 | B1SF11DS == 9)
replace B1SF11E = . if (B1SF11E == 7 | B1SF11E == 8 | B1SF11E == 9)
replace B1SF11ES = . if (B1SF11ES == 7 | B1SF11ES == 8 | B1SF11ES == 9)
replace B1SF11F = . if (B1SF11F == 7 | B1SF11F == 8 | B1SF11F == 9)
replace B1SF11FS = . if (B1SF11FS == 7 | B1SF11FS == 8 | B1SF11FS == 9)
replace B1SF11G = . if (B1SF11G == 7 | B1SF11G == 8 | B1SF11G == 9)
replace B1SF11GS = . if (B1SF11GS == 7 | B1SF11GS == 8 | B1SF11GS == 9)
replace B1SF11H = . if (B1SF11H == 7 | B1SF11H == 8 | B1SF11H == 9)
replace B1SF11HS = . if (B1SF11HS == 7 | B1SF11HS == 8 | B1SF11HS == 9)
replace B1SF11I = . if (B1SF11I == 7 | B1SF11I == 8 | B1SF11I == 9)
replace B1SF11IS = . if (B1SF11IS == 7 | B1SF11IS == 8 | B1SF11IS == 9)
replace B1SF11J = . if (B1SF11J == 7 | B1SF11J == 8 | B1SF11J == 9)
replace B1SF11JS = . if (B1SF11JS == 7 | B1SF11JS == 8 | B1SF11JS == 9)
replace B1SF12A = . if (B1SF12A == 97 | B1SF12A == 98 | B1SF12A == 99)
replace B1SF12B = . if (B1SF12B == 97 | B1SF12B == 98 | B1SF12B == 99)
replace B1SF12C = . if (B1SF12C == 97 | B1SF12C == 98 | B1SF12C == 99)
replace B1SF12D = . if (B1SF12D == 97 | B1SF12D == 98 | B1SF12D == 99)
replace B1SF13 = . if (B1SF13 == 7 | B1SF13 == 8 | B1SF13 == 9)
replace B1SF14A = . if (B1SF14A == 7 | B1SF14A == 8 | B1SF14A == 9)
replace B1SF14B = . if (B1SF14B == 7 | B1SF14B == 8 | B1SF14B == 9)
replace B1SF14C = . if (B1SF14C == 7 | B1SF14C == 8 | B1SF14C == 9)
replace B1SF14D = . if (B1SF14D == 7 | B1SF14D == 8 | B1SF14D == 9)
replace B1SF15A = . if (B1SF15A == 97 | B1SF15A == 98 | B1SF15A == 99)
replace B1SF15B = . if (B1SF15B == 97 | B1SF15B == 98 | B1SF15B == 99)
replace B1SF15C = . if (B1SF15C == 7 | B1SF15C == 8 | B1SF15C == 9)
replace B1SF16A = . if (B1SF16A == 97 | B1SF16A == 98 | B1SF16A == 99)
replace B1SF16B = . if (B1SF16B == 97 | B1SF16B == 98 | B1SF16B == 99)
replace B1SF16C = . if (B1SF16C == 7 | B1SF16C == 8 | B1SF16C == 9)
replace B1SF17A = . if (B1SF17A == 97 | B1SF17A == 98 | B1SF17A == 99)
replace B1SF17B = . if (B1SF17B == 97 | B1SF17B == 98 | B1SF17B == 99)
replace B1SF18 = . if (B1SF18 == 7 | B1SF18 == 8 | B1SF18 == 9)
replace B1SF19 = . if (B1SF19 == 7 | B1SF19 == 8 | B1SF19 == 9)
replace B1SF20 = . if (B1SF20 == 7 | B1SF20 == 8 | B1SF20 == 9)
replace B1SF21 = . if (B1SF21 == 7 | B1SF21 == 8 | B1SF21 == 9)
replace B1SF22 = . if (B1SF22 == 7 | B1SF22 == 8 | B1SF22 == 9)
replace B1SF23A = . if (B1SF23A == 7 | B1SF23A == 8 | B1SF23A == 9)
replace B1SF23B = . if (B1SF23B == 7 | B1SF23B == 8 | B1SF23B == 9)
replace B1SF23C = . if (B1SF23C == 7 | B1SF23C == 8 | B1SF23C == 9)
replace B1SF23D = . if (B1SF23D == 7 | B1SF23D == 8 | B1SF23D == 9)
replace B1SF23E = . if (B1SF23E == 7 | B1SF23E == 8 | B1SF23E == 9)
replace B1SF23F = . if (B1SF23F == 7 | B1SF23F == 8 | B1SF23F == 9)
replace B1SF23G = . if (B1SF23G == 7 | B1SF23G == 8 | B1SF23G == 9)
replace B1SF23H = . if (B1SF23H == 7 | B1SF23H == 8 | B1SF23H == 9)
replace B1SF23I = . if (B1SF23I == 7 | B1SF23I == 8 | B1SF23I == 9)
replace B1SF23J = . if (B1SF23J == 7 | B1SF23J == 8 | B1SF23J == 9)
replace B1SF23K = . if (B1SF23K == 7 | B1SF23K == 8 | B1SF23K == 9)
replace B1SF23L = . if (B1SF23L == 7 | B1SF23L == 8 | B1SF23L == 9)
replace B1SF23M = . if (B1SF23M == 7 | B1SF23M == 8 | B1SF23M == 9)
replace B1SF23N = . if (B1SF23N == 7 | B1SF23N == 8 | B1SF23N == 9)
replace B1SF24 = . if (B1SF24 == 7 | B1SF24 == 8 | B1SF24 == 9)
replace B1SF25 = . if (B1SF25 == 997 | B1SF25 == 998 | B1SF25 == 999)
replace B1SF26 = . if (B1SF26 == 7 | B1SF26 == 8 | B1SF26 == 9)
replace B1SF27A = . if (B1SF27A == 7 | B1SF27A == 8 | B1SF27A == 9)
replace B1SF27B = . if (B1SF27B == 7 | B1SF27B == 8 | B1SF27B == 9)
replace B1SF27C = . if (B1SF27C == 7 | B1SF27C == 8 | B1SF27C == 9)
replace B1SF27D = . if (B1SF27D == 7 | B1SF27D == 8 | B1SF27D == 9)
replace B1SF27E = . if (B1SF27E == 7 | B1SF27E == 8 | B1SF27E == 9)
replace B1SF27F = . if (B1SF27F == 7 | B1SF27F == 8 | B1SF27F == 9)
replace B1SF27G = . if (B1SF27G == 7 | B1SF27G == 8 | B1SF27G == 9)
replace B1SF27H = . if (B1SF27H == 7 | B1SF27H == 8 | B1SF27H == 9)
replace B1SF27I = . if (B1SF27I == 7 | B1SF27I == 8 | B1SF27I == 9)
replace B1SF27J = . if (B1SF27J == 7 | B1SF27J == 8 | B1SF27J == 9)
replace B1SF27K = . if (B1SF27K == 7 | B1SF27K == 8 | B1SF27K == 9)
replace B1SF27L = . if (B1SF27L == 7 | B1SF27L == 8 | B1SF27L == 9)
replace B1SF27M = . if (B1SF27M == 7 | B1SF27M == 8 | B1SF27M == 9)
replace B1SF27N = . if (B1SF27N == 7 | B1SF27N == 8 | B1SF27N == 9)
replace B1SF27O = . if (B1SF27O == 7 | B1SF27O == 8 | B1SF27O == 9)
replace B1SF27P = . if (B1SF27P == 7 | B1SF27P == 8 | B1SF27P == 9)
replace B1SPOSWF = . if (B1SPOSWF == 98.000 | B1SPOSWF == 99.000)
replace B1SNEGWF = . if (B1SNEGWF == 98.000 | B1SNEGWF == 99.000)
replace B1SPOSFW = . if (B1SPOSFW == 98.000 | B1SPOSFW == 99.000)
replace B1SNEGFW = . if (B1SNEGFW == 98.000 | B1SNEGFW == 99.000)
replace B1SF28A = . if (B1SF28A == 7 | B1SF28A == 8 | B1SF28A == 9)
replace B1SF28B = . if (B1SF28B == 7 | B1SF28B == 8 | B1SF28B == 9)
replace B1SF28C = . if (B1SF28C == 7 | B1SF28C == 8 | B1SF28C == 9)
replace B1SF28D = . if (B1SF28D == 7 | B1SF28D == 8 | B1SF28D == 9)
replace B1SF28E = . if (B1SF28E == 7 | B1SF28E == 8 | B1SF28E == 9)
replace B1SF28F = . if (B1SF28F == 7 | B1SF28F == 8 | B1SF28F == 9)
replace B1SF28G = . if (B1SF28G == 7 | B1SF28G == 8 | B1SF28G == 9)
replace B1SF28H = . if (B1SF28H == 7 | B1SF28H == 8 | B1SF28H == 9)
replace B1SF28I = . if (B1SF28I == 7 | B1SF28I == 8 | B1SF28I == 9)
replace B1SF28J = . if (B1SF28J == 7 | B1SF28J == 8 | B1SF28J == 9)
replace B1SF28K = . if (B1SF28K == 7 | B1SF28K == 8 | B1SF28K == 9)
replace B1SF29A = . if (B1SF29A == 7 | B1SF29A == 8 | B1SF29A == 9)
replace B1SF29B = . if (B1SF29B == 7 | B1SF29B == 8 | B1SF29B == 9)
replace B1SF29C = . if (B1SF29C == 7 | B1SF29C == 8 | B1SF29C == 9)
replace B1SF29D = . if (B1SF29D == 7 | B1SF29D == 8 | B1SF29D == 9)
replace B1SJCSD = . if (B1SJCSD == 98.00 | B1SJCSD == 99.00)
replace B1SJCDA = . if (B1SJCDA == 98.000 | B1SJCDA == 99.000)
replace B1SJCDS = . if (B1SJCDS == 98.000 | B1SJCDS == 99.000)
replace B1SF30A = . if (B1SF30A == 6 | B1SF30A == 8 | B1SF30A == 9)
replace B1SF30B = . if (B1SF30B == 6 | B1SF30B == 8 | B1SF30B == 9)
replace B1SF30C = . if (B1SF30C == 6 | B1SF30C == 8 | B1SF30C == 9)
replace B1SF30D = . if (B1SF30D == 6 | B1SF30D == 8 | B1SF30D == 9)
replace B1SF30E = . if (B1SF30E == 6 | B1SF30E == 8 | B1SF30E == 9)
replace B1SJCCS = . if (B1SJCCS == 98.00 | B1SJCCS == 99.00)
replace B1SJCSS = . if (B1SJCSS == 98.00 | B1SJCSS == 99.00)
replace B1SF31A = . if (B1SF31A == 7 | B1SF31A == 8 | B1SF31A == 9)
replace B1SF31B = . if (B1SF31B == 7 | B1SF31B == 8 | B1SF31B == 9)
replace B1SF31C = . if (B1SF31C == 7 | B1SF31C == 8 | B1SF31C == 9)
replace B1SF31D = . if (B1SF31D == 7 | B1SF31D == 8 | B1SF31D == 9)
replace B1SF31E = . if (B1SF31E == 7 | B1SF31E == 8 | B1SF31E == 9)
replace B1SF31F = . if (B1SF31F == 7 | B1SF31F == 8 | B1SF31F == 9)
replace B1SJOBDI = . if (B1SJOBDI == 98.000 | B1SJOBDI == 99.000)
replace B1SF32A = . if (B1SF32A == 7 | B1SF32A == 8 | B1SF32A == 9)
replace B1SF32B = . if (B1SF32B == 7 | B1SF32B == 8 | B1SF32B == 9)
replace B1SF32C = . if (B1SF32C == 7 | B1SF32C == 8 | B1SF32C == 9)
replace B1SF32D = . if (B1SF32D == 7 | B1SF32D == 8 | B1SF32D == 9)
replace B1SF32E = . if (B1SF32E == 7 | B1SF32E == 8 | B1SF32E == 9)
replace B1SF32F = . if (B1SF32F == 7 | B1SF32F == 8 | B1SF32F == 9)
replace B1SPIWOR = . if (B1SPIWOR == 8.000 | B1SPIWOR == 9.000)
replace B1SF33A = . if (B1SF33A == 7 | B1SF33A == 8 | B1SF33A == 9)
replace B1SF33B = . if (B1SF33B == 7 | B1SF33B == 8 | B1SF33B == 9)
replace B1SF33C = . if (B1SF33C == 7 | B1SF33C == 8 | B1SF33C == 9)
replace B1SF33D = . if (B1SF33D == 7 | B1SF33D == 8 | B1SF33D == 9)
replace B1SF34A = . if (B1SF34A == 7 | B1SF34A == 8 | B1SF34A == 9)
replace B1SF34B = . if (B1SF34B == 7 | B1SF34B == 8 | B1SF34B == 9)
replace B1SF34C = . if (B1SF34C == 7 | B1SF34C == 8 | B1SF34C == 9)
replace B1SF35A = . if (B1SF35A == 7 | B1SF35A == 8 | B1SF35A == 9)
replace B1SF35B = . if (B1SF35B == 7 | B1SF35B == 8 | B1SF35B == 9)
replace B1SF35C = . if (B1SF35C == 7 | B1SF35C == 8 | B1SF35C == 9)
replace B1SG1 = . if (B1SG1 == 97 | B1SG1 == 98 | B1SG1 == 99)
replace B1SG2 = . if (B1SG2 == 97 | B1SG2 == 98 | B1SG2 == 99)
replace B1SG3 = . if (B1SG3 == 97 | B1SG3 == 98 | B1SG3 == 99)
replace B1SG4 = . if (B1SG4 == 97 | B1SG4 == 98 | B1SG4 == 99)
replace B1SG5 = . if (B1SG5 == 97 | B1SG5 == 98 | B1SG5 == 99)
replace B1SG6 = . if (B1SG6 == 7 | B1SG6 == 8 | B1SG6 == 9)
replace B1SG7 = . if (B1SG7 == 7 | B1SG7 == 8 | B1SG7 == 9)
replace B1SG8A = . if (B1SG8A == 98 | B1SG8A == 99)
replace B1SG8B = . if (B1SG8B == 98 | B1SG8B == 99)
replace B1SG8C = . if (B1SG8C == 98 | B1SG8C == 99)
replace B1SG9A = . if (B1SG9A == 98 | B1SG9A == 99)
replace B1SG9B = . if (B1SG9B == 98 | B1SG9B == 99)
replace B1SG9C = . if (B1SG9C == 98 | B1SG9C == 99)
replace B1SG10A = . if (B1SG10A == 98 | B1SG10A == 99)
replace B1SG10B = . if (B1SG10B == 98 | B1SG10B == 99)
replace B1SG10C = . if (B1SG10C == 98 | B1SG10C == 99)
replace B1SG11A = . if (B1SG11A == 7 | B1SG11A == 8 | B1SG11A == 9)
replace B1SG11B = . if (B1SG11B == 7 | B1SG11B == 8 | B1SG11B == 9)
replace B1SG11C = . if (B1SG11C == 7 | B1SG11C == 8 | B1SG11C == 9)
replace B1SG11D = . if (B1SG11D == 7 | B1SG11D == 8 | B1SG11D == 9)
replace B1SG11E = . if (B1SG11E == 7 | B1SG11E == 8 | B1SG11E == 9)
replace B1SG11F = . if (B1SG11F == 7 | B1SG11F == 8 | B1SG11F == 9)
replace B1SG11G = . if (B1SG11G == 7 | B1SG11G == 8 | B1SG11G == 9)
replace B1SG11H = . if (B1SG11H == 7 | B1SG11H == 8 | B1SG11H == 9)
replace B1SG11I = . if (B1SG11I == 7 | B1SG11I == 8 | B1SG11I == 9)
replace B1SG11J = . if (B1SG11J == 7 | B1SG11J == 8 | B1SG11J == 9)
replace B1SG12 = . if (B1SG12 == 99999999 | B1SG12 == 99999998)
replace B1SRINC1 = . if (B1SRINC1 == 9999998)
replace B1SSINC1 = . if (B1SSINC1 == 9999998)
replace B1SHINC1 = . if (B1SHINC1 == 9999998)
replace B1SEARN1 = . if (B1SEARN1 == 9999998)
replace B1SPNSN1 = . if (B1SPNSN1 == 9999998)
replace B1SSEC1 = . if (B1SSEC1 == 9999998)
replace B1STINC1 = . if (B1STINC1 == 9999998)
replace B1SG13 = . if (B1SG13 == 7 | B1SG13 == 8 | B1SG13 == 9)
replace B1SG13A = . if (B1SG13A == 99999997 | B1SG13A == 99999998 | B1SG13A == 99999999)
replace B1SG14 = . if (B1SG14 == 7 | B1SG14 == 8 | B1SG14 == 9)
replace B1SG14A = . if (B1SG14A == 99999997 | B1SG14A == 99999998 | B1SG14A == 99999999)
replace B1SG15 = . if (B1SG15 == 7 | B1SG15 == 8 | B1SG15 == 9)
replace B1SG15A = . if (B1SG15A == 99999997 | B1SG15A == 99999998 | B1SG15A == 99999999)
replace B1SG16 = . if (B1SG16 == 7 | B1SG16 == 8 | B1SG16 == 9)
replace B1SG16A = . if (B1SG16A == 99999997 | B1SG16A == 99999998 | B1SG16A == 99999999)
replace B1SG17 = . if (B1SG17 == 7 | B1SG17 == 8 | B1SG17 == 9)
replace B1SG17A = . if (B1SG17A == 99999997 | B1SG17A == 99999998 | B1SG17A == 99999999)
replace B1SG17B = . if (B1SG17B == 7 | B1SG17B == 8 | B1SG17B == 9)
replace B1SG18 = . if (B1SG18 == 7 | B1SG18 == 8 | B1SG18 == 9)
replace B1SG18A = . if (B1SG18A == 99999997 | B1SG18A == 99999998 | B1SG18A == 99999999)
replace B1SG18B = . if (B1SG18B == 99999997 | B1SG18B == 99999998 | B1SG18B == 99999999)
replace B1SG19 = . if (B1SG19 == 7 | B1SG19 == 8 | B1SG19 == 9)
replace B1SG19A = . if (B1SG19A == 99999997 | B1SG19A == 99999998 | B1SG19A == 99999999)
replace B1SG20 = . if (B1SG20 == 7 | B1SG20 == 8 | B1SG20 == 9)
replace B1SG20A = . if (B1SG20A == 99999997 | B1SG20A == 99999998 | B1SG20A == 99999999)
replace B1SG21 = . if (B1SG21 == 7 | B1SG21 == 8 | B1SG21 == 9)
replace B1SG21A = . if (B1SG21A == 9997 | B1SG21A == 9998 | B1SG21A == 9999)
replace B1SG21B = . if (B1SG21B == 99999997 | B1SG21B == 99999998 | B1SG21B == 99999999)
replace B1SG22 = . if (B1SG22 == 7 | B1SG22 == 8 | B1SG22 == 9)
replace B1SG22A = . if (B1SG22A == 99999997 | B1SG22A == 99999998 | B1SG22A == 99999999)
replace B1SG23 = . if (B1SG23 == 7 | B1SG23 == 8 | B1SG23 == 9)
replace B1SG24A = . if (B1SG24A == 99999997 | B1SG24A == 99999998 | B1SG24A == 99999999)
replace B1SG24B = . if (B1SG24B == 7 | B1SG24B == 8 | B1SG24B == 9)
replace B1SG25A = . if (B1SG25A == 99999997 | B1SG25A == 99999998 | B1SG25A == 99999999)
replace B1SG25B = . if (B1SG25B == 99999997 | B1SG25B == 99999998 | B1SG25B == 99999999)
replace B1SG25C = . if (B1SG25C == 99999997 | B1SG25C == 99999998 | B1SG25C == 99999999)
replace B1SG25D = . if (B1SG25D == 99999997 | B1SG25D == 99999998 | B1SG25D == 99999999)
replace B1SG25E = . if (B1SG25E == 99999997 | B1SG25E == 99999998 | B1SG25E == 99999999)
replace B1SG25F = . if (B1SG25F == 99999997 | B1SG25F == 99999998 | B1SG25F == 99999999)
replace B1SG25G = . if (B1SG25G == 99999997 | B1SG25G == 99999998 | B1SG25G == 99999999)
replace B1SG25H = . if (B1SG25H == 99999997 | B1SG25H == 99999998 | B1SG25H == 99999999)
replace B1SG25I = . if (B1SG25I == 99999997 | B1SG25I == 99999998 | B1SG25I == 99999999)
replace B1SH1 = . if (B1SH1 == 97 | B1SH1 == 98 | B1SH1 == 99)
replace B1SH2 = . if (B1SH2 == 97 | B1SH2 == 98 | B1SH2 == 99)
replace B1SH3 = . if (B1SH3 == 97 | B1SH3 == 98 | B1SH3 == 99)
replace B1SH4 = . if (B1SH4 == 97 | B1SH4 == 98 | B1SH4 == 99)
replace B1SH5 = . if (B1SH5 == 97 | B1SH5 == 98 | B1SH5 == 99)
replace B1SH6A = . if (B1SH6A == 7 | B1SH6A == 8 | B1SH6A == 9)
replace B1SH6B = . if (B1SH6B == 7 | B1SH6B == 8 | B1SH6B == 9)
replace B1SH6C = . if (B1SH6C == 7 | B1SH6C == 8 | B1SH6C == 9)
replace B1SH6D = . if (B1SH6D == 7 | B1SH6D == 8 | B1SH6D == 9)
replace B1SH6E = . if (B1SH6E == 7 | B1SH6E == 8 | B1SH6E == 9)
replace B1SH6F = . if (B1SH6F == 7 | B1SH6F == 8 | B1SH6F == 9)
replace B1SGENER = . if (B1SGENER == 98.000)
replace B1SH7A = . if (B1SH7A == 997 | B1SH7A == 998 | B1SH7A == 999)
replace B1SH7B = . if (B1SH7B == 997 | B1SH7B == 998 | B1SH7B == 999)
replace B1SH7C = . if (B1SH7C == 997 | B1SH7C == 998 | B1SH7C == 999)
replace B1SH7D = . if (B1SH7D == 997 | B1SH7D == 998 | B1SH7D == 999)
replace B1SH8A = . if (B1SH8A == 997 | B1SH8A == 998 | B1SH8A == 999)
replace B1SH8B = . if (B1SH8B == 997 | B1SH8B == 998 | B1SH8B == 999)
replace B1SH8C = . if (B1SH8C == 997 | B1SH8C == 998 | B1SH8C == 999)
replace B1SH9A = . if (B1SH9A == 997 | B1SH9A == 998 | B1SH9A == 999)
replace B1SH9B = . if (B1SH9B == 997 | B1SH9B == 998 | B1SH9B == 999)
replace B1SH9C = . if (B1SH9C == 997 | B1SH9C == 998 | B1SH9C == 999)
replace B1SH9D = . if (B1SH9D == 997 | B1SH9D == 998 | B1SH9D == 999)
replace B1SH9E = . if (B1SH9E == 997 | B1SH9E == 998 | B1SH9E == 999)
replace B1SH9F = . if (B1SH9F == 997 | B1SH9F == 998 | B1SH9F == 999)
replace B1SH10A = . if (B1SH10A == 997 | B1SH10A == 998 | B1SH10A == 999)
replace B1SH10B = . if (B1SH10B == 997 | B1SH10B == 998 | B1SH10B == 999)
replace B1SH10C = . if (B1SH10C == 997 | B1SH10C == 998 | B1SH10C == 999)
replace B1SH10D = . if (B1SH10D == 997 | B1SH10D == 998 | B1SH10D == 999)
replace B1SH10E = . if (B1SH10E == 997 | B1SH10E == 998 | B1SH10E == 999)
replace B1SH10F = . if (B1SH10F == 997 | B1SH10F == 998 | B1SH10F == 999)
replace B1SH11A = . if (B1SH11A == 997 | B1SH11A == 998 | B1SH11A == 999)
replace B1SH11B = . if (B1SH11B == 997 | B1SH11B == 998 | B1SH11B == 999)
replace B1SH11C = . if (B1SH11C == 997 | B1SH11C == 998 | B1SH11C == 999)
replace B1SH11D = . if (B1SH11D == 997 | B1SH11D == 998 | B1SH11D == 999)
replace B1SH11E = . if (B1SH11E == 997 | B1SH11E == 998 | B1SH11E == 999)
replace B1SH12A = . if (B1SH12A == 997 | B1SH12A == 998 | B1SH12A == 999)
replace B1SH12B = . if (B1SH12B == 997 | B1SH12B == 998 | B1SH12B == 999)
replace B1SH12C = . if (B1SH12C == 997 | B1SH12C == 998 | B1SH12C == 999)
replace B1SH12D = . if (B1SH12D == 997 | B1SH12D == 998 | B1SH12D == 999)
replace B1SH12E = . if (B1SH12E == 997 | B1SH12E == 998 | B1SH12E == 999)
replace B1SH12F = . if (B1SH12F == 997 | B1SH12F == 998 | B1SH12F == 999)
replace B1SH12G = . if (B1SH12G == 997 | B1SH12G == 998 | B1SH12G == 999)
replace B1SH12H = . if (B1SH12H == 997 | B1SH12H == 998 | B1SH12H == 999)
replace B1SH13A = . if (B1SH13A == 9999997 | B1SH13A == 9999998 | B1SH13A == 9999999)
replace B1SH13B = . if (B1SH13B == 9999997 | B1SH13B == 9999998 | B1SH13B == 9999999)
replace B1SH13C = . if (B1SH13C == 9999997 | B1SH13C == 9999998 | B1SH13C == 9999999)
replace B1SH13D = . if (B1SH13D == 9999997 | B1SH13D == 9999998 | B1SH13D == 9999999)
replace B1SH13E = . if (B1SH13E == 9999997 | B1SH13E == 9999998 | B1SH13E == 9999999)
replace B1SH13F = . if (B1SH13F == 9999997 | B1SH13F == 9999998 | B1SH13F == 9999999)
replace B1SH13G = . if (B1SH13G == 9999997 | B1SH13G == 9999998 | B1SH13G == 9999999)
replace B1SH13H = . if (B1SH13H == 9999997 | B1SH13H == 9999998 | B1SH13H == 9999999)
replace B1SH14A = . if (B1SH14A == 9999997 | B1SH14A == 9999998 | B1SH14A == 9999999)
replace B1SH14B = . if (B1SH14B == 9999997 | B1SH14B == 9999998 | B1SH14B == 9999999)
replace B1SH14C = . if (B1SH14C == 9999997 | B1SH14C == 9999998 | B1SH14C == 9999999)
replace B1SH14D = . if (B1SH14D == 9999997 | B1SH14D == 9999998 | B1SH14D == 9999999)
replace B1SH14E = . if (B1SH14E == 9999997 | B1SH14E == 9999998 | B1SH14E == 9999999)
replace B1SH14F = . if (B1SH14F == 9999997 | B1SH14F == 9999998 | B1SH14F == 9999999)
replace B1SH14G = . if (B1SH14G == 9999997 | B1SH14G == 9999998 | B1SH14G == 9999999)
replace B1SH15A = . if (B1SH15A == 7 | B1SH15A == 8 | B1SH15A == 9)
replace B1SH15B = . if (B1SH15B == 7 | B1SH15B == 8 | B1SH15B == 9)
replace B1SH15C = . if (B1SH15C == 7 | B1SH15C == 8 | B1SH15C == 9)
replace B1SH15D = . if (B1SH15D == 7 | B1SH15D == 8 | B1SH15D == 9)
replace B1SH16A = . if (B1SH16A == 8 | B1SH16A == 9)
replace B1SH16B = . if (B1SH16B == 8 | B1SH16B == 9)
replace B1SH16C = . if (B1SH16C == 8 | B1SH16C == 9)
replace B1SH16D = . if (B1SH16D == 8 | B1SH16D == 9)
replace B1SH16E = . if (B1SH16E == 8 | B1SH16E == 9)
replace B1SH16F = . if (B1SH16F == 8 | B1SH16F == 9)
replace B1SH16G = . if (B1SH16G == 8 | B1SH16G == 9)
replace B1SH16H = . if (B1SH16H == 8 | B1SH16H == 9)
replace B1SH16I = . if (B1SH16I == 8 | B1SH16I == 9)
replace B1SH16J = . if (B1SH16J == 8 | B1SH16J == 9)
replace B1SH16K = . if (B1SH16K == 8 | B1SH16K == 9)
replace B1SH16L = . if (B1SH16L == 8 | B1SH16L == 9)
replace B1SH16M = . if (B1SH16M == 8 | B1SH16M == 9)
replace B1SH16N = . if (B1SH16N == 8 | B1SH16N == 9)
replace B1SH16O = . if (B1SH16O == 8 | B1SH16O == 9)
replace B1SSWBMS = . if (B1SSWBMS == 98.0)
replace B1SSWBSI = . if (B1SSWBSI == 98.0)
replace B1SSWBAO = . if (B1SSWBAO == 98.0)
replace B1SSWBSC = . if (B1SSWBSC == 98.0)
replace B1SSWBSA = . if (B1SSWBSA == 98.0)
replace B1SH16P = . if (B1SH16P == 8 | B1SH16P == 9)
replace B1SH16Q = . if (B1SH16Q == 8 | B1SH16Q == 9)
replace B1SH16R = . if (B1SH16R == 8 | B1SH16R == 9)
replace B1SH16S = . if (B1SH16S == 8 | B1SH16S == 9)
replace B1SH16T = . if (B1SH16T == 8 | B1SH16T == 9)
replace B1SSYMP = . if (B1SSYMP == 8.000)
replace B1SI1 = . if (B1SI1 == 7 | B1SI1 == 8 | B1SI1 == 9)
replace B1SI2 = . if (B1SI2 == 7 | B1SI2 == 8 | B1SI2 == 9)
replace B1SI3 = . if (B1SI3 == 997 | B1SI3 == 998 | B1SI3 == 999)
replace B1SI4 = . if (B1SI4 == 997 | B1SI4 == 998 | B1SI4 == 999)
replace B1SI5 = . if (B1SI5 == 7 | B1SI5 == 8 | B1SI5 == 9)
replace B1SI6A = . if (B1SI6A == 7 | B1SI6A == 8 | B1SI6A == 9)
replace B1SI6B = . if (B1SI6B == 7 | B1SI6B == 8 | B1SI6B == 9)
replace B1SI6C = . if (B1SI6C == 7 | B1SI6C == 8 | B1SI6C == 9)
replace B1SI6D = . if (B1SI6D == 7 | B1SI6D == 8 | B1SI6D == 9)
replace B1SI6E = . if (B1SI6E == 7 | B1SI6E == 8 | B1SI6E == 9)
replace B1SI6F = . if (B1SI6F == 7 | B1SI6F == 8 | B1SI6F == 9)
replace B1SI6G = . if (B1SI6G == 7 | B1SI6G == 8 | B1SI6G == 9)
replace B1SI6H = . if (B1SI6H == 7 | B1SI6H == 8 | B1SI6H == 9)
replace B1SI6I = . if (B1SI6I == 7 | B1SI6I == 8 | B1SI6I == 9)
replace B1SI6J = . if (B1SI6J == 7 | B1SI6J == 8 | B1SI6J == 9)
replace B1SI6K = . if (B1SI6K == 7 | B1SI6K == 8 | B1SI6K == 9)
replace B1SI6L = . if (B1SI6L == 7 | B1SI6L == 8 | B1SI6L == 9)
replace B1SHOMET = . if (B1SHOMET == 8.000)
replace B1SPIHOM = . if (B1SPIHOM == 8.000)
replace B1SI7 = . if (B1SI7 == 97 | B1SI7 == 98 | B1SI7 == 99)
replace B1SJ1 = . if (B1SJ1 == 97 | B1SJ1 == 98 | B1SJ1 == 99)
replace B1SJ2A = . if (B1SJ2A == 7 | B1SJ2A == 8 | B1SJ2A == 9)
replace B1SJ2B = . if (B1SJ2B == 7 | B1SJ2B == 8 | B1SJ2B == 9)
replace B1SJ2C = . if (B1SJ2C == 7 | B1SJ2C == 8 | B1SJ2C == 9)
replace B1SJ2D = . if (B1SJ2D == 7 | B1SJ2D == 8 | B1SJ2D == 9)
replace B1SJ2E = . if (B1SJ2E == 7 | B1SJ2E == 8 | B1SJ2E == 9)
replace B1SJ2F = . if (B1SJ2F == 7 | B1SJ2F == 8 | B1SJ2F == 9)
replace B1SJ2G = . if (B1SJ2G == 7 | B1SJ2G == 8 | B1SJ2G == 9)
replace B1SJ2H = . if (B1SJ2H == 7 | B1SJ2H == 8 | B1SJ2H == 9)
replace B1SJ2I = . if (B1SJ2I == 7 | B1SJ2I == 8 | B1SJ2I == 9)
replace B1SJ2J = . if (B1SJ2J == 7 | B1SJ2J == 8 | B1SJ2J == 9)
replace B1SKINPO = . if (B1SKINPO == 8.000)
replace B1SKINNE = . if (B1SKINNE == 8.000)
replace B1SFAMSO = . if (B1SFAMSO == 8.000)
replace B1SPKINS = . if (B1SPKINS == 8.00)
replace B1SJ3 = . if (B1SJ3 == 97 | B1SJ3 == 98 | B1SJ3 == 99)
replace B1SJ4A = . if (B1SJ4A == 7 | B1SJ4A == 8 | B1SJ4A == 9)
replace B1SJ4B = . if (B1SJ4B == 7 | B1SJ4B == 8 | B1SJ4B == 9)
replace B1SJ4C = . if (B1SJ4C == 7 | B1SJ4C == 8 | B1SJ4C == 9)
replace B1SJ4D = . if (B1SJ4D == 7 | B1SJ4D == 8 | B1SJ4D == 9)
replace B1SJ4E = . if (B1SJ4E == 7 | B1SJ4E == 8 | B1SJ4E == 9)
replace B1SJ4F = . if (B1SJ4F == 7 | B1SJ4F == 8 | B1SJ4F == 9)
replace B1SJ4G = . if (B1SJ4G == 7 | B1SJ4G == 8 | B1SJ4G == 9)
replace B1SJ4H = . if (B1SJ4H == 7 | B1SJ4H == 8 | B1SJ4H == 9)
replace B1SFDSPO = . if (B1SFDSPO == 8.000)
replace B1SFDSNE = . if (B1SFDSNE == 8.000)
replace B1SFDSOL = . if (B1SFDSOL == 8.000)
replace B1SJ5 = . if (B1SJ5 == 7 | B1SJ5 == 8 | B1SJ5 == 9)
replace B1SJ6 = . if (B1SJ6 == 7 | B1SJ6 == 8 | B1SJ6 == 9)
replace B1SJ7SA = . if (B1SJ7SA == 7 | B1SJ7SA == 8 | B1SJ7SA == 9)
replace B1SJ7SB = . if (B1SJ7SB == 7 | B1SJ7SB == 8 | B1SJ7SB == 9)
replace B1SJ7SC = . if (B1SJ7SC == 7 | B1SJ7SC == 8 | B1SJ7SC == 9)
replace B1SJ7SD = . if (B1SJ7SD == 7 | B1SJ7SD == 8 | B1SJ7SD == 9)
replace B1SJ7SE = . if (B1SJ7SE == 7 | B1SJ7SE == 8 | B1SJ7SE == 9)
replace B1SJ7SF = . if (B1SJ7SF == 7 | B1SJ7SF == 8 | B1SJ7SF == 9)
replace B1SJ7SG = . if (B1SJ7SG == 7 | B1SJ7SG == 8 | B1SJ7SG == 9)
replace B1SJ7SH = . if (B1SJ7SH == 7 | B1SJ7SH == 8 | B1SJ7SH == 9)
replace B1SJ7SI = . if (B1SJ7SI == 7 | B1SJ7SI == 8 | B1SJ7SI == 9)
replace B1SJ7SJ = . if (B1SJ7SJ == 7 | B1SJ7SJ == 8 | B1SJ7SJ == 9)
replace B1SJ7PA = . if (B1SJ7PA == 7 | B1SJ7PA == 8 | B1SJ7PA == 9)
replace B1SJ7PB = . if (B1SJ7PB == 7 | B1SJ7PB == 8 | B1SJ7PB == 9)
replace B1SJ7PC = . if (B1SJ7PC == 7 | B1SJ7PC == 8 | B1SJ7PC == 9)
replace B1SJ7PD = . if (B1SJ7PD == 7 | B1SJ7PD == 8 | B1SJ7PD == 9)
replace B1SJ7PE = . if (B1SJ7PE == 7 | B1SJ7PE == 8 | B1SJ7PE == 9)
replace B1SJ7PF = . if (B1SJ7PF == 7 | B1SJ7PF == 8 | B1SJ7PF == 9)
replace B1SJ7PG = . if (B1SJ7PG == 7 | B1SJ7PG == 8 | B1SJ7PG == 9)
replace B1SJ7PH = . if (B1SJ7PH == 7 | B1SJ7PH == 8 | B1SJ7PH == 9)
replace B1SJ7PI = . if (B1SJ7PI == 7 | B1SJ7PI == 8 | B1SJ7PI == 9)
replace B1SJ7PJ = . if (B1SJ7PJ == 7 | B1SJ7PJ == 8 | B1SJ7PJ == 9)
replace B1SJ7CA = . if (B1SJ7CA == 7 | B1SJ7CA == 8 | B1SJ7CA == 9)
replace B1SJ7CB = . if (B1SJ7CB == 7 | B1SJ7CB == 8 | B1SJ7CB == 9)
replace B1SJ7CC = . if (B1SJ7CC == 7 | B1SJ7CC == 8 | B1SJ7CC == 9)
replace B1SJ7CD = . if (B1SJ7CD == 7 | B1SJ7CD == 8 | B1SJ7CD == 9)
replace B1SJ7CE = . if (B1SJ7CE == 7 | B1SJ7CE == 8 | B1SJ7CE == 9)
replace B1SJ7CF = . if (B1SJ7CF == 7 | B1SJ7CF == 8 | B1SJ7CF == 9)
replace B1SJ7CG = . if (B1SJ7CG == 7 | B1SJ7CG == 8 | B1SJ7CG == 9)
replace B1SJ7CH = . if (B1SJ7CH == 7 | B1SJ7CH == 8 | B1SJ7CH == 9)
replace B1SJ7CI = . if (B1SJ7CI == 7 | B1SJ7CI == 8 | B1SJ7CI == 9)
replace B1SJ7CJ = . if (B1SJ7CJ == 7 | B1SJ7CJ == 8 | B1SJ7CJ == 9)
replace B1SK1 = . if (B1SK1 == 97 | B1SK1 == 98 | B1SK1 == 99)
replace B1SK2 = . if (B1SK2 == 98 | B1SK2 == 998 | B1SK2 == 999)
replace B1SK3 = . if (B1SK3 == 97 | B1SK3 == 98 | B1SK3 == 99)
replace B1SK4 = . if (B1SK4 == 97 | B1SK4 == 98 | B1SK4 == 99)
replace B1SK5 = . if (B1SK5 == 97 | B1SK5 == 98 | B1SK5 == 99)
replace B1SK6A = . if (B1SK6A == 7 | B1SK6A == 8 | B1SK6A == 9)
replace B1SK6B = . if (B1SK6B == 7 | B1SK6B == 8 | B1SK6B == 9)
replace B1SK6C = . if (B1SK6C == 7 | B1SK6C == 8 | B1SK6C == 9)
replace B1SK6D = . if (B1SK6D == 7 | B1SK6D == 8 | B1SK6D == 9)
replace B1SK6E = . if (B1SK6E == 7 | B1SK6E == 8 | B1SK6E == 9)
replace B1SK6F = . if (B1SK6F == 7 | B1SK6F == 8 | B1SK6F == 9)
replace B1SPIFAM = . if (B1SPIFAM == 8.000 | B1SPIFAM == 9.000)
replace B1SK7A1 = . if (B1SK7A1 == 7 | B1SK7A1 == 8 | B1SK7A1 == 9)
replace B1SK7A2 = . if (B1SK7A2 == 7 | B1SK7A2 == 8 | B1SK7A2 == 9)
replace B1SK7B1 = . if (B1SK7B1 == 7 | B1SK7B1 == 8 | B1SK7B1 == 9)
replace B1SK7B2 = . if (B1SK7B2 == 7 | B1SK7B2 == 8 | B1SK7B2 == 9)
replace B1SK7C1 = . if (B1SK7C1 == 7 | B1SK7C1 == 8 | B1SK7C1 == 9)
replace B1SK7C2 = . if (B1SK7C2 == 7 | B1SK7C2 == 8 | B1SK7C2 == 9)
replace B1SK7D1 = . if (B1SK7D1 == 7 | B1SK7D1 == 8 | B1SK7D1 == 9)
replace B1SK7D2 = . if (B1SK7D2 == 7 | B1SK7D2 == 8 | B1SK7D2 == 9)
replace B1SK8 = . if (B1SK8 == 97 | B1SK8 == 98 | B1SK8 == 99)
replace B1SK9 = . if (B1SK9 == 97 | B1SK9 == 98 | B1SK9 == 99)
replace B1SK10 = . if (B1SK10 == 7 | B1SK10 == 8 | B1SK10 == 9)
replace B1SK11 = . if (B1SK11 == 7 | B1SK11 == 8 | B1SK11 == 9)
replace B1SL1 = . if (B1SL1 == 97 | B1SL1 == 98 | B1SL1 == 99)
replace B1SL2 = . if (B1SL2 == 97 | B1SL2 == 98 | B1SL2 == 99)
replace B1SL3 = . if (B1SL3 == 97 | B1SL3 == 98 | B1SL3 == 99)
replace B1SL4 = . if (B1SL4 == 97 | B1SL4 == 98 | B1SL4 == 99)
replace B1SL5 = . if (B1SL5 == 97 | B1SL5 == 98 | B1SL5 == 99)
replace B1SL6 = . if (B1SL6 == 7 | B1SL6 == 8 | B1SL6 == 9)
replace B1SL7 = . if (B1SL7 == 7 | B1SL7 == 8 | B1SL7 == 9)
replace B1SL8 = . if (B1SL8 == 7 | B1SL8 == 8 | B1SL8 == 9)
replace B1SL9A = . if (B1SL9A == 7 | B1SL9A == 8 | B1SL9A == 9)
replace B1SL9B = . if (B1SL9B == 7 | B1SL9B == 8 | B1SL9B == 9)
replace B1SL9C = . if (B1SL9C == 7 | B1SL9C == 8 | B1SL9C == 9)
replace B1SMARRS = . if (B1SMARRS == 98.00 | B1SMARRS == 99.00)
replace B1SSPDIS = . if (B1SSPDIS == 98.00 | B1SSPDIS == 99.00)
replace B1SL10 = . if (B1SL10 == 7 | B1SL10 == 8 | B1SL10 == 9)
replace B1SL11A = . if (B1SL11A == 7 | B1SL11A == 8 | B1SL11A == 9)
replace B1SL11B = . if (B1SL11B == 7 | B1SL11B == 8 | B1SL11B == 9)
replace B1SL11C = . if (B1SL11C == 7 | B1SL11C == 8 | B1SL11C == 9)
replace B1SL11D = . if (B1SL11D == 7 | B1SL11D == 8 | B1SL11D == 9)
replace B1SL11E = . if (B1SL11E == 7 | B1SL11E == 8 | B1SL11E == 9)
replace B1SL11F = . if (B1SL11F == 7 | B1SL11F == 8 | B1SL11F == 9)
replace B1SL11G = . if (B1SL11G == 7 | B1SL11G == 8 | B1SL11G == 9)
replace B1SL11H = . if (B1SL11H == 7 | B1SL11H == 8 | B1SL11H == 9)
replace B1SL11I = . if (B1SL11I == 7 | B1SL11I == 8 | B1SL11I == 9)
replace B1SL11J = . if (B1SL11J == 7 | B1SL11J == 8 | B1SL11J == 9)
replace B1SL11K = . if (B1SL11K == 7 | B1SL11K == 8 | B1SL11K == 9)
replace B1SL11L = . if (B1SL11L == 7 | B1SL11L == 8 | B1SL11L == 9)
replace B1SSPEMP = . if (B1SSPEMP == 8.000 | B1SSPEMP == 9.000)
replace B1SSPCRI = . if (B1SSPCRI == 8.000 | B1SSPCRI == 9.000)
replace B1SSPSOL = . if (B1SSPSOL == 8.000 | B1SSPSOL == 9.000)
replace B1SL12 = . if (B1SL12 == 8 | B1SL12 == 9)
replace B1SL13 = . if (B1SL13 == 997 | B1SL13 == 998 | B1SL13 == 999)
replace B1SL14 = . if (B1SL14 == 997 | B1SL14 == 998 | B1SL14 == 999)
replace B1SL15 = . if (B1SL15 == 7 | B1SL15 == 8 | B1SL15 == 9)
replace B1SL16 = . if (B1SL16 == 7 | B1SL16 == 8 | B1SL16 == 9)
replace B1SL17A = . if (B1SL17A == 8 | B1SL17A == 9)
replace B1SL17B = . if (B1SL17B == 8 | B1SL17B == 9)
replace B1SL17C = . if (B1SL17C == 8 | B1SL17C == 9)
replace B1SL17D = . if (B1SL17D == 8 | B1SL17D == 9)
replace B1SSPDEC = . if (B1SSPDEC == 98.000 | B1SSPDEC == 99.000)
replace B1SL18 = . if (B1SL18 == 7 | B1SL18 == 8 | B1SL18 == 9)
replace B1SL19 = . if (B1SL19 == 7 | B1SL19 == 8 | B1SL19 == 9)
replace B1SL20 = . if (B1SL20 == 7 | B1SL20 == 8 | B1SL20 == 9)
replace B1SL21 = . if (B1SL21 == 997 | B1SL21 == 998 | B1SL21 == 999)
replace B1SL22 = . if (B1SL22 == 997 | B1SL22 == 998 | B1SL22 == 999)
replace B1SL23A = . if (B1SL23A == 97 | B1SL23A == 98 | B1SL23A == 99)
replace B1SL23B = . if (B1SL23B == 97 | B1SL23B == 98 | B1SL23B == 99)
replace B1SL23C = . if (B1SL23C == 97 | B1SL23C == 98 | B1SL23C == 99)
replace B1SL23D = . if (B1SL23D == 97 | B1SL23D == 98 | B1SL23D == 99)
replace B1SL24A = . if (B1SL24A == 97 | B1SL24A == 98 | B1SL24A == 99)
replace B1SL24B = . if (B1SL24B == 97 | B1SL24B == 98 | B1SL24B == 99)
replace B1SL24C = . if (B1SL24C == 7 | B1SL24C == 8 | B1SL24C == 9)
replace B1SL25A = . if (B1SL25A == 97 | B1SL25A == 98 | B1SL25A == 99)
replace B1SL25B = . if (B1SL25B == 97 | B1SL25B == 98 | B1SL25B == 99)
replace B1SL25C = . if (B1SL25C == 7 | B1SL25C == 8 | B1SL25C == 9)
replace B1SL26A = . if (B1SL26A == 97 | B1SL26A == 98 | B1SL26A == 99)
replace B1SL26B = . if (B1SL26B == 97 | B1SL26B == 98 | B1SL26B == 99)
replace B1SL27 = . if (B1SL27 == 7 | B1SL27 == 8 | B1SL27 == 9)
replace B1SM1 = . if (B1SM1 == 97 | B1SM1 == 98 | B1SM1 == 99)
replace B1SM2 = . if (B1SM2 == 97 | B1SM2 == 98 | B1SM2 == 99)
replace B1SM3 = . if (B1SM3 == 97 | B1SM3 == 98 | B1SM3 == 99)
replace B1SM4 = . if (B1SM4 == 97 | B1SM4 == 98 | B1SM4 == 99)
replace B1SM5 = . if (B1SM5 == 97 | B1SM5 == 98 | B1SM5 == 99)
replace B1SM6 = . if (B1SM6 == 7 | B1SM6 == 8 | B1SM6 == 9)
replace B1SM7 = . if (B1SM7 == 7 | B1SM7 == 8 | B1SM7 == 9)
replace B1SM8 = . if (B1SM8 == 7 | B1SM8 == 8 | B1SM8 == 9)
replace B1SM9 = . if (B1SM9 == 7 | B1SM9 == 8 | B1SM9 == 9)
replace B1SM10 = . if (B1SM10 == 7 | B1SM10 == 8 | B1SM10 == 9)
replace B1SM11 = . if (B1SM11 == 7 | B1SM11 == 8 | B1SM11 == 9)
replace B1SM12 = . if (B1SM12 == 7 | B1SM12 == 8 | B1SM12 == 9)
replace B1SN1A = . if (B1SN1A == 97 | B1SN1A == 98 | B1SN1A == 99)
replace B1SN1B = . if (B1SN1B == 97 | B1SN1B == 98 | B1SN1B == 99)
replace B1SN1C = . if (B1SN1C == 97 | B1SN1C == 98 | B1SN1C == 99)
replace B1SN1AX = . if (B1SN1AX == 7 | B1SN1AX == 8 | B1SN1AX == 9)
replace B1SN2A = . if (B1SN2A == 7 | B1SN2A == 8 | B1SN2A == 9)
replace B1SN2B = . if (B1SN2B == 7 | B1SN2B == 8 | B1SN2B == 9)
replace B1SN2C = . if (B1SN2C == 7 | B1SN2C == 8 | B1SN2C == 9)
replace B1SN2D = . if (B1SN2D == 7 | B1SN2D == 8 | B1SN2D == 9)
replace B1SN2E = . if (B1SN2E == 7 | B1SN2E == 8 | B1SN2E == 9)
replace B1SN2F = . if (B1SN2F == 7 | B1SN2F == 8 | B1SN2F == 9)
replace B1SN2G = . if (B1SN2G == 7 | B1SN2G == 8 | B1SN2G == 9)
replace B1SN2H = . if (B1SN2H == 7 | B1SN2H == 8 | B1SN2H == 9)
replace B1SN2I = . if (B1SN2I == 7 | B1SN2I == 8 | B1SN2I == 9)
replace B1SSPIRI = . if (B1SSPIRI == 98.00)
replace B1SRELID = . if (B1SRELID == 98.000)
replace B1SN3A = . if (B1SN3A == 7 | B1SN3A == 8 | B1SN3A == 9)
replace B1SN3B = . if (B1SN3B == 7 | B1SN3B == 8 | B1SN3B == 9)
replace B1SN3C = . if (B1SN3C == 7 | B1SN3C == 8 | B1SN3C == 9)
replace B1SRELPR = . if (B1SRELPR == 98.00)
replace B1SN3D = . if (B1SN3D == 7 | B1SN3D == 8 | B1SN3D == 9)
replace B1SN3E = . if (B1SN3E == 7 | B1SN3E == 8 | B1SN3E == 9)
replace B1SN4 = . if (B1SN4 == 7 | B1SN4 == 8 | B1SN4 == 9)
replace B1SN5 = . if (B1SN5 == 7 | B1SN5 == 8 | B1SN5 == 9)
replace B1SN6 = . if (B1SN6 == 7 | B1SN6 == 8 | B1SN6 == 9)
replace B1SN7 = . if (B1SN7 == 7 | B1SN7 == 8 | B1SN7 == 9)
replace B1SN8A = . if (B1SN8A == 7 | B1SN8A == 8 | B1SN8A == 9)
replace B1SN8B = . if (B1SN8B == 7 | B1SN8B == 8 | B1SN8B == 9)
replace B1SN8C = . if (B1SN8C == 7 | B1SN8C == 8 | B1SN8C == 9)
replace B1SN8D = . if (B1SN8D == 7 | B1SN8D == 8 | B1SN8D == 9)
replace B1SRELSU = . if (B1SRELSU == 98.000 | B1SRELSU == 99.000)
replace B1SN9A = . if (B1SN9A == 7 | B1SN9A == 8 | B1SN9A == 9)
replace B1SN9B = . if (B1SN9B == 7 | B1SN9B == 8 | B1SN9B == 9)
replace B1SN9C = . if (B1SN9C == 7 | B1SN9C == 8 | B1SN9C == 9)
replace B1SN9D = . if (B1SN9D == 7 | B1SN9D == 8 | B1SN9D == 9)
replace B1SN9E = . if (B1SN9E == 7 | B1SN9E == 8 | B1SN9E == 9)
replace B1SN9F = . if (B1SN9F == 7 | B1SN9F == 8 | B1SN9F == 9)
replace B1SN9G = . if (B1SN9G == 7 | B1SN9G == 8 | B1SN9G == 9)
replace B1SN9H = . if (B1SN9H == 7 | B1SN9H == 8 | B1SN9H == 9)
replace B1SRELCA = . if (B1SRELCA == 98.00)
replace B1SRELCB = . if (B1SRELCB == 98.000)
replace B1SN10A = . if (B1SN10A == 7 | B1SN10A == 8 | B1SN10A == 9)
replace B1SN10B = . if (B1SN10B == 7 | B1SN10B == 8 | B1SN10B == 9)
replace B1SN10C = . if (B1SN10C == 7 | B1SN10C == 8 | B1SN10C == 9)
replace B1SN10D = . if (B1SN10D == 7 | B1SN10D == 8 | B1SN10D == 9)
replace B1SN10E = . if (B1SN10E == 7 | B1SN10E == 8 | B1SN10E == 9)
replace B1SSPRTE = . if (B1SSPRTE == 98.000)
replace B1SN11A = . if (B1SN11A == 7 | B1SN11A == 8 | B1SN11A == 9)
replace B1SN11B = . if (B1SN11B == 7 | B1SN11B == 8 | B1SN11B == 9)
replace B1SN11C = . if (B1SN11C == 7 | B1SN11C == 8 | B1SN11C == 9)
replace B1SN11D = . if (B1SN11D == 7 | B1SN11D == 8 | B1SN11D == 9)
replace B1SN11E = . if (B1SN11E == 7 | B1SN11E == 8 | B1SN11E == 9)
replace B1SN11F = . if (B1SN11F == 7 | B1SN11F == 8 | B1SN11F == 9)
replace B1SN11G = . if (B1SN11G == 7 | B1SN11G == 8 | B1SN11G == 9)
replace B1SN11H = . if (B1SN11H == 7 | B1SN11H == 8 | B1SN11H == 9)
replace B1SN11I = . if (B1SN11I == 7 | B1SN11I == 8 | B1SN11I == 9)
replace B1SMNDFU = . if (B1SMNDFU == 98.000)
replace B1SP1A = . if (B1SP1A == 99997 | B1SP1A == 99998 | B1SP1A == 99999)
replace B1SP1B = . if (B1SP1B == 99997 | B1SP1B == 99998 | B1SP1B == 99999)
replace B1SP1C = . if (B1SP1C == 99997 | B1SP1C == 99998 | B1SP1C == 99999)
replace B1SP1D = . if (B1SP1D == 99997 | B1SP1D == 99998 | B1SP1D == 99999)
replace B1SP1E = . if (B1SP1E == 99997 | B1SP1E == 99998 | B1SP1E == 99999)
replace B1SP1F = . if (B1SP1F == 99997 | B1SP1F == 99998 | B1SP1F == 99999)
replace B1SP1G = . if (B1SP1G == 99997 | B1SP1G == 99998 | B1SP1G == 99999)
replace B1SP1H = . if (B1SP1H == 99997 | B1SP1H == 99998 | B1SP1H == 99999)
replace B1SP1I = . if (B1SP1I == 99997 | B1SP1I == 99998 | B1SP1I == 99999)
replace B1SP1J = . if (B1SP1J == 99997 | B1SP1J == 99998 | B1SP1J == 99999)
replace B1SP1K = . if (B1SP1K == 99997 | B1SP1K == 99998 | B1SP1K == 99999)
replace B1SLFEDI = . if (B1SLFEDI == 99998.00)
replace B1SP2A = . if (B1SP2A == 7 | B1SP2A == 8 | B1SP2A == 9)
replace B1SP2B = . if (B1SP2B == 7 | B1SP2B == 8 | B1SP2B == 9)
replace B1SP2C = . if (B1SP2C == 7 | B1SP2C == 8 | B1SP2C == 9)
replace B1SP2D = . if (B1SP2D == 7 | B1SP2D == 8 | B1SP2D == 9)
replace B1SP2E = . if (B1SP2E == 7 | B1SP2E == 8 | B1SP2E == 9)
replace B1SP2F = . if (B1SP2F == 7 | B1SP2F == 8 | B1SP2F == 9)
replace B1SP2G = . if (B1SP2G == 7 | B1SP2G == 8 | B1SP2G == 9)
replace B1SP2H = . if (B1SP2H == 7 | B1SP2H == 8 | B1SP2H == 9)
replace B1SP2I = . if (B1SP2I == 7 | B1SP2I == 8 | B1SP2I == 9)
replace B1SDAYDI = . if (B1SDAYDI == 98.000)
replace B1SP3A = . if (B1SP3A == 7 | B1SP3A == 8 | B1SP3A == 9)
replace B1SP3B = . if (B1SP3B == 7 | B1SP3B == 8 | B1SP3B == 9)
replace B1SP3C = . if (B1SP3C == 7 | B1SP3C == 8 | B1SP3C == 9)
replace B1SP3D = . if (B1SP3D == 7 | B1SP3D == 8 | B1SP3D == 9)
replace B1SP3E = . if (B1SP3E == 7 | B1SP3E == 8 | B1SP3E == 9)
replace B1SP3F = . if (B1SP3F == 7 | B1SP3F == 8 | B1SP3F == 9)
replace B1SP3G = . if (B1SP3G == 7 | B1SP3G == 8 | B1SP3G == 9)
replace B1SP3H = . if (B1SP3H == 7 | B1SP3H == 8 | B1SP3H == 9)
replace B1SP3I = . if (B1SP3I == 7 | B1SP3I == 8 | B1SP3I == 9)
replace B1SP3J = . if (B1SP3J == 7 | B1SP3J == 8 | B1SP3J == 9)
replace B1SP4 = . if (B1SP4 == 7 | B1SP4 == 8 | B1SP4 == 9)
replace B1SP5 = . if (B1SP5 == 7 | B1SP5 == 8 | B1SP5 == 9)
replace B1SQ1 = . if (B1SQ1 == 97 | B1SQ1 == 98 | B1SQ1 == 99)
replace B1SQ2 = . if (B1SQ2 == 97 | B1SQ2 == 98 | B1SQ2 == 99)
replace B1SQ3 = . if (B1SQ3 == 97 | B1SQ3 == 98 | B1SQ3 == 99)
replace B1SQ4 = . if (B1SQ4 == 97 | B1SQ4 == 98 | B1SQ4 == 99)
replace B1SQ5 = . if (B1SQ5 == 97 | B1SQ5 == 98 | B1SQ5 == 99)
replace B1SQ6 = . if (B1SQ6 == 97 | B1SQ6 == 98 | B1SQ6 == 99)


*/
/********************************************************************

 Section 5: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

