1.
SELECT * FROM Jadralec
WHERE rating % 2 = 0;

2.
SELECT ime, COUNT(*) AS st FROM Coln
GROUP BY ime
HAVING st > 1;

SELECT DISTINCT c1.ime FROM Coln c1
INNER JOIN Coln c2 ON c1.ime = c2.ime
WHERE c1.cid != c2.cid;

SELECT * FROM Coln c1
INNER JOIN Coln c2 ON c1.ime = c2.ime
WHERE c1.cid < c2.cid;

3.
SELECT * FROM Jadralec
WHERE rating % 2 = 1;

4.
SELECT c.ime FROM Coln c
INNER JOIN Rezervacija r ON r.cid = c.cid
INNER JOIN Jadralec j ON j.jid = r.jid
WHERE c.dolzina > 35 AND j.starost <= 35;

5.
SELECT j.ime, r.dan FROM Jadralec j
INNER JOIN Rezervacija r ON r.jid = j.jid
INNER JOIN Coln c ON r.cid = c.cid
WHERE c.ime = 'Bavaria' OR c.ime = 'Sun Odyssey';

6.
SELECT ime, COUNT(*) AS st FROM Jadralec
GROUP BY ime
HAVING st > 1;

SELECT * FROM Jadralec j1
INNER JOIN Jadralec j2 ON j1.ime = j2.ime
WHERE j1.jid < j2.jid;

7.
SELECT j.ime FROM Jadralec j
INNER JOIN Rezervacija r ON r.jid = j.jid
INNER JOIN Coln c ON r.cid = c.cid
WHERE r.dan BETWEEN '2006-01-01' AND '2006-12-31'
	AND c.ime LIKE '%sun%';


-- Employees

1.
SELECT last_name FROM employees
WHERE last_name LIKE '%ski%';

2.
SELECT * FROM departments;

3.
SELECT DISTINCT e.first_name, e.last_name FROM employees e
INNER JOIN salaries s ON s.emp_no = e.emp_no
WHERE s.salary > 70000;

4.
SELECT e.first_name, e.last_name FROM employees e
INNER JOIN titles t ON t.emp_no = e.emp_no
WHERE t.title = 'Senior Staff';

5.
SELECT DISTINCT last_name FROM employees
WHERE last_name LIKE 'Pea%';

6.
SELECT DISTINCT last_name, title FROM employees e
INNER JOIN titles t ON t.emp_no = e.emp_no;

7.
SELECT * FROM employees
WHERE birth_date BETWEEN '1950-01-01' AND '1960-12-31'
	AND first_name RLIKE '^.*[aeiouAEIOU]$'
    AND hire_date >= '1990-01-01';


-- Travian

1.
SELECT * FROM aliansa
WHERE alliance LIKE '%mgp%';

2.
SELECT * FROM pleme;

3.
SELECT i.player FROM igralec i
INNER JOIN naselje n ON n.pid = i.pid
WHERE n.population > 1000;

4.
SELECT n.village FROM naselje n
INNER JOIN igralec i ON i.pid = n.pid
WHERE i.player = 'Ronin';

5.
SELECT i.player FROM igralec i
WHERE i.player LIKE 'moj%';

6.
SELECT i.player, p.tribe FROM igralec i
INNER JOIN pleme p ON p.tid = i.tid
WHERE i.player LIKE 'moj%';

7.
SELECT * FROM naselje
WHERE x >= 0 AND y >= 0
	AND village RLIKE '^.*[aeiouAEIOU]$'
    AND population >= 750;
    