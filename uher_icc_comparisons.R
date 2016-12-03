############################################################################
### Comparison of ICC(3,1) estimates for trait adjectives and
### behavioral descriptive verbs reported in:
###
### Uher, J. (2016a). Capuchin personality inventory -
### Behaviour-descriptive verb items (CPI-BV).  Retrieved from
### http://www.primate-personality.net/questionnaires/CPI-BV_capuchin_personality-inventory_EN.pdf
###
### Uher, J. (2016b). Capuchin personality inventory - Trait-adjective
### items (CPI-TA).  Retrieved from
### http://www.primate-personality.net/questionnaires/CPI-TA_capuchin_personality-inventory_EN.pdf
###
### Uher, J. (2016c). Macaque personality inventory for captive
### individuals (MPIc-BV) - English.  Retrieved from
### http://www.primate-personality.net/questionnaires/MPIc-BV_macaque_personality-inventory_EN.pdf
###
### Uher, J. (2016d). Macaque personality inventory for captive
### individuals (MPIc-TA) - English.  Retrieved from
### http://www.primate-personality.net/questionnaires/MPIc-TA_macaque_personality-inventory_EN.pdf
###
### Note that all values were manually entered by Alexander Weiss and
### so any errors are his responsibility
############################################################################

## Read in reliability estimates
df <- read.table(file="uher_iccs.csv",sep=",",header=T)

## Split dataframe into one for capuchins and two for the macaques,
## each of the latter representing one timepoint.
df_cap <- df[df$species=="brown capuchin",]

df_mac_t1 <- df[df$species=="macaques_t1",]

df_mac_t2 <- df[df$species=="macaques_t2",]

## Conduct three t-tests, again, one for the capuchins and two for the
## macaques with each of the latter representing one timepoint.
t.test(data=df_mac_t1,icc31 ~ scale)

t.test(data=df_mac_t2,icc31 ~ scale)

t.test(data=df_cap,icc31 ~ scale)
