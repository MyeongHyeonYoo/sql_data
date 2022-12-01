SELECT * FROM employees;

--select * from employees;

SELECT employee_id, first_name, last_name FROM employees;

SELECT employee_id, first_name, last_name FROM employees ORDER BY employee_id DESC;

SELECT DISTINCT job_id FROM employees;

SELECT employee_id as 사원번호, first_name as 이름, last_name as 성 FROM employees;

SELECT employee_id 사원번호, first_name 이름, last_name 성 FROM employees;

SELECT employee_id, first_name||last_name FROM employees;

SELECT employee_id, first_name||' '||last_name, email||'@company.com' FROM employees;

SELECT employee_id, salary, salary+500, salary-500, (salary*1.1)/2 FROM employees;

SELECT  employee_id as 사원번호, 
        salary 급여, 
        salary+500 추가급여, 
        salary-500 인하급여, 
        (salary*1.1)/2 조정급여 
FROM employees;
----------------------------------------------------------------------------------------
SELECT * FROM employees where employee_id=100;

SELECT * 
FROM employees 
where first_name = 'David';

SELECT * 
FROM employees 
where employee_id >= 105;

SELECT * 
FROM employees 
where salary BETWEEN 10000 AND 20000;

SELECT * 
FROM employees 
where job_id LIKE 'AD%'; -- %AD%

SELECT * 
FROM employees 
where job_id LIKE 'AD___';

SELECT * 
FROM employees 
where manager_id IS NULL;

SELECT * 
FROM employees 
where salary IN(10000, 17000, 24000);