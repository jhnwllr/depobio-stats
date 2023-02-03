## depobio stats

GBIF France publishes a large group of data from a nationally mandated repository for EIA data called **depobio**. 

The relevant datasets are all tagged with the keyword “depobio”. 

https://www.gbif.org/dataset/search?offset=4000&q=depobio&type=OCCURRENCE



## total occurrence counts



The total number of occurrence records published under the keyword "depobio":

17095

## percent total by year (eventDate)





| year| n_occ_depobio| n_occ_fr| per_occ_depobio|
|----:|-------------:|--------:|---------------:|
| 2014|            67|  4708693|       0.0014229|
| 2015|           369|  4871203|       0.0075751|
| 2016|           486|  5018037|       0.0096851|
| 2017|           466|  5895125|       0.0079048|
| 2018|          3365|  5894676|       0.0570854|
| 2019|         11320|  5630477|       0.2010487|
| 2021|           482|  3206665|       0.0150312|
| 2022|            42|  1820925|       0.0023065|



## number of unique species



Total number of unique species for datasets published under the keyword "depobio":

453

<!-- ## number unique species, but not in any other dataset in France -->

<!-- ```{r not_in_previously_france, echo=FALSE,include=FALSE} -->

<!-- # depobio_dataset_key = "https://api.gbif.org/v1/dataset/search/export?format=TSV&q=depobio&type=OCCURRENCE" %>% -->
<!-- # readr::read_tsv() %>% -->
<!-- # head(hh) %>% -->
<!-- # glimpse() %>% -->
<!-- # pull(dataset_key)  -->
<!-- #  -->
<!-- # unique_france_species = rgbif::occ_search(country="FR",facet = c("datasetKey"),limit=0,datasetKey.facetLimit = 100000)$facets$datasetKey %>%  -->
<!-- # filter(!name %in% depobio_dataset_key) %>%  -->
<!-- # pull(name) %>% -->
<!-- # map(~ -->
<!-- # rgbif::occ_search(datasetKey=.x,facet = c("speciesKey"),limit=0,speciesKey.facetLimit = 100000)$facets$speciesKey  -->
<!-- # ) %>%  -->
<!-- # compact() %>% -->
<!-- # map(~ .x$name) %>%  -->
<!-- # flatten_chr() %>%  -->
<!-- # unique()  -->

<!-- ``` -->

<!-- These species only occur in datasets published using: -->

<!-- 0 -->

<!-- # ```{r unique_in_france_table, echo=FALSE,include=TRUE,results='asis'} -->
<!-- #  -->
<!-- # unique_depobio_species$name[!unique_depobio_species$name %in% unique_france_species] %>% -->
<!-- # data.frame() %>% -->
<!-- # knitr::kable() -->
<!-- #  -->
<!-- # ``` -->

## iucn counts




|iucn_cat        | n_occ| n_species|
|:---------------|-----:|---------:|
|LEAST_CONCERN   | 12361|       225|
|NOT_EVALUATED   |  2178|       210|
|NEAR_THREATENED |   361|        10|
|VULNERABLE      |    14|         3|
|DATA_DEFICIENT  |     7|         4|
|ENDANGERED      |     1|         1|

<!-- ## iucn counts unique to depobio in FR -->

<!-- ```{r iucn_counts_print_table_unique_FR, echo=FALSE,include=TRUE,results='asis'} -->

<!-- unique_depobio_species_iucn %>% -->
<!-- filter(!name %in% unique_france_species) %>% -->
<!-- group_by(iucn_cat) %>% -->
<!-- summarise(n_occ = sum(count), -->
<!-- n_species = n_distinct(name) -->
<!-- ) %>% -->
<!-- arrange(-n_occ) %>%  -->
<!-- knitr::kable() -->

<!-- ``` -->

## unique species by higher level taxa from schema used in country report




|group      | n_occ| n_species|
|:----------|-----:|---------:|
|Mammals    | 13669|        31|
|Birds      |   882|       124|
|other      |   254|       224|
|Insects    |    72|        57|
|Amphibians |    26|         9|
|Reptiles   |    16|         5|
|Ferns      |     3|         3|

## total unique literature citations 



The total number of literature citations for datasets using the keyword "depobio": 

4

See full export of this data in `exports/lit_data.tsv`.


<!-- # number of records by department (to answer the question: are there records from départments and pays d’outre-mer outside “mainland” France?) -->
<!-- # gadm_gid=FRA.1_1&gadm_gid=FRA.2_1 -->

<!-- Not completed -->

<!-- ## impact assesments  -->
<!-- depbio eventDate n_occ, n_sp "about" and "published by" FR -->

<!-- eventDate means "first"  -->

<!-- make citations table for all of depobio as export  -->
