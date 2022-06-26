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

nb <- poly2nb(s, queen=FALSE) # using rooks case
lw <- nb2listw(nb, style="W") # convering neighborhood matrix to spatial weights matrix

loc_g <- localG(s$NUMPOINTS, lw)
pvals = pnorm(q = 2*abs(loc_g), lower.tail = FALSE)

pvals_bon = spdep::p.adjustSP(p = pvals, nb = nb, method = "bonferroni")

s$loc_g = loc_g
s$pval = pvals_bon

s_sig = s[s$pval<=0.05,]

tmap = tm_shape(shp = s) + tm_borders() + tm_shape(shp = s_sig) + tm_polygons(col = 'loc_g', title = c("Getis-Ord Gi")) + tm_layout(legend.outside = TRUE, legend.outside.position = "right", frame = FALSE)
tmap

# Bangalore venues
s <- st_read("/Users/simonem/Desktop/Thesis/Bangalore_Wards/venues.shp")

names(s)

nb <- poly2nb(s, queen=FALSE) # using rooks case
lw <- nb2listw(nb, style="W") # convering neighborhood matrix to spatial weights matrix

loc_g <- localG(s$NUMPOINTS, lw)
pvals = pnorm(q = 2*abs(loc_g), lower.tail = FALSE)

pvals_bon = spdep::p.adjustSP(p = pvals, nb = nb, method = "bonferroni")

s$loc_g = loc_g
s$pval = pvals_bon

s_sig = s[s$pval<=0.05,]

tmap = tm_shape(shp = s) + tm_borders() + tm_shape(shp = s_sig) + tm_polygons(col = 'loc_g', title = c("Getis-Ord Gi")) + tm_layout(legend.outside = TRUE, legend.outside.position = "right", frame = FALSE)
tmap

# Mumbai start-ups
s <- st_read("/Users/simonem/Desktop/Thesis/Mumbai_Wards/startups.shp")

names(s)

nb <- poly2nb(s, queen=FALSE) # using rooks case
lw <- nb2listw(nb, style="W") # convering neighborhood matrix to spatial weights matrix

loc_g <- localG(s$NUMPOINTS, lw)
pvals = pnorm(q = 2*abs(loc_g), lower.tail = FALSE)

pvals_bon = spdep::p.adjustSP(p = pvals, nb = nb, method = "bonferroni")

s$loc_g = loc_g
s$pval = pvals_bon

s_sig = s[s$pval<=0.05,]

tmap = tm_shape(shp = s) + tm_borders() + tm_shape(shp = s_sig) + tm_polygons(col = 'loc_g', title = c("Getis-Ord Gi")) + tm_layout(legend.outside = TRUE, legend.outside.position = "right", frame = FALSE)
tmap

# Mumbai venues
s <- st_read("/Users/simonem/Desktop/Thesis/Mumbai_Wards/venues.shp")

names(s)

nb <- poly2nb(s, queen=FALSE) # using rooks case
lw <- nb2listw(nb, style="W") # convering neighborhood matrix to spatial weights matrix

loc_g <- localG(s$NUMPOINTS, lw)
pvals = pnorm(q = 2*abs(loc_g), lower.tail = FALSE)

pvals_bon = spdep::p.adjustSP(p = pvals, nb = nb, method = "bonferroni")

s$loc_g = loc_g
s$pval = pvals_bon

s_sig = s[s$pval<=0.05,]

tmap = tm_shape(shp = s) + tm_borders() + tm_shape(shp = s_sig) + tm_polygons(col = 'loc_g', title = c("Getis-Ord Gi")) + tm_layout(legend.outside = TRUE, legend.outside.position = "right", frame = FALSE)
tmap

# Delhi start-ups
s <- st_read("/Users/simonem/Desktop/Thesis/Delhi_Wards/startups.shp")

names(s)

nb <- poly2nb(s, queen=FALSE) # using rooks case
lw <- nb2listw(nb, style="W") # convering neighborhood matrix to spatial weights matrix

loc_g <- localG(s$NUMPOINTS, lw)
pvals = pnorm(q = 2*abs(loc_g), lower.tail = FALSE)

pvals_bon = spdep::p.adjustSP(p = pvals, nb = nb, method = "bonferroni")

s$loc_g = loc_g
s$pval = pvals_bon

s_sig = s[s$pval<=0.05,]

tmap = tm_shape(shp = s) + tm_borders() + tm_shape(shp = s_sig) + tm_polygons(col = 'loc_g', title = c("Getis-Ord Gi")) + tm_layout(legend.outside = TRUE, legend.outside.position = "right", frame = FALSE)
tmap

# Delhi venues
s <- st_read("/Users/simonem/Desktop/Thesis/Delhi_Wards/venues.shp")

names(s)

nb <- poly2nb(s, queen=FALSE) # using rooks case
lw <- nb2listw(nb, style="W") # convering neighborhood matrix to spatial weights matrix

loc_g <- localG(s$NUMPOINTS, lw)
pvals = pnorm(q = 2*abs(loc_g), lower.tail = FALSE)

pvals_bon = spdep::p.adjustSP(p = pvals, nb = nb, method = "bonferroni")

s$loc_g = loc_g
s$pval = pvals_bon

s_sig = s[s$pval<=0.05,]

tmap = tm_shape(shp = s) + tm_borders() + tm_shape(shp = s_sig) + tm_polygons(col = 'loc_g', title = c("Getis-Ord Gi")) + tm_layout(legend.outside = TRUE, legend.outside.position = "right", frame = FALSE)
tmap

# Chennai start-ups
s <- st_read("/Users/simonem/Desktop/Thesis/Chennai_Wards/startups.shp")

names(s)

nb <- poly2nb(s, queen=FALSE) # using rooks case
lw <- nb2listw(nb, style="W") # convering neighborhood matrix to spatial weights matrix

loc_g <- localG(s$NUMPOINTS, lw)
pvals = pnorm(q = 2*abs(loc_g), lower.tail = FALSE)

pvals_bon = spdep::p.adjustSP(p = pvals, nb = nb, method = "bonferroni")

s$loc_g = loc_g
s$pval = pvals_bon

s_sig = s[s$pval<=0.05,]

tmap = tm_shape(shp = s) + tm_borders() + tm_shape(shp = s_sig) + tm_polygons(col = 'loc_g', title = c("Getis-Ord Gi")) + tm_layout(legend.outside = TRUE, legend.outside.position = "right", frame = FALSE)
tmap

# Chennai venues
s <- st_read("/Users/simonem/Desktop/Thesis/Chennai_Wards/venues.shp")

names(s)

nb <- poly2nb(s, queen=FALSE) # using rooks case
lw <- nb2listw(nb, style="W") # convering neighborhood matrix to spatial weights matrix

loc_g <- localG(s$NUMPOINTS, lw)
pvals = pnorm(q = 2*abs(loc_g), lower.tail = FALSE)

pvals_bon = spdep::p.adjustSP(p = pvals, nb = nb, method = "bonferroni")

s$loc_g = loc_g
s$pval = pvals_bon

s_sig = s[s$pval<=0.05,]

tmap = tm_shape(shp = s) + tm_borders() + tm_shape(shp = s_sig) + tm_polygons(col = 'loc_g', title = c("Getis-Ord Gi")) + tm_layout(legend.outside = TRUE, legend.outside.position = "right", frame = FALSE)
tmap
