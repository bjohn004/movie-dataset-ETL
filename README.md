
# Project 2 - Netflix Movies and their Viewer Ratings
***
## Group 7
+ Nathan Johnson
+ Yameena Khan
+ Ben Johnson
***
## Project Overview
The goal of this project is to utilzie a dataset from kaggle.com which consists of 8000 plus Netflix Movies and TV shows, and combine those movies with a database generated from API requests from ombd.com. The combined table shows all of the Netflix Movies and TV shows along with the omdb data which includes things like IMDB rating, Metascore rating, and Boxoffice totals. There will be other useful columns within the combined table like movie rating (PG, PG-13, etc), that could be used for further analysis.
***
## Links/References
1. **[https://www.kaggle.com/datasets/shivamb/netflix-shows](https://www.kaggle.com/datasets/shivamb/netflix-shows)**
+ Note that this link provides a 3.4 mb csv
2. **[https://www.omdbapi.com](https://www.omdbapi.com)**
+ Note that this website is used by utilizing API requests to create a dataset. 
***
## Tools
1. Jupyter Notebooks/Pandas
2. PostgreSQL
***
## Repo Contents

+ ``ETL_Process_Technical_Report.ipynb`` 
	+ This jupyter notebook is the main notebook that performs the ETL on the datasets. This also contains the Technical Report.
+ ``OMDB_API_data_extraction.ipynb`` 
	+ Jupyter Notebook contains the code to request data from the OMDB API and generate a .csv to be extracted into the above notebook. 
+ ``netflix_titles.csv``
	+ This is one of the two datasets found in from the Kaggle link in the Links/References section.
+ ``omdb_data.csv``
	+ This is the dataset generated from the API request from the OMDB API servers. 
	+ Note that the API requested sometimes resulted in null values such as the Box Office or Metascore. This was a result of the API not having that information or that information not being recorded.
+ ``project_2_queries.sql`` 
	+ This contains the SQL code that was used in PostgreSQL to create tables in the etlproject_db database within PostgreSQL. The code also is used to verify that the tables can be joined and used for future analysis.
***
## Instructions

1. Clone the repo to your machine
2. Open the pgAdmin app on your machine
3. Create a new database called ``etlproject_db``
4. Open the query tool within the ``etlproject_db``
5. Create tables within the database
6. Open a GitBash/Terminal at your local Repo
7. Type ``Source activate PythonData38`` and then hit ``ENTER``
8. Launch Jupyter Notebooks in Google Chrome
9. Open the ``ETL_Process_Technical_Report.ipynb``
10. Run all the cells peforming the ETL process
11. Once loaded into database perform joins within PostgreSQL

***


