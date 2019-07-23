# Alexander Agadjanian
# 
# started: 07/23/19
# updated:

# Notes: 
# R script to clean cces modules from 2016

# loading packages
library(haven)
library(foreign)
library(tidyverse)
options(stringsAsFactors = FALSE)

# manually set working directory to cces2016-rr-modules

# read in and clean individual module files

de <- read_dta("delaware-d/CCES16_DWD_OUTPUT_Feb2017.dta") %>% 
  mutate_if(is.labelled, as_factor) %>%
  mutate(overcome = as.character(KS1),
         discrim = as.character(KS2),
         deserve = as.character(KS3),
         tryhard = as.character(KS4),
         overcome_item = "Other minorities overcame prejudice and worked their way up. African Americans should do the same",
         discrim_item = "Generations of slavery and discrimination created conditions that make it difficult for African Americans to work out of lower class",
         deserve_item = "Over the past few years, African Americans have gotten less than they deserve",
         tryhard_item = "It's really a matter of some people not trying hard enough; if African Americans would only try harder they could be just as well off",
         module = "delaware-d", notes = "5-point; uses strongly (dis)agree and (dis)agree") %>%
  select(V101, weight, race, hispanic, pid7, overcome, discrim, deserve, tryhard, overcome_item, discrim_item, deserve_item, tryhard_item, module, notes)

gwu <- read_dta("gwu-b/CCES16_GWM_OUTPUT_Feb2017.dta") %>% 
  mutate_if(is.labelled, as_factor) %>%
  mutate(overcome = as.character(GWM370),
         discrim = as.character(GWM371),
         deserve = as.character(GWM373),
         tryhard = as.character(GWM372),
         overcome_item = "Irish, Italians, Jews and many other minorities overcame prejudice and worked their way up. Blacks should do the same without any special favors.",
         discrim_item = "Generations of slavery and discrimination have created conditions that make it difficult for blacks to work their way out of the lower class.",
         deserve_item = "Over the past few years blacks have gotten less than they deserve.",
         tryhard_item = "It's really a matter of some people not trying hard enough; if blacks would only try harder they could be just as well off as whites.",
         module = "gwu-b", notes = "5-point; uses strongly (dis)agree and (dis)agree") %>%
  select(V101, weight, race, hispanic, pid7, overcome, discrim, deserve, tryhard, overcome_item, discrim_item, deserve_item, tryhard_item, module, notes)

inda <- read_dta("indiana-a/CCES16_IUA_OUTPUT_Feb2017.dta") %>% 
  mutate_if(is.labelled, as_factor) %>%
  mutate(overcome = as.character(IUA362),
         discrim = as.character(IUA363),
         deserve = as.character(IUA361),
         tryhard = as.character(IUA360),
         overcome_item = "Irish, Italian, Jewish and many other minorities overcame prejudice and worked their way up. Blacks should do the same without any special favors",
         discrim_item = "Generations of slavery and discrimination have created conditions that make it difficult for Blacks to work their way out of the lower class",
         deserve_item = "Over the past few years blacks have gotten less than they deserve",
         tryhard_item = "It's really a matter of some people not trying hard enough; if blacks would only try harder they could be just as well off as whites.",
         module = "indiana-a", notes = "appears to be part of treatments (see Treat 1 and Treat 2 text in response values); Treat 1 is 5-point with neither, Treat 2 is 6-point without neither") %>%
  select(V101, weight, race, hispanic, pid7, overcome, discrim, deserve, tryhard, overcome_item, discrim_item, deserve_item, tryhard_item, module, notes)

indb <- read_dta("indiana-b/CCES16_IUB_OUTPUT_Feb2017.dta") %>% 
  mutate_if(is.labelled, as_factor) %>%
  mutate(overcome = as.character(IUB421),
         discrim = as.character(IUB422),
         deserve = as.character(IUB420),
         tryhard = as.character(IUB419),
         overcome_item = "Irish, Italian, Jewish and many other minorities overcame prejudice and worked their way up. Blacks should do the same without any special favors",
         discrim_item = "Generations of slavery and discrimination have created conditions that make it difficult for Blacks to work their way out of the lower class",
         deserve_item = "Over the past few years blacks have gotten less than they deserve",
         tryhard_item = "It's really a matter of some people not trying hard enough; if blacks would only try harder they could be just as well off as whites",
         module = "indiana-b", notes = "unlabeled responses, so uncertain; 6-point scales; based on crosstab with party ID, it appears that $IUB419_422rsp1.raw, IUB419_422rsp2.raw, IUB419_422rsp3.raw are the agreement ends of the response scale") %>%
  select(V101, weight, race, hispanic, pid7, overcome, discrim, deserve, tryhard, overcome_item, discrim_item, deserve_item, tryhard_item, module, notes)

mit <- read_dta("mit/CCES16_CAM_OUTPUT_Jul2017.dta") %>% 
  mutate_if(is.labelled, as_factor) %>%
  mutate(overcome = as.character(CAM351),
         discrim = as.character(CAM352),
         deserve = as.character(CAM350),
         tryhard = as.character(CAM353),
         overcome_item = "Other minorities",
         discrim_item = "Slavery and discrim",
         deserve_item = "Less than deserve",
         tryhard_item = "Try harder",
         module = "mit", notes = "4-point; uses strongly (dis)agree and somewhat (dis)agree without neither") %>%
  select(V101, weight, race, hispanic, pid7, overcome, discrim, deserve, tryhard, overcome_item, discrim_item, deserve_item, tryhard_item, module, notes)

merced <- read_dta("ucmerced/CCES16_UCM_OUTPUT_Feb2017.dta") %>% 
  mutate_if(is.labelled, as_factor) %>%
  mutate(overcome = as.character(UCM325),
         discrim = as.character(UCM327),
         deserve = as.character(UCM324),
         tryhard = as.character(UCM326),
         overcome_item = "Racial Resentment - Irish, Italian, Jewish, and many other minorities overcame prejudice and worked their way up.  Blacks should do the same without any special favors",
         discrim_item = "Generations of slavery and discrimination have created conditions that make it difficult for blacks to work their way out of the lower class",
         deserve_item = "Over the past few years, blacks have gotten less than they deserve",
         tryhard_item = "It's really a matter of some people not trying hard enough; if blacks would only try harder they could be just as well off as whites",
         module = "ucmerced", notes = "5-point; uses strongly (dis)agree and somewhat (dis)agree with neither") %>%
  select(V101, weight, race, hispanic, pid7, overcome, discrim, deserve, tryhard, overcome_item, discrim_item, deserve_item, tryhard_item, module, notes)

umassa <- read_dta("umassa-a/CCES16_UML_OUTPUT_Feb2017.dta") %>% 
  mutate_if(is.labelled, as_factor) %>%
  mutate(overcome = as.character(UML301_1),
         discrim = as.character(UML301_2),
         deserve = as.character(UML301_3),
         tryhard = as.character(UML301_4),
         overcome_item = "The Irish, Italians, Jews and many other minorities overcame prejudice and worked their way up. Blacks should do the same without any special favors",
         discrim_item = "Generations of slavery and discrimination have created conditions that make it difficult for blacks to work their way out of the lower class",
         deserve_item = "Over the past few years, blacks have gotten less than they deserve",
         tryhard_item = "It's really a matter of some people not trying hard enough; if blacks would only try harder they could be as well off as whites",
         module = "umassa-a", notes = "5-point; uses strongly (dis)agree and somewhat (dis)agree with neither, also has don't know") %>%
  select(V101, weight, race, hispanic, pid7, overcome, discrim, deserve, tryhard, overcome_item, discrim_item, deserve_item, tryhard_item, module, notes)

umassb <- read_dta("umassa-b/CCES16_UMA_OUTPUT_Feb2017.dta") %>% 
  mutate_if(is.labelled, as_factor) %>%
  mutate(overcome = as.character(UMA301_1),
         discrim = as.character(UMA301_2),
         deserve = as.character(UMA301_3),
         tryhard = as.character(UMA301_4),
         overcome_item = "The Irish, Italians, Jews and many other minorities overcame prejudice and worked their way up. Blacks should do the same without any special favors",
         discrim_item = "Generations of slavery and discrimination have created conditions that make it difficult for blacks to work their way out of the lower class",
         deserve_item = "Over the past few years, blacks have gotten less than they deserve",
         tryhard_item = "It's really a matter of some people not trying hard enough; if blacks would only try harder they could be as well off as whites",
         module = "umassa-b", notes = "5-point, uses strongly (dis)agree and somewhat (dis)agree with neither, also has don't know") %>%
  select(V101, weight, race, hispanic, pid7, overcome, discrim, deserve, tryhard, overcome_item, discrim_item, deserve_item, tryhard_item, module, notes)

# note: college of william and mary module has RR battery, but none of their ID's are in the main CCES -- not able to use

# combine into one
modules <- bind_rows(de, gwu, inda, indb, mit, merced, umassa, umassb) %>%
  rename("weight_module" = weight)

# read in 2016 cces common content; download/read in separately
cc <- read_dta("CCES16_Common_OUTPUT_Feb2018_VV.dta") 
sum(modules$V101 %in% cc$V101) # check how many matches -- should be 9500 if matched perfectly
cc1 <- cc %>% select(V101, commonweight_vv) # only need id and overall weight (assuming modules are all pre non-VV commonweights)

# combine modules with common content
modules1 <- modules %>% 
  left_join(cc1, by = "V101") %>% # combine
  select(V101, commonweight_vv, weight_module, module, notes, race:tryhard_item) %>%
  mutate(race = as.character(race), hispanic = as.character(hispanic), pid7 = as.character(pid7)) # convert to character to be consistent/avoid weird issues

# output data; output to different working directory
#write.csv(modules1, file = "cces2016-rr-condensed.csv", row.names = FALSE)
