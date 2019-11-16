-- ADVANCED / JOIN QUERIES
-- For all of these queries, you SHOULD NOT use an id # in a WHERE clause

-- Find all fields (book and author related) for all books written by George R.R. Martin.
SELECT * FROM books JOIN authors ON books.author_id = authors.id WHERE authors.name = 'George R.R. Martin';

-- Find all fields (book and author related) for all books written by Milan Kundera.
SELECT * FROM books JOIN authors ON books.author_id = authors.id WHERE authors.name = 'Milan Kundera';


-- Find all books written by an author from China or the UK.
SELECT * FROM books JOIN authors ON books.author_id = authors.id WHERE authors.nationality = 'China' OR authors.nationality = 'United Kingdom' ;


-- Find out how many books Albert Camus wrote.
SELECT COUNT(*) FROM books JOIN authors ON books.author_id = authors.id WHERE authors.name = 'Albert Camus';


-- Find out how many books were written by US authors.
SELECT COUNT(*) FROM books JOIN authors ON books.author_id = authors.id WHERE authors.nationality = 'United States of America';

-- Find all books written after 1930 by authors from Argentina.
SELECT * FROM books JOIN authors ON books.author_id = authors.id WHERE authors.nationality = 'Argentina' AND books.publication_date < 1930 ;

-- Find all books written before 1980 by authors not from the US.
SELECT * FROM books JOIN authors ON books.author_id = authors.id WHERE authors.nationality = 'United States of America' AND books.publication_date > 1980 ;

-- Find all authors whose names start with 'J'.
SELECT * FROM authors WHERE name LIKE 'J%';
-- Find all books whose titles contain 'the'.
SELECT * FROM books WHERE title LIKE '%the%';
-- Find all authors who have written books with that start with the letter 'N'.
SELECT name FROM books JOIN authors ON books.author_id = authors.id WHERE books.title LIKE 'N%';