Query 1: CREATE TABLE AUTHORS (id SERIAL PRIMARY KEY, name VARCHAR(255));
--  Create a second table for the authors 

Query 2: INSERT INTO authors(name) SELECT DISTINCT author FROM books;
-- Take author name from the book tabel and insert them into the author table, column name on condition that the name is not duplicated

Query 3: ALTER TABLE books ADD COLUMN author_id INT;
-- Adding a table named author id to the books table 

Query 4: UPDATE books SET author_id=author.id FROM (SELECT * FROM authors) AS author WHERE books.author = author.name;
-- Get the id values of the author from the author table to added that column we just created 

Query 5: ALTER TABLE books DROP COLUMN author;
-- Delete the column of author 

Query 6: ALTER TABLE books ADD CONSTRAINT fk_authors FOREIGN KEY (author_id) REFERENCES authors(id);
-- Adding the auther id in the book table as a fk 