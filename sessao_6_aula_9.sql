--
-- Seção 6 - Aula 1
-- Consulta de dados utilizando o comando SQL SELECT
--

--
-- Utilizando o comando DESCRIBE

describe employees

desc employees

desc departments

desc jobs

desc locations


SELECT *
FROM  employees;

SELECT *
FROM JOBS;

-- Selecionando colunas especificas

SELECT department_id, location_id
FROM departments;

SELECT employee_id, first_name, last_name, salary
FROM employees;

SELECT
    job_id,
    job_title
FROM
    jobs;

-- Utilizando operadores aritméticos

SELECT employee_id, first_name, last_name, salary, salary * 1.15
FROM employees;

-- Utilizando operadores aritméticos - Precedência

SELECT employee_id, first_name, last_name, salary, salary + 100 * 1.15
FROM employees;

SELECT employee_id, first_name, last_name, salary, (salary + 100) * 1.15
FROM employees;

SELECT first_name, last_name, job_id, salary, commission_pct
FROM employees;

SELECT first_name, last_name, job_id, commission_pct, 2000000 * commission_pct
FROM employees
where commission_pct IS NULL;

-- Alias

SELECT first_name "Nome", last_name "Sobrenome", job_id, commission_pct, 2000000 * commission_pct
FROM employees
where commission_pct IS NULL;

-- Utilizando o operador de concatenação ( || )

SELECT first_name || ' ' || last_name || ', data de admissão: ' || hire_date "Funcionário"
FROM employees;

-- Utilizando operador de concatenação e strings de caracteres

SELECT department_name || q'[ Department's Manager Id]'
|| manager_id "Departamento e Gerente"
FROM departments;

-- Linhas Duplicadas

SELECT department_id
FROM employees;

SELECT DISTINCT department_id, first_name
FROM employees;


