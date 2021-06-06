# Pewlett-Hackard-Analysis

# Overview:

The purpose of the preceding analysis was to investigate the number of employees retiring by title and then the employees who are eligible to participate in a mentorship program hosted by PH. In consideration of the future, PH understands that it must analyze its current workforce to determine how many employees currently working may be considering retirement soon. By doing so, PH will be able to make plans towards hiring and developing talent to fill the vacancies left by those employees who ultimately retire. 

# Resources Utilized:
SQL

Visual Studio Code

# Results:

Utilizing SQL and provided data sets, the following tables were created and then exported to CSV files:

* retirement_titles
    
    * A table containing every employee born between 1952-1955. Noted limitations with this table include multiple values for employees. 
    
* unique_titles

    * Like the table above but eliminating multiple values for the employees (containing only 1 unique record). 

* retiring_titles

    * A table containing the count of every title of an employee born between 1952-1955 that may retire.

* mentorship_eligibilty

    * A table containing employees who were born in 1965 that is currently employed that may be eligible to participate in a mentorship program.
    
From these tables, we focus on our two points of focus for the analysis: a) Investigating the number of employees retiring by titles and b) the employees who are eligible to participate in a mentorship program.

* Investigation into the number of employees retiring by titles:

    * From the tables pulled, we see that there are two types of titles where we will see most retirements:
        * Engineers
        * Staff
    
    Based on this information, we can make the recommendation to PH that these two areas/titles are the ones that will likely be the ones hardest hit by retirements in the coming years. 
    
    * In addition to the two functional titles that will be impacted, we see that it will be __Senior__ titles that will be harder hit. For example, when considering Engineers, we see the following:
    
        * Senior Engineer - 29414
        * Engineer - 14222
        * Difference: 15192

    Therefore, in addition to the loss of talent that will arise from both Engineers and Staff leaving for Retirement, we see that the majority will be Senior employees. This creates a dangerous situation for PH as their talents/output will not be easily replaced. 
    
* Investigation into the employees eligible to participate in a mentorship program. 

    * From the tables pulled, we demonstrate a count of:
    
    1549 Employees
    
    Who may be eligible to participate in a mentorship program. Of the employees eligible to participate in a mentorship program, we note the following breakdown:
    
        * Assistant Engineer - 78

        * Engineer - 501
        
        * Senior Engineer - 169

        * Senior Staff - 569

        * Staff - 155

        * Technique Leader - 77

    From this list, and with the information provided from the earlier analysis, we can conclude that there is some talent within the Engineers & Staff titles that can be mentored to possibly fill-in gaps that would be caused by retirement. However, despite this, there still does not remain enough employees to fill in possible gaps.
    
    * In consideration of the previous breakdown (and of those that were determined for eligibility for mentorship, there seems to exist a need to increase the scope of employees who may be eligible for mentorship and the program. Further, the analysis does raise the question of why the birth year or 1965 was selected in the first place. An in-depth analysis would be warranted to discern the rationale behind the decision although, if sufficient rationale existed, then PH would certainly be in dire straits as there simply does not exist enough employees that are currently employed to fill in ranks of those who are leaving to retire. 

# Summary:

In summary, reviewing our previous inquiries:

* Investigation into the number of employees retiring by titles:

PH is in a situation where the number of employees that are retiring appears to be a significant one in the coming years.

* Investigation into the employees eligible to participate in a mentorship program. 

PH does not have existing staff to replace vacancies for a mentorship program as currently designed. 

Therefore, two additional queries would be warranted to provide more information on how PH should proceed:

* Count of total employees by department

This query could provide context between how many employees by title in comparison to the pool of employees to determine if there does exist a problem for PH. For example, although we have decided in our results that 29414 Senior Engineers retiring is a large number, when considering the overall Senior Engineer team, this number may or may not be as significant as once guessed. 

* Expanded Mentorship Criteria

As mentioned before, the criteria behind selecting a specific birth-year for a mentorship program raises questions to the rationale behind the decision. Rerunning the query based on updated criteria (e.g., increasing the birth year) would certainly provide more options for PH.
