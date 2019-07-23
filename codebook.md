# Codebook for Combined 2016 CCES Modules with Racial Resentment Battery

The data file `cces2016-rr-condensed.csv` combines various modules from the 2016 CCES that all contain the racial resentment battery, condenses the dataset, keeps a few relevant variables, and appends on weights from the 2016 CCES Common Content. All used data can be found in the [CCES Dataverse](https://dataverse.harvard.edu/dataverse/cces).

Note that different CCES modules have different item texts and response options for the racial resentment battery. Generally, item text is similar across modules. In some cases, response option text is not straightforward (e.g. the text suggests response options were experimentally manipulated, or the response text is not meaningful). Idiosyncrasies like these are noted in the `notes` variable.

For `V101`, `commonweight_vv `, `race`, `hispanic`, and `pid7 ` variables, see the official CCES 2016 codebook for complete details.
 
## Variables

### V101
- unique respondent identifier 	
- taken from individual module files but present in Common Content as well

------------------

### commonweight_vv 
- merged on weight from Common Content (calculated after vote validation; see official CCES codebook, [CCES FAQ](https://cces.gov.harvard.edu/frequently-asked-questions))

-----------------

### weight_module
- weight that appears in each individual module

------------------

### module 
- module name abbreviation

-----------------

### notes
- notes on structure of response options on racial resentment battery items

------------------

### race 
- race

-----------------

### hispanic
- Spanish, Latino or Hispanic origin or descent

------------------

### pid7 
- seven-point party identification

-----------------

### overcome
- response to racial resentment battery item about other minorities overcoming prejudice and that blacks should do so without any special favors
- see `overcome_item` for module-specific wording of this racial resentment item

------------------

### discrim 
- response to racial resentment battery item about generations of slavery and discrimination creating conditions that make it difficult for blacks
- see `discrim_item` for module-specific wording of this racial resentment item

-----------------

### deserve
- response to racial resentment battery item about blacks having gotten less than they deserve
- see `deserve_item` for module-specific wording of this racial resentment item

------------------

### tryhard 
- response to racial resentment battery item about blacks needing to only try harder to be as well off as whites
- see `tryhard_item` for module-specific wording of this racial resentment item

-----------------

### overcome_item
- full item text for `overcome` racial resentment item	

------------------

### discrim_item 
- full item text for `discrim` racial resentment item

-----------------

### deserve_item
- full item text for `deserve` racial resentment item

------------------

### tryhard_item 
- full item text for `tryhard` racial resentment item

-----------------