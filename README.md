## depobio stats

last updated 2024-03-01.

GBIF France publishes a large group of data from a nationally mandated repository for EIA data called **depobio**.

The relevant datasets are all tagged with the keyword "depobio".

<https://www.gbif.org/dataset/search?offset=4000&q=depobio&type=OCCURRENCE>


## total occurrence counts



The total number of occurrence records published under tkhe keyword "depobio":

2866573

## percent total by year (eventDate)





![](https://raw.githubusercontent.com/jhnwllr/depobio-stats/main/plots/occ_by_year.png)

See exports folder for tsv file of counts.

## number of unique species



Total number of unique species for datasets published under the keyword "depobio":

11313

## iucn counts




|iucn_cat                        |   n_occ| n_species|
|:-------------------------------|-------:|---------:|
|LEAST_CONCERN                   | 1637513|      2765|
|NOT_EVALUATED                   |  343038|      8165|
|NEAR_THREATENED                 |   46989|       117|
|VULNERABLE                      |    8745|        99|
|DATA_DEFICIENT                  |    2950|        72|
|CRITICALLY_ENDANGERED           |    1557|        26|
|ENDANGERED                      |    1366|        39|
|Error : Status: 204 - not found |      77|        29|
|EXTINCT                         |       1|         1|

## unique species by higher level taxa from schema used in country report




|group         |   n_occ| n_species|
|:-------------|-------:|---------:|
|Mammals       | 1501517|       202|
|Birds         |  275645|       728|
|other         |  181064|      6011|
|Insects       |   36124|      2694|
|Bony fish     |   13504|       358|
|Arachnids     |    9346|       393|
|Amphibians    |    8427|        71|
|Reptiles      |    7816|       101|
|Molluscs      |    5074|       315|
|Ferns         |    1783|       165|
|Mosses        |    1118|       185|
|Basidiomycota |     622|        20|
|Sac fungi     |     196|        70|


|kingdom   |   n_occ| n_species|
|:---------|-------:|---------:|
|Animalia  | 1890126|      5698|
|Plantae   |  151046|      5425|
|Fungi     |     818|        90|
|Chromista |     240|        96|
|Bacteria  |       5|         3|
|Protozoa  |       1|         1|

## total unique literature citations



The total number of literature citations for datasets using the keyword "depobio":

236

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



|isInCluster |   n_occ|
|:-----------|-------:|
|false       | 2645258|
|true        |  219650|

<!-- GBIF total for comparison -->

<!-- # ```{r is in cluster gbif total, echo=FALSE,include=TRUE,results='asis'} -->

<!-- rgbif::occ_search(facet="isInCluster",limit=0)$facet$isInCluster %>%  -->

<!-- knitr::kable() -->

<!-- ``` -->
