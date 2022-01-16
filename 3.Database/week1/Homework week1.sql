//1.create a database HR//
mysql> CREATE DATABASE db_HR;
Query OK, 1 row affected (0.01 sec)

//2.create a table employee//
mysql> USE db_HR;
Database changed
mysql> CREATE TABLE employee (EmployeeID INT(8) PRIMARY KEY(EmployeeID) , DepartmentID CHAR(4), FirstName VARCHAR(20), LastName VARCHAR(20), Gender ENUM('M','F'), Email VARCHAR(30), Salary VARCHAR(8), StartWorkDate DATE);
Query OK, 0 rows affected (0.05 sec)

mysql>  DESCRIBE employee;
+---------------+---------------+------+-----+---------+-------+
| Field         | Type          | Null | Key | Default | Extra |
+---------------+---------------+------+-----+---------+-------+
| EmployeeID    | int(8)        | NO   | PRI | NULL    |       |
| DepartmentID  | char(4)       | YES  |     | NULL    |       |
| FirstName     | varchar(20)   | YES  |     | NULL    |       |
| LastName      | varchar(20)   | YES  |     | NULL    |       |
| Gender        | enum('M','F') | YES  |     | NULL    |       |
| Email         | varchar(30)   | YES  |     | NULL    |       |
| Salary        | varchar(8)    | YES  |     | NULL    |       |
| StartWorkDate | date          | YES  |     | NULL    |       |
+---------------+---------------+------+-----+---------+-------+
8 rows in set (0.01 sec)

//3.create a table locations//
mysql> USE db_HR;
Database changed
mysql> CREATE TABLE locations (LocationID INT(8)PRIMARY KEY(LocationID), Adress VARCHAR(20), Street VARCHAR(20), City VARCHAR(20), Country VARCHAR(20), PostalCode VARCHAR(7),EmployeeID INT(11) FOREIGN KEY(EmployeeID) REFERENCES employee(EmployeeID));
Query OK, 0 rows affected (0.05 sec)

mysql> DESCRIBE locations;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| LocationID | int(8)      | NO   | PRI | NULL    |       |
| Adress     | varchar(20) | YES  |     | NULL    |       |
| Street     | varchar(20) | YES  |     | NULL    |       |
| City       | varchar(20) | YES  |     | NULL    |       |
| Country    | varchar(20) | YES  |     | NULL    |       |
| PostalCode | varchar(7)  | YES  |     | NULL    |       |
| EmployeeID | int(11)     | YES  | MUL | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

//4. Insert 10-20 rows in each table with relevant fields.//

//4.1 Insert into employee table//
mysql> INSERT INTO employee(EmployeeID, DepartmentID, FirstName, LastName, Gender, Email, Salary, StartWorkDate) 
VALUES
('11111', 'D1001', 'Emy', 'Amit', 'F', 'Emy.Amit@hotmail.com', '24,000', '2004-12-22'),
('232356','F200','Michal','Hills','M','Michal.H@gmail.com','24,000','2005-02-25'),
('224566','D100','Das','Nitin','M','Das.Nit@gmail.com','28,000','2007-07-24'),
('345341','M300','Sharma', 'Sayak', 'F', 'Sharma.S@hotmail.com', '30,000','2005-03-14'),
('394564','B200','Punia','Mani','F','Mani_P@gmail.com','28,000','2006-04-01'),
('455675','R100','Luis','Vuitong','F','Luis_V@hotmail.com','24,000','2007-02-11'),
('542193', 'F100','Wony','Elicson','M','Wony@gmail.com','26,000','2006-11-12');
('564219','F100','Paul','Walker','M','P.Walker@google.com', '23,000','2008-12-07'),
('642193', 'F100', 'Jana','Amand','F','Jana.Amand@gmail.com','25,000','2004-11-02'),
('988678','E100', 'Lex', 'Demond','M','Lex.Demond@hotmail.com', '21,000', '2008-03-01'),


mysql> SELECT * FROM employee;
+------------+--------------+-----------+----------+--------+------------------------+--------+---------------+
| EmployeeID | DepartmentID | FirstName | LastName | Gender | Email                  | Salary | StartWorkDate |
+------------+--------------+-----------+----------+--------+------------------------+--------+---------------+
|      11111 | D100         | Emy       | Amit     | F      | Emy.Amit@hotmail.com   | 24,000 | 2004-12-22    |
|     224566 | D100         | Das       | Nitin    | M      | Das.Nit@gmail.com      | 28,000 | 2007-07-24    |
|     232356 | F200         | Michal    | Hills    | M      | Michal.H@gmail.com     | 24,000 | 2005-02-25    |
|     345341 | M300         | Sharma    | Sayak    | F      | Sharma.S@hotmail.com   | 30,000 | 2005-03-14    |
|     394564 | B200         | Punia     | Mani     | F      | Mani_P@gmail.com       | 28,000 | 2006-04-01    |
|     455675 | R100         | Luis      | Vuitong  | F      | Luis_V@hotmail.com     | 24,000 | 2007-02-11    |
|     542193 | F100         | Wony      | Elicson  | M      | Wony@gmail.com         | 26,000 | 2006-11-12    |
|     564219 | F100         | Paul      | Walker   | M      | P.Walker@google.com    | 23,000 | 2008-12-07    |
|     642193 | F100         | Jana      | Amand    | F      | Jana.Amand@gmail.com   | 25,000 | 2004-11-02    |
|     988678 | E100         | Lex       | Demond   | M      | Lex.Demond@hotmail.com | 21,000 | 2008-03-01    |
+------------+--------------+-----------+----------+--------+------------------------+--------+---------------+
10 rows in set (0.00 sec)

//4.2 Insert into locations table//
INSERT INTO locations(LocationID,Adress,Street,City,Country,PostalCode,EmployeeID) 
VALUES
('1330', '15 lgh', 'Southern Street', 'London', 'England','21568','11111'),
('75','88 lol','Main Street','Lund','Sweden','78895','224566'),
('456','30 pap','Jarvisville Street', 'Francis', 'USA','56678','232356'),
('188','39 Lghr', 'Abaco Street', 'Bangkok','Thailand','21187','345341'),
('451','3 kok', 'Catherine Street ','NewYork','USA','90098','394564'),
('89','17 gak', 'Duke Street ', 'Lomma','Sweden','21165','455675'),
('544','11 kol','George Street','Shanghai','China','45455', '542193'),
('139','29 jup', 'Morton Street', 'Paris', 'France','08900','564219'),
('9', '69 lof', 'Wellington Street', 'Rome', 'Italy','12356','988678'),
('49','78 loi', 'Popnon Street', 'Paris', 'France','21000','642193');

mysql> SELECT * FROM locations;
+------------+---------+--------------------+----------+----------+------------+------------+
| LocationID | Adress  | Street             | City     | Country  | PostalCode | EmployeeID |
+------------+---------+--------------------+----------+----------+------------+------------+
|          9 | 69 lof  | Wellington Street  | Rome     | Italy    | 12356      |     988678 |
|         49 | 78 loi  | Popnon Street      | Paris    | France   | 21000      |     642193 |
|         75 | 88 lol  | Main Street        | Lund     | Sweden   | 78895      |     224566 |
|         89 | 17 gak  | Duke Street        | Lomma    | Sweden   | 21165      |     455675 |
|        139 | 29 jup  | Morton Street      | Paris    | France   | 08900      |     564219 |
|        188 | 39 Lghr | Abaco Street       | Bangkok  | Thailand | 21187      |     345341 |
|        451 | 3 kok   | Catherine Street   | NewYork  | USA      | 90098      |     394564 |
|        456 | 30 pap  | Jarvisville Street | Francis  | USA      | 56678      |     232356 |
|        544 | 11 kol  | George Street      | Shanghai | China    | 45455      |     542193 |
|       1330 | 15 lgh  | Southern Street    | London   | England  | 21568      |      11111 |
+------------+---------+--------------------+----------+----------+------------+------------+
10 rows in set (0.00 sec)
