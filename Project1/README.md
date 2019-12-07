Simple ETL Pipeline
Downloaded data from s3 bucket. Read CSV file into a pandas dataframe, filtered column of interest and converted resulting file to JSON and Parquet file formats.The files were then loaded to a specified s3 bucket on AWS.

Configuration
This project used the following packages:

boto3 ( pip install boto3) 
fastparquet (pip install fastparquet)
pyarrow (pip install pyarrow)
