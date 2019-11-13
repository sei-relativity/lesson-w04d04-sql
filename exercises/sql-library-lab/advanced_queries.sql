-- ADVANCED / JOIN QUERIES
-- For all of these queries, you SHOULD NOT use an id # in a WHERE clause

-- Find all fields (book and author related) for all books written by George R.R. Martin.
SELECT *
FROM Books JOIN Authors ON Books.author_id = Authors.id
WHERE Authors.name LIKE 'George R.R. Martin';

-- Find all fields (book and author related) for all books written by Milan Kundera.
SELECT *
FROM Books JOIN Authors ON Books.author_id = Authors.id
WHERE Authors.name LIKE 'Milan Kundera';

-- Find all books written by an author from China or the UK.
SELECT *
FROM Books JOIN Authors ON Books.author_id = Authors.id
WHERE Authors.nationality = 'China' OR Authors.nationality LIKE 'United Kingdom';

-- Find out how many books Albert Camus wrote.
SELECT COUNT(title) AS number_of_books, Authors.name
FROM Books JOIN Authors ON Books.author_id = Authors.id
WHERE Authors.name LIKE 'Albert Camus'
GROUP BY Authors.name;

-- Find out how many books were written by US authors.
SELECT COUNT(title) AS number_of_books, Authors.nationality AS country_of_issuing
FROM Books JOIN Authors ON Books.author_id = Authors.id
WHERE Authors.nationality LIKE 'United States of America'
GROUP BY Authors.nationality;

-- Find all books written after 1930 by authors from Argentina.
SELECT *
FROM Books JOIN Authors ON Books.author_id = Authors.id
WHERE Books.publication_date > 1930 AND Authors.nationality LIKE 'Argentina';

-- Find all books written before 1980 by authors not from the US.
SELECT *
FROM Books JOIN Authors ON Books.author_id = Authors.id
WHERE Books.publication_date < 1980 AND Authors.nationality NOT LIKE 'United States of America';

-- Find all authors whose names start with 'J'.
SELECT *
FROM Authors
WHERE name LIKE 'J%';

-- Find all books whose titles contain 'the'.
SELECT *
FROM Books
WHERE title LIKE '%the%';

-- Both contains and starts with "the"
-- SELECT *
-- FROM books
-- WHERE title LIKE '%the%' OR title LIKE 'The%';

-- Find all authors who have written books with that start with the letter 'N'.
SELECT Authors.*
FROM Books JOIN Authors ON Books.author_id = Authors.id
WHERE Books.title LIKE 'N%';