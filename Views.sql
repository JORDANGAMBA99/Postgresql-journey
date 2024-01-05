create or replace view nevada_counties_pop_2010 AS
select geo_name,
       state_fips,
	      county_fips,
	      p0010001 as pop_2010
from us_counties_2010
where state_us_abbreviation = 'NV'
order by county_fips;

FIPS(Federal Information Processing Standards)
select* from 

select *from nevada_counties_pop_2010
limit 5;

CREATE TABLE us_counties_2000 (
    geo_name varchar(90),              -- County/state name,
    state_us_abbreviation varchar(2),  -- State/U.S. abbreviation
    state_fips varchar(2),             -- State FIPS code
    county_fips varchar(3),            -- County code
    p0010001 integer,                  -- Total population
    p0010002 integer,                  -- Population of one race:
    p0010003 integer,                      -- White Alone
    p0010004 integer,                      -- Black or African American alone
    p0010005 integer,                      -- American Indian and Alaska Native alone
    p0010006 integer,                      -- Asian alone
    p0010007 integer,                      -- Native Hawaiian and Other Pacific Islander alone
    p0010008 integer,                      -- Some Other Race alone
    p0010009 integer,                  -- Population of two or more races
    p0010010 integer,                  -- Population of two races
    p0020002 integer,                  -- Hispanic or Latino
    p0020003 integer                   -- Not Hispanic or Latino:
);

COPY us_counties_2000
FROM 'C:\Data Science e-books\us_counties_2000.csv'
WITH (FORMAT CSV, HEADER);

select * from us_counties_2000

CREATE OR REPLACE VIEW county_pop_change_2010_2000 AS
SELECT c2010.geo_name,
c2010.state_us_abbreviation AS st,
c2010.state_fips,
c2010.county_fips,
c2010.p0010001 AS pop_2010,
c2000.p0010001 AS pop_2000,
round( (CAST(c2010.p0010001 AS numeric(8,1)) - c2000.p0010001)
/ c2000.p0010001 * 100, 1 ) AS pct_change_2010_2000
FROM us_counties_2010 c2010 INNER JOIN us_counties_2000 c2000
ON c2010.state_fips = c2000.state_fips
AND c2010.county_fips = c2000.county_fips
ORDER BY c2010.state_fips, c2010.county_fips;

select geo_name,
	   st,
	   pop_2010,
	   pct_change_2010_2000
from county_pop_change_2010_2000
where st = 'NV'
Limit 5;

CREATE TABLE employees (
 emp_id bigserial,
 first_name varchar(100),
 last_name varchar(100),
 salary integer,
 dep_id integer)

INSERT INTO employees (first_name, last_name, salary, dep_id)
VALUES
 ('Nancy', 'Jones', 62500, 1),
 ('Lee', 'Smith', 59300, 1),
 ('Soo', 'Nguyen', 83000, 2),
 ('Janet', 'King', 95000, 2);

select * from employees_tax_dept
INSERT INTO employees_tax_dept (first_name, last_name, dep_id)
VALUES ('Suzanne', 'Legere', 1);

INSERT INTO employees_tax_dept (first_name, last_name, dep_id)
VALUES ('Jamil', 'White', 2);

SELECT * FROM employees_tax_dept;
SELECT * FROM employees;

UPDATE employees_tax_dept
SET last_name = 'Le Gere'
WHERE emp_id = 5;

SELECT * FROM employees_tax_dept;


