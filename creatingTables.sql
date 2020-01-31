 /*
  ;+-------------------------------------------+
  ;|              Database (SQL queries)
  ;|   ========================================
  ;|   DataBase Lab
  ;|   Week 02 (ASSIGNMENT)
  ;|   ========================================
  ;|   Created by: Abdul Samad
  ;|   Registration No: 2018-CS-141
  ;|   ========================================
  ;+-------------------------------------------+ 
*/

/* -------------------- COUNTRIES TABLE -------------------- */ 
CREATE TABLE COUNTRIES(
COUNTRY_ID CHAR(2),
COUNTRY_NAME VARCHAR(2),
REGION_ID INT
)

/* -------------------- DEPARTMENTS TABLE -------------------- */ 
CREATE TABLE DEPARTMENTS(
DEPARTMENTS_ID INT,
DEPARTMENTS_NAME VARCHAR(30),
MANAGER_ID INT,
LOCATION_ID INT
)

/* -------------------- EMPLOLYEES TABLE -------------------- */ 
CREATE TABLE EMPLOYEES(
EMPLOYEE_ID INT,
FIRST_NAME VARCHAR(20),
LAST_NAME VARCHAR(25),
EMAIL VARCHAR(25),
PHONE_NUMBER VARCHAR(20),
HIRE_DATE DATE,
JOB_ID VARCHAR(10),
SALARY INT,
COMMISION_PCT INT,
MANAGER_ID INT,
DEPATMENT_ID INT
)

/* -------------------- JOBS TABLE -------------------- */
CREATE TABLE JOBS(
JOB_ID  VARCHAR(10),
JOB_TITLE VARCHAR(35),
MIN_SALARY INT,
MAX_SALARY INT
)

/* -------------------- JOB_GRADES TABLE -------------------- */
CREATE TABLE JOB_GRADES(
GRADE_LEVEL VARCHAR(3),
LOWEST_SAL INT,
HIGHEST_SAL INT
)

/* -------------------- JOB_HISTORY TABLE -------------------- */
CREATE TABLE JOB_HISTORY(
EMPLOYEE_ID INT,
STARTING_DATE DATE, /*-----*/
ENDING_DATE DATE,  /*-----*/
JOB_ID VARCHAR(10),
DEAPRTMENT_ID INT
)

/* -------------------- LOCATIONS TABLE -------------------- */
CREATE TABLE LOCATIONS(
LOCATION_ID INT,
STREET_ADDRESS VARCHAR(40),
POSTAL_CODE VARCHAR(12),
CITY VARCHAR(30),
STATE_PROVINCE VARCHAR(50),
COUNTRY_ID CHAR(2)
)

/* -------------------- REGIONS TABLE -------------------- */
CREATE TABLE REGIONS(
REGION_ID VARCHAR(25),
REGION_NAME VARCHAR(50)
)
