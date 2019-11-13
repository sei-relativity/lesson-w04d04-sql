-- BASIC QUERIES
-- Unless otherwise stated, all queries should return all columns

-- Get all information about all authors
-- SELECT * FROM authors;

-- Get just the name and birth year of all authors
select name, birth_year from authors;

-- Get all authors born in the 20th centruy or later
select * from authors where birth_year >= 1900;

-- Get all authors born in the USA
select * from authors where nationality = 'United States of America';

-- Get all books published on 1985
select * from books where publication_date = 1985;

-- Get all books published before 1989
select * from books where publication_date < 1989;
-- Get just the title of all books.
select title from books;
-- Get just the year that 'A Dance with Dragons' was published
select publication_date from books where title = 'A Dance with Dragons';
  -- Cry when you realize how long it's been

-- Get all books which have `the` somewhere in their title (hint, look up LIKE/ILIKE)
select * from books where title like '%the%';
-- Add yourself as an author
insert into authors (name, nationality, birth_year) values ('osama', 'Mars', 1349);
-- Add two books that you'd like to write (you can hard-code your id as the author id)
insert into books (title, publication_date, author_id) values ('how to pull a tissue in a 0 gravity', 2000, 9);
insert into books (title, publication_date, author_id) values ('how to pull a tissue in a 0 gravity part 2', 2001, 9);
-- Update one of your books to have a new title
update books set title = 'how to pull a tissue in 9.2 gravity' where id = 69;
-- Delete your books
delete from books where author_id = 9;
-- Delete your author entry
delete from authors where id = 9;