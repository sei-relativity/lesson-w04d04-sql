-- BASIC QUERIES
-- Unless otherwise stated, all queries should return all columns

-- Get all information about all authors
SELECT * FROM authors;

-- Get just the name and birth year of all authors
SELECT name, birth_year FROM authors;
-- Get all authors born in the 20th centruy or later
 SELECT * FROM authors WHERE birth_year >= 1900

-- Get all authors born in the USA
SELECT * FROM authors WHERE nationality = 'United States of America'
-- Get all books published on 1985
SELECT * FROM books WHERE publication_date = 1985;
-- Get all books published before 1989
SELECT * FROM books WHERE publication_date < 1989
-- Get just the title of all books.
SELECT title FROM books;
-- Get just the year that 'A Dance with Dragons' was published
  -- Cry when you realize how long it's been
  SELECT publication_date FROM books WHERE title = 'A Dance with Dragons';
-- Get all books which have `the` somewhere in their title (hint, look up LIKE/ILIKE)
SELECT * FROM books WHERE title like '%the%';
-- Add yourself as an author
INSERT INTO authors (id, name, nationality, birth_year) VALUES (10768996, 'Saud', 'Saudi Arabia', 1992);
-- Add two books that you'd like to write (you can hard-code your id as the author id)
insert into books (author_id, id, publication_date, title) VALUES (100, 10101, 2020, 'How to Wake up in the morning');
insert into books (author_id, id, publication_date, title) VALUES (101, 10102, 2020, 'How to Wake up in the evening');
-- Update one of your books to have a new title
UPDATE books set title = 'How to not wake up in the morning' where id = 100;
-- Delete your books
DELETE FROM books WHERE id = 100;
DELETE FROM books WHERE id = 101;
-- Delete your author entry
DELETE from authors where name = 'Saud'

