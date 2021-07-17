# cces-2016-rr-rescaled

The `cces2016-rr-rescaled.csv` file in this sub-folder is an adapted version of the `cces2016-rr-condensed.csv` file in the repo's main folder. Within each CCES module that contains RR data, each RR item is rescaled to a 0-1 scale. This is important to do within modules because of variation in response options for RR items across modules. While most use the standard 5-point scale for response options, one module includes just a 4-point scale. Another module contains what looks like an experiment that varies response options, which together end up falling on a 6-point scale. The raw module data still exists in `cces2016-rr-condensed.csv`, but it is not easy to pool all module data and place it on the same scale. `cces2016-rr-rescaled.csv` contains average RR indices that come from first rescaling RR data within modules (e.g. turning 1-4, 1-5, and 1-6 scales to 0-1) and then averaging after that.

## Variables for cces2016-rr-rescaled.csv

### id
- unique respondent identifier
- use this to merge back onto CCES common content 2016

-----------------

### favors
- response to racial resentment battery item about other minorities overcoming prejudice and that blacks should do so without any special favors

-----------------

### slavery
- response to racial resentment battery item about generations of slavery and discrimination creating conditions that make it difficult for blacks

-----------------

### deserve
- response to racial resentment battery item about blacks having gotten less than they deserve

-----------------

### harder
- response to racial resentment battery item about blacks needing to only try harder to be as well off as whites

-----------------

### rr_all
- average of the 4 racial resentment items only for complete cases (i.e. for respondents who answered all 4 items)

-----------------

### rr
- average of the 4 racial resentment items only for all cases (i.e. number of valid items going into average may differ across respondent)

-----------------

### notes
- notes on structure of response options on racial resentment battery items and which CCES module contains the data

-----------------

### valid_items
- number of racial resentment items that the respondent answered (ranges from 0, missing data for all items, to 4, respondent answered all items)

-----------------