INSERT INTO Manager (EMP_ID)
SELECT DISTINCT e.EMP_ID
FROM proj_stg ps
JOIN Employee e ON CONCAT(split_part(ps.MANAGER, ' ', 1), ' ', split_part(ps.MANAGER, ' ', 2)) = CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME);