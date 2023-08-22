#Deriving the latest base image
FROM jupyter/base-notebook:latest

#we add LABEL to add more informations, here we add an maintainer label
LABEL Maintainer="anthony.ait"

#Define virtual working directory
WORKDIR /usr/app/src

#specify library not in basic python
# Copy requirements file
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

#Copy notebook and data, font folder
COPY CNN_without_weekend.ipynb .
COPY data ./data/
COPY font ./font/
