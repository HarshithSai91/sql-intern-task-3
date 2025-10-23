USE LibraryDB;

SELECT * FROM Students;

SELECT title FROM Books
WHERE author_id = 1;

SELECT * FROM Students
WHERE course = 'Computer Science' AND student_name LIKE 'A%';

SELECT * FROM Books
WHERE title LIKE '%Harry Potter%';

SELECT * FROM Borrow
WHERE borrow_date BETWEEN '2025-10-01' AND '2025-10-05';

SELECT * FROM Borrow
WHERE return_date IS NULL;

SELECT * FROM Students
ORDER BY student_name DESC;

SELECT * FROM Books
ORDER BY book_id DESC
LIMIT 2;

-- Combining all clauses
SELECT student_id, borrow_date FROM Borrow
WHERE book_id = 3 AND return_date IS NULL
ORDER BY borrow_date ASC
LIMIT 1;