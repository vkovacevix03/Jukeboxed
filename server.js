const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');
const bodyParser = require('body-parser');

const app = express();
const port = 3000;

// Middleware
app.use(cors());
app.use(bodyParser.json());

// MySQL Connection
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '646Wyo0%', 
    database: 'jukeboxed' 
});

db.connect(err => {
    if (err) {
        console.error('Database connection failed:', err);
    } else {
        console.log('Connected to database');
    }
});

// API Endpoint for filtering songs
app.post('/filter', (req, res) => {
    const { genre, artist } = req.body;

    let query = 'SELECT * FROM songs WHERE 1=1';
    const params = [];

    if (genre && genre !== 'random') {
        query += ' AND genre = ?';
        params.push(genre);
    }

    if (artist && artist !== 'random') {
        query += ' AND artist = ?';
        params.push(artist);
    }

    db.query(query, params, (err, results) => {
        if (err) {
            console.error('Error executing query:', err);
            res.status(500).send('Error fetching data');
        } else {
            res.json(results);
        }
    });
});

// Start server
app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}`);
});
