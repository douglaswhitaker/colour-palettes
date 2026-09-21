require("jsonlite")
require("dplyr")
require("magrittr")
#masder_colors <- jsonlite::fromJSON("masder.json")$colors
masder_colors <- jsonlite::fromJSON("~/Documents/repos/colour-palettes/palettes/masder.json")$colors
masder_scale7_names <- c("dark_red", "medium_red", "light_red", "regular_gray", "light_blue", "medium_blue", "dark_blue")
masder_scale7_hex <- 
  masder_colors %>% 
  filter(id %in% masder_scale7_names) %>% 
  select(hex) %>% 
  pull()

# equivalent to
#masder_scale7_hex <- 
  c("#B45138", "#EB6747", "#FFB9A7", "#BEBEBE", "#A7D1D9", "#74B3C1", "#2C8F9F")
  