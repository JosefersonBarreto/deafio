


library(dplyr)

library(readxl)

library(ggplot2)


estados<-read.csv("C:/Users/josef/Documents/josefersonbarreto/desafio/estados.csv",encoding = "UTF-8")


??maps
map
library(ggplot2)
library(tibble)
library(sf)
#> Linking to GEOS 3.6.1, GDAL 2.1.3, PROJ 4.9.3
library(maps)
us <- st_as_sf(map("state", plot = FALSE, fill = TRUE))
us_tbl <- as_tibble(us)
st_as_sf(map("south_america", plot = FALSE, fill = TRUE))
ggplot()+geom_sf(data = BR)

??map()
t<-st_as_sf(map('world', resolution=1, fill = T, ))


 BR<- t %>% filter(ID =="Brazil")

 
 map("China", plot = FALSE, fill = TRUE)
 
 
 
# ============================================================================
meu<-aggregate(dados["numeroacidente"], by=list(estado=dados$uf), FUN=sum)

sudeste<-estados %>% filter(regiao == "Sudeste") 
sudeste %>% arrange(sudeste$nome)
colnames(sudeste)[2]<-"estado"
colnames(estados)[2]<-"estado"
fi<-left_join(estados,meu,by="estado")




fig <- plot_geo(fi, locationmode = 'south america', sizes = c(1, 250))
fig <- fig %>% add_markers(
  x = fi$longitude, y = ~fi$latitude, color = ~q, hoverinfo = "text",
  text = ~paste(fi$nome, "<br />")
)
fig <- fig %>% layout(title = '2014 US city populations<br>(Click legend to toggle)', geo = g)
fig
