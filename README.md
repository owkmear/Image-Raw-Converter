# Image Raw Converter

## Prerequisites

This is a `Bash` script to converting raw photos from `.cr2` format to `.jpeg` format without compression.

## Requirements

* `Linux` operation system
* `dcraw` program to read raw image format
* `imagemagick` used for manipulating images
* `thumbgen` to generate `thumbnails`

## Installation

* `sudo apt-get update`
* `apt-get dcraw`
* `apt-get install imagemagick`
* `pip install thumbgen`

## Run

Copy `.cr2` files to `/raw` folder and run script `bash convert.sh`. All processed files are converted to a `processed` folder and thumbnails are created
