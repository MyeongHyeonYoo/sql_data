SELECT * FROM employees;

--select * from employees;

SELECT employee_id, first_name, last_name FROM employees;

SELECT employee_id, first_name, last_name FROM employees ORDER BY employee_id DESC;

SELECT DISTINCT job_id FROM employees;

SELECT employee_id as �����ȣ, first_name as �̸�, last_name as �� FROM employees;

SELECT employee_id �����ȣ, first_name �̸�, last_name �� FROM employees;

SELECT employee_id, first_name||last_name FROM employees;

SELECT employee_id, first_name||' '||last_name, email||'@company.com' FROM employees;

SELECT employee_id, salary, salary+500, salary-500, (salary*1.1)/2 FROM employees;

SELECT  employee_id as �����ȣ, 
        salary �޿�, 
        salary+500 �߰��޿�, 
        salary-500 ���ϱ޿�, 
        (salary*1.1)/2 �����޿� 
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