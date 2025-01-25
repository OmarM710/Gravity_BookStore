select b.book_id, title, author_name
from book b, book_author ba, author a
where b.book_id = ba.book_id and ba.author_id= a.author_id

SELECT book.book_id, book.title, author.author_name, book_language.language_name, publisher.publisher_name
FROM     book LEFT OUTER JOIN
                  book_author ON book.book_id = book_author.book_id left JOIN
                  author ON book_author.author_id = author.author_id left JOIN
                  book_language ON book.language_id = book_language.language_id left JOIN
                  publisher ON book.publisher_id = publisher.publisher_id