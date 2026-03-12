mysql> SELECT Fname, Lname
    -> FROM EMPLOYEE
    -> WHERE Dno = 5;
+----------+---------+
| Fname    | Lname   |
+----------+---------+
| John     | Smith   |
| Franklin | Wong    |
| Joyce    | English |
| Ramesh   | Narayan |
+----------+---------+
4 rows in set (0.01 sec)

mysql> SELECT Fname, Lname, Salary
    -> FROM EMPLOYEE
    -> ORDER BY Salary DESC;
+----------+---------+----------+
| Fname    | Lname   | Salary   |
+----------+---------+----------+
| James    | Borg    | 55000.00 |
| Jennifer | Wallace | 43000.00 |
| Franklin | Wong    | 40000.00 |
| Ramesh   | Narayan | 38000.00 |
| John     | Smith   | 30000.00 |
| Joyce    | English | 25000.00 |
| Ahmad    | Jabbar  | 25000.00 |
| Alicia   | Zelaya  | 25000.00 |
+----------+---------+----------+
8 rows in set (0.00 sec)

mysql> SELECT AVG(Salary)
    -> FROM EMPLOYEE;
+--------------+
| AVG(Salary)  |
+--------------+
| 35125.000000 |
+--------------+
1 row in set (0.01 sec)

mysql> SELECT COUNT(*)
    -> FROM EMPLOYEE;
+----------+
| COUNT(*) |
+----------+
|        8 |
+----------+
1 row in set (0.00 sec)

mysql> SELECT MAX(Salary)
    -> FROM EMPLOYEE;
+-------------+
| MAX(Salary) |
+-------------+
|    55000.00 |
+-------------+
1 row in set (0.00 sec)

mysql> SELECT MIN(Salary)
    -> FROM EMPLOYEE;
+-------------+
| MIN(Salary) |
+-------------+
|    25000.00 |
+-------------+
1 row in set (0.00 sec)

mysql> SELECT Fname, Lname, Dname
    -> FROM EMPLOYEE
    -> JOIN DEPARTMENT
    -> ON EMPLOYEE.Dno = DEPARTMENT.Dnumber;
+----------+---------+----------------+
| Fname    | Lname   | Dname          |
+----------+---------+----------------+
| John     | Smith   | Research       |
| Franklin | Wong    | Research       |
| Joyce    | English | Research       |
| Ramesh   | Narayan | Research       |
| James    | Borg    | Headquarters   |
| Jennifer | Wallace | Administration |
| Ahmad    | Jabbar  | Administration |
| Alicia   | Zelaya  | Administration |
+----------+---------+----------------+
8 rows in set (0.00 sec)

mysql> SELECT Pname, Dnum
    -> FROM PROJECT;
+-----------------+------+
| Pname           | Dnum |
+-----------------+------+
| ProductX        |    5 |
| ProductY        |    5 |
| ProductZ        |    5 |
| Computerization |    4 |
| Reorganization  |    1 |
| Newbenefits     |    4 |
+-----------------+------+
6 rows in set (0.00 sec)

mysql> SELECT E.Fname AS Employee, S.Fname AS Supervisor
    -> FROM EMPLOYEE E
    -> LEFT JOIN EMPLOYEE S
    -> ON E.Super_ssn = S.Ssn;
+----------+------------+
| Employee | Supervisor |
+----------+------------+
| John     | Franklin   |
| Franklin | James      |
| Joyce    | Franklin   |
| Ramesh   | Franklin   |
| James    | NULL       |
| Jennifer | James      |
| Ahmad    | Jennifer   |
| Alicia   | Jennifer   |
+----------+------------+
8 rows in set (0.00 sec)

mysql> 


