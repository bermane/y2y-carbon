# Quantifying Carbon Benefits across the Yellowstone to Yukon Region

## Introduction

This repository contains all code used in the carbon benefits analysis from Nov 2024 - April 2025. I completed some data retrieval and pre-processing on a local machine, but uploaded all relevant data inputs to Google Earth Engine before running the analysis. I ran the analysis in Google Earth Engine via the python API and jupyter notebooks. 

I split the analysis into two parts:

0. Pre-processing
1. Quantifying carbon stocks and forest carbon sequestration
2. Quantifying manageable, vulnerable, and irrecoverable carbon

This file serves to describe the structure of this github repository. Details of the analysis itself are in a forthcoming journal article.

## 0. Preprocessing

### mask_carbon_stocks.ipynb

Many of the data inputs used in this analysis were either available directly on GEE or were downloaded directly from the data provider and uploaded to GEE without any further manipulation. I downloaded the soil organic carbon stock layers from open land map and used this code to sum together the layers corresponding to different soil depth intervals. I output layers representing soil carbon from 0-30cm and 0-100cm depth. I initially used the code to clip all of the raster inputs to the Y2Y extent but in the end I uploaded the raw layers to GEE and let GEE handle clipping, reprojecting, masking, etc.

### clean_protected_areas.R

I acquired protected area data from protectedplanet.net. I downloaded the vector file package that included both WDPA and WDOECM data. These data contain many overlapping polygons and therefore need to be pre-processed into a usable polygon layer. This code utilizes the R package 'wdpar' to transform the raw protected areas data into a vector layer that is suitable for analysis.

## 1. Quantifying carbon stocks and forest carbon sequestration

### calculate_carbon_stock_gee.ipynb

This code calculates plant biomass and soil carbon stocks across Y2Y. It first builds plant carbon and soil carbon layers, and then executes zonal statistics across various delineations of Y2Y. I also compared Y2Y carbon stocks to carbon stocks across Canada.

### calculate_carbon_sequestration.ipynb

This code was adapted from the Global Forest Watch Forest Carbon Emissions, Removals, and Net Flux Zonal Statistics [GEE code](https://code.earthengine.google.com/dd33041a9a8d729da18484a7c378f846). It outputs annual average forest carbon emissions, removals, and net flux for years 2001-2023. It also outputs annual forest carbon emissions, but users need to exercise caution in comparing annual values, as described in the Global Forest Watch documentation.

We output zonal statistics across Y2Y and thus to calculate statistics for a new region one needs to upload polygons to GEE as a feature collection and run the function on that feature collection.

### carbon sequestration_plots.ipynb

This code takes carbon emission and sequestration data across Y2Y and outputs a bar plot. Due to differences in data quality and processing methods throughout time, I only included years 2015-2023 for the annual comparison.

## 2. Quantifying manageable, vulnerable, and irrecoverable carbon

### calculate_irrecoverable_carbon.ipynb

This code calculates manageable, vulnerable, and irrecoverable carbon across Y2Y. It outputs final raster layers as well as zonal statistics across Y2Y.  