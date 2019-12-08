# Blossom-Fall-2019-Data-Engineering
This repository contains all project work pertaining to the Data Engineering Program at Blossom Academy

# Project 1: Simple ETL pipleine 
Downloaded data from s3 bucket.
Read CSV file into a pandas dataframe
Filtered column of interest
Converted resulting file to JSON and Parquet file formats.
Uploaded the files to a specified s3 bucket on AWS.
### Configuration
This project used the following packages:

``` boto3 ( pip install boto3) ```
``` fastparquet (pip install fastparquet) ```
```pyarrow (pip install pyarrow) ```

# Project 2 : Batch Processing For Data Mining.
This project investigates top keywords companies within various cities in the USA want to see in the resumes of data science candidates. We used PySpark as our data processing frame work in this project. The project demonstrated the following:

Loading data from an s3 bucket,reading and joining datasets with pyspark.
Writing a function to generate n-grams (unigram and bigram) from a given text description
Writing a function to check frequency count of a given ngram in a column.
Using matplotlib for simple visualization to compare datascience jobs in two cities
Configuration
This project used PySpark packages which is found in requirements2.txt

Install packages in requirements2.txt file ( pip install -r requirements2.txt)
Load the data scientist job market dataset and us stocks datasets from s3 bucket onto your computer.

# Project 3: Basic End-To-End Extract Transform Load (ETL) Pipeline
This project sought to implement a basic Extract Load Transform (ETL) pipeline using Spark and PostgreSQL.
Some data exploration and manipulation was also performed on the resultimg table that was loaded from Spark to Postgres

### Congfiguration
Install Postgres EnterpiseDB
Install Postgres Client DBeaver
Connect to Postgres using the CLI (psql --host locahost --username postgres --password) -Create a copy of the Jars folder on your computer.


# Project 4: Scraping Real Estates Listings From Meqasa
This project sought to implement the concept of web scraping which is mining data from a specific source (website) using BeautifulSoup etc.The data that was extracted was transformed and stored into a csv file.

### Configuration
Install Requests (pip install requests )
Install BeautifulSoup ( pip install beautifulsoup4)
Install LXML (pip install lxml)

# Project 5: Stream Processing from loop Ghana
This project sought to scrape data from loop ghana(a real estate website) and store into a csv file in real time. Anytime listings are updated,this information will be extracted and stored into the csv file created. THe data being scrapped was also enriched. Kinesis was the main package used for this project.

