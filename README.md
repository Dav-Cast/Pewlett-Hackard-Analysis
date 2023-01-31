# Pewlett-Hackard-Analysis
## Incoming silver tsunami

## Overview
Analysis on Pewlett-Hackard personel info to prepare for future employee retirement and future job openings, the findings of this analisis will allow the company to be preprared financially and physically to react accordingly.   

## Results
### The analysis
It consisted in obtaining 4 main tables, each with important information to be displayed. It is important to mention that the raw information that was proportionated was not modified at all, it was only organized to show the required data. The required tables are:

1. Retirement titles: it is a collection of all the employees soon to retire based on their age, so their birth date was used as a filter to get everyone born from 1952 and 1955. But this shows all titles from every employee so it may have duplicates if the employee had different positions.
2. Unique titles: it has basically the same information as retirement titles only with filters on the "to_date" column which is looking for the ones that have a value of "9999-01-01" that means the employee has not left yet and the other filter is on to cut the duplicates of the list and only keep the actual position of the employee. 
3. Retiring titles: this table contains exactly the same information as unique tables only formated in a different way, as it shows the number of each title type in decending order as a form of summary of the information.
4. Mentorship eligibility: this table looks for the employees that are fit to be mentors for newer employees before retiring, it searches by birth date of 1965 and it also searches for current employees and cuts down duplicates as to not add confusion. 

![Deliverables_tables](https://user-images.githubusercontent.com/110573146/215685647-13360245-c09a-43f7-aa8d-6e784c2010f5.png)

### Major Points
From the analysis made the four most important points are the next:
* First point is that it is really important to know all the characteristics of the employees you are looking for, as the raw data was really big and to get the necessary info is important to be specific as to not get any confussion and be precise, as it can carry to posterior filters uncessesary data, as it could of happen in the retirement titles tables, if done incorectly it could of affect the next two tables.

* Second is that it is important to notice the information that is retrieved once the filter was applied properly, as sometimes it necessary to keep filtering to get to the result we want. As in the unique titles table, that a date and distinct filter were used to look for actual employees and their actual position as previous information showed duplicates. Take the next employee as an example of this process:

![Needed_filters](https://user-images.githubusercontent.com/110573146/215688678-f66e906d-c29e-45ca-99b8-04896db6f0ee.png)

* Third is about presentation and digested information. It is important to show the process as well, but showing the results in a much more concise way is far better for presentation for overall any audience as to not confuse. The retiring titles is an example of this, a count of every title that is retiring. This is a complement to the actual information as it shows how many employees of specific titles are retiring, it will allow Pewlett-Hackard to act with no worries.

* Finally it is important to rememeber that all of this tables, filters, gorups are not modifying the actual data, it is just arranging it and sorting it out in the specific way we require it to. We can sse it as how we created the mentoring eligibility table after creating the retirement titles, as the original data was still intact and we used the same root table to create the newer ones.  

![root_info_1](https://user-images.githubusercontent.com/110573146/215691346-8377f41a-d878-4f67-a4a3-3185089e689d.png)

![root_info_2](https://user-images.githubusercontent.com/110573146/215691369-e3d07e72-1b94-41b1-9ad9-36ed6479e916.png)

## Summary
### How many roles will need to be filled as the "silver tsunami" begins to make an impact?
In order to answer this question the same process as the first three tables mentioned "Results - The analysis" section was followed, the only difference was to search only for the employees that were born in 1952 who are the ones that are the first to leave when the time comes. 

![summary_process](https://user-images.githubusercontent.com/110573146/215699743-55c3e739-e318-4009-af27-dea463e48baa.png)

There will be aprox. 16,981 roles to be filled in the first year of the "silver tsunami" as shown in the retiring_titles_upcoming table.

![Summary_1](https://user-images.githubusercontent.com/110573146/215698619-e004ece7-26d9-441b-9224-dfbb8d5f3756.png)

### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
As shown from the results of the query made to group by title of the mentoring employees of the mentoring_eligibility table it is evident there not enough personel to mentor individually all the new recruits that will be comming in the near future. It recommended to hold seminars or lectures as to gather as many rookies as possible and to have a chance for the mentors to tranfer their most important knowledge.

![mentoring_summary](https://user-images.githubusercontent.com/110573146/215703390-5b140c3d-eac3-4fb2-93ad-d7f562e875e9.png)
