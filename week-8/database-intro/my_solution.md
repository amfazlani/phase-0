Release 1
SELECT * FROM states
Release 2
SELECT * FROM regions
Release 3
SELECT state_name,population FROM states
Release 4
SELECT state_name,population FROM states ORDER BY population DSEC;
Release 5
SELECT state_name FROM state WHERE region_id = 7;
Release 6
SELECT state_name,population_density FROM states WHERE population_density > 50 ORDER BY population_density DSEC;
Release 7
SELECT state_name FROM states WHERE population BETWEEN 1000000 AND 1500000
Release 8
SELECT state_name, region_id FROM states ORDER BY region_id ASC;
Release 9
SELECT region_name FROM regions WHERE region_name LIKE '%Central%';
Release 10
SELECT region_name,state_name FROM states JOIN regions ON states.region_id=regions.id ORDER BY region_id;

![My_Schema](Outfits.png)


In the reflection section in your my_solution.md file, answer the following questions:

What are databases for?
Databases are used to store large amounts of data. It would be very inefficent if data was stored in only hashes or arrays, therefore databases are a convinient way to keep your data in an organized structure. Also, databases allows you to look at only the certain parts of the data that you want. For example, in this challenge we were told to look through different combinations of the data, ie region_name where region_names were "centeral"

What is a one-to-many relationship?
One-to-many relationship is a relatioship in which many different values are stored within one key. For example, here there were many states stored within a specefic region.

What is a primary key? What is a foreign key? How can you determine which is which?
I am still kind of confused on the differences between primary keys and foreign keys. But one difference that I can name is that foregin keys allow you to return null values where as primary keys do not.

How can you select information out of a SQL database? What are some general guidelines for that?
To select information you must first type in a line of code that this module included in order to get SQL running on your computer. Next you have to direct the terminal to your particuar sql file. Once you are in SQL, you must use the keyword SELECT followed by the particular category followed by FROM followed by the name of the table. Particular guidelines are to use semicolons at the end of every command. I am still learning SQL so I am not completely sure about best practices as of yet.

