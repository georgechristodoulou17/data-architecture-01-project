-- Create a view that returns all employee attributes; results should resemble initial Excel file 
CREATE OR REPLACE VIEW vw_full_employee_data AS
SELECT
    e.EMP_ID,
    e.FIRST_NAME || ' ' || e.LAST_NAME AS EMP_NM,
    e.EMAIL,
    e.HIRE_DT,
    jt.JOB_TITLE_NAME AS JOB_TITLE,
    s.SALARY,
    d.DEPARTMENT_NAME AS DEPARTMENT,
    m.FIRST_NAME || ' ' || m.LAST_NAME AS MANAGER,
    ejh.START_DT,
    ejh.END_DT,
    l.LOCATION_NAME AS LOCATION,
    l.LOCATION_ADDRESS AS ADDRESS,
    l.LOCATION_CITY AS CITY,
    l.LOCATION_STATE AS STATE,
    el.EDUCATION_LEVEL_NAME AS "EDUCATION LEVEL"
FROM Employee e
JOIN EducationLevel el ON e.EDUCATION_LEVEL_ID = el.EDUCATION_LEVEL_ID
JOIN EmployeeJobHistory ejh ON e.EMP_ID = ejh.EMP_ID
JOIN JobTitle jt ON ejh.JOB_TITLE_ID = jt.JOB_TITLE_ID
JOIN Department d ON ejh.DEPARTMENT_ID = d.DEPARTMENT_ID
JOIN Location l ON ejh.LOCATION_ID = l.LOCATION_ID
LEFT JOIN Manager mgr ON e.REPORTING_MANAGER_EMP_ID = mgr.EMP_ID
LEFT JOIN Employee m ON mgr.EMP_ID = m.EMP_ID
LEFT JOIN Salary s ON e.EMP_ID = s.EMP_ID AND s.EFFECTIVE_END_DT IS NULL;

-- View first 10 results for validation
SELECT * 
FROM vw_full_employee_data
LIMIT 10;


























