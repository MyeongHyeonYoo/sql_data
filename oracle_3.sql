SELECT
    *
FROM employees A

WHERE a.salary = (
                    SELECT salary
                    FROM employees
                    WHERE last_name = 'De Haan'
                );


-- 다중행 서브쿼리
SELECT
    *
FROM employees A
WHERE a. salary IN (
                    SELECT MIN(salary) 최저급여
                    FROM employees
                    GROUP BY department_id
                    )
ORDER BY a.salary DESC;


-- 다중열 서브쿼리
SELECT
    *
FROM employees A
WHERE (A.job_id, A.salary) IN   ( SELECT job_id, MIN(salary) 그룹별급여
                                FROM employees
                                GROUP BY job_id
                                )
ORDER BY A.salary DESC;


-- FROM 절 서브쿼리 : 인라인 뷰
SELECT
    *
FROM employees A,   
                    ( SELECT department_id
                      FROM departments
                      WHERE department_name='IT') B
WHERE A.department_id = B.department_id;


SELECT
    *
FROM departments;


-- 행 삽입
INSERT INTO departments ( department_id, department_name, manager_id, location_id)
VALUES (271, 'Sample_Dept', 200, 1700);


INSERT INTO departments 
VALUES (272, 'Sample_Dept', 200, 1700);

commit;

UPDATE departments
SET department_name = 'Sample_Dept',
    manager_id = 250,
    location_id = 2000
WHERE department_id = 272;
            
            
UPDATE departments
SET manager_id = 201,
    location_id = 1800
WHERE department_name = 'Sample_Dept';  

UPDATE departments
SET (manager_id, location_id) = ( SELECT manager_id, locaiton_id
                                  FROM departments
                                  WHERE department_id = 40,,
                                )
WHERE department_name = 'Sample_Dept';  

DELETE FROM departments
WHERE department_name = 'Sample_Dept'; 

DELETE FROM departments
WHERE department_id IN (SELECT department_id
                        FROM departments
                        WHERE department_name = 'Sample_Dept');
                        
commit;

DROP TABLE sample_product;

CREATE TABLE sample_product
    ( proudct_id number,
      product_name VARCHAR2(20),
      manu_date date
     );


INSERT INTO sample_product VALUES(1, 'television', to_date('140101', 'YYMMDD'));
INSERT INTO sample_product VALUES(2, 'washer', to_date('150101', 'YYMMDD'));
INSERT INTO sample_product VALUES(3, 'cleaner', to_date('160101', 'YYMMDD'));
commit;

SELECT
    *
FROM sample_product;

-- 테이블 변경
ALTER TABLE sample_product ADD (factory varchar(10));

truncate table sample_product;

delete sample_product;