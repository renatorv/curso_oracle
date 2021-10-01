-- Fun��es Single Row
-- Retornam somente um valor para cada linha

-- Fun��es Multiple Row
-- Retornam um valor para cada grupo de linhas

--Fun��es de convers�o Mai�sculo & Minusculo

SELECT employee_id, last_name, department_id
FROM employees
WHERE last_name = 'KING';
-- =>
SELECT employee_id, UPPER(last_name), department_id
FROM employees
WHERE UPPER(last_name) = 'KING';

-- Fun��es de manipula��o de caracteres
-- dual => tabela que sempre existe em um banco de dados Oracle

SELECT CONCAT(' Curso: ', 'Introdu��o ORACLE 19c') "CONCAT", 
    SUBSTR('Introdu��o ORACLE 19c', 1, 11) SUBSTR,
    LENGTH('Introdu��o ORACLE 19c') LENGTH, 
    INSTR('Introdu��o ORACLE 19c', 'ORACLE') INSTR
FROM dual;

-- Outras fun��es de manipula��o de caracteres

SELECT LPAD('Introdu��o ORACLE 19c', 30, '*'),
    RPAD('Introdu��o ORACLE 19c', 30, '*') ,
    REPLACE('Introdu��o ORACLE 12c', '12c', '19c'),
    TRIM(';' FROM 'nome@gmail.com;'),
    RTRIM('nome@gmail.com;', ';'),
    LTRIM('    nome@gmail.com', ' ')
from dual;

SELECT first_name "NOME", LPAD(first_name,20, ' ') "Nome alinhado a direita", 
    RPAD(first_name, 20, ' ') "Nome alinhado a esquerda"
FROM employees;

-- REPLACE
SELECT job_title, REPLACE(job_title, 'President', 'Presidente') CARGO
FROM jobs
WHERE job_title = 'President';

-- Fun��es tipo NUMBER
-- ROUND: arredonda o valor para a casa decimal especificada
-- TRUNC: trunca o valor para a casa decimal especificada
-- MOD  : retorna o resto da divis�o

SELECT ROUND(45.923,2), ROUND(45.923,0) FROM DUAL;

SELECT TRUNC(45.923,2), TRUNC(45.923,0) FROM DUAL;

SELECT MOD(1300,600) FROM DUAL;

SELECT ABS(-1000) FROM DUAL;

SELECT SQRT(200), SQRT(9) FROM DUAL;

-- FUN��ES DO TIPO DATE
-- O formato default de exibi��o de datas � definido pelo DBA atrav�s do parametro: NLS_DATE_FORMAT
-- No Brasil normalmente formato default de exibi��o de datas � definido para 'DD/MMYY' ou 'DD/MM/RR'.

SELECT SYSDATE FROM DUAL;

DESC DUAL; -- DUMMY => IDIOTA

SELECT * FROM DUAL;

SELECT 30000 * 1.25 FROM DUAL;

-- CALCULOS COM DATA

SELECT SYSDATE, SYSDATE + 30, SYSDATE + 60, SYSDATE -60 FROM DUAL;

SELECT LAST_NAME, ROUND((SYSDATE-HIRE_DATE)/7,2) "SEMANAS DE TRABALHO"
FROM EMPLOYEES;

-- OUTRAS FUN��ES TIPO DATE
-- MONTHS_BETWEEN: NUMERO DE MESES ENTRE DUAS DATAS
-- ADD_MONTHS: ADICIONA MESES A UMA DATA
--NEXT_DAY: PR�XIMO DIA REALATIVO A DATA ESPECIFICADA
--LAST_DAY: �LTIMO DIA DO M�S
-- ROUND: ARREDONDA A DATA
-- TRUNC: TRUNCA A DATA

SELECT FIRST_NAME, LAST_NAME, ROUND(MONTHS_BETWEEN(SYSDATE, HIRE_DATE),2) "MESES DE TRABALHO"
FROM EMPLOYEES;

SELECT SYSDATE, ADD_MONTHS(SYSDATE, 3), NEXT_DAY(SYSDATE, 'SEXTA FEIRA'), LAST_DAY(SYSDATE)
FROM DUAL;

SELECT SYSDATE, ROUND(SYSDATE, 'MONTH'), ROUND(SYSDATE, 'YEAR'),
       TRUNC(SYSDATE, 'MONTH'), TRUNC(SYSDATE, 'YEAR')
FROM DUAL;

SELECT SYSDATE, TO_CHAR(TRUNC(SYSDATE), 'DD/MM/YY HH24:MI:SS') FROM DUAL;

