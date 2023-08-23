ALTER TABLE hr.employees ENABLE ROW MOVEMENT;
SELECT SYSTIMESTAMP FROM DUAL;
SELECT SUM(salary) FROM hr.employees;
UPDATE hr.employees SET salary=salary/manager_id;
COMMIT;
SELECT SUM(salary) FROM hr.employees;
FLASHBACK TABLE hr.employees TO TIMESTAMP TO_TIMESTAMP('12/08/2023 17:07','DD/MM/YYYY HH24:MI');
SELECT SUM(salary) FROM hr.employees;