# lab2

This is the project for CISC3140 lab2 the goal is to understanding the tools and some functionality of sqlite3

There are 3 .sql file that is used to generate the output to meet the requirements of lab2 use the following command to see the output shown on the 
terminal. 

$sqlite3 data.db < get_total.sql (get the ranking, Make, Year, Model etc. and total)

$sqlite3 data.db < top3.sql (get top 3 scored car for each car make)

$sqlite3 data.db < judge.sql (get the information about judges)

In order to extract the output to a csv file please do $sqlite3 data.db ENTER .mod csv ENTER .headers on ENTER .output extract1/2.csv ENTER
then copy the sql source code from get_total.sql and top3.sql to get external output file.
