--
-- Se��o 7 - Aula 1
-- Restringindo e Ordenando Dados
--

-- Utilizando a cl�usula WHERE

SELECT employee_id, last_name, job_id, department_id
FROM employees
--WHERE department_id = 60;
WHERE job_id = 'IT_PROG';

-- Utilizando String de caractere na cl�usula WHERE

SELECT first_name, last_name, job_id, department_id, hire_date
FROM employees
WHERE last_name = 'King';

SELECT first_name, last_name, job_id, department_id, hire_date
FROM employees
WHERE hire_date = '30/01/04';

-- Utilizando Operadores de Compara��o

SELECT last_name, salary
FROM employees
WHERE salary >= 10000;

-- Selecionando faixas de valores utilizando o operador BETWEEN

SELECT last_name, salary
FROM employees
WHERE salary BETWEEN 10000 AND 15000;

-- Selecionando valores dentro de uma lista utilizando o operador IN

SELECT employee_id, first_name || ' ' || last_name "NOME COMPLETO", 
       salary, manager_id, job_id
FROM employees
WHERE job_id IN ('IT_PROG', 'FI_ACCOUNT', 'SA_REP');

-- Utilizando o operador LIKe

SELECT first_name, last_name, job_id
FROM employees
WHERE first_name LIKE 'Sa%';

-- Combinando o uso de v�rios caracteres curinga

SELECT first_name, last_name, job_id
FROM employees
WHERE last_name LIKE '_e%';

-- Compara��es com valor NULL (NULO) 
-- Qualquer compara��o com NULL retorna o boleano NULL

SELECT last_name, manager_id
FROM employees
WHERE manager_id = NULL;

-- Utilizando a express�o de compara��o IS NULL

SELECT last_name, manager_id
FROM employees
WHERE manager_id IS NULL;

-- Utilizando o operador AND

SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary >= 5000
AND job_id = 'IT_PROG';

-- Utilizando o operador OR
-- (basta uma das condi��es ser verdadeira para que a cl�usula seja mostrada!!)
SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary >= 5000
OR job_id = 'IT_PROG';

-- Utilizando o operador NOT

SELECT employee_id, last_name, salary, manager_id, job_id
FROM employees
WHERE job_id NOT IN ('IT_PROG', 'FI_ACCOUNT', 'SA_REP');

-- Regras de Preced�ncia

SELECT last_name, job_id, salary
FROM employees
WHERE job_id = 'SA_REP' 
OR job_id = 'IT_PROG' 
AND salary > 10000;

-- Utilizando par�ntese para sobrepor as Regras de Preced�ncia

SELECT last_name, job_id, salary
FROM employees
WHERE (job_id = 'SA_REP' 
        OR job_id = 'IT_PROG')
AND salary > 10000;

-- ORDER BY ( ASC � OPCIONAL )

SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY hire_date; -- ASC;

-- ORDER BY - ORDEM DESCENDENTE

SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY hire_date DESC;

-- ORDER BY - Referenciando ALIAS

SELECT employee_id, last_name, salary salario_mensal, salary*12 salario_anual
FROM employees
ORDER BY salario_anual; -- ou ORDER BY salary*12

-- ORDER BY - Referenciando POSI��O (COLUNA)

SELECT last_name, job_id, department_id, hire_date
FROM employees
ORDER BY 4;

-- ORDER BY - M�ltiplas colunas ou express�es

SELECT last_name, department_id, salary
FROM employees
ORDER BY department_id, salary DESC; --( department_id ASC e  salary DESC )

-- Vari�veis de Substitui��o - &

SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE employee_id = &employeed_id;

-- Vari�veis de Substitui��o - &&
-- ( utilizando os && a ide vai pedir o valor somente na primeira execu��o
-- na segunda execu��o ela vai pegar automaticamente o valor digitando
-- na primeira execu��o )

SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE employee_id = &&employeed_id;

-- Vari�veis de Substitui��o com valores Character e Date
-- ( deve informar o & dentro de aspas simples '' )

SELECT last_name, department_id, job_id, salary*12
FROM employees
WHERE job_id = '&job_id';

-- Utilizando o valor DEFINE

DEFINE employee_id = 101;

SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE employee_id = &employee_id;

-- mostra o que esta definido para a variavel
DEFINE employee_id;

-- limpa atribui��o da vari�vel
UNDEFINE employee_id;