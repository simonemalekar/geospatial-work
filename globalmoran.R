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

nb <- poly2nb(s, queen=TRUE)
lw <- nb2listw(nb, style="W", zero.policy=TRUE)
MC<- moran.mc(s$NUMPOINTS, lw, nsim=999, alternative="greater")
MC

# Bangalore venues

s <- st_read("/Users/simonem/Desktop/Thesis/Bangalore_Wards/venues.shp")

names(s)

hist(s$NUMPOINTS, main=NULL)
boxplot(s$NUMPOINTS, horizontal = TRUE)

nb <- poly2nb(s, queen=TRUE)
lw <- nb2listw(nb, style="W", zero.policy=TRUE)
I <- moran(s$NUMPOINTS, lw, length(nb), Szero(lw))[1]
I

MC<- moran.mc(s$NUMPOINTS, lw, nsim=999, alternative="greater")
MC

# Mumbai startups
s <- st_read("/Users/simonem/Desktop/Thesis/Mumbai_Wards/startups.shp")

names(s)

hist(s$NUMPOINTS, main=NULL)
boxplot(s$NUMPOINTS, horizontal = TRUE)

nb <- poly2nb(s, queen=TRUE)
lw <- nb2listw(nb, style="W", zero.policy=TRUE)
I <- moran(s$NUMPOINTS, lw, length(nb), Szero(lw))[1]
I

MC<- moran.mc(s$NUMPOINTS, lw, nsim=999, alternative="greater")
MC

# Mumbai venues
s <- st_read("/Users/simonem/Desktop/Thesis/Mumbai_Wards/venues.shp")

names(s)

hist(s$NUMPOINTS, main=NULL)
boxplot(s$NUMPOINTS, horizontal = TRUE)

nb <- poly2nb(s, queen=TRUE)
lw <- nb2listw(nb, style="W", zero.policy=TRUE)
I <- moran(s$NUMPOINTS, lw, length(nb), Szero(lw))[1]
I

MC<- moran.mc(s$NUMPOINTS, lw, nsim=999, alternative="greater")
MC

# delhi startups

s <- st_read("/Users/simonem/Desktop/Thesis/Delhi_Wards/startups.shp")

names(s)

hist(s$NUMPOINTS, main=NULL)
boxplot(s$NUMPOINTS, horizontal = TRUE)

nb <- poly2nb(s, queen=TRUE)
lw <- nb2listw(nb, style="W", zero.policy=TRUE)
I <- moran(s$NUMPOINTS, lw, length(nb), Szero(lw))[1]
I

MC<- moran.mc(s$NUMPOINTS, lw, nsim=999, alternative="greater")
MC

# delhi venues 
s <- st_read("Shapefiles and QGIS/Delhi_Wards/venues.shp")

names(s)

hist(s$NUMPOINTS, main=NULL)
boxplot(s$NUMPOINTS, horizontal = TRUE)

nb <- poly2nb(s, queen=TRUE)
lw <- nb2listw(nb, style="W", zero.policy=TRUE)
I <- moran(s$NUMPOINTS, lw, length(nb), Szero(lw))[1]
I

MC<- moran.mc(s$NUMPOINTS, lw, nsim=999, alternative="greater")

MC

# chennai startups
s <- st_read("/Users/simonem/Desktop/Thesis/Chennai_Wards/startups.shp")

names(s)

hist(s$NUMPOINTS, main=NULL)
boxplot(s$NUMPOINTS, horizontal = TRUE)

nb <- poly2nb(s, queen=TRUE)
lw <- nb2listw(nb, style="W", zero.policy=TRUE)
I <- moran(s$NUMPOINTS, lw, length(nb), Szero(lw))[1]
I

MC<- moran.mc(s$NUMPOINTS, lw, nsim=999, alternative="greater")
MC


#chennai venues

s <- st_read("/Users/simonem/Desktop/Thesis/Chennai_Wards/venues.shp")

names(s)

hist(s$NUMPOINTS, main=NULL)
boxplot(s$NUMPOINTS, horizontal = TRUE)

nb <- poly2nb(s, queen=TRUE)
lw <- nb2listw(nb, style="W", zero.policy=TRUE)
I <- moran(s$NUMPOINTS, lw, length(nb), Szero(lw))[1]
I

MC<- moran.mc(s$NUMPOINTS, lw, nsim=999, alternative="greater")
MC


