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

The majority of data inputs used in this analysis were either available directly on GEE or were downloaded directly from the data provider and uploaded to GEE without any further manipulation. I downloaded the soil organic carbon stock layers from open land map and used this code to sum together the layers corresponding to different soil depth intervals to output layers representing soil carbon from 0-30cm and 0-100cm depth. I initially used the code to clip all of the raster inputs to the Y2Y extent but in the end I uploaded the raw layers to GEE and let GEE handle clipping, reprojecting, masking, etc.

### clean_protected_areas.R

## 1. Quantifying carbon stocks and forest carbon sequestration

### calculate_carbon_stock_gee.ipynb

### calculate_carbon_sequestration.ipynb

### carbon sequestration_plots.ipynb

## 2. Quantifying manageable, vulnerable, and irrecoverable carbon

### calculate_irrecoverable_carbon.ipynb