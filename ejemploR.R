library(magrittr)
library(tidyverse)


readr_desc = available.packages() %>%
    as_tibble() %>%
    filter()

dependencies_list <- tools::package_dependencies("kmeans",
                                                 which = c("Depends", "Imports", "LinkingTo"),
                                                 recursive = TRUE) %>%
    unlist() %>%
    unname()



depends_table <- readr_desc %>%
    filter(Package %in% dependencies_list)

tools::get_r_ver("readr")
