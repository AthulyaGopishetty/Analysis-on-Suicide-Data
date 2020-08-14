/*Author: Venkata Sri Athulya Gopishetty
Course - AIT580
Final Project
General data analysis using Oracle*/

/*dropping table WHO_data */
drop table WHO_data;

/*creating table WHO_data with headers as columns*/
create table WHO_data(country varchar(35),year number(4),
sex varchar(6), age varchar(18), suicides_no number(5), population number(8),
suicides_100k_pop decimal(5,2), country_year varchar(45),
HDI_for_year decimal(4,3), gdp_for_year_$ varchar(20), gdp_per_capita_$ number(6),	
generation varchar(25));

/*selecting all columns of table WHO_data to view*/
select * from WHO_data;

/*display suicide rate as per sex */
select sex, sum(suicides_no) from WHO_data group by sex;

/* display suicide rate as per country */
select country, sum(suicides_no) from WHO_data group by country order by sum(suicides_no) desc;

/* display suicide rate as per per capita income */
select suicides_no, gdp_per_capita_$ from WHO_data order by gdp_per_capita_$ desc;

