const express = require('express');
const mysql = require('mysql');
const bodyParser = require('body-parser');
const cors = require('cors');
// const jwt = require('jsonwebtoken');
const app = express();

app.use(cors());
app.use(bodyParser.json());

const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'bookshop'
});


db.connect(err => {
  if (err) throw err
  else
    console.log('connected to bookshop database');
});


// Get all books with their image URLs
app.get('/books', (req, res) => {
  const query = 'SELECT * FROM books';

  db.query(query, (err, results) => {
    if (err) {
      console.error('Error fetching books:', err);
      res.sendStatus(500);
      return;
    }

    // Fetch associated image URLs for all books
    const bookIds = results.map((book) => book.id);
    const imageQuery = 'SELECT book_id, image_url FROM book_images WHERE book_id IN (?)';

    db.query(imageQuery, [bookIds], (err, imageResults) => {
      if (err) {
        console.error('Error fetching book images:', err);
        res.sendStatus(500);
        return;
      }

      // Organize image URLs by book ID
      const imageMap = {};
      imageResults.forEach((image) => {
        const bookId = image.book_id;
        if (!imageMap[bookId]) {
          imageMap[bookId] = [];
        }
        imageMap[bookId].push(image.image_url);
      });

      // Combine book data with imageUrls
      const booksWithImageUrls = results.map((book) => {
        return { ...book, imageUrls: imageMap[book.id] || [] };
      });

      res.json(booksWithImageUrls);
    });
  });
});


// Get a book by ID
app.get('/books/:id', (req, res) => {
  const bookId = req.params.id;
  const query = 'SELECT * FROM books WHERE id = ?';

  db.query(query, [bookId], (err, results) => {
    if (err) {
      console.error('Error fetching book:', err);
      res.sendStatus(500);
      return;
    }

    if (results.length === 0) {
      res.sendStatus(404);
      return;
    }

    const book = results[0];

    // Fetch associated image URLs
    const imageQuery = 'SELECT image_url FROM book_images WHERE book_id = ?';

    db.query(imageQuery, [bookId], (err, imageResults) => {
      if (err) {
        console.error('Error fetching book images:', err);
        res.sendStatus(500);
        return;
      }

      const imageUrls = imageResults.map((result) => result.image_url);

      book.imageUrls = imageUrls;

      res.json(book);
    });
  });
});

// Create a new book
app.post('/books', (req, res) => {
  const { name, author, publisher, pages, category, price, description, language, imageUrls } = req.body;

  const book = {
    name,
    author,
    publisher,
    pages,
    category,
    price,
    description,
    language,
  };

  const insertQuery = 'INSERT INTO books SET ?';

  db.query(insertQuery, book, (err, result) => {
    if (err) {
      console.error('Error creating book:', err);
      res.status(500).json({ message: 'Error creating book' });
      return;
    }

    const bookId = result.insertId;

    // Insert associated image URLs
    const imageValues = imageUrls.map((imageUrl) => [bookId, imageUrl]);

    const imageQuery = 'INSERT INTO book_images (book_id, image_url) VALUES ?';

    db.query(imageQuery, [imageValues], (err) => {
      if (err) {
        console.error('Error creating book images:', err);
        res.status(500).json({ message: 'Error creating book images' });
        return;
      }

      const updatedBook = { ...book, id: bookId }; // Add the book ID to the book object
      res.status(201).json({ message: 'Book Created Successfully!', book: updatedBook }); // Return the updated book object
    });
  });
});

// Update a book
app.put('/books/:id', (req, res) => {
  const bookId = req.params.id;
  const { name, author, publisher, pages, category, price, description, language, imageUrls } = req.body;

  const book = {
    name,
    author,
    publisher,
    pages,
    category,
    price,
    description,
    language,
  };

  const updateQuery = 'UPDATE books SET ? WHERE id = ?';

  db.query(updateQuery, [book, bookId], (err) => {
    if (err) {
      console.error('Error updating book:', err);
      res.status(500).json({ error: 'An error occurred while updating the book.' });
      return;
    }

    // Delete existing image URLs
    const deleteQuery = 'DELETE FROM book_images WHERE book_id = ?';

    db.query(deleteQuery, [bookId], (err) => {
      if (err) {
        console.error('Error deleting book images:', err);
        res.status(500).json({ error: 'An error occurred while deleting the book images.' });
        return;
      }

      // Insert updated image URLs
      const imageValues = imageUrls.map((imageUrl) => [bookId, imageUrl]);

      const imageQuery = 'INSERT INTO book_images (book_id, image_url) VALUES ?';

      db.query(imageQuery, [imageValues], (err) => {
        if (err) {
          console.error('Error updating book images:', err);
          res.status(500).json({ error: 'An error occurred while updating the book images.' });
          return;
        }
        res.status(200).json({ message: 'Book updated successfully!.' });
      });
    });
  });
});

// Delete a book
app.delete('/books/:id', (req, res) => {
  const bookId = req.params.id;

  // Delete book
  const deleteQuery = 'DELETE FROM books WHERE id = ?';

  db.query(deleteQuery, [bookId], (err) => {
    if (err) {
      console.error('Error deleting book:', err);
      res.status(500).json({ error: 'An error occurred while deleting the book.' });
      return;
    }

    // Delete associated image URLs
    const deleteImagesQuery = 'DELETE FROM book_images WHERE book_id = ?';

    db.query(deleteImagesQuery, [bookId], (err) => {
      if (err) {
        console.error('Error deleting book images:', err);
        res.status(500).json({ error: 'An error occurred while deleting the book images.' });
        return;
      }

      res.status(200).json({ message: 'Book deleted successfully.' });
    });
  });
});

const port = 3000;
app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
