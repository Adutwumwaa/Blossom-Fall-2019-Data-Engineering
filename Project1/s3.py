Python 3.7.4 (tags/v3.7.4:e09359112e, Jul  8 2019, 20:34:20) [MSC v.1916 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license()" for more information.


import boto3
#Initialize s3 resource
s3_client = boto3.client('s3', region_name = 'eu-west-1')

#Download file from s3
s3_client.download_file('blossom-data-engs','free-7-million-company-dataset.zip','free-7-million-company-dataset.zip')

import pandas as pd
Load dataset into a Dataframe
df=pd.read_csv("free-7-million-company-dataset.zip",compression="zip")

#Filter out companies without domian
df_2=df.dropna(subset=['domain'])

#Writing resulting Dataframe(df_2) to JSON
df_2.to_json('free-7-million-compaany-dataset.json',compression='gzip')

#Writing resultin Dataframe(df_2) to parquet
df_2.to_parquet('free-7-million-company-dataset.parquet',engine='auto')

#Uploading files to s3 bucket
s3_client.upload_file("free-7-million-compaany-dataset.json","blossom-data-eng-emily","blossom-data-eng-emily/project 1/free-7-million-company-dataset.json")
s3_client.upload_file("free-7-million-company-dataset.parquet","blossom-data-eng-emily","blossom-data-eng-emily/project 1/free-7-million-company-dataset.parquet")
