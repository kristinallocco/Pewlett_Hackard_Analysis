# Pewlett Hackard Analysis
*Columbia Bootcamp 01 Aug 2021*


## Overview
The purpose of this analysis was to determine the current number of individuals of retirement age Pewlett-Hackard, as well as gain deeper insight into the roles they currently fulfill at work in an effort to create candidate list for a potential mentorship matching program. The ages, duration of time with the company, as well as titles of the eligible employees were obtained through the use of SQL.

## Results
- The current number of Pewlett-Hackard employees is 300,024, and of those individuals, 90,398 were born between 1952 and 1955 [30.13%].
  - *Tables utilized for calculation: employees.csv and retirement_titles.csv*  
  
- Although roughly 30% of the workforce is of retirement age, only 1,549 met eligibility requirements for becoming a mentor. 
  - *Tables utilized for calculation: mentorship_eligibility.csv*
  
- Of those who were found meet the mentor eligibility requirements, the highest percentage of those were senior staff and engineers [425, 27.4%; 392, 25.3%]. 
  - *Tables utilized for calculation: eligible_titles.csv; extracted from mentor_eligibility.csv*
  
- Technique leaders and assistant engineers were represented the least in the mentor eligibility pool [77, 5.0%; 58, 3.7%].
  - *Tables utilized for calculation: eligible_titles.csv; extracted from mentor_eligibility.csv*


*Potenital retirees by title* | *Potential eligible mentors*
----------------------------- | ----------------------------
<img width="270" alt="Retiring_Titles" src="https://user-images.githubusercontent.com/85713470/127786786-a37a0218-f554-49cd-8bb7-bfa2477dca6b.png"> | <img width="270" alt="Eligible_Titles" src="https://user-images.githubusercontent.com/85713470/127786690-5a483486-8c70-4fe7-aea9-6c327850059f.png">

## Summary
