use challenge;
CREATE TABLE Country_Info (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(100),
    Population INT,
    Area FLOAT
);

INSERT INTO Country_Info (Id, Country_name, Population, Area) VALUES
(1, 'United States', 331002651, 9833520),
(2, 'China', 1439323776, 9596961),
(3, 'India', 1380004385, 3287263),
(4, 'Indonesia', 273523615, 1904569),
(5, 'Pakistan', 220892340, 881912),
(6, 'Brazil', 212559417, 8515767),
(7, 'Nigeria', 206139589, 923768),
(8, 'Bangladesh', 164689383, 147570),
(9, 'Russia', 145934462, 17098242),
(10, 'Mexico', 128932753, 1964375);
select *from country_info;

CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Population INT,
    Rating DECIMAL(3, 2),
    Country_Id INT,
    Country_name VARCHAR(100)
);

INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'John', 'Doe', 331002651, 4.5, 1, 'United States'),
(2, 'Jane', 'Smith', 331002651, 4.3, 1, 'United States'),
(3, 'Alice', 'Johnson', 1439323776, 4.7, 2, 'China'),
(4, 'Bob', 'Brown', 1439323776, 4.2, 2, 'China'),
(5, 'Charlie', 'Davis', 1380004385, 4.6, 3, 'India'),
(6, 'David', 'Miller', 1380004385, 4.4, 3, 'India'),
(7, 'Eva', 'Wilson', 212559417, 4.8, 4, 'Brazil'),
(8, 'Frank', 'Taylor', 212559417, 4.1, 4, 'Brazil'),
(9, 'Grace', 'Anderson', 145934462, 4.9, 5, 'Russia'),
(10, 'Hannah', 'Thomas', 145934462, 4.0, 5, 'Russia');
select *from persons;

#(1)Perform inner join, Left join, and Right join on the tables. 
#inner join
select c.Id, concat(p.fname,' ',p.lname) as Name ,c.country_name, p.rating ,p.population 
from   persons p inner join country_info c on p.Id = c.id  ;
#Left join 
select c.Id, concat(p.fname,' ',p.lname) as Name ,c.country_name, p.rating ,p.population 
from   persons p left join country_info c on p.Id = c.id  ;
#Right join 
select c.Id, concat(p.fname,' ',p.lname) as Name ,c.country_name, p.rating ,p.population 
from   persons p right join country_info c on p.Id = c.id  ;

#(2)List all distinct country names from both the Country and Persons tables.
select distinct country_name from country_info 
union 
select distinct country_name from country_info persons;

#(3)List all country names from both the Country and Persons tables, including duplicates. 
select distinct country_name from country_info 
union all
select distinct country_name from country_info persons;