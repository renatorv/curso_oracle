-- Joins - Exibindo dados de Múltiplas Tabelas

-- Utilizando prefixos coluna com nomes de tabelas

SELECT EMPLOYEES.EMPLOYEE_ID, EMPLOYEES.LAST_NAME,
       EMPLOYEES.DEPARTMENT_ID, DEPARTMENTS.DEPARTMENT_NAME
FROM EMPLOYEES JOIN DEPARTMENTS
    ON (EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID);
    
    
-- UTILIZANDO ALIAS DE TABELA

SELECT E.EMPLOYEE_ID, 
       E.LAST_NAME, 
       E.DEPARTMENT_ID, 
       D.DEPARTMENT_NAME
FROM EMPLOYEES E JOIN DEPARTMENTS D
     ON (
            E.DEPARTMENT_ID = D.DEPARTMENT_ID
        );
        
-- NATURAL JOIN: faz o join das duas tabelas comparando as
--               colunas que possuem o mesmo nome nas duas 
--               tabelas. Observando que esses campos devem
--               ser do mesmo tipo.
--               No exemplo abaixo a coluna LOCATION_ID, foi
--               foi usanda, uma vez que ela possui o mesmo
--               nome nas duas tabelas e são do mesmo tipo.
SELECT DEPARTMENT_ID, DEPARTMENT_NAME, LOCATION_ID, CITY
FROM DEPARTMENTS
NATURAL JOIN LOCATIONS;


parei 10 minutos da aula 15
    
    