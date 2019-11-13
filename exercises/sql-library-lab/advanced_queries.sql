-- ADVANCED / JOIN QUERIES
-- For all of these queries, you SHOULD NOT use an id # in a WHERE clause

-- Find all fields (book and author related) for all books written by George R.R. Martin.
Select * from books join authors on books.author_id = authors.id WHERE authors.name = 'George R.R. Martin';

-- Find all fields (book and author related) for all books written by Milan Kundera.
Select * from books join authors on books.author_id = authors.id WHERE authors.name = 'Milan Kundera';

-- Find all books written by an author from China or the UK.
Select * from books join authors on books.author_id = authors.id WHERE authors.nationality = 'China' or authors.nationality= 'United Kingdom';

-- Find out how many books Albert Camus wrote.
Select COUNT(*) from books join authors on books.author_id = authors.id WHERE authors.name = 'Albert Camus';

-- Find out how many books were written by US authors.
Select COUNT(*) from books join authors on books.author_id = authors.id WHERE authors.nationality = 'United States of America';

-- Find all books written after 1930 by authors from Argentina.
Select * from books join authors on books.author_id = authors.id WHERE books.publication_date >1930 and  authors.nationality = 'Argentina';

-- Find all books written before 1980 by authors not from the US.
Select * from books join authors on books.author_id = authors.id WHERE books.publication_date <1980 and authors.nationality != 'United States of America';

-- Find all authors whose names start with 'J'.
SELECT * FROM authors WHERE name like 'J%';

-- Find all books whose titles contain 'the'.
SELECT * FROM books Where title like '%the%';

-- Find all authors who have written books with that start with the letter 'N'.
SELECT * FROM authors JOIN books on authors.id = books.author_id WHERE books.title like 'N%';
