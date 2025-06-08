--Question 1: Return a list of employees with Job Titles and Department Names
SELECT 
    e.EMP_ID,
    e.FIRST_NAME,
    e.LAST_NAME,
    jt.JOB_TITLE_NAME,
    d.DEPARTMENT_NAME
FROM Employee e
JOIN EmployeeJobHistory ejh ON e.EMP_ID = ejh.EMP_ID
JOIN JobTitle jt ON ejh.JOB_TITLE_ID = jt.JOB_TITLE_ID
JOIN Department d ON ejh.DEPARTMENT_ID = d.DEPARTMENT_ID;



















