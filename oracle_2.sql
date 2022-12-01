SELECT 
    *
FROM employees
WHERE salary > 4000 
AND job_id='IT_PROG';

SELECT 
    *
FROM employees
WHERE salary > 4000 
AND job_id='IT_PROG'
OR job_id='FI_ACCOUNT';


SELECT 
    *
FROM employees
WHERE emplotee_id <> 105;

SELECT 
    *
FROM employees
WHERE manager_id IS NOT NULL;

SELECT  last_name,
        LOWER(last_name),
        UPPER(last_name),
        email,
        INITCAP(email)
FROM employees;

SELECT job_id, SUBSTR(job_id, 1, 2) ������
FROM employees;

SELECT
    job_id, REPLACE(job_id, 'ACCOUNT', 'ACCNT') ������
FROM employees;

SELECT
    first_name, LPAD(first_name, 12 , '*') LPAD������
FROM employees;

SELECT
    salary/30 �ϱ�,
    ROUND(salary/30, 0) ����_0,
    ROUND(salary/30, 1) ����_1,
    ROUND(salary/30, -1) ����_MINUS1
FROM employees;

SELECT
    first_name,
    last_name,
    department_id,
    salary �����޿�,
    DECODE(department_id, 60, salary*1.1, salary) ������_�޿�,
    DECODE(department_id, 60, '10%�λ�', '���λ�') �λ󿩺�
FROM employees;

SELECT employee_id, first_name, last_name, salary,
    CASE
        WHEN salary >= 9000 THEN '�����޿�'
        WHEN salary BETWEEN 6000 AND 8999 THEN '�����޿�'
        ELSE '�����޿�'
    END AS �޿����
FROM employees
WHERE job_id = 'IT_PROG';

SELECT COUNT(salary) salary���
FROM employees;

SELECT job_id ����, SUM(salary) ������_�ѱ޿�, AVG(salary) ������_��ձ޿�
FROM employees
WHERE employee_id >= 10
GROUP BY job_id
ORDER BY ������_�ѱ޿� DESC, ������_��ձ޿�;

SELECT job_id ����, SUM(salary) ������_�ѱ޿�, AVG(salary) ������_��ձ޿�
FROM employees
WHERE employee_id >= 10
GROUP BY job_id
HAVING SUM(salary) > 30000
ORDER BY ������_�ѱ޿� DESC, ������_��ձ޿�;
----------------------------------------------------------------------------------------

SELECT a.employee_id, A.department_id, b.department_name, c.location_id, c.city
FROM employees A, departments B, locations C
WHERE a.department_id = b.department_id
AND b.location_id = c.location_id;

SELECT a.employee_id, a.first_name, a.last_name, b.department_id, b.department_name
FROM employees A, departments B
WHERE a.department_id = B.department_id(+)
order by a.employee_id;

SELECT a.employee_id, A.first_name, a.last_name, a.manager_id, a.first_name||' '||b.last_name manager_name
FROM employees A, employees B
WHERE a.manager_id = b.employee_id
ORDER BY a.employee_id;