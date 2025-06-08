INSERT INTO Salary (
    EMP_ID, EFFECTIVE_START_DT, EFFECTIVE_END_DT, SALARY
)
SELECT DISTINCT
    ps.EMP_ID,
    ps.START_DT::DATE,
    NULL::DATE,  -- Assuming current salary has no end date
    ps.SALARY
FROM proj_stg ps;