## depobio stats

last updated 2023-03-09.

GBIF France publishes a large group of data from a nationally mandated repository for EIA data called **depobio**.

The relevant datasets are all tagged with the keyword "depobio".

<https://www.gbif.org/dataset/search?offset=4000&q=depobio&type=OCCURRENCE>





## total occurrence counts



The total number of occurrence records published under tkhe keyword "depobio":

4021728

## percent total by year (eventDate)





![](https://raw.githubusercontent.com/jhnwllr/depobio-stats/main/plots_by_year.png)

See exports folder for tsv file of counts. 

## number of unique species



Total number of unique species for datasets published under the keyword "depobio":

11274

## iucn counts




|iucn_cat                        |   n_occ| n_species|
|:-------------------------------|-------:|---------:|
|LEAST_CONCERN                   | 1632508|      2762|
|NOT_EVALUATED                   |  341366|      8131|
|NEAR_THREATENED                 |   46979|       115|
|VULNERABLE                      |    8743|        98|
|DATA_DEFICIENT                  |    2950|        72|
|CRITICALLY_ENDANGERED           |    1557|        26|
|ENDANGERED                      |    1366|        39|
|Error : Status: 204 - not found |      78|        30|
|EXTINCT                         |       1|         1|

## unique species by higher level taxa from schema used in country report




|group         |   n_occ| n_species|
|:-------------|-------:|---------:|
|Mammals       | 1496054|       202|
|Birds         |  275031|       726|
|other         |  180936|      5973|
|Insects       |   35678|      2688|
|Bony fish     |   13504|       358|
|Arachnids     |    9345|       393|
|Amphibians    |    8402|        71|
|Reptiles      |    7799|       100|
|Molluscs      |    5074|       315|
|Ferns         |    1783|       165|
|Mosses        |    1124|       193|
|Basidiomycota |     622|        20|
|Sac fungi     |     196|        70|



|kingdom   |   n_occ| n_species|
|:---------|-------:|---------:|
|Animalia  | 1883548|      5687|
|Plantae   |  150936|      5397|
|Fungi     |     818|        90|
|Chromista |     240|        96|
|Bacteria  |       5|         3|
|Protozoa  |       1|         1|

## total unique literature citations



The total number of literature citations for datasets using the keyword "depobio":

45

See full export of this data in `exports/lit_data.tsv`.

## isInCluster

Are records from depobio possible duplicates of other records in GBIF?


```
## Rows: 4379 Columns: 17
## ── Column specification ───────────────────────────────────────────────────
## Delimiter: "\t"
## chr (12): dataset_key, title, doi, license, type, hosting_organization_...
## dbl  (2): occurrence_records_count, name_usages_count
## lgl  (3): sub_type, network_keys, project_identifier
## 
## ℹ Use `spec()` to retrieve the full column specification for this data.
## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
```



|isInCluster |   n_occ|
|:-----------|-------:|
|false       | 2565401|
|true        |  288644|

<!-- GBIF total for comparison -->

<!-- # ```{r is in cluster gbif total, echo=FALSE,include=TRUE,results='asis'} -->
<!-- rgbif::occ_search(facet="isInCluster",limit=0)$facet$isInCluster %>%  -->
<!-- knitr::kable() -->
<!-- ``` -->

