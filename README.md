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

## Summary
1. How many roles will need to be filled as the silver tsunami begins?
 The silver tsunami will have a significant impact of 90,398 vacancies.

2. Are there enough qualified, retirement ready employees in each department to mentor the next generation?
Utilizing the criteria of employees born in 1965, the potential mentee list is 1,549 employees.  This illustrates the gap between potential retirees of nearly 90,000 with a replacement workforce of 1,500.

### Additional Queries
Creating a new query to further investigate the gap, the two charts below compare the counts by titles of the retiring and mentor eligible employees. There is a reasonable ratio of titles between the two tables implying that matching mentor to mentee is scalable under the right criteria. However, it is concerning that no managers met the mentor eligibility requirement. Further discussion is need to fill the manager gap.
<img width="177" alt="Screen Shot 2022-02-06 at 4 46 11 PM" src="https://user-images.githubusercontent.com/91889241/152704737-5ffca02d-8539-4d0f-8aab-5f87568b111e.png"><img width="166" alt="Screen Shot 2022-02-06 at 4 45 08 PM" src="https://user-images.githubusercontent.com/91889241/152704743-29e5648f-e038-4986-aaa8-c5d7224bd13c.png">

To move forward with the approximately 1,500 potential mentee list as a pilot mentoring program, the list of more than 90,000 retiring employees was narrowed to close the gap of matching mentor to mentee. The potential mentor list was narrowed by setting the criteria for being around age 35 when they started their current job title resulting in 5,521 employees that could be matched with the 1,549 mentees, which significantly narrows the mentor-mentee gap.
<img width="167" alt="Screen Shot 2022-02-06 at 4 43 44 PM" src="https://user-images.githubusercontent.com/91889241/152704758-9e27d555-2f2c-415f-853b-53c6dde7a292.png"><img width="166" alt="Screen Shot 2022-02-06 at 4 45 08 PM" src="https://user-images.githubusercontent.com/91889241/152704760-850521d5-51a6-4a00-a340-00ca24d28685.png">



