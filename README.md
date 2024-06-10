# Crowdfunding_ETL
project 2 VU bootcamp - 

We Created an ETL pipeline using Python and Pandas to store and organize crowdfunding data. Regex methods and python dictionary methods were both used to extract and transform the data. Once data is transformed we created CSV files for each of the tables and uploaded them to Postgres database. 

## sources: 
https://stackoverflow.com/questions/15891038/change-column-type-in-pandas
- converting specific columns datatypes using .apply(pd.to_numberic)

https://stackoverflow.com/questions/29310116/removing-time-from-datetime-variable-in-pandas
- removing the timestamp on the end_date column using dt.normalize()
- this technique streamlined the date format and was easier to type than the df.strftime('%YYYY-%mm-%dd')
- once the csv was exported to the resources file the date dtype changed back to a string this was confusing trying to import the files into the database because I thought the dtype in the schema would be 'date' and not a varchar
-----------------------------------------------------------------------------------
crowdfunding database:

![Alt text](/ETL_ERD.png?raw=true "Schema ERD")
