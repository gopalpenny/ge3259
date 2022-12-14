load("~/Downloads/GLUED_Institutional.RData")
library(dplyr)
library(tidyverse)


unique(table$country)


unis <- table %>% 
  dplyr::select(country, region, iau_id, eng_name, orig_name, foundedyr, latitude, longitude) %>%
  distinct() %>% 
  # filter(!is.na(eng_name) | !is.na(orig_name)) %>%
  mutate(lat = as.numeric(latitude),
         lon = as.numeric(longitude)) %>%
  arrange(desc(foundedyr)) %>%
  mutate(foundedyr = ifelse(foundedyr < 1900, 1900, foundedyr))
ggplot(unis) + # %>%filter(grepl("(East|South) Asia", region), lon > 0, lat > 0)) + 
  geom_point(aes(lon, lat, color = foundedyr), alpha = 0.1, size = 1.5) + 
  scale_color_gradientn(colors= rev(RColorBrewer::brewer.pal(n = 8, 'YlOrRd'))) +
  coord_equal()


unis %>% arrange(foundedyr) %>% filter(grepl("(East|South) Asia", region), lon> 0) %>% pull(country) %>% unique()
