--Question 6: Write a query that returns current and past jobs (include employee name, job title, department, manager name, start and end date for position) for employee Toni Lembeck.
SELECT 
    e.FIRST_NAME || ' ' || e.LAST_NAME AS employee_name,
    jt.JOB_TITLE_NAME,
    d.DEPARTMENT_NAME,
    m.FIRST_NAME || ' ' || m.LAST_NAME AS manager_name,
    ejh.START_DT,
    ejh.END_DT
FROM Employee e
JOIN EmployeeJobHistory ejh ON e.EMP_ID = ejh.EMP_ID
JOIN JobTitle jt ON ejh.JOB_TITLE_ID = jt.JOB_TITLE_ID
JOIN Department d ON ejh.DEPARTMENT_ID = d.DEPARTMENT_ID
LEFT JOIN Employee m ON ejh.REPORTING_MANAGER_EMP_ID = m.EMP_ID
WHERE e.FIRST_NAME = 'Toni' AND e.LAST_NAME = 'Lembeck';


























