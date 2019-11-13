-- BASIC QUERIES
-- Unless otherwise stated, all queries should return all columns

-- Get all information about all authors
SELECT *
FROM authors;

-- Get just the name and birth year of all authors
SELECT name, birth_year
FROM authors;

-- Get all authors born in the 20th centruy or later
SELECT *
from authors
WHERE birth_year >= 1900;

-- Get all authors born in the USA
SELECT *
from authors
WHERE nationality LIKE 'United States%';

-- Get all books published on 1985
SELECT *
from books
WHERE publication_date = 1985;

-- Get all books published before 1989
SELECT *
from books
WHERE publication_date < 1989;

-- Get just the title of all books.
SELECT title
FROM books;

-- Get just the year that 'A Dance with Dragons' was published
-- Cry when you realize how long it's been
SELECT publication_date
FROM books
WHERE title = 'A Dance with Dragons';

-- Get all books which have `the` somewhere in their title (hint, look up LIKE/ILIKE)
SELECT *
from books
WHERE title LIKE '%the%';
-- Add yourself as an author
INSERT INTO authors
  (name, nationality, birth_year)
VALUES
  ('Sager Alarifi', 'Saudi Arabia', 1993);
-- Add two books that you'd like to write (you can hard-code your id as the author id)
INSERT INTO books
  (title, publication_date, author_id)
VALUES
  ('Markie Mark', 2011, 9);
INSERT INTO books
  (title, publication_date, author_id)
VALUES
  ('Fruits and Veggies', 2013, 9);
-- Update one of your books to have a new title
UPDATE books
SET title = 'Mango and Peas'
WHERE title = 'Fruits and Veggies';
-- Delete your books
DELETE from books
WHERE author_id = 9;
-- Delete your author entry
DELETE from authors
WHERE name = 'Sager Alarifi';