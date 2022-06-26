library(sf)
library(spdep)
library(tmap)
library(tidyverse)
library(sp)
library(rgdal)
library(rgeos)
library(tmaptools)
library(spgwr)
library(grid)
library(gridExtra)

# Bangalore start-ups
s <- st_read("/Users/simonem/Desktop/Thesis/Bangalore_Wards/startups.shp")

names(s)

nb <- poly2nb(s, queen=FALSE )
lw <- nb2listw(nb, style="W")

local <- localmoran(x = s$NUMPOINTS, listw = lw) # p.adjust.methods = "bonferroni")
loc_df = data.frame(local)

loc_df

s$loc_mi = loc_df$Ii
s$loc_mi_pval = loc_df$Pr.z....E.Ii..

head(s)

s_sig = s[s$loc_mi_pval <= 0.05,]

tmap = tm_shape(shp = s) + tm_borders() + tm_shape(shp = s_sig) + tm_polygons( col = 'loc_mi', title = c("Moran's I")) + tm_layout(legend.outside = TRUE, legend.outside.position = "right", frame = FALSE)
tmap

# Bangalore venues
s <- st_read("/Users/simonem/Desktop/Thesis/Bangalore_Wards/venues.shp")

names(s)

nb <- poly2nb(s, queen=FALSE )
lw <- nb2listw(nb, style="W")

local <- localmoran(x = s$NUMPOINTS, listw = lw) # p.adjust.methods = "bonferroni")
loc_df = data.frame(local)

loc_df

s$loc_mi = loc_df$Ii
s$loc_mi_pval = loc_df$Pr.z....E.Ii..

head(s)

s_sig = s[s$loc_mi_pval <= 0.05,]

tmap = tm_shape(shp = s) + tm_borders() + tm_shape(shp = s_sig) + tm_polygons( col = 'loc_mi', title = c("Moran's I")) + tm_layout(legend.outside = TRUE, legend.outside.position = "right", frame = FALSE)
tmap

# Mumbai start-ups
s <- st_read("/Users/simonem/Desktop/Thesis/Mumbai_Wards/startups.shp")

names(s)

nb <- poly2nb(s, queen=FALSE )
lw <- nb2listw(nb, style="W")

local <- localmoran(x = s$NUMPOINTS, listw = lw) # p.adjust.methods = "bonferroni")
loc_df = data.frame(local)

loc_df

s$loc_mi = loc_df$Ii
s$loc_mi_pval = loc_df$Pr.z....E.Ii..

head(s)

s_sig = s[s$loc_mi_pval <= 0.05,]


#tmap = tm_shape(shp = s) + tm_borders() + tm_shape(shp = s_sig) + tm_polygons(col = 'loc_mi')
tmap = tm_shape(shp = s) + tm_borders() + tm_shape(shp = s_sig) + tm_polygons( col = 'loc_mi', title = c("Moran's I")) + tm_layout(legend.outside = TRUE, legend.outside.position = "right", frame = FALSE)
tmap

# Mumbai venues
s <- st_read("/Users/simonem/Desktop/Thesis/Mumbai_Wards/venues.shp")

names(s)

nb <- poly2nb(s, queen=FALSE )
lw <- nb2listw(nb, style="W")

local <- localmoran(x = s$NUMPOINTS, listw = lw) # p.adjust.methods = "bonferroni")
loc_df = data.frame(local)

loc_df

s$loc_mi = loc_df$Ii
s$loc_mi_pval = loc_df$Pr.z....E.Ii..

head(s)

s_sig = s[s$loc_mi_pval <= 0.05,]


#tmap = tm_shape(shp = s) + tm_borders() + tm_shape(shp = s_sig) + tm_polygons(col = 'loc_mi')
tmap = tm_shape(shp = s) + tm_borders() + tm_shape(shp = s_sig) + tm_polygons( col = 'loc_mi', title = c("Moran's I")) + tm_layout(legend.outside = TRUE, legend.outside.position = "right", frame = FALSE)
tmap

# Delhi start-ups
s <- st_read("/Users/simonem/Desktop/Thesis/Delhi_Wards/startups.shp")

names(s)

nb <- poly2nb(s, queen=FALSE )
lw <- nb2listw(nb, style="W")

local <- localmoran(x = s$NUMPOINTS, listw = lw) # p.adjust.methods = "bonferroni")
loc_df = data.frame(local)

loc_df

s$loc_mi = loc_df$Ii
s$loc_mi_pval = loc_df$Pr.z....E.Ii..

head(s)

s_sig = s[s$loc_mi_pval <= 0.05,]


#tmap = tm_shape(shp = s) + tm_borders() + tm_shape(shp = s_sig) + tm_polygons(col = 'loc_mi')
tmap = tm_shape(shp = s) + tm_borders() + tm_shape(shp = s_sig) + tm_polygons( col = 'loc_mi', title = c("Moran's I")) + tm_layout(legend.outside = TRUE, legend.outside.position = "right", frame = FALSE)
tmap

# Delhi venues
s <- st_read("/Users/simonem/Desktop/Thesis/Delhi_Wards/venues.shp")

names(s)

nb <- poly2nb(s, queen=FALSE )
lw <- nb2listw(nb, style="W")

local <- localmoran(x = s$NUMPOINTS, listw = lw) # p.adjust.methods = "bonferroni")
loc_df = data.frame(local)

loc_df

s$loc_mi = loc_df$Ii
s$loc_mi_pval = loc_df$Pr.z....E.Ii..

head(s)

s_sig = s[s$loc_mi_pval <= 0.05,]


#tmap = tm_shape(shp = s) + tm_borders() + tm_shape(shp = s_sig) + tm_polygons(col = 'loc_mi')
tmap = tm_shape(shp = s) + tm_borders() + tm_shape(shp = s_sig) + tm_polygons( col = 'loc_mi', title = c("Moran's I")) + tm_layout(legend.outside = TRUE, legend.outside.position = "right", frame = FALSE)
tmap

# Chennai start-ups
s <- st_read("/Users/simonem/Desktop/Thesis/Chennai_Wards/startups.shp")

names(s)

nb <- poly2nb(s, queen=FALSE )
lw <- nb2listw(nb, style="W")

local <- localmoran(x = s$NUMPOINTS, listw = lw) # p.adjust.methods = "bonferroni")
loc_df = data.frame(local)

loc_df

s$loc_mi = loc_df$Ii
s$loc_mi_pval = loc_df$Pr.z....E.Ii..

head(s)

s_sig = s[s$loc_mi_pval <= 0.05,]


#tmap = tm_shape(shp = s) + tm_borders() + tm_shape(shp = s_sig) + tm_polygons(col = 'loc_mi')
tmap = tm_shape(shp = s) + tm_borders() + tm_shape(shp = s_sig) + tm_polygons( col = 'loc_mi', title = c("Moran's I")) + tm_layout(legend.outside = TRUE, legend.outside.position = "right", frame = FALSE)
tmap

# Chennai venues
s <- st_read("/Users/simonem/Desktop/Thesis/Chennai_Wards/venues.shp")

names(s)

nb <- poly2nb(s, queen=FALSE )
lw <- nb2listw(nb, style="W")

local <- localmoran(x = s$NUMPOINTS, listw = lw) # p.adjust.methods = "bonferroni")
loc_df = data.frame(local)

loc_df

s$loc_mi = loc_df$Ii
s$loc_mi_pval = loc_df$Pr.z....E.Ii..

head(s)

s_sig = s[s$loc_mi_pval <= 0.05,]


#tmap = tm_shape(shp = s) + tm_borders() + tm_shape(shp = s_sig) + tm_polygons(col = 'loc_mi')
tmap = tm_shape(shp = s) + tm_borders() + tm_shape(shp = s_sig) + tm_polygons( col = 'loc_mi', title = c("Moran's I")) + tm_layout(legend.outside = TRUE, legend.outside.position = "right", frame = FALSE)
tmap
