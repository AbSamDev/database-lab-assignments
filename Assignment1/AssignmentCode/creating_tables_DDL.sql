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

CREATE DATABASE DB_Assignment
USE DB_Assignment

/* ------------TABLES */

/* -------------------- 2) COUNTRIES TABLE -------------------- */ 
CREATE TABLE COUNTRIES(
COUNTRY_ID CHAR(2) PRIMARY KEY,
COUNTRY_NAME VARCHAR(40),
REGION_ID VARCHAR(25) FOREIGN KEY REFERENCES REGIONS(REGION_ID)
)
/* -------------------- 4) DEPARTMENTS TABLE -------------------- */ 
CREATE TABLE DEPARTMENTS(
DEPARTMENTS_ID INT PRIMARY KEY,
DEPARTMENTS_NAME VARCHAR(30),
MANAGER_ID INT,
LOCATION_ID INT FOREIGN KEY REFERENCES LOCATIONS(LOCATION_ID) 
)	
/* -------------------- 6) EMPLOLYEES TABLE -------------------- */ 
CREATE TABLE EMPLOYEES(
EMPLOYEE_ID INT PRIMARY KEY,
FIRST_NAME VARCHAR(20),
LAST_NAME VARCHAR(25),
EMAIL VARCHAR(25),
PHONE_NUMBER VARCHAR(20),
HIRE_DATE DATE,
JOB_ID VARCHAR(10) FOREIGN KEY REFERENCES JOBS(JOB_ID),
SALARY INT FOREIGN KEY REFERENCES EMPLOYEES(EMPLOYEE_ID),
COMMISION_PCT FLOAT(24),
MANAGER_ID INT UNIQUE,
DEPATMENTS_ID INT FOREIGN KEY REFERENCES DEPARTMENTS(DEPARTMENTS_ID)
)
/* Extra query to reference manager's id */
ALTER TABLE DEPARTMENTS
ADD FOREIGN KEY (MANAGER_ID) REFERENCES EMPLOYEES(MANAGER_ID)

/* -------------------- 5) JOBS TABLE -------------------- */
CREATE TABLE JOBS(
JOB_ID  VARCHAR(10) PRIMARY KEY,
JOB_TITLE VARCHAR(35),
MIN_SALARY INT,
MAX_SALARY INT
)
/* -------------------- 8)JOB_GRADES TABLE -------------------- */
CREATE TABLE JOB_GRADES(
GRADE_LEVEL VARCHAR(3) PRIMARY KEY,
LOWEST_SAL INT,
HIGHEST_SAL INT
)
/* -------------------- 7) JOB_HISTORY TABLE -------------------- */
CREATE TABLE JOB_HISTORY(
EMPLOYEE_ID INT FOREIGN KEY REFERENCES EMPLOYEES(EMPLOYEE_ID),
STARTING_DATE DATE, /*-----*/
ENDING_DATE DATE,  /*-----*/
JOB_ID VARCHAR(10) FOREIGN KEY REFERENCES JOBS(JOB_ID),
DEAPRTMENTS_ID INT FOREIGN KEY REFERENCES DEPARTMENTS(DEPARTMENTS_ID)
)
/* -------------------- 3) LOCATIONS TABLE -------------------- */
CREATE TABLE LOCATIONS(
LOCATION_ID INT PRIMARY KEY,
STREET_ADDRESS VARCHAR(40),
POSTAL_CODE VARCHAR(12),
CITY VARCHAR(30),
STATE_PROVINCE VARCHAR(50),
COUNTRY_ID CHAR(2) FOREIGN KEY REFERENCES COUNTRIES(COUNTRY_ID) 
)
/* -------------------- 1) REGIONS TABLE -------------------- */
CREATE TABLE REGIONS(
REGION_ID VARCHAR(25) PRIMARY KEY,
REGION_NAME VARCHAR(50)
)
/* -------------------- COUNTRIES TABLE's DATA -------------------- */ 
INSERT INTO countries VALUES   
        ( 'CA'  
        , 'Canada'  
        , 2   
        );  
  
INSERT INTO countries VALUES   
        ( 'DE'  
        , 'GERMANY'  
        , 1   
        );  
  
INSERT INTO countries VALUES   
        ( 'UK'  
        , 'UNITED KINGDOM'  
	    , 1
        );  
  
INSERT INTO countries VALUES   
        ( 'US'  
        , 'United States of America'  
        , 2   
        );  

/* -------------------- DEPARTMENTS TABLE's DATA -------------------- */ 
INSERT INTO departments (DEPARTMENTS_ID, DEPARTMENTS_NAME) VALUES   
        ( 10  
        , 'Administration'
        );  
  
INSERT INTO departments (DEPARTMENTS_ID, DEPARTMENTS_NAME) VALUES   
        ( 20  
        , 'Marketing'  
        );                    
  
INSERT INTO departments (DEPARTMENTS_ID, DEPARTMENTS_NAME) VALUES   
        ( 50  
        , 'Shipping'  
        );  
		     
INSERT INTO departments (DEPARTMENTS_ID, DEPARTMENTS_NAME) VALUES   
        ( 60   
        , 'IT'   
        );  
                  
INSERT INTO departments (DEPARTMENTS_ID, DEPARTMENTS_NAME) VALUES   
        ( 80   
        , 'Sales'
        );  
                  
INSERT INTO departments (DEPARTMENTS_ID, DEPARTMENTS_NAME) VALUES   
        ( 90   
        , 'Executive'  
        );  
  
    
INSERT INTO departments (DEPARTMENTS_ID, DEPARTMENTS_NAME) VALUES   
        ( 110   
        , 'Accounting'  
         );  
  
INSERT INTO departments (DEPARTMENTS_ID, DEPARTMENTS_NAME) VALUES   
        ( 190   
        , 'Contracting'  
        );
		
/* -------------------- EMPLOLYEES TABLE -------------------- */ 

INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 100  
        , 'Steven'  
        , 'King'  
        , 'SKING'  
        , '515.123.4567'  
        , '1987-jun-17'   /* YY-MM-DD */  
        , NULL  
        , NULL  
        );  
  
INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES 
        ( 101  
        , 'Neena'  
        , 'Kochhar'  
        , 'NKOCHHAR'  
        , '515.123.4568'  
        , '1989-sep-21'   /* YY-MM-DD */
        , NULL  
        , 100    
        );  
  
INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 109  
        , 'Lex'  
        , 'De Haan'  
        , 'LDEHAAN'  
        , '515.123.4569'  
        , '1993-jan-13'   /* YY-MM-DD */   
        , NULL  
        , 180   
        );  
  
INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 103  
        , 'Alexander'  
        , 'Hunold'  
        , 'AHUNOLD'  
        , '590.423.4567'  
        , '1990-january-3'   /* YY-MM-DD */    
        , NULL  
        , 102 
        );  
  
INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 104  
        , 'Bruce'  
        , 'Ernst'  
        , 'BERNST'  
        , '590.423.4568'  
        , '1991-may-21'   /* YY-MM-DD */    
        , NULL  
        , 103 
        );  
  
  
INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 107  
        , 'Diana'  
        , 'Lorentz'  
        , 'DLORENTZ'  
        , '590.423.5567'  
        , '1999-feb-07'   /* YY-MM-DD */   
        , NULL  
        , 113   
        );  
  
  
INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 124  
        , 'Kevin'  
        , 'Mourgos'  
        , 'KMOURGOS'  
        , '650.123.5234'  
        , '1999-feb-07'   /* YY-MM-DD */ 
        , NULL  
        , 109  
        );  
  
INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 141  
        , 'Trenna'  
        , 'Rajs'  
        , 'TRAJS'  
        , '650.121.8009'  
        , '1999-feb-07'   /* YY-MM-DD */   
        , NULL  
        , 124  
        );  
  
INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 142  
        , 'Curtis'  
        , 'Davies'  
        , 'CDAVIES'  
        , '650.121.2994'  
        , '1999-feb-07'   /* YY-MM-DD */     
        , NULL  
        , 124  
        );  
  
INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 143  
        , 'Randall'  
        , 'Matos'  
        , 'RMATOS'  
        , '650.121.2874'  
        , '1999-feb-07'   /* YY-MM-DD */  
        , NULL  
        , 134  
        );  
  
INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 144  
        , 'Peter'  
        , 'Vargas'  
        , 'PVARGAS'  
        , '650.121.2004'  
        , '1999-feb-07'   /* YY-MM-DD */  
        , NULL  
        , 194  
        );  
  
INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 149  
        , 'Eleni'  
        , 'Zlotkey'  
        , 'EZLOTKEY'  
        , '011.44.1344.429018'  
        , '1999-feb-07'   /* YY-MM-DD */  
        , .2  
        , 111   
        );  
  

INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 174  
        , 'Ellen'  
        , 'Abel'  
        , 'EABEL'  
        , '011.44.1644.429267'  
        , '1999-feb-07'   /* YY-MM-DD */ 
        , .30  
        , 149   
        );  
  
INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 176  
        , 'Jonathon'  
        , 'Taylor'  
        , 'JTAYLOR'  
        , '011.44.1644.429265'  
        , '1999-feb-07'   /* YY-MM-DD */    
        , .20  
        , 249   
        );  
  

INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 178  
        , 'Kimberely'  
        , 'Grant'  
        , 'KGRANT'  
        , '011.44.1644.429263'  
        , '1999-feb-07'   /* YY-MM-DD */ 
        , .15  
        , 141  
        );  
  

INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 200  
        , 'Jennifer'  
        , 'Whalen'  
        , 'JWHALEN'  
        , '515.123.4444'  
        , '1999-feb-07'   /* YY-MM-DD */   
        , NULL  
        , 101   
        );  
  
INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 201  
        , 'Michael'  
        , 'Hartstein'  
        , 'MHARTSTE'  
        , '515.123.5555'  
        , '1999-feb-07'   /* YY-MM-DD */     
        , NULL  
        , 170   
        );  
  
INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 202  
        , 'Pat'  
        , 'Fay'  
        , 'PFAY'  
        , '603.123.6666'  
        , '1999-feb-07'   /* YY-MM-DD */   
        , NULL  
        , 201   
        );  
  

INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 205  
        , 'Shelley'  
        , 'Higgins'  
        , 'SHIGGINS'  
        , '515.123.8080'  
        , '1999-feb-07'   /* YY-MM-DD */ 
        , NULL  
        , 301    
        );  
  
INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, COMMISION_PCT, MANAGER_ID ) VALUES   
        ( 206  
        , 'William'  
        , 'Gietz'  
        , 'WGIETZ'  
        , '515.123.8181'  
        , '1999-feb-07'   /* YY-MM-DD */ 
        , NULL  
        , 205  
        );  
		
/* -------------------- JOBS TABLE -------------------- */

INSERT INTO jobs VALUES   
        ( 'AD_PRES'  
        , 'President'  
        , 20080  
        , 40000  
        );  
	
INSERT INTO jobs VALUES   
        ( 'AD_VP'  
        , 'Administration Vice President'  
        , 15000  
        , 30000  
        );  
  
INSERT INTO jobs VALUES   
        ( 'AD_ASST'  
        , 'Administration Assistant'  
        , 3000  
        , 6000  
        );  

INSERT INTO jobs VALUES   
        ( 'AC_MGR'  
        , 'Accounting Manager'  
        , 8200  
        , 16000  
        );  
  
INSERT INTO jobs VALUES   
        ( 'AC_ACCOUNT'  
        , 'Public Accountant'  
        , 4200  
        , 9000  
        );  
	
INSERT INTO jobs VALUES   
        ( 'SA_MAN'  
        , 'Sales Manager'  
        , 10000  
        , 20080  
        );  
  
INSERT INTO jobs VALUES   
        ( 'SA_REP'  
        , 'Sales Representative'  
        , 6000  
        , 12008  
        );  
  
INSERT INTO jobs VALUES   
        ( 'ST_MAN'  
        , 'Stock Manager'  
        , 5500  
        , 8500  
        );  
	
INSERT INTO jobs VALUES   
        ( 'ST_CLERK'  
        , 'Stock Clerk'  
        , 2008  
        , 5000  
        );  

INSERT INTO jobs VALUES   
        ( 'IT_PROG'  
        , 'Programmer'  
        , 4000  
        , 10000  
        );  
  
INSERT INTO jobs VALUES   
        ( 'MK_MAN'  
        , 'Marketing Manager'  
        , 9000  
        , 15000  
        );  

INSERT INTO jobs VALUES   
        ( 'MK_REP'  
        , 'Marketing Representative'  
        , 4000  
        , 9000  
        );   

/* -------------------- JOB_GRADES TABLE -------------------- */

INSERT INTO JOB_GRADES VALUES   
        ( 'A' 
        , 1000  
        , 2999  
        );

INSERT INTO JOB_GRADES VALUES   
        ( 'B' 
        , 3000  
        , 5999  
        );  		   

INSERT INTO JOB_GRADES VALUES   
        ( 'C' 
        , 6000  
        , 9999  
        );  

INSERT INTO JOB_GRADES VALUES   
        ( 'D' 
        , 10000  
        , 14999  
        );  

INSERT INTO JOB_GRADES VALUES   
        ( 'E' 
        , 15000  
        , 24999  
        );  

INSERT INTO JOB_GRADES VALUES   
        ( 'F' 
        , 25000  
        , 40000  
        );  
	
/* -------------------- JOB_HISTORY TABLE -------------------- */
INSERT INTO job_history (STARTING_DATE, ENDING_DATE) 
VALUES ( '1999-feb-07'   /* YY-MM-DD */
       , '2020-feb-01'   /* YY-MM-DD */ 
	   ); 

INSERT INTO job_history (STARTING_DATE, ENDING_DATE) 
VALUES (  
        '1999-feb-07'   /* YY-MM-DD */
       , '2020-feb-01'   /* YY-MM-DD */   
       );  
  
INSERT INTO job_history  (STARTING_DATE, ENDING_DATE)
VALUES (  
        '1999-feb-07'   /* YY-MM-DD */ 
       , '2020-feb-01'   /* YY-MM-DD */   
       );  
  
INSERT INTO job_history  (STARTING_DATE, ENDING_DATE)
VALUES (  
        '1999-feb-07'   /* YY-MM-DD */  
       , '2020-feb-01'   /* YY-MM-DD */   
       );  
  
INSERT INTO job_history  (STARTING_DATE, ENDING_DATE)
VALUES (  
        '1999-feb-07'   /* YY-MM-DD */  
       , '2020-feb-01'   /* YY-MM-DD */   
       );  
  
INSERT INTO job_history  (STARTING_DATE, ENDING_DATE)
VALUES  ( '1999-feb-07'   /* YY-MM-DD */  
        , '2020-feb-01'   /* YY-MM-DD */   
        );  
  
INSERT INTO job_history  (STARTING_DATE, ENDING_DATE)
VALUES  (  
         '1999-feb-07'   /* YY-MM-DD */  
        , '2020-feb-01'   /* YY-MM-DD */   
        );  
  
INSERT INTO job_history  (STARTING_DATE, ENDING_DATE)
VALUES  ( 
         '1999-feb-07'   /* YY-MM-DD */  
        , '2020-feb-01'   /* YY-MM-DD */   
        );  
  
INSERT INTO job_history  (STARTING_DATE, ENDING_DATE)
VALUES  (
        '1999-feb-07'   /* YY-MM-DD */  
		, '2020-feb-01'   /* YY-MM-DD */ 
        );  
  
INSERT INTO job_history  (STARTING_DATE, ENDING_DATE)
VALUES  (  
         '1999-feb-07'   /* YY-MM-DD */  
        , '2020-feb-01'   /* YY-MM-DD */   
        );  
  
INSERT INTO job_history  (STARTING_DATE, ENDING_DATE)
VALUES  (
         '1999-feb-07'   /* YY-MM-DD */
        , '2020-feb-01'   /* YY-MM-DD */ 
	);
