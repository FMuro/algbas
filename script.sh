#!/bin/bash

# build custom pictures
cd pics
./script.sh
cd ..

# build site
hugo

# build PDF
cd hugotopdf
./script.sh
cd ..
