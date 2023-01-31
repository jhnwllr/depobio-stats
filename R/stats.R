
# Some key numbers I can think of generating:

library(dplyr)
library(purrr)

setwd("C:/Users/ftw712/Desktop/depobio-stats/")

if(FALSE) { # 1. # Total number of records
"https://api.gbif.org/v1/dataset/search/export?format=TSV&q=depobio&type=OCCURRENCE" %>%
readr::read_tsv() %>%
pull(occurrence_records_count) %>% 
sum()
}

# Needs snapshots
# 2. # of occurrences by year + percentage of current annual total of data from France

if(FALSE) { # 3. a. # of [unique] species 
"https://api.gbif.org/v1/dataset/search/export?format=TSV&q=depobio&type=OCCURRENCE" %>%
readr::read_tsv() %>%
glimpse() %>%
pull(dataset_key) %>% 
map(~
rgbif::occ_search(datasetKey=.x,facet = c("speciesKey"),limit=0,speciesKey.facetLimit = 100000)$facets$speciesKey 
) %>% 
compact() %>%
bind_rows() %>% 
unique() %>%
group_by(name) %>%
summarise(count = sum(count)) %>% 
glimpse() %>%
saveRDS("data/unique_species_keys.rda")
}

if(FALSE) { # 3. b. (+ # of [unique] species not previously recorded for France, if any)

depobio_dataset_key = "https://api.gbif.org/v1/dataset/search/export?format=TSV&q=depobio&type=OCCURRENCE" %>%
readr::read_tsv() %>%
glimpse() %>%
pull(dataset_key) 

rgbif::occ_search(country="FR",facet = c("datasetKey"),limit=0,datasetKey.facetLimit = 100000)$facets$datasetKey %>% 
filter(!name %in% depobio_dataset_key) %>% 
pull(name) %>%
map(~
rgbif::occ_search(datasetKey=.x,facet = c("speciesKey"),limit=0,speciesKey.facetLimit = 100000)$facets$speciesKey 
) %>% 
compact() %>%
map(~ .x$name) %>% 
flatten_chr() %>% 
unique() %>%
saveRDS("data/unique_species_keys_france.rda")
}

if(FALSE) { 
unique_depobio_species = readRDS("data/unique_species_keys.rda")$name
unique_france_species = readRDS("data/unique_species_keys_france.rda") 

length(unique_depobio_species[!unique_depobio_species %in% unique_france_species])
}

if(FALSE) { # 4. a. # of [occurrence] records for Red List species

readRDS("data/unique_species_keys.rda") %>%
mutate(iucn_cat = map_chr(name,~try(rgbif::name_usage(key=.x,data="iucnRedListCategory")$data$category))) %>%
glimpse() %>%
saveRDS("data/unique_species_keys_iucn.rda")

readRDS("data/unique_species_keys_iucn.rda") %>%  
group_by(iucn_cat) %>%
summarise(n_occ = sum(count),
n_species = n_distinct(name)
) %>%
arrange(-n_occ)

}

if(FALSE) { # 4. b. # [Red List unique] species not previously recorded for France (if any)

unique_france_species = readRDS("data/unique_species_keys_france.rda") 

readRDS("data/unique_species_keys_iucn.rda") %>%
filter(!name %in% unique_france_species) %>%
group_by(iucn_cat) %>%
summarise(n_occ = sum(count),
n_species = n_distinct(name)
) %>%
arrange(-n_occ)

# length(unique_depobio_species[!unique_depobio_species %in% unique_france_species])
}

if(FALSE) { # 5. # of [unique] species by kingdom and/or higher level taxa from schema used in country report

readRDS("data/unique_species_keys.rda") %>%
mutate(name_data=map(name,~rgbif::name_usage(key=.x)$data)) %>%
tidyr::unnest(cols="name_data") %>%
saveRDS("data/unique_species_keys_htax.rda")

bony_fish =
c("1103","1104","494","495","1105","496","497","1106","498","499","1107","537","538","1153","547","1162","548","549","550","1163","1164","1165","1166","1167","1305","1067","1306","1307","1308","1068","1069","587","1310","588","589","1311","1312","1313","590","890","774","889","773","772","888","765","879","7191147","1108","1448","8454030","716","8510645","8706725","8602104","7192402","839","721","1446","1447","1492","8481794","7191407","723","7192754","1493","8454707","8617753","1444","10833565","8705315","8708973","7190953","7190987","7191426","724","7191588","7192755","1445","7192749","8603836","7190978","10726067","1450","725","7192775","726","1449","791","828","731","732","733","734","735","737","829","784","785","1453","795","796","798","1459","801","803","804","736","783","1452","790","1454","792","794","952","953","775")

# Gymnosperms

readRDS("data/unique_species_keys_htax.rda") %>% 
mutate(group = case_when(
classKey == 359 ~ "Mammals",
classKey == 212 ~ "Birds",
classKey == 131 ~ "Amphibians",
classKey == 216 ~ "Insects",
orderKey %in% bony_fish ~ "Bony fish",
classKey %in% c("11493978","11418114","11569602","11592253") ~ "Reptiles",
phylumKey == 52 ~ "Molluscs",
classKey == 367 ~ "Arachnids",
phylumKey == 49 ~ "Flowering plants",
phylumKey == 35 ~ "Mosses",
phylumKey == 95 ~ "Sac fungi",
phylumKey == 34 ~ "Basidiomycota",
classKey == 7228684 ~ "Ferns",
TRUE ~ "other")) %>% 
group_by(group) %>%
summarise(n_occ = sum(count),
n_species = n_distinct(name)
) %>%
arrange(-n_occ)
}


# if(FALSE) { # 6. # of unique citations + peer-reviewed data uses

lit_data = "https://api.gbif.org/v1/dataset/search/export?format=TSV&q=depobio&type=OCCURRENCE" %>%
readr::read_tsv() %>%
select(dataset_key) %>%
glimpse() %>%  
mutate(lit_data = map(dataset_key,~rgbif::lit_all_dataset(datasetKey=.x,limit=1000))) %>% 
tidyr::unnest(cols="lit_data") %>%
glimpse() %>%

`r lit_data %>% pull(id) %>% unique() %>% length()`


# }


# total_n_cit = readRDS("data/lit_data.rda") %>% pull(id) %>% unique() %>% length()

# readRDS("data/lit_data.rda") %>%
# filter(peerReview) %>% 
# group_by(topics) %>% 
# summarise(n_cit = n_distinct(id))


# 7. # of records by department (to answer the question: are there records from départments and pays d’outre-mer outside “mainland” France?)
# gadm_gid=FRA.1_1&gadm_gid=FRA.2_1


# "https://api.gbif.org/v1/dataset/search/export?format=TSV&q=depobio&type=OCCURRENCE" %>%
# readr::read_tsv() %>%
# glimpse()

# rgbif::dataset_search(query="depobio",type="OCCURRENCE")


