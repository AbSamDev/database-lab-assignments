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
COUNTRY_ID CHAR(2) PRIMARY KEY,
COUNTRY_NAME VARCHAR(40),
REGION_ID INT
)

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

/* -------------------- DEPARTMENTS TABLE -------------------- */ 
CREATE TABLE DEPARTMENTS(
DEPARTMENTS_ID INT PRIMARY KEY,
DEPARTMENTS_NAME VARCHAR(30),
MANAGER_ID INT,
LOCATION_ID INT
)

INSERT INTO departments VALUES   
        ( 10  
        , 'Administration'  
        , 200  
        , 1700  
        );  
  
INSERT INTO departments VALUES   
        ( 20  
        , 'Marketing'  
        , 201  
        , 1800  
        );                    
  
INSERT INTO departments VALUES   
        ( 50  
        , 'Shipping'  
        , 124  
        , 1500  
        );  
		     
INSERT INTO departments VALUES   
        ( 60   
        , 'IT'  
        , 103  
        , 1400  
        );  
                  
INSERT INTO departments VALUES   
        ( 80   
        , 'Sales'  
        , 149  
        , 2500  
        );  
                  
INSERT INTO departments VALUES   
        ( 90   
        , 'Executive'  
        , 100  
        , 1700  
        );  
  
    
INSERT INTO departments VALUES   
        ( 110   
        , 'Accounting'  
        , 205  
        , 1700  
        );  
  
INSERT INTO departments VALUES   
        ( 190   
        , 'Contracting'  
        , NULL  
        , 1700  
        );

/* -------------------- EMPLOLYEES TABLE -------------------- */ 
CREATE TABLE EMPLOYEES(
EMPLOYEE_ID INT PRIMARY KEY,
FIRST_NAME VARCHAR(20),
LAST_NAME VARCHAR(25),
EMAIL VARCHAR(25),
PHONE_NUMBER VARCHAR(20),
HIRE_DATE DATE,
JOB_ID VARCHAR(10),
SALARY INT,
COMMISION_PCT FLOAT(24),
MANAGER_ID INT,
DEPATMENT_ID INT
)

INSERT INTO employees VALUES   
        ( 100  
        , 'Steven'  
        , 'King'  
        , 'SKING'  
        , '515.123.4567'  
        , '1987-jun-17'   /* YY-MM-DD */
        , 'AD_PRES'  
        , 24000  
        , NULL  
        , NULL  
        , 90  
        );  
  
INSERT INTO employees VALUES   
        ( 101  
        , 'Neena'  
        , 'Kochhar'  
        , 'NKOCHHAR'  
        , '515.123.4568'  
        , '1989-sep-21'   /* YY-MM-DD */
        , 'AD_VP'  
        , 17000  
        , NULL  
        , 100  
        , 90  
        );  
  
INSERT INTO employees VALUES   
        ( 102  
        , 'Lex'  
        , 'De Haan'  
        , 'LDEHAAN'  
        , '515.123.4569'  
        , '1993-jan-13'   /* YY-MM-DD */ 
        , 'AD_VP'  
        , 17000  
        , NULL  
        , 100  
        , 90  
        );  
  
INSERT INTO employees VALUES   
        ( 103  
        , 'Alexander'  
        , 'Hunold'  
        , 'AHUNOLD'  
        , '590.423.4567'  
        , '1990-january-3'   /* YY-MM-DD */  
        , 'IT_PROG'  
        , 9000  
        , NULL  
        , 102  
        , 60  
        );  
  
INSERT INTO employees VALUES   
        ( 104  
        , 'Bruce'  
        , 'Ernst'  
        , 'BERNST'  
        , '590.423.4568'  
        , '1991-may-21'   /* YY-MM-DD */  
        , 'IT_PROG'  
        , 6000  
        , NULL  
        , 103  
        , 60  
        );  
  
  
INSERT INTO employees VALUES   
        ( 107  
        , 'Diana'  
        , 'Lorentz'  
        , 'DLORENTZ'  
        , '590.423.5567'  
        , '1999-feb-07'   /* YY-MM-DD */ 
        , 'IT_PROG'  
        , 4200  
        , NULL  
        , 103  
        , 60  
        );  
  
  
INSERT INTO employees VALUES   
        ( 124  
        , 'Kevin'  
        , 'Mourgos'  
        , 'KMOURGOS'  
        , '650.123.5234'  
        , '1999-feb-07'   /* YY-MM-DD */ 
        , 'ST_MAN'  
        , 5800  
        , NULL  
        , 100  
        , 50  
        );  
  
INSERT INTO employees VALUES   
        ( 141  
        , 'Trenna'  
        , 'Rajs'  
        , 'TRAJS'  
        , '650.121.8009'  
        , '1999-feb-07'   /* YY-MM-DD */  
        , 'ST_CLERK'  
        , 3500  
        , NULL  
        , 124  
        , 50  
        );  
  
INSERT INTO employees VALUES   
        ( 142  
        , 'Curtis'  
        , 'Davies'  
        , 'CDAVIES'  
        , '650.121.2994'  
        , '1999-feb-07'   /* YY-MM-DD */   
        , 'ST_CLERK'  
        , 3100  
        , NULL  
        , 124  
        , 50  
        );  
  
INSERT INTO employees VALUES   
        ( 143  
        , 'Randall'  
        , 'Matos'  
        , 'RMATOS'  
        , '650.121.2874'  
        , '1999-feb-07'   /* YY-MM-DD */  
        , 'ST_CLERK'  
        , 2600  
        , NULL  
        , 124  
        , 50  
        );  
  
INSERT INTO employees VALUES   
        ( 144  
        , 'Peter'  
        , 'Vargas'  
        , 'PVARGAS'  
        , '650.121.2004'  
        , '1999-feb-07'   /* YY-MM-DD */   
        , 'ST_CLERK'  
        , 2500  
        , NULL  
        , 124  
        , 50  
        );  
  
INSERT INTO employees VALUES   
        ( 149  
        , 'Eleni'  
        , 'Zlotkey'  
        , 'EZLOTKEY'  
        , '011.44.1344.429018'  
        , '1999-feb-07'   /* YY-MM-DD */ 
        , 'SA_MAN'  
        , 10500  
        , .2  
        , 100  
        , 80  
        );  
  

INSERT INTO employees VALUES   
        ( 174  
        , 'Ellen'  
        , 'Abel'  
        , 'EABEL'  
        , '011.44.1644.429267'  
        , '1999-feb-07'   /* YY-MM-DD */ 
        , 'SA_REP'  
        , 11000  
        , .30  
        , 149  
        , 80  
        );  
  
INSERT INTO employees VALUES   
        ( 176  
        , 'Jonathon'  
        , 'Taylor'  
        , 'JTAYLOR'  
        , '011.44.1644.429265'  
        , '1999-feb-07'   /* YY-MM-DD */  
        , 'SA_REP'  
        , 8600  
        , .20  
        , 149  
        , 80  
        );  
  

INSERT INTO employees VALUES   
        ( 178  
        , 'Kimberely'  
        , 'Grant'  
        , 'KGRANT'  
        , '011.44.1644.429263'  
        , '1999-feb-07'   /* YY-MM-DD */ 
        , 'SA_REP'  
        , 7000  
        , .15  
        , 149  
        , NULL  
        );  
  

INSERT INTO employees VALUES   
        ( 200  
        , 'Jennifer'  
        , 'Whalen'  
        , 'JWHALEN'  
        , '515.123.4444'  
        , '1999-feb-07'   /* YY-MM-DD */  
        , 'AD_ASST'  
        , 4400  
        , NULL  
        , 101  
        , 10  
        );  
  
INSERT INTO employees VALUES   
        ( 201  
        , 'Michael'  
        , 'Hartstein'  
        , 'MHARTSTE'  
        , '515.123.5555'  
        , '1999-feb-07'   /* YY-MM-DD */   
        , 'MK_MAN'  
        , 13000  
        , NULL  
        , 100  
        , 20  
        );  
  
INSERT INTO employees VALUES   
        ( 202  
        , 'Pat'  
        , 'Fay'  
        , 'PFAY'  
        , '603.123.6666'  
        , '1999-feb-07'   /* YY-MM-DD */  
        , 'MK_REP'  
        , 6000  
        , NULL  
        , 201  
        , 20  
        );  
  

INSERT INTO employees VALUES   
        ( 205  
        , 'Shelley'  
        , 'Higgins'  
        , 'SHIGGINS'  
        , '515.123.8080'  
        , '1999-feb-07'   /* YY-MM-DD */ 
        , 'AC_MGR'  
        , 12008  
        , NULL  
        , 101  
        , 110  
        );  
  
INSERT INTO employees VALUES   
        ( 206  
        , 'William'  
        , 'Gietz'  
        , 'WGIETZ'  
        , '515.123.8181'  
        , '1999-feb-07'   /* YY-MM-DD */ 
        , 'AC_ACCOUNT'  
        , 8300  
        , NULL  
        , 205  
        , 110  
        );  
		
/* -------------------- JOBS TABLE -------------------- */
CREATE TABLE JOBS(
JOB_ID  VARCHAR(10) PRIMARY KEY,
JOB_TITLE VARCHAR(35),
MIN_SALARY INT,
MAX_SALARY INT
)

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
CREATE TABLE JOB_GRADES(
GRADE_LEVEL VARCHAR(3) PRIMARY KEY,
LOWEST_SAL INT,
HIGHEST_SAL INT
)

INSERT INTO jobs VALUES   
        ( 'A' 
        , 1000  
        , 2999  
        );

INSERT INTO jobs VALUES   
        ( 'B' 
        , 3000  
        , 5999  
        );  		   

INSERT INTO jobs VALUES   
        ( 'C' 
        , 6000  
        , 9999  
        );  

INSERT INTO jobs VALUES   
        ( 'D' 
        , 10000  
        , 14999  
        );  

INSERT INTO jobs VALUES   
        ( 'E' 
        , 15000  
        , 24999  
        );  

INSERT INTO jobs VALUES   
        ( 'F' 
        , 25000  
        , 40000  
        );  
	
/* -------------------- JOB_HISTORY TABLE -------------------- */
CREATE TABLE JOB_HISTORY(
EMPLOYEE_ID INT PRIMARY KEY,
STARTING_DATE DATE, /*-----*/
ENDING_DATE DATE,  /*-----*/
JOB_ID VARCHAR(10),
DEAPRTMENT_ID INT
)

INSERT INTO job_history  
VALUES (102  
       , '1999-feb-07'   /* YY-MM-DD */
       , '2020-feb-01'   /* YY-MM-DD */   
       , 'IT_PROG'  
       , 60);  
  
INSERT INTO job_history  
VALUES (101  
       , '1999-feb-07'   /* YY-MM-DD */ 
       , '2020-feb-01'   /* YY-MM-DD */   
       , 'AC_ACCOUNT'  
       , 110);  
  
INSERT INTO job_history  
VALUES (101  
       , '1999-feb-07'   /* YY-MM-DD */  
       , '2020-feb-01'   /* YY-MM-DD */   
       , 'AC_MGR'  
       , 110);  
  
INSERT INTO job_history  
VALUES (201  
       , '1999-feb-07'   /* YY-MM-DD */  
       , '2020-feb-01'   /* YY-MM-DD */   
       , 'MK_REP'  
       , 20);  
  
INSERT INTO job_history  
VALUES  (114  
        , '1999-feb-07'   /* YY-MM-DD */  
        , '2020-feb-01'   /* YY-MM-DD */   
        , 'ST_CLERK'  
        , 50  
        );  
  
INSERT INTO job_history  
VALUES  (122  
        , '1999-feb-07'   /* YY-MM-DD */  
        , '2020-feb-01'   /* YY-MM-DD */   
        , 'ST_CLERK'  
        , 50  
        );  
  
INSERT INTO job_history  
VALUES  (200  
        , '1999-feb-07'   /* YY-MM-DD */  
        , '2020-feb-01'   /* YY-MM-DD */ 
        , 'AD_ASST'  
        , 90  
        );  
  
INSERT INTO job_history  
VALUES  (176  
        , '1999-feb-07'   /* YY-MM-DD */  
		, '2020-feb-01'   /* YY-MM-DD */ 
        , 'SA_REP'  
        , 80  
        );  
  
INSERT INTO job_history  
VALUES  (176  
        , '1999-feb-07'   /* YY-MM-DD */  
        , '2020-feb-01'   /* YY-MM-DD */   
        , 'SA_MAN'  
        , 80  
        );  
  
INSERT INTO job_history  
VALUES  (200  
        , '1999-feb-07'   /* YY-MM-DD */
        , '2020-feb-01'   /* YY-MM-DD */ 
        , 'AC_ACCOUNT'  
        , 90  
	);
	
/* -------------------- LOCATIONS TABLE -------------------- */
CREATE TABLE LOCATIONS(
LOCATION_ID INT PRIMARY KEY,
STREET_ADDRESS VARCHAR(40),
POSTAL_CODE VARCHAR(12),
CITY VARCHAR(30),
STATE_PROVINCE VARCHAR(50),
COUNTRY_ID CHAR(2)
)

INSERT INTO locations VALUES   
        ( 1400   
        , '2014 Jabberwocky Rd'  
        , '26192'  
        , 'Southlake'  
        , 'Texas'  
        , 'US'  
        );  
  
INSERT INTO locations VALUES   
        ( 1500   
        , '2011 Interiors Blvd'  
        , '99236'  
        , 'South San Francisco'  
        , 'California'  
        , 'US'  
        );  
  
INSERT INTO locations VALUES   
        ( 1700   
        , '2004 Charade Rd'  
        , '98199'  
        , 'Seattle'  
        , 'Washington'  
        , 'US'  
        );  
  
INSERT INTO locations VALUES   
        ( 1800   
        , '147 Spadina Ave'  
        , 'M5V 2L7'  
        , 'Toronto'  
        , 'Ontario'  
        , 'CA'  
        );  
	
INSERT INTO locations VALUES   
        ( 2500   
        , 'Magdalen Centre, The Oxford Science Park'  
        , 'OX9 9ZB'  
        , 'Oxford'  
        , 'Oxford'  
        , 'UK'  
        );  
  
 
/* -------------------- REGIONS TABLE -------------------- */
CREATE TABLE REGIONS(
REGION_ID VARCHAR(25) PRIMARY KEY,
REGION_NAME VARCHAR(50)
)

INSERT INTO REGIONS VALUES   
        ( 1  
        , 'Europe'   
        );  
  
INSERT INTO REGIONS VALUES   
        ( 2  
        , 'Americas'   
        );
  
INSERT INTO REGIONS VALUES   
        ( 3  
        , 'Asia'   
        );  
  
INSERT INTO REGIONS VALUES   
        ( 4  
        , 'Middle East and Africa'   
        );


