
# Project 2 - Netflix Movies and their Viewer Ratings
***
## Group 7
+ Nathan Johnson
+ Yameena Khan
+ Ben Johnson
***
## **Project Overview**
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

+ data_extraction.ipynb
    + This jupyter notebook is the main notebook that performs the ETL on the datasets. This also contains the Technical Report
+ OMDB_API_data_extraction.ipynb
    + Jupyter Notebook contains the code to request data from the OMDB API and generate a .csv to be extracted into the above notebook.
+ netflix_titles.csv
    + This is one of the two datasets found in from the Kaggle link in the Links/References section.
+ omdb_data.csv
    + This is the dataset generated from the API request from the OMDB API servers.
+ project_2_queries.sql
    + This contains the SQL code that was used in PostgreSQL to create tables in the etlproject_db database within PostgreSQL. The code also is used to verify that the tables can be joined and used for future analysis.

***
## Instructions
  
1. **Extraction**
	1. Open your Jupyter Notebook.
    2. First, import dependencies and run.
    3. Use Pandas to read in the `netflix_shows.csv`  dataset into a dataframe.
    4. A `omdb_data.csv` was created already from an API request, so use Pandas to read in this second dataset into a dataframe.
    5. Make sure to use the `df.head()` to verify contents of the datasets.
 
2. **Transformation**
	1.  For your first dataframe (netflix) from step 1.3 above transform the dataset to select the appropriate columns including, `show_id, type, title, rating, date_added and duration` .
	2. Rename the columns as follows:
		+ change `show_id` column name to `id`
		+ change `date_added` column name to `date_added_netflix` 
		+ keep the rest of the column names as is
	3. For the second dataframe (omdb) created in step 1.4 above  transform the dataset to select the appropriate columns including, `Title, Released, imdbRating, BoxOffice, Metascore` .
	4. This dataframe will require a column that can act as a primary key. Use the following commands to create a column that will function as the primary key column.
		+ `df.index += 1` 
		+ In the next notebook cell use `df = df.reset_index()`
		+ The above two commands will essentially take the original index and add 1 to each value to make it a primary key that starts with `1` instead of `0` in the first row.
	5. Rename the columns as follows:
		+ change `index` column name to `id` - note that the index column name will be created when performing the commands in step 2.4 above
		+ change `Title` column name to `title`
		+ change `Released` column name to `release_date`
		+ change `imdbRating` column name to `imdb_rating`
		+ change `Metascore` column name to `meta_score`
		+ change `BoxOffice` column name to `box_office`
	6. The final transformation step will to be to fill in all of the na cell entries with a Numpy NaN or Null value. This should be performed on the `imdb_rating`, `box_office`, and `meta_score` columns.
3. **Loading**
	1. 