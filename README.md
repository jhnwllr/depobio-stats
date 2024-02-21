## depobio stats

last updated 2024-02-21.

GBIF France publishes a large group of data from a nationally mandated repository for EIA data called **depobio**.

The relevant datasets are all tagged with the keyword "depobio".

<https://www.gbif.org/dataset/search?offset=4000&q=depobio&type=OCCURRENCE>





## total occurrence counts



The total number of occurrence records published under tkhe keyword "depobio":

16448

## percent total by year (eventDate)





![](https://raw.githubusercontent.com/jhnwllr/depobio-stats/main/plots/occ_by_year.png)

See exports folder for tsv file of counts. 

## number of unique species



Total number of unique species for datasets published under the keyword "depobio":

467

## iucn counts




|iucn_cat        | n_occ| n_species|
|:---------------|-----:|---------:|
|LEAST_CONCERN   | 11682|       214|
|NOT_EVALUATED   |  2326|       235|
|NEAR_THREATENED |   350|        11|
|VULNERABLE      |    10|         3|
|DATA_DEFICIENT  |     9|         4|

## unique species by higher level taxa from schema used in country report




|group      | n_occ| n_species|
|:----------|-----:|---------:|
|Mammals    | 13357|        29|
|Birds      |   458|       109|
|other      |   403|       238|
|Insects    |   121|        77|
|Amphibians |    25|         9|
|Reptiles   |    12|         4|
|Ferns      |     1|         1|



|kingdom  | n_occ| n_species|
|:--------|-----:|---------:|
|Animalia | 13973|       228|
|Plantae  |   404|       239|

## total unique literature citations



The total number of literature citations for datasets using the keyword "depobio":

30

See full export of this data in `exports/lit_data.tsv`.

## isInCluster

Are records from depobio possible duplicates of other records in GBIF?


```
## Rows: 4402 Columns: 17
## ── Column specification ────────────────────────────────────────────────────────
## Delimiter: "\t"
## chr (12): dataset_key, title, doi, license, type, hosting_organization_key, ...
## dbl  (2): occurrence_records_count, name_usages_count
## lgl  (3): sub_type, network_keys, project_identifier
## 
## ℹ Use `spec()` to retrieve the full column specification for this data.
## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
```



|isInCluster | n_occ|
|:-----------|-----:|
|false       | 16444|
|true        |     4|

<!-- GBIF total for comparison -->

<!-- # ```{r is in cluster gbif total, echo=FALSE,include=TRUE,results='asis'} -->
<!-- rgbif::occ_search(facet="isInCluster",limit=0)$facet$isInCluster %>%  -->
<!-- knitr::kable() -->
<!-- ``` -->

