
--Question 5: How many employees are in each department?
SELECT 
    d.DEPARTMENT_NAME,
    COUNT(DISTINCT ejh.EMP_ID) AS employee_count
FROM EmployeeJobHistory ejh
JOIN Department d ON ejh.DEPARTMENT_ID = d.DEPARTMENT_ID
GROUP BY d.DEPARTMENT_NAME;
























