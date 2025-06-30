use cars;
 -- Read Data--
select * from car_dekho;

-- Total cars: To get a count of total record--
select count(*) from car_dekho;

-- Manager asked how many cars will be available in 2023--
select count(*) from car_dekho where year=2023;

-- Manager asked how many cars will be available in 2020,2021,2022--
select year,count(*) from car_dekho where year in (2020,2021,2022) group by year ;

-- Client asked me to print the total of all cars by year--
select year,count(*) from car_dekho group by year;

-- client asked to car dealer agent how many diesel cars will be available in 2020?--
SELECT COUNT(*) FROM car_dekho WHERE year = 2020 AND fuel = 'diesel';

-- client requested a car dealer agent how many petrolcars will there be in 2020?--
select count(*) from car_dekho where year=2020 and fuel="petrol";

-- The manager told the employee to give a print all the fuel cars (petrol,diesel and CNG) come by all year--
select year,count(*) from car_dekho where fuel="petrol" group by year;
select year,count(*) from car_dekho where fuel="diesel" group by year;
select year,count(*) from car_dekho where fuel="CNG" group by year;

-- Manager said there were more than 100 cars in a given year , which year had more than 100 year?--
select year,count(*) from car_dekho group by year having count(*)>100;
select year,count(*) from car_dekho group by year having count(*)<100;

-- Manager said to employee all cars count detail between 2015 and 2023; we need complete list--
select count(*) from car_dekho where year>=2015 and year<=2023;

-- Manager said to employee all cars details between 2015 to 2023 we need complete list--
select * from car_dekho where year between 2015 and 2023;