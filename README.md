# Pewlett_Hackard_Analysis
## Challenge Overview
Pewlett Hackard, after successful SQL reporting, has asked for two more assignments, determine the number of retiring employees per title and identify employees who are eligible to particpate in a mentorship program.  A written summary report on the analysis to prepare for Bobby's manager's silver tsuanmi.

## Resources
- Data Sources: employees.csv, titles.csv
- Software: pgAdmin 6.4

## Results

### Four Points of Interest
* The first table creation of potential silver tsunami retirees, the query showed the data to have multiple employees, due to lengtho of employment and job advancement.  This caused a higher count than actual.
<img width="504" alt="Screen Shot 2022-02-06 at 4 20 54 PM" src="https://user-images.githubusercontent.com/91889241/152703948-d830b3f9-f6b4-4be0-9779-c7d0556121c9.png">

* To eliminate the duplicagte employee numbers issue, SQL script has a Distinct On function that aided in eliminating duplicate employee numbers.  Now the table has been corrected.
<img width="353" alt="Screen Shot 2022-02-06 at 4 24 45 PM" src="https://user-images.githubusercontent.com/91889241/152704052-3c777aff-407d-4b22-8107-7f078fc36baf.png">

* To get retiring counts by title for potential retirees, we created a table to show the count in each title description.
<img width="166" alt="Screen Shot 2022-02-06 at 4 33 40 PM" src="https://user-images.githubusercontent.com/91889241/152704340-b36160ea-fe37-43e8-b0da-0c58f3cbbc37.png">

* And finally, the list of potential eligible mentors born in 1965.
<img width="583" alt="Screen Shot 2022-02-06 at 4 34 57 PM" src="https://user-images.githubusercontent.com/91889241/152704386-44e8f93f-fe12-49b9-a608-db56c15944c4.png">

