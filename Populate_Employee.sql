-- Populate Employee
INSERT INTO Employee (
    EMP_ID, FIRST_NAME, LAST_NAME, EMAIL, HIRE_DT, EDUCATION_LEVEL_ID
)
SELECT DISTINCT
    ps.EMP_ID,
    split_part(ps.EMP_NM, ' ', 1) AS FIRST_NAME,
    split_part(ps.EMP_NM, ' ', 2) AS LAST_NAME,
    ps.EMAIL,
    ps.HIRE_DT::DATE,
    el.EDUCATION_LEVEL_ID
FROM proj_stg ps
JOIN EducationLevel el ON ps.education_lvl = el.EDUCATION_LEVEL_NAME;













