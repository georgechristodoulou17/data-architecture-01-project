-- Populate EmployeeJobHistory
INSERT INTO EmployeeJobHistory (
    EMP_ID, JOB_TITLE_ID, DEPARTMENT_ID, LOCATION_ID, START_DT, END_DT
)
SELECT
    ps.EMP_ID,
    jt.JOB_TITLE_ID,
    d.DEPARTMENT_ID,
    l.LOCATION_ID,
    ps.START_DT::DATE,
    CASE 
      WHEN ps.END_DT IS NULL THEN NULL
      ELSE ps.END_DT::DATE
    END
FROM proj_stg ps
JOIN JobTitle jt ON ps.JOB_TITLE = jt.JOB_TITLE_NAME
JOIN Department d ON ps.department_nm = d.DEPARTMENT_NAME
JOIN Location l ON ps.LOCATION = l.LOCATION_NAME
              AND ps.ADDRESS = l.LOCATION_ADDRESS
              AND ps.CITY = l.LOCATION_CITY
              AND ps.STATE = l.LOCATION_STATE;

















