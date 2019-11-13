-- ADVANCED / JOIN QUERIES
-- For all of these queries, you SHOULD NOT use an id # in a WHERE clause

-- Find all fields (book and author related) for all books written by George R.R. Martin.
select * from books join authors on books.author_id=authors.id where authors.name= 'George R.R. Martin';
-- Find all fields (book and author related) for all books written by Milan Kundera.
select * from books join authors on books.author_id=authors.id where authors.name= 'Milan Kundera';
-- Find all books written by an author from China or the UK.
select * from books join authors on books.author_id=authors.id where authors.nationality = 'United Kingdom' OR authors.nationality = 'China';
-- Find out how many books Albert Camus wrote.
select count(author_id) from books join authors on books.author_id=authors.id where authors.name='Albert Camus';
-- Find out how many books were written by US authors.
select count(author_id) from books join authors on books.author_id=authors.id where authors.nationality='United States of America';
-- Find all books written after 1930 by authors from Argentina.
select count(author_id) from books join authors on books.author_id=authors.id where authors.nationality='Argentina' and books.publication_date>1930;
-- Find all books written before 1980 by authors not from the US.
select count(author_id) from books join authors on books.author_id=authors.id where authors.nationality!='United States of America' and books.publication_date<1980;
-- Find all authors whose names start with 'J'.
select * from authors where name like 'J%';
-- Find all books whose titles contain 'the'.
select * from books where title like '%the%';
-- Find all authors who have written books with that start with the letter 'N'.
select authors.name from books join authors on books.author_id= authors.id where books.title like 'N%';