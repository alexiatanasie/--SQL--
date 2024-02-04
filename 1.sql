-- Ex. 1  Display the products with list prices between 50 and 100.

SELECT * FROM PRODUCT_INFORMATION
WHERE LIST_PRICE BETWEEN 50 AND 100;

-- Ex. 2 Update the list price of the products in the category 17, with 100.

UPDATE PRODUCT_INFORMATION
SET LIST_PRICE=100
WHERE CATEGORY_ID=17;

-- Ex. 3 Display all the superiors (that are hired in Winter) of the employee with the id 118.

SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, HIRE_DATE FROM EMPLOYEES
WHERE EXTRACT(MONTH FROM HIRE_DATE) IN(12, 01, 02)
CONNECT BY PRIOR MANAGER_ID = EMPLOYEE_ID
START WITH EMPLOYEE_ID = 118;