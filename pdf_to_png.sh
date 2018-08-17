#!/bin/bash

# Usage : $0 [FILE.PDF|/path/to/FILE.PDF]
PDF=$1

# Replace ".pdf with "-slides.png"
SLIDES=${PDF/.pdf/-slides.png}

# Replace space with hyphens
SLIDES=${SLIDES// /-}

# Convert to lowercase
SLIDES=${SLIDES,,}

# Extract the basename from th path
SLIDES=$(basename $SLIDES)

# Convert the PDF into a series of images.
convert -density 300 "$PDF" -quality 100 $SLIEDES
