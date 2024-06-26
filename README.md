## depobio stats

last updated 2024-07-01.

GBIF France publishes a large group of data from a nationally mandated repository for EIA data called **depobio**.

The relevant datasets are all tagged with the keyword "depobio".

<https://www.gbif.org/dataset/search?offset=4000&q=depobio&type=OCCURRENCE>





## total occurrence counts



The total number of occurrence records published under tkhe keyword "depobio":

3820518

## percent total by year (eventDate)





![](https://raw.githubusercontent.com/jhnwllr/depobio-stats/main/plots/occ_by_year.png)

See exports folder for tsv file of counts.

## number of unique species



Total number of unique species for datasets published under the keyword "depobio":

12516

## iucn counts




|iucn_cat                        |   n_occ| n_species|
|:-------------------------------|-------:|---------:|
|LEAST_CONCERN                   | 2091517|      2950|
|NOT_EVALUATED                   |  524894|      9130|
|NEAR_THREATENED                 |   58399|       132|
|VULNERABLE                      |   10424|       113|
|DATA_DEFICIENT                  |    3615|        78|
|ENDANGERED                      |    1852|        49|
|CRITICALLY_ENDANGERED           |    1565|        27|
|Error : Status: 204 - not found |      94|        36|
|EXTINCT                         |       1|         1|

## unique species by higher level taxa from schema used in country report




|group         |   n_occ| n_species|
|:-------------|-------:|---------:|
|Mammals       | 1964328|       211|
|Birds         |  320591|       771|
|other         |  291009|      6576|
|Insects       |   59775|      3146|
|Bony fish     |   14488|       363|
|Amphibians    |   11946|        72|
|Reptiles      |   10158|       116|
|Arachnids     |    9409|       404|
|Molluscs      |    5785|       355|
|Ferns         |    2717|       174|
|Mosses        |    1323|       234|
|Basidiomycota |     625|        23|
|Sac fungi     |     207|        71|


|kingdom   |   n_occ| n_species|
|:---------|-------:|---------:|
|Animalia  | 2432421|      6342|
|Plantae   |  258804|      5956|
|Fungi     |     832|        94|
|Chromista |     298|       120|
|Bacteria  |       5|         3|
|Protozoa  |       1|         1|

## total unique literature citations



The total number of literature citations for datasets using the keyword "depobio":

306

See full export of this data in `exports/lit_data.tsv`.

## isInCluster

Are records from depobio possible duplicates of other records in GBIF?


```
## Rows: 5763 Columns: 17
## ── Column specification ────────────────────────────────────────────────────────
## Delimiter: "\t"
## chr (12): dataset_key, title, doi, license, type, hosting_organization_key, ...
## dbl  (2): occurrence_records_count, name_usages_count
## lgl  (3): sub_type, network_keys, project_identifier
## 
## ℹ Use `spec()` to retrieve the full column specification for this data.
## ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
```



|isInCluster |   n_occ|
|:-----------|-------:|
|false       | 3598852|
|true        |  219650|

<!-- GBIF total for comparison -->

<!-- # ```{r is in cluster gbif total, echo=FALSE,include=TRUE,results='asis'} -->

<!-- rgbif::occ_search(facet="isInCluster",limit=0)$facet$isInCluster %>%  -->

<!-- knitr::kable() -->

<!-- ``` -->
