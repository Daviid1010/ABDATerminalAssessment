## setwd("C:/Users/Davy Sheehy/Desktop/ABDAFinalAssignment")

library(readr)
library(dplyr)
SmallAreas <- read_csv("Small_Areas_Generalised_100m__OSi_National_Statistical_Boundaries__2015.csv")
View(Small_Areas_Generalised_100m_OSi_National_Statistical_Boundaries_2015)


SAPS2016_SA2017 <- read_csv("SAPS2016_SA2017.csv")
View(SAPS2016_SA2017)


merged = merge.data.frame(SmallAreas, SAPS2016_SA2017, by = 'GUID')

########### Split the data by Themes 1-15, as defined by SAPS_2016_Glossary
# Sex, Age, and Maritial Statius, 
#Table1: pop aged 0-19 by sex and gender, 20 and above by sex and age group
# Table 2: Population By Sex and Maritial Status 

Theme1 = merged %>% dplyr:: select(c('GUID','OBJECTID','NUTS1','NUTS1NAME','NUTS2','NUTS2NAME','NUTS3','NUTS3NAME',
                                     'COUNTY','COUNTYNAME','EDNAME') | starts_with('T1_'))

#### Migration, Ethnicity, Religion and Foreign Languages
## Table1: Usually resident population by place of birth and nationality
## Table2: Usually resident population by ethnic or cultural background 
## Table3: Usually resident population aged 1 year and over by usual residence 1 year before Census Day
## Table4: Population by religion
## Table5: Speakers of foreign languages by language spoken 
## Table6: Speakers of foreign languages by ability to speak English 


Theme2 = merged %>% dplyr:: select(c('GUID','OBJECTID','NUTS1','NUTS1NAME','NUTS2','NUTS2NAME','NUTS3','NUTS3NAME',
                                     'COUNTY','COUNTYNAME','EDNAME') | starts_with('T2_'))

##### Irish Language
## Table1: Population aged 3 and over ability to speak Irish
## Table2: Irish speakers aged 3 years and over by frequency of speaking Irish
Theme3 = merged %>% dplyr:: select(c('GUID','OBJECTID','NUTS1','NUTS1NAME','NUTS2','NUTS2NAME','NUTS3','NUTS3NAME',
                                     'COUNTY','COUNTYNAME','EDNAME') | starts_with('T3_'))

## Families
## Table 1: Families, family members and children in families, by size of family
## Table 2: Family units with children by size and age of children 
## Table 3: Family units with children by type of family and age of children
## Table 4: Families by age of youngest child 
## Table 5: Families by family cycle 
## Table 6: Females aged 20 years and over by number of children born

Theme4 = merged %>% dplyr:: select(c('GUID','OBJECTID','NUTS1','NUTS1NAME','NUTS2','NUTS2NAME','NUTS3','NUTS3NAME',
                                     'COUNTY','COUNTYNAME','EDNAME') | starts_with('T4_'))

## Private Households
## Table 1: Private households by type
## Table 2: Private households by size 
Theme5 = merged %>% dplyr:: select(c('GUID','OBJECTID','NUTS1','NUTS1NAME','NUTS2','NUTS2NAME','NUTS3','NUTS3NAME',
                                     'COUNTY','COUNTYNAME','EDNAME') | starts_with('T5_'))

## Housing
##Table 1 Private households by type of accommodation 
##Table 2: Permanent private households by year built 
##Table 3: Permanent private households by type of occupancy 
##Table 4: Permanent private households by number of rooms 
##Table 5: Permanent private households by central heating 
##Table 6: Permanent private households by water supply 
##Table 7: Permanent private households by sewerage facility 
##Table 8: Occupancy status of permanent dwellings on Census night
Theme6 = merged %>% dplyr:: select(c('GUID','OBJECTID','NUTS1','NUTS1NAME','NUTS2','NUTS2NAME','NUTS3','NUTS3NAME',
                                     'COUNTY','COUNTYNAME','EDNAME') | starts_with('T6_'))

## Communal Establishmentts
## Table1:Persons in Communal Establishments
Theme7 = merged %>% dplyr:: select(c('GUID','OBJECTID','NUTS1','NUTS1NAME','NUTS2','NUTS2NAME','NUTS3','NUTS3NAME',
                                     'COUNTY','COUNTYNAME','EDNAME') | starts_with('T7_'))

## Principal Status
## Table1: Population aged 15 years and over by principal economic status and sex 
Theme8 = merged %>% dplyr:: select(c('GUID','OBJECTID','NUTS1','NUTS1NAME','NUTS2','NUTS2NAME','NUTS3','NUTS3NAME',
                                     'COUNTY','COUNTYNAME','EDNAME') | starts_with('T8_'))

## Social Class and Socio-Economic Group
## Table 1: Population by sex and social class
##Table 2: Persons in private households by socio-economic group of reference person
Theme9 = merged %>% dplyr:: select(c('GUID','OBJECTID','NUTS1','NUTS1NAME','NUTS2','NUTS2NAME','NUTS3','NUTS3NAME',
                                     'COUNTY','COUNTYNAME','EDNAME') | starts_with('T9_'))

## Education
## Table 1: Population aged 15 years and over by age education ceased 
## Table 2: Population aged 15 years and over whose education has not ceased
## Table 3: Population aged 15 years and over by field of study 
## Table 4: Population aged 15 years and over by sex and highest level of education completed 
Theme10 = merged %>% dplyr:: select(c('GUID','OBJECTID','NUTS1','NUTS1NAME','NUTS2','NUTS2NAME','NUTS3','NUTS3NAME',
                                     'COUNTY','COUNTYNAME','EDNAME') | starts_with('T10_'))

## Commuting
## Table1: Population aged 5 years and over by means of travel to work, school or college
## Table2: Population aged 5 years and over by time leaving home to travel to work, school or college 
## Table3: Population aged 5 years and over by journey time to work, school or college 
Theme11 = merged %>% dplyr:: select(c('GUID','OBJECTID','NUTS1','NUTS1NAME','NUTS2','NUTS2NAME','NUTS3','NUTS3NAME',
                                     'COUNTY','COUNTYNAME','EDNAME') | starts_with('T11_'))

## Disability, Carers and General Health
## Table 1:Persons with disability by sex
## Table 2: Carers by sex
## Table 3: Population by general health and sex
Theme12 = merged %>% dplyr:: select(c('GUID','OBJECTID','NUTS1','NUTS1NAME','NUTS2','NUTS2NAME','NUTS3','NUTS3NAME',
                                     'COUNTY','COUNTYNAME','EDNAME') | starts_with('T12_'))

## Occupations
## Table 1: Persons at work or unemployed by occupation and sex
Theme13 = merged %>% dplyr:: select(c('GUID','OBJECTID','NUTS1','NUTS1NAME','NUTS2','NUTS2NAME','NUTS3','NUTS3NAME',
                                     'COUNTY','COUNTYNAME','EDNAME') | starts_with('T13_'))

## Industries
## Table 1: Persons at work by industry and sex
Theme14 = merged %>% dplyr:: select(c('GUID','OBJECTID','NUTS1','NUTS1NAME','NUTS2','NUTS2NAME','NUTS3','NUTS3NAME',
                                     'COUNTY','COUNTYNAME','EDNAME') | starts_with('T14_'))

## Motor Car Availability, PC Ownership and Internet Access
## Table 1: Number of households with cars
## Table 2: Number of households with a personal computer
## Table 3: Number of households with internet
Theme15 = merged %>% dplyr:: select(c('GUID','OBJECTID','NUTS1','NUTS1NAME','NUTS2','NUTS2NAME','NUTS3','NUTS3NAME',
                                     'COUNTY','COUNTYNAME','EDNAME') | starts_with('T15_'))




#### I'm considering examining commuters in Limerick, Waterford , and Galway for comparison
Theme11LimWa =  Theme11 %>% filter(COUNTYNAME== 'Waterford City and County' | COUNTYNAME == 'Limerick City and County')


### Columns Selected for Satistical Analysis, total population, stats on commuting methods, start time of commute and commute time length
ColsOfInterestSection11 = c('T8_1_WT','T8_1_ST','T8_1_TT','T11_1_TW','T11_1_TS','T11_1_FT', 'T11_1_BIT', 'T11_1_BUT', 'T11_1_TDLT', 'T11_1_MT', 'T11_1_CDT', 
'T11_1_CPT', 'T11_1_VT', 'T11_2_T1', 'T11_2_T2','T11_2_T3','T11_2_T4','T11_2_T5','T11_2_T6','T11_2_T7','T11_2_T8','T11_3_D1','T11_3_D2','T11_3_D3','T11_3_D4','T11_3_D5','T11_3_D6')

Theme8LimWa = Theme8 %>% filter(COUNTYNAME== 'Waterford City and County' | COUNTYNAME == 'Limerick City and County')
Theme8LimWa = Theme8LimWa %>% dplyr::select(c('GUID','T8_1_WT','T8_1_ST','T8_1_TT'))
mergedCommuteAndTotalPop = merge.data.frame(Theme11LimWa, Theme8LimWa, by='GUID')


#### We have desired commuter data on Limerick and Waterford for examination
WorkAgainstStudent = mergedCommuteAndTotalPop %>% dplyr::select('GUID', 'COUNTYNAME','EDNAME', 'T8_1_WT','T8_1_ST')
