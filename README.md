# Pewlett-Hackard-Analysis
# Retirement Analysis: Employees
## Purpose: 
This report assesses the potential retirements facing Pewlett-Hackard. The analysis looks at empoyee retirements based on birth year, title, and departments. 
In addition, the analysis looks at potential mentors to help transition existing employees into retirement while training newer employees in more senior roles. 

### Results:
1) Significant number of employees will be retiring. (Source data is saved in retirement titles).
There are over 133,000 titles that are facing retirement BUT there are fewer employees due to some employees receiving promotions.

2) Across the organization there are over 90,000 employees that are nearing retirement age based an a unique search focused on the current title for employees. (Source is unique titles).

3) A significant number of these employees are senior level managers/engineers that may represent a significant brain drain to the organization. (Source is retiring titles).

**RETIRING EMPLOYEES, by title** ![Retiring Employees, by title](https://github.com/Tavender22/Pewlett-Hackard-Analysis/blob/master/Queries/Candidate%20Count.png)

Senior engineers and senior staff make up the majority of potential retirements, with over 57,000 potential staff.

4) A large pool of potential mentors exist to participate in the mentorship program with over 1,500 potential employees - but this is well below the number of employees leaving. (source data is in mentorship_eligibility)

## Conclusions:
1) The number of employees retiring, by title are summarized in the table below, and represents a large number of senior staff and senior engineers who need Pewlett-Hackard needs to develop a succession plan to replace.

![Retiring Employees, by title](https://github.com/Tavender22/Pewlett-Hackard-Analysis/blob/master/Queries/Candidate%20Count.png)

2) The number of employees eligible for the mentorship program are summarized below by title. (new query and table to help with conclusion). There are only ~1,500 employees that are eligible for the current mentorship program. 

![Eligible Mentors](https://github.com/Tavender22/Pewlett-Hackard-Analysis/blob/master/Queries/Mentors.png)

In order to broaden potential employees who could be considered for eligibility for the mentorship program we also queried the number of employees who have been hired in the last 10 years, and who may likely benefit from mentorship. Our most recent hire date was Bikash Kovnot on 2000-01-28. For this analysis we assumed an employee need to be hired after 1990-01-31. 

![Potential Employees to be mentored](https://github.com/Tavender22/Pewlett-Hackard-Analysis/blob/master/Queries/Candidate%20Count.png)
