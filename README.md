# ETL_SQL_Clustering
This project is designed to perform customer segmentation for an online shop, extracting database stored in a PostgreSQL and transforming in Jupyter Notebook for analysis and clustering using the RFM (Recency, Frequency, Monetary) model and loading the result RFM table back to the database server.
 The goal of this project is to identify distinct customer segments, which can be used to inform targeted marketing strategies and improve customer experience.

## Key Concepts

RFM Model (Recency, Frequency, Monetary):

Recency (R): How recently a customer has made a purchase.
Frequency (F): How often a customer makes a purchase.
Monetary (M): How much money a customer spends.
These three metrics are used to segment customers into different groups based on their behavior, helping businesses target specific customer segments more effectively.

K-Means Clustering: The clustering technique used in this project is K-Means, a popular machine learning algorithm for dividing a dataset into groups (clusters) where each group shares similar characteristics based on the RFM scores.

PostgreSQL: The customer data, including transaction history, is stored in a PostgreSQL database. The project involves connecting to the database to extract relevant data for the RFM analysis.

Jupyter Notebook: The analysis is performed using a Jupyter Notebook, where SQL queries are used to extract the data from the PostgreSQL database, and scikit-learn’s KMeans algorithm is used for clustering.


### Install Required Libraries: 
Ensure that you have the following Python libraries installed:

pandas

numpy

scikit-learn

psycopg2

sqlalchemy

matplotlib

seaborn

You can install them using pip:

## Project Files
### 1- RFM-ClusteringElbow.ipynb: 
The Jupyter Notebook containing all the analysis steps, including data extraction, RFM calculation, K-Means clustering, and visualization.
### 2- RFM_CLUSTERING_QUERIES.sql: 
The SQL script to create and populate the necessary tables in PostgreSQL, which store the customer data and transaction details.
