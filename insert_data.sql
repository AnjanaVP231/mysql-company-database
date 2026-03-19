mysql> INSERT INTO EMPLOYEE 
(Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, Dno)
VALUES
('John', 'B', 'Smith', '123456789', '1965-01-09', '731 Fondren, Houston, TX', 'M', 30000, '333445555', 5),
('Franklin', 'T', 'Wong', '333445555', '1965-12-08', '638 Voss, Houston, TX', 'M', 40000, '888665555', 5),
('Joyce', 'A', 'English', '453453453', '1972-07-31', '5631 Rice, Houston, TX', 'F', 25000, '333445555', 5),
('Ramesh', 'K', 'Narayan', '666884444', '1962-09-15', '975 Fire Oak, Humble, TX', 'M', 38000, '333445555', 5),
('James', 'E', 'Borg', '888665555', '1937-11-10', '450 Stone, Houston, TX', 'M', 55000, NULL, 1),
('Jennifer', 'S', 'Wallace', '987654321', '1941-06-20', '291 Berry, Bellaire, TX', 'F', 43000, '888665555', 4),
('Ahmad', 'V', 'Jabbar', '987987987', '1969-03-29', '980 Dallas, Houston, TX', 'M', 25000, '987654321', 4),
('Alicia', 'J', 'Zelaya', '999887777', '1968-01-19', '3321 Castle, Spring, TX', 'F', 25000, '987654321', 4);

mysql> select * from EMPLOYEE ;
+----------+-------+---------+-----------+------------+--------------------------+------+----------+-----------+------+
| Fname    | Minit | Lname   | Ssn       | Bdate      | Address                  | Sex  | Salary   | Super_ssn | Dno  |
+----------+-------+---------+-----------+------------+--------------------------+------+----------+-----------+------+
| John     | B     | Smith   | 123456789 | 1965-01-09 | 731 Fondren, Houston, TX | M    | 30000.00 | 333445555 |    5 |
| Franklin | T     | Wong    | 333445555 | 1965-12-08 | 638 Voss, Houston, TX    | M    | 40000.00 | 888665555 |    5 |
| Joyce    | A     | English | 453453453 | 1972-07-31 | 5631 Rice, Houston, TX   | F    | 25000.00 | 333445555 |    5 |
| Ramesh   | K     | Narayan | 666884444 | 1962-09-15 | 975 Fire Oak, Humble, TX | M    | 38000.00 | 333445555 |    5 |
| James    | E     | Borg    | 888665555 | 1937-11-10 | 450 Stone, Houston, TX   | M    | 55000.00 | NULL      |    1 |
| Jennifer | S     | Wallace | 987654321 | 1941-06-20 | 291 Berry, Bellaire, TX  | F    | 43000.00 | 888665555 |    4 |
| Ahmad    | V     | Jabbar  | 987987987 | 1969-03-29 | 980 Dallas, Houston, TX  | M    | 25000.00 | 987654321 |    4 |
| Alicia   | J     | Zelaya  | 999887777 | 1968-01-19 | 3321 Castle, Spring, TX  | F    | 25000.00 | 987654321 |    4 |
+----------+-------+---------+-----------+------------+--------------------------+------+----------+-----------+------+
8 rows in set (0.00 sec)

mysql> INSERT INTO DEPARTMENT VALUES
    -> ('Research',5,'333445555','1988-05-22'),
    -> ('Administration',4,'987654321','1995-01-01'),
    -> ('Headquarters',1,'888665555','1981-06-19');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from DEPARTMENT;
+----------------+---------+-----------+----------------+
| Dname          | Dnumber | Mgr_ssn   | Mgr_start_date |
+----------------+---------+-----------+----------------+
| Headquarters   |       1 | 888665555 | 1981-06-19     |
| Administration |       4 | 987654321 | 1995-01-01     |
| Research       |       5 | 333445555 | 1988-05-22     |
+----------------+---------+-----------+----------------+
3 rows in set (0.00 sec)

mysql> INSERT INTO DEPT_LOCATIONS VALUES
    -> (1,'Houston'),
    -> (4,'Stafford'),
    -> (5,'Bellaire'),
    -> (5,'Sugarland'),
    -> (5,'Houston');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from DEPENDENT;
Empty set (0.00 sec)

mysql> select * from DEPT_LOCATIONS;
+---------+-----------+
| Dnumber | Dlocation |
+---------+-----------+
|       1 | Houston   |
|       4 | Stafford  |
|       5 | Bellaire  |
|       5 | Houston   |
|       5 | Sugarland |
+---------+-----------+
5 rows in set (0.00 sec)

mysql> INSERT INTO PROJECT VALUES
    -> ('ProductX',1,'Bellaire',5),
    -> ('ProductY',2,'Sugarland',5),
    -> ('ProductZ',3,'Houston',5),
    -> ('Computerization',10,'Stafford',4),
    -> ('Reorganization',20,'Houston',1),
    -> ('Newbenefits',30,'Stafford',4);
Query OK, 6 rows affected (0.01 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> select * from PROJECT;
+-----------------+---------+-----------+------+
| Pname           | Pnumber | Plocation | Dnum |
+-----------------+---------+-----------+------+
| ProductX        |       1 | Bellaire  |    5 |
| ProductY        |       2 | Sugarland |    5 |
| ProductZ        |       3 | Houston   |    5 |
| Computerization |      10 | Stafford  |    4 |
| Reorganization  |      20 | Houston   |    1 |
| Newbenefits     |      30 | Stafford  |    4 |
+-----------------+---------+-----------+------+
6 rows in set (0.00 sec)

mysql> INSERT INTO WORKS_ON VALUES
    -> ('123456789',1,32.5),
    -> ('123456789',2,7.5),
    -> ('666884444',3,40.0),
    -> ('453453453',1,20.0),
    -> ('453453453',2,20.0),
    -> ('333445555',2,10.0),
    -> ('333445555',3,10.0),
    -> ('333445555',10,10.0),
    -> ('333445555',20,10.0),
    -> ('999887777',30,30.0),
    -> ('999887777',10,10.0),
    -> ('987987987',10,35.0),
    -> ('987987987',30,5.0),
    -> ('987654321',30,20.0),
    -> ('987654321',20,15.0),
    -> ('888665555',20,NULL);
Query OK, 16 rows affected (0.01 sec)
Records: 16  Duplicates: 0  Warnings: 0

mysql> select * from WORKS_ON;
+-----------+-----+-------+
| Essn      | Pno | Hours |
+-----------+-----+-------+
| 123456789 |   1 |  32.5 |
| 123456789 |   2 |   7.5 |
| 333445555 |   2 |  10.0 |
| 333445555 |   3 |  10.0 |
| 333445555 |  10 |  10.0 |
| 333445555 |  20 |  10.0 |
| 453453453 |   1 |  20.0 |
| 453453453 |   2 |  20.0 |
| 666884444 |   3 |  40.0 |
| 888665555 |  20 |  NULL |
| 987654321 |  20 |  15.0 |
| 987654321 |  30 |  20.0 |
| 987987987 |  10 |  35.0 |
| 987987987 |  30 |   5.0 |
| 999887777 |  10 |  10.0 |
| 999887777 |  30 |  30.0 |
+-----------+-----+-------+
16 rows in set (0.00 sec)

mysql> INSERT INTO DEPENDENT VALUES
    -> ('333445555','Alice','F','1986-04-05','Daughter'),
    -> ('333445555','Theodore','M','1983-10-25','Son'),
    -> ('333445555','Joy','F','1958-05-03','Spouse'),
    -> ('987654321','Abner','M','1942-02-28','Spouse'),
    -> ('123456789','Michael','M','1988-01-04','Son'),
    -> ('123456789','Alice','F','1988-12-30','Daughter'),
    -> ('123456789','Elizabeth','F','1967-05-05','Spouse');
Query OK, 7 rows affected (0.01 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql> select * from DEPENDENT;
+-----------+----------------+------+------------+--------------+
| Essn      | Dependent_name | Sex  | Bdate      | Relationship |
+-----------+----------------+------+------------+--------------+
| 123456789 | Alice          | F    | 1988-12-30 | Daughter     |
| 123456789 | Elizabeth      | F    | 1967-05-05 | Spouse       |
| 123456789 | Michael        | M    | 1988-01-04 | Son          |
| 333445555 | Alice          | F    | 1986-04-05 | Daughter     |
| 333445555 | Joy            | F    | 1958-05-03 | Spouse       |
| 333445555 | Theodore       | M    | 1983-10-25 | Son          |
| 987654321 | Abner          | M    | 1942-02-28 | Spouse       |
+-----------+----------------+------+------------+--------------+
7 rows in set (0.00 sec)

